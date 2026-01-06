# Copyright (c) 2025 André Luiz Alvares
# This is a fork of `dump_lua_symbols.py` from Open 3D Engine Project:
# https://github.com/o3de/o3de/blob/development/Gems/EditorPythonBindings/Editor/Scripts/dump_lua_symbols.py
# 
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

# NOTE: (the instructions below is for dump_lua_symbols.py, just use pyRunFile with dump_teal_symbols.py)

# The easiest way to run this script in O3DE
# is to run it via the "Python Scripts" window in the Editor:
# Tools -> Other -> Python Scripts.
# Will produce the file <game_project>\lua_symbols.txt
#
# Alternatively from the Editor console:
# pyRunFile C:\GIT\o3de\Gems\EditorPythonBindings\Editor\Scripts\dump_lua_symbols.py
# Will produce the file <game_project>\lua_symbols.txt
#
# or if you need to customize the name of the output file
# pyRunFile C:\GIT\o3de\Gems\EditorPythonBindings\Editor\Scripts\dump_lua_symbols.py -o my_lua_name.txt
# Will produce the file <game_project>\my_lua_name.txt

# This script shows basic usage of the LuaSymbolsReporterBus,
# Which can be used to report all symbols available for
# game scripting with Lua.

import sys
import os
import argparse
import re
from typing import TextIO

import azlmbr.bus as azbus
import azlmbr.script as azscript
import azlmbr.legacy.general as azgeneral

re_return_type = re.compile("^\[\=([\w_\.]+)\]")
re_return_and_args = re.compile("^(?:\[\=([\w_.]+)\] )?([\w_, .]+)")
re_args = re.compile("([\w_.]+)[, ]?")

re_args_checker = re.compile("(([\w_.]+, )+([\w_.]+)?)|[\w_.]+")
re_symbol_checker = re.compile("[\w_]+")

arg_separator = ", "

types_map = {
    "any": "any",
    "void": "any",
    "...": "any...",

    "char": "string",
    "bool": "boolean",

    "float": "number",
    "double": "number",

    "int": "integer",
    "short": "integer",
    "long": "integer",

    "unsignedchar": "integer",
    "unsignedint": "integer",
    "unsignedlong": "integer",
    "unsignedshort": "integer",
}

unknown_types = []
known_types = []

start_content = """
global interface LuaComponent
	entityId: EntityId

	OnActivate: function(self)
	OnDeactivate: function(self)
end

global interface EBusHandler<T>
	Disconnect: function(self)
end

local interface BusThatHasAHandler<T> -- TODO: think of better name
	Connect: function(table, ...: any): EBusHandler<T>
end
"""

# TODO: I don't like manual work, but for now, let's use it
#       later the C++ bit probably could help us here...
metamethods_map: dict[str, list[str]] = {
	"Vector3": [
		"__call: function(self, number): Vector3",
		"__call: function(self, number, number, number): Vector3",
		"__mul: function(Vector3, Vector3): Vector3",
		"__mul: function(Vector3, number): Vector3",
	]
}

# TODO: stop localizing fields
# TODO: use list[type], and try to type everything

def to_teal_type(t: str):
    x = types_map.get(t)
    if x != None:
        return x
    if t not in unknown_types:
        unknown_types.append(t)
    return t

def ebus_has_broadcast(ebus_symbol:azlmbr.script.LuaEBusSymbol) -> bool:
    return ebus_symbol.canBroadcast

def ebus_has_events(ebus_symbol:azlmbr.script.LuaEBusSymbol) -> bool:
    for sender in ebus_symbol.senders:
        if sender.category == "Event":
            return True
    return False

def ebus_has_notifications(ebus_symbol:azlmbr.script.LuaEBusSymbol) -> bool:
    for sender in ebus_symbol.senders:
        if sender.category == "Notification":
            return True
    return False

def _dump_teal_property(result, prop_sym, prefix: str):
    result.append(f"{prefix}{prop_sym.name}: any\n")

def _dump_teal_args(result, args_info: str, try_find_self_arg: bool):
    return_and_args_match = re_return_and_args.match(args_info)

    if return_and_args_match == None:
        return
        
    args_content = return_and_args_match.group(2)
    has_args = re_args_checker.fullmatch(args_content)

    if has_args == None:
        return

    first_arg_is_self: bool = False
    args_array = []
    for arg in re_args.finditer(args_content):
        args_array.append(arg.group(1))

    if try_find_self_arg and len(args_array) >= 2:
        if args_array[0] == "void" and args_array[1] == "void":
            first_arg_is_self = True

    if first_arg_is_self:
        args_array.pop(0)
        args_array[0] = "self"

    args_array = map(to_teal_type, args_array)

    args_result = arg_separator.join(args_array)

    result.append(args_result)

def _dump_teal_function(result, fun_sym, prefix: str):
    return_type_match = re_return_type.match(fun_sym.debugArgumentInfo)
    return_type = "any"

    if return_type_match != None:
        return_type = return_type_match.group(1)

    result.append(f"{prefix}{fun_sym.name}: function(")

    _dump_teal_args(result, fun_sym.debugArgumentInfo, False)

    result.append(f"): {to_teal_type(return_type)}\n")

def _dump_teal_class_symbol(result, class_symbol: azlmbr.script.LuaClassSymbol):
    has_valid_class_name = re_symbol_checker.fullmatch(class_symbol.name)

    if has_valid_class_name == None:
        return

    if class_symbol.name not in known_types:
        known_types.append(class_symbol.name)

    result.append(f"global record {class_symbol.name}\n")

    # TODO: sort properties
    for property_symbol in class_symbol.properties:
        _dump_teal_property(result, property_symbol, "\t")

    if len(class_symbol.properties) > 0:
        result.append("\n")

    # TODO: sort method
    for method_symbol in class_symbol.methods:
        _dump_teal_function(result, method_symbol, "\t")

    metamethods = metamethods_map.get(class_symbol.name)
    if metamethods != None:
        result.append("\n")
        for metamethod in metamethods:
            result.append(f"\tmetamethod {metamethod}\n")

    result.append("end\n")

def _dump_teal_classes(result):
    class_symbols = azscript.LuaSymbolsReporterBus(
        azbus.Broadcast, "GetListOfClasses"
    )
    result.append("--[[ ========  Classes ========== ]]--\n")
    sorted_classes_by_named = sorted(class_symbols, key=lambda class_symbol: class_symbol.name)
    for class_symbol in sorted_classes_by_named:
        _dump_teal_class_symbol(result, class_symbol)
        result.append("\n\n")

def _dump_teal_globals(result):
    # dump global properties
    global_properties = azscript.LuaSymbolsReporterBus(
        azbus.Broadcast, "GetListOfGlobalProperties"
    )

    result.append("--[[ ========  Global Properties ========== ]]--\n")

    sorted_properties_by_name = sorted(global_properties, key = lambda symbol: symbol.name)

    for property_symbol in sorted_properties_by_name:
        _dump_teal_property(result, property_symbol, "global ")

    result.append("\n\n")

    # dump global functions

    global_functions = azscript.LuaSymbolsReporterBus(
        azbus.Broadcast, "GetListOfGlobalFunctions"
    )

    result.append("--[[ ========  Global Functions ========== ]]--\n")

    sorted_functions_by_name = sorted(global_functions, key=lambda symbol: symbol.name)

    for function_symbol in sorted_functions_by_name:
        _dump_teal_function(result, function_symbol, "global ")

    result.append("\n\n")

def _dump_teal_ebus_sender(result, ebus_sender: azlmbr.script.LuaEBusSender, prefix: str):
    result.append(f"{prefix}{ebus_sender.name}: function(")
    _dump_teal_args(result, ebus_sender.debugArgumentInfo, True)
    result.append("): any\n")

def _dump_teal_ebus_senders(result, ebus_senders, category: str, prefix: str):
    for sender in ebus_senders:
        if sender.category == category:
            _dump_teal_ebus_sender(result, sender, prefix)

def _dump_teal_ebus(result, ebus_symbol: azlmbr.script.LuaEBusSymbol):
    has_valid_class_name = re_symbol_checker.fullmatch(ebus_symbol.name)

    if has_valid_class_name == None:
        return

    sorted_senders = sorted(ebus_symbol.senders, key=lambda symbol: symbol.name)

    result.append(f"global record {ebus_symbol.name}\n")

    if ebus_symbol.hasHandler:
        result.append(f"\tis BusThatHasAHandler<{ebus_symbol.name}>\n\n")

    if ebus_has_events(ebus_symbol):
        result.append("\trecord Event\n")
        _dump_teal_ebus_senders(result, sorted_senders, "Event", "\t\t")
        result.append("\tend\n\n")

    if ebus_has_broadcast(ebus_symbol):
        result.append("\trecord Broadcast\n")
        _dump_teal_ebus_senders(result, sorted_senders, "Broadcast", "\t\t")
        result.append("\tend\n")

    if ebus_has_notifications(ebus_symbol):
        result.append("\tinterface Notification\n")
        _dump_teal_ebus_senders(result, sorted_senders, "Notification", "\t\t")
        result.append("\tend\n")

    result.append("end\n")

    result.append("\n\n")


def _dump_teal_ebuses(result):
    ebuses = azscript.LuaSymbolsReporterBus(
        azbus.Broadcast, "GetListOfEBuses"
    )

    result.append("--[[ ========  Ebus List ========== ]]\n")

    sorted_ebuses_by_name = sorted(ebuses, key=lambda symbol: symbol.name)
    for ebus_symbol in sorted_ebuses_by_name:
        _dump_teal_ebus(result, ebus_symbol)

    result.append("\n\n")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Dumps All ebuses, classes and global symbols available for Lua scripting.')
    parser.add_argument('--outfile', '--o', default='o3de.d.tl',
                    help='output file file where all the symbols will be dumped to. If relative, will be under the game project folder.')
    parser.add_argument('--all', '--a', default=True, action='store_true',
                    help='If true dumps all symbols to the outfile. Equivalent to specifying --c --g --e')
    parser.add_argument('--classes', '--c', default=False, action='store_true',
                    help='If true dumps Class symbols.')
    parser.add_argument('--globals', '--g', default=False, action='store_true',
                    help='If true dumps Global symbols.')
    parser.add_argument('--ebuses', '--e', default=False, action='store_true',
                    help='If true dumps Ebus symbols.')

    args = parser.parse_args()
    output_file_name = args.outfile
    if not os.path.isabs(output_file_name):
        game_root_path = os.path.normpath(azgeneral.get_game_folder())
        output_file_name = os.path.join(game_root_path, output_file_name)
    try:
        file_obj = open(output_file_name, 'wt')
    except Exception as e:
        print(f"Failed to open {output_file_name}: {e}")
        sys.exit(-1)

    result = []

    if args.classes:
        _dump_teal_classes(result)

    if args.globals:
        _dump_teal_globals(result)

    if args.ebuses:
        _dump_teal_ebuses(result)

    if (not args.classes) and (not args.globals) and (not args.ebuses):
        _dump_teal_classes(result)
        _dump_teal_globals(result)
        _dump_teal_ebuses(result)

    file_obj.write(start_content)
    file_obj.write("\n\n")

    for known_type in known_types:
        if known_type in unknown_types:
            unknown_types.remove(known_type)

    for unknown_type in unknown_types:
        file_obj.write(f"global record {unknown_type} end\n")

    file_obj.write("\n\n")

    for result_line in result:
        file_obj.write(result_line)

    file_obj.close()
    print(f" Teal Symbols Are available in: {output_file_name}")
