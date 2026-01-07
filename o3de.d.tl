global interface LuaComponent
	entityId: EntityId

	OnActivate: function(self)
	OnDeactivate: function(self)
end

global interface EBusHandler<T>
	Disconnect: function(self)
end

global interface BusThatHasAHandler<T> -- TODO: think of better name
	Connect: function(any, ...: any): EBusHandler<T>
end

global record ScriptEventsAssetRef
	metamethod __call: function(self): ScriptEventsAssetRef
end

global record SpawnableScriptMediator
	CreateSpawnTicket: function(self, SpawnableScriptAssetRef): EntitySpawnTicket
	Spawn: function(self, EntitySpawnTicket): boolean
	SpawnAndParent: function(self, EntitySpawnTicket, EntityId): boolean
	SpawnAndParentAndTransform: function(self, EntitySpawnTicket, EntityId, Vector3, Vector3, number): boolean
	Despawn: function(self, EntitySpawnTicket)
	Clear: function(self)

	metamethod __call: function(self): SpawnableScriptMediator
end

global record AZ_s8 end
global record AZ_SceneAPI_Containers_SceneGraph_NodeIndex end
global record GraphObjectProxy end
global record AZ_SceneAPI_Containers_SceneGraph_Name end
global record shared_ptr_IManifestObject end
global record AZ_u64 end
global record Aabbconst end
global record basic_string_view_char_char_traits_char end
global record SceneAPI_DataTypes_Color end
global record SceneAPI_DataTypes_IBlendShapeData_Face end
global record BehaviorComponentId end
global record BehaviorEntity end
global record AZ_Uuid end
global record ComponentConfig end
global record AzFramework_EntitySpawnTicket end
global record EventHandler_tuple_Crc32_AZ_s8_Vector3 end
global record EventHandler_tuple_Crc32_int_CollisionEvent end
global record EventHandler_tuple_Crc32_int_TriggerEvent end
global record Event_tuple_Crc32_AZ_s8_Vector3 end
global record Event_tuple_Crc32_int_CollisionEvent end
global record Event_tuple_Crc32_int_TriggerEvent
	Connect: function(self, function(any, TriggerEvent))
end
global record Crc32
	metamethod __call: function(self, string): Crc32
end
global record InputDevice end
global record AZ_Render_MaterialAssignmentId end
global record AZ_Render_MaterialAssignment end
global record AzFramework_Scripts_SpawnableScriptAssetRef end
global record pair_int_unsignedint end
global record shared_ptr_Node end
global record TargetBlendState end
global record AZ_IO_FixedMaxPath end
global record AZ_IO_Path end
global record AZ_IO_PathView end
global record AZ_RPI_ShaderOptionDescriptor end
global record AZ_RPI_ShaderSourceData_EntryPoint end
global record AZ_RPI_ShaderSourceData_SupervariantInfo end
global record AZ_RPI_ShaderVariantListSourceData_VariantInfo end
global record AZ_Render_LightConfig end
global record Asset_Physics_MaterialAsset end
global record Asset_RuntimeAsset end
global record AzToolsFramework_ComponentDetails end
global record DynamicNodeSlotConfig end
global record EntityComponentIdPair end
global record LuaClassSymbol end
global record LuaEBusSender end
global record LuaEBusSymbol end
global record LuaMethodSymbol end
global record LuaPropertySymbol end
global record Method end
global record Parameter end
global record SceneAPI_Events_ExportProduct end
global record SceneQueryHit
	Distance: number
	Position: Vector3
	Normal: Vector3
	BodyHandle: any
	EntityId: EntityId
end
global record SurfacePoint end
global record WhiteBox_Api_FaceVertHandles end
global record WhiteBox_Api_PolygonHandle end
global record WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag end
global record WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag end
global record WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag end
global record fixed_string_char_1024_char_traits_char end
global record pair_basic_string_char_char_traits_char__int end
global record shared_ptr_Connection end
global record shared_ptr_DataType end
global record shared_ptr_SlotDefinitionconst end
global record RPI_MaterialPropertyGroupVisibility end
global record RPI_MaterialPropertyVisibility end
global record enum end
global interface Scene end
global interface SceneQueryRequest end
global interface SystemInterface end
global record tuple_Crc32_AZ_s8 end
global record PlatformID end
global record Quaternionconst end
global record RayCastRequest is SceneQueryRequest end
global record SettingsRegistryScriptProxy end
global record optional_basic_string_char_char_traits_char end
global record optional_bool end
global record optional_double end
global record optional_AZ_s64 end
global record optional_AZ_u64 end
global record SpecializationsProxy end
global record AZ_s64 end
global record Asset_SoundAsset end
global record Asset_AzFramework_Spawnable end
global record tuple_AZ_u64_float end
global record Outcome_Vector3_unexpect_t end
global record array_Vector3_2 end
global record Anchors end
global record Offsets end
global record Padding end
global record ExecutionState end
global record AzPhysics_SceneQuery_QueryType end
global record ShapeCastRequest end
global record OverlapRequest end
global record AZ_RPI_ShaderVariantListSourceData end
global record Collision end
global record tuple_bool_Vector3_Vector3_float_EntityId_Crc32 end
global record tuple_bool_vector_EntityId end
global record Screen end
global record tuple_Vector3_double end
global record Euler end
global record tuple_Vector3_Vector3_Vector3 end
global record tuple_Vector4_Vector4_Vector4_Vector4 end
global record tuple_double_double_double_double end
global record Search end
global record From end
global record Case end
global record String end
global record tuple_Vector2_double end
global record tuple_Vector3_Vector3 end
global record tuple_Vector4_double end
global record SourceHandle end
global record Range end
global record EMotionFX__ActorInstance end
global record EMotionFX__Integration__Space end
global record AZStd__basic_string end
global record AZStd__vector end
global record AnimGraphInstance end
global record Render__ShadowmapSize end
global record AZ__Uuid end
global record AZStd__basic_string_view end
global record Audio__ObstructionType end
global record AZ__u64 end
global record FogMode end
global record Render__OutputDeviceTransformType end
global record Render__DisplayMapperOperationType end
global record AZStd__shared_ptr end
global record DynamicNodeConfig end
global record AZ__Render__LightingPreset end
global record AZ__Render__ModelPreset end
global record AZStd__any end
global record InputChannel end
global record BusIdType end
global record InputDeviceId end
global record Asset end
global record AZ__Render__MaterialAssignmentId end
global record AZStd__unordered_map end
global record AZ__s64 end
global record AzFramework__EntitySpawnTicket end
global record AZStd__unordered_set end
global record AzFramework__Terrain__TerrainDataRequests__Sampler end


--[[ ========  Classes ========== ]]--
global record AZ_RHI_Handle_AZ_s8_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_AZ_s8_DefaultNamespaceType): AZ_s8
	IsValid: function(AZ_RHI_Handle_AZ_s8_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_int_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_int_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_int_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_long_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_long_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_long_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_short_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_short_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_short_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedchar_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedchar_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_unsignedchar_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_IndirectCommandDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_IndirectCommandDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_IndirectCommandDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_MaterialPropertyIndexType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_MaterialPropertyIndexType): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_MaterialPropertyIndexType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_MaterialShaderParameterLayout
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_MaterialShaderParameterLayout): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_MaterialShaderParameterLayout): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_RPI_ShaderOptionIndexNamespace
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_RPI_ShaderOptionIndexNamespace): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_RPI_ShaderOptionIndexNamespace): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_RPI_ShaderOptionValueNamespace
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_RPI_ShaderOptionValueNamespace): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_RPI_ShaderOptionValueNamespace): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputBufferDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputBufferDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputBufferDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputBufferUnboundedArrayDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputBufferUnboundedArrayDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputBufferUnboundedArrayDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputConstantDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputConstantDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputConstantDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputImageDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputImageDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputImageDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputImageUnboundedArrayDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputImageUnboundedArrayDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputImageUnboundedArrayDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputSamplerDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputSamplerDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputSamplerDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderInputStaticSamplerDescriptor
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderInputStaticSamplerDescriptor): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderInputStaticSamplerDescriptor): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedint_ShaderVariantId
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedint_ShaderVariantId): integer
	IsValid: function(AZ_RHI_Handle_unsignedint_ShaderVariantId): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedlong_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedlong_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_unsignedlong_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_RHI_Handle_unsignedshort_DefaultNamespaceType
	AcquireOwnership: function(): any
	GetIndex: function(AZ_RHI_Handle_unsignedshort_DefaultNamespaceType): integer
	IsValid: function(AZ_RHI_Handle_unsignedshort_DefaultNamespaceType): boolean
	ReleaseOwnership: function(): any
end


global record AZ_Render_AreaLightComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_BloomComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_ChromaticAberrationComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_DecalComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_DeferredFogComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_DepthOfFieldComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_DirectionalLightComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorAreaLightComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorBloomComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorChromaticAberrationComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorDecalComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorDeferredFogComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorDepthOfFieldComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorDirectionalLightComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorDisplayMapperComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorEntityReferenceComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorExposureControlComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorFilmGrainComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorGradientWeightModifierComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorGridComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorHDRiSkyboxComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorImageBasedLightComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorLookModificationComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorMeshComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorMotionBlurComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorPaniniProjectionComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorPhysicalSkyComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorPostFxLayerComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorRadiusWeightModifierComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorShapeWeightModifierComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorSkyAtmosphereComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorSsaoComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorVignetteComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_EditorWhiteBalanceComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_ExposureControlComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_FilmGrainComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_GradientWeightModifierComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_GridComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_HDRiSkyboxComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_ImageBasedLightComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_LookModificationComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_MeshComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_MotionBlurComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_PhysicalSkyComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_PostFxLayerComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_RadiusWeightModifierComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_RenderDebugComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_RenderDebugEditorComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_ShapeWeightModifierComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_SkyAtmosphereComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_SsaoComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_VignetteComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_Render_WhiteBalanceComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AZ_SceneAPI_Containers_SceneGraph
	AcquireOwnership: function(): any
	FindWithPath: function(AZ_SceneAPI_Containers_SceneGraph, string): AZ_SceneAPI_Containers_SceneGraph_NodeIndex
	FindWithRootAndPath: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex, string): AZ_SceneAPI_Containers_SceneGraph_NodeIndex
	GetNodeChild: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): AZ_SceneAPI_Containers_SceneGraph_NodeIndex
	GetNodeContent: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): GraphObjectProxy
	GetNodeCount: function(AZ_SceneAPI_Containers_SceneGraph): integer
	GetNodeName: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): AZ_SceneAPI_Containers_SceneGraph_Name
	GetNodeParent: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): AZ_SceneAPI_Containers_SceneGraph_NodeIndex
	GetNodeSeperationCharacter: function(): string
	GetNodeSibling: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): AZ_SceneAPI_Containers_SceneGraph_NodeIndex
	GetRoot: function(AZ_SceneAPI_Containers_SceneGraph): AZ_SceneAPI_Containers_SceneGraph_NodeIndex
	HasNodeChild: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): boolean
	HasNodeContent: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): boolean
	HasNodeParent: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): boolean
	HasNodeSibling: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): boolean
	IsNodeEndPoint: function(AZ_SceneAPI_Containers_SceneGraph, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): boolean
	IsValidName: function(string): boolean
	ReleaseOwnership: function(): any
end


global record AZ_SceneAPI_DataTypes_IMeshData_Face
	AcquireOwnership: function(): any
	GetVertexIndex: function(AZ_SceneAPI_DataTypes_IMeshData_Face, integer): integer
	ReleaseOwnership: function(): any
end


global record AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	AcquireOwnership: function(): any
	At: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, Index: integer): shared_ptr_IManifestObject
	AtUnchecked: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, Index: integer): shared_ptr_IManifestObject
	Back: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): shared_ptr_IManifestObject
	Capacity: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): integer
	Clear: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	Empty: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): boolean
	EraseCheck_VM: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, AZ_u64): boolean
	Erase_VM: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, Key: AZ_u64): AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	Front: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): shared_ptr_IManifestObject
	GetSize: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): integer
	HasKey: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, Key: AZ_u64): boolean
	Insert: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, Index: AZ_u64, Value: shared_ptr_IManifestObject): AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	Iterate_VM: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): Iterator_VM_AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	NotEmpty: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): boolean
	PushBack: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, shared_ptr_IManifestObject): any
	PushBack_VM: function(Container: AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, Value: shared_ptr_IManifestObject): AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	ReleaseOwnership: function(): any
	Reserve: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, integer): any
	Resize: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, integer): any
	Size: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): integer
	Swap: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): any
	clear: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): any
	pop_back: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): any
	push_back: function(AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates, shared_ptr_IManifestObject): any
end


global record Aabb
	max: any
	min: any

	AddAabb: function(Aabb, Aabb): any
	AddPoint: function(Aabb, Vector3): any
	ApplyTransform: function(Aabb, Transform): any
	Clamp: function(Aabb, Aabb): any
	Clone: function(Aabb): Aabb
	Contains: function(): any...
	CreateCenterHalfExtents: function(Vector3, Vector3): Aabb
	CreateCenterRadius: function(Vector3, number): Aabb
	CreateFromMinMax: function(Vector3, Vector3): Aabb
	CreateFromMinMaxValues: function(number, number, number, number, number, number): Aabb
	CreateFromObb: function(Obb): Aabb
	CreateFromPoint: function(Vector3): Aabb
	CreateNull: function(): Aabb
	Expand: function(Aabb, Vector3): any
	GetAsSphere: function(): any...
	GetCenter: function(Aabb): Vector3
	GetClamped: function(Aabb, Aabb): Aabb
	GetDistance: function(Aabb, Vector3): number
	GetExpanded: function(Aabb, Vector3): Aabbconst
	GetExtents: function(Aabb): Vector3
	GetSurfaceArea: function(Aabb): number
	GetTransformedAabb: function(Aabb, Transform): Aabb
	GetTransformedObb: function(Aabb, Transform): Obb
	GetTranslated: function(Aabb, Vector3): Aabb
	GetXExtent: function(Aabb): number
	GetYExtent: function(Aabb): number
	GetZExtent: function(Aabb): number
	IsFinite: function(Aabb): boolean
	IsValid: function(Aabb): boolean
	Overlaps: function(Aabb, Aabb): boolean
	Set: function(): any...
	SetNull: function(Aabb): any
	Translate: function(Aabb, Vector3): any
end


global record AcesParameterOverrides
	OutputDeviceTransformType_1000Nits: any
	OutputDeviceTransformType_2000Nits: any
	OutputDeviceTransformType_4000Nits: any
	OutputDeviceTransformType_48Nits: any
	OutputDeviceTransformType_NumOutputDeviceTransformTypes: any
	alterSurround: any
	applyCATD60toD65: any
	applyDesaturation: any
	overrideDefaults: any
	preset: any

	AcquireOwnership: function(): any
	LoadPreset: function(AcesParameterOverrides): any
	ReleaseOwnership: function(): any
end


global record ActorComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AddressMode
	Border: any
	Clamp: any
	Mirror: any
	MirrorOnce: any
	Wrap: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AnimationData
	AcquireOwnership: function(): any
	GetKeyFrame: function(IAnimationData, integer): Matrix3x4
	GetKeyFrameCount: function(IAnimationData): integer
	GetTimeStepBetweenFrames: function(IAnimationData): number
	ReleaseOwnership: function(): any
end


global record AssetData
	AcquireOwnership: function(): any
	GetId: function(AssetData): AssetId
	GetUseCount: function(AssetData): integer
	IsError: function(AssetData): boolean
	IsLoading: function(AssetData, boolean): boolean
	IsReady: function(AssetData): boolean
	ReleaseOwnership: function(): any
end


global record AssetId
	AcquireOwnership: function(): any
	CreateString: function(basic_string_view_char_char_traits_char): AssetId
	IsValid: function(AssetId): boolean
	ReleaseOwnership: function(): any
end


global record AssetInfo
	assetId: any
	assetType: any
	relativePath: any
	sizeBytes: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AudioTriggerNotificationIdType
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AxisType
	XNegative: any
	XPositive: any
	YNegative: any
	YPositive: any
	ZNegative: any
	ZPositive: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record AzFramework_SurfaceData_SurfacePoint
	normal: any
	position: any
	surfaceTags: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record BlendFactor
	AlphaDest: any
	AlphaDestInverse: any
	AlphaSource: any
	AlphaSource1: any
	AlphaSource1Inverse: any
	AlphaSourceInverse: any
	AlphaSourceSaturate: any
	ColorDest: any
	ColorDestInverse: any
	ColorSource: any
	ColorSource1: any
	ColorSource1Inverse: any
	ColorSourceInverse: any
	Factor: any
	FactorInverse: any
	Invalid: any
	One: any
	Zero: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record BlendOp
	Add: any
	Invalid: any
	Maximum: any
	Minimum: any
	Subtract: any
	SubtractReverse: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record BlendShapeAnimationData
	AcquireOwnership: function(): any
	GetBlendShapeName: function(IBlendShapeAnimationData): string
	GetKeyFrame: function(IBlendShapeAnimationData, integer): number
	GetKeyFrameCount: function(IBlendShapeAnimationData): integer
	GetTimeStepBetweenFrames: function(IBlendShapeAnimationData): number
	ReleaseOwnership: function(): any
end


global record BlendShapeData
	AcquireOwnership: function(): any
	GetBitangent: function(BlendShapeData, integer): Vector3
	GetColor: function(BlendShapeData, integer, integer): SceneAPI_DataTypes_Color
	GetControlPointIndex: function(IBlendShapeData, integer): integer
	GetFaceCount: function(IBlendShapeData): integer
	GetFaceInfo: function(IBlendShapeData, integer): SceneAPI_DataTypes_IBlendShapeData_Face
	GetFaceVertexIndex: function(IBlendShapeData, integer, integer): integer
	GetNormal: function(IBlendShapeData, integer): Vector3
	GetPosition: function(IBlendShapeData, integer): Vector3
	GetTangent: function(BlendShapeData, integer): Vector4
	GetUV: function(BlendShapeData, integer, integer): Vector2
	GetUsedControlPointCount: function(IBlendShapeData): integer
	GetUsedPointIndexForControlPoint: function(IBlendShapeData, integer): integer
	GetVertexCount: function(IBlendShapeData): integer
	ReleaseOwnership: function(): any
end


global record BlendShapeDataFace
	AcquireOwnership: function(): any
	GetVertexIndex: function(SceneAPI_DataTypes_IBlendShapeData_Face, integer): integer
	ReleaseOwnership: function(): any
end


global record BorderColor
	OpaqueBlack: any
	OpaqueWhite: any
	TransparentBlack: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record BoxShapeConfig
	Dimensions: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record CameraComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record CapsuleShapeConfig
	Height: any
	Radius: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record CollisionEvent
	Contacts: any

	AcquireOwnership: function(): any
	GetBody1EntityId: function(CollisionEvent): EntityId
	GetBody2EntityId: function(CollisionEvent): EntityId
	ReleaseOwnership: function(): any
end


global record CollisionGroup
end


global record Color
	a: any
	b: any
	g: any
	r: any

	Clone: function(Color): Color
	ConstructFromValues: function(integer, integer, integer, integer): Color
	CreateFromVector3: function(Vector3): Color
	CreateFromVector3AndFloat: function(Vector3, number): Color
	CreateOne: function(): Color
	CreateZero: function(): Color
	Dot: function(Color, Color): number
	Dot3: function(Color, Color): number
	FromU32: function(Color, integer): any
	FromU32GammaToLinear: function(Color, integer): any
	GammaToLinear: function(Color): Color
	GetElement: function(Color, integer): number
	IsClose: function(Color, Color, number): boolean
	IsGreaterEqualThan: function(Color, Color): boolean
	IsGreaterThan: function(Color, Color): boolean
	IsLessEqualThan: function(Color, Color): boolean
	IsLessThan: function(Color, Color): boolean
	IsZero: function(Color, number): boolean
	LinearToGamma: function(Color): Color
	Set: function(): any...
	SetElement: function(Color, integer, number): any
	ToU32: function(Color): integer
	ToU32LinearToGamma: function(Color): integer
end


global record ComparisonFunc
	Always: any
	Equal: any
	Greater: any
	GreaterEqual: any
	Invalid: any
	Less: any
	LessEqual: any
	Never: any
	NotEqual: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ComponentId
	IsValid: function(BehaviorComponentId): boolean
end


global record ConstantGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ConstantGradientConfig
	constantValue: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Contact
	Impulse: any
	Normal: any
	Position: any
	Separation: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record CullMode
	Back: any
	Front: any
	Invalid: any
	None: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record CustomPropertyData
	AcquireOwnership: function(): any
	GetPropertyMap: function(CustomPropertyData): unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
end


global record CylinderShapeConfig
	Height: any
	Radius: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record DepthWriteMask
	All: any
	Invalid: any
	Zero: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record DiskShapeConfig
	Radius: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record DitherGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record DitherGradientConfig
	gradientSampler: any
	patternOffset: any
	patternType: any
	pointsPerUnit: any
	useSystemPointsPerUnit: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EditorActorComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EditorCameraComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EditorGradientBakerComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EditorSequenceComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EditorSimpleMotionComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EditorTransformBus
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Entity
	Activate: function(BehaviorEntity): any
	CreateComponent: function(BehaviorEntity, AZ_Uuid, ComponentConfig): BehaviorComponentId
	Deactivate: function(BehaviorEntity): any
	DestroyComponent: function(BehaviorEntity, BehaviorComponentId): boolean
	Exists: function(BehaviorEntity): boolean
	FindAllComponentsOfType: function(BehaviorEntity, AZ_Uuid): vector_BehaviorComponentId
	FindComponentOfType: function(BehaviorEntity, AZ_Uuid): BehaviorComponentId
	GetComponentConfiguration: function(BehaviorEntity, BehaviorComponentId, ComponentConfig): boolean
	GetComponentName: function(BehaviorEntity, BehaviorComponentId): string
	GetComponentType: function(BehaviorEntity, BehaviorComponentId): AZ_Uuid
	GetComponents: function(BehaviorEntity): vector_BehaviorComponentId
	GetId: function(BehaviorEntity): EntityId
	GetName: function(BehaviorEntity): string
	GetOwningContextId: function(BehaviorEntity): AZ_Uuid
	IsActivated: function(BehaviorEntity): boolean
	IsValid: function(BehaviorEntity): boolean
	SetComponentConfiguration: function(BehaviorEntity, BehaviorComponentId, ComponentConfig): boolean
	SetName: function(BehaviorEntity, string): any
end


global record EntityId
	IsValid: function(EntityId): boolean

	metamethod __call: function(self): EntityId
end


global record EntityPreviewViewportSettings
	displayMapperOperationType: any
	enableAlternateSkybox: any
	enableGrid: any
	enableShadowCatcher: any
	fieldOfView: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record EntitySpawnTicket
	AcquireOwnership: function(): any
	GetId: function(AzFramework_EntitySpawnTicket): integer
	ReleaseOwnership: function(): any
end


global record EventHandler_basic_string_view_char_char_traits_char
	AcquireOwnership: function(): any
	Disconnect: function(EventHandler_basic_string_view_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record EventHandler_float
	AcquireOwnership: function(): any
	Disconnect: function(EventHandler_float): any
	ReleaseOwnership: function(): any
end


global record EventHandler_tuple_Crc32_AZ_s8_Vector3constRef
	AcquireOwnership: function(): any
	Disconnect: function(EventHandler_tuple_Crc32_AZ_s8_Vector3): any
	ReleaseOwnership: function(): any
end


global record EventHandler_tuple_Crc32_int_CollisionEventconstRef
	AcquireOwnership: function(): any
	Disconnect: function(EventHandler_tuple_Crc32_int_CollisionEvent): any
	ReleaseOwnership: function(): any
end


global record EventHandler_tuple_Crc32_int_TriggerEventconstRef
	AcquireOwnership: function(): any
	Disconnect: function(EventHandler_tuple_Crc32_int_TriggerEvent): any
	ReleaseOwnership: function(): any
end


global record Event_basic_string_view_char_char_traits_char
	AcquireOwnership: function(): any
	Connect: function(): any
	HasHandlerConnected: function(Event_basic_string_view_char_char_traits_char): boolean
	ReleaseOwnership: function(): any
end


global record Event_float
	AcquireOwnership: function(): any
	Connect: function(): any
	HasHandlerConnected: function(Event_float): boolean
	ReleaseOwnership: function(): any
end


global record Event_tuple_Crc32_AZ_s8_Vector3constRef
	AcquireOwnership: function(): any
	Connect: function(): any
	HasHandlerConnected: function(Event_tuple_Crc32_AZ_s8_Vector3): boolean
	ReleaseOwnership: function(): any
end


global record Event_tuple_Crc32_int_CollisionEventconstRef
	AcquireOwnership: function(): any
	Connect: function(): any
	HasHandlerConnected: function(Event_tuple_Crc32_int_CollisionEvent): boolean
	ReleaseOwnership: function(): any
end


global record Event_tuple_Crc32_int_TriggerEventconstRef
	AcquireOwnership: function(): any
	Connect: function(): any
	HasHandlerConnected: function(Event_tuple_Crc32_int_TriggerEvent): boolean
	ReleaseOwnership: function(): any
end


global record ExposureControlConfig
	autoExposureMax: any
	autoExposureMin: any
	autoExposureSpeedDown: any
	autoExposureSpeedUp: any
	compensateValue: any
	exposureControlType: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record FillMode
	Invalid: any
	Solid: any
	Wireframe: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record FilterMode
	Linear: any
	Point: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record FloatRange
	max: any
	min: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record GameplayNotificationId
	actionNameCrc: any
	channel: any
	payloadTypeId: any

	Clone: function(GameplayNotificationId): GameplayNotificationId
end


global record GradientSampleParams
	position: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record GradientSampler
	enableLevels: any
	enableTransforms: any
	gradientId: any
	inputMax: any
	inputMid: any
	inputMin: any
	invertInput: any
	opacity: any
	outputMax: any
	outputMin: any
	rotation: any
	scale: any
	translation: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record GradientSurfaceDataConfig
	ShapeConstraintEntityId: any

	AcquireOwnership: function(): any
	AddTag: function(GradientSurfaceDataConfig, string): any
	GetNumTags: function(GradientSurfaceDataConfig): integer
	GetTag: function(GradientSurfaceDataConfig, integer): Crc32
	ReleaseOwnership: function(): any
	RemoveTag: function(GradientSurfaceDataConfig, integer): any
end


global record GradientTransformComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record GradientTransformConfig
	advancedMode: any
	allowReference: any
	bounds: any
	center: any
	frequencyZoom: any
	is3d: any
	overrideBounds: any
	overrideRotate: any
	overrideScale: any
	overrideTranslate: any
	rotate: any
	scale: any
	shapeReference: any
	transformType: any
	translate: any
	wrappingType: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record HeightMaterialPoint
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record IAnimationData
	AcquireOwnership: function(): any
	GetKeyFrame: function(IAnimationData, integer): Matrix3x4
	GetKeyFrameCount: function(IAnimationData): integer
	GetTimeStepBetweenFrames: function(IAnimationData): number
	ReleaseOwnership: function(): any
end


global record IBlendShapeAnimationData
	AcquireOwnership: function(): any
	GetBlendShapeName: function(IBlendShapeAnimationData): string
	GetKeyFrame: function(IBlendShapeAnimationData, integer): number
	GetKeyFrameCount: function(IBlendShapeAnimationData): integer
	GetTimeStepBetweenFrames: function(IBlendShapeAnimationData): number
	ReleaseOwnership: function(): any
end


global record IBlendShapeData
	AcquireOwnership: function(): any
	GetControlPointIndex: function(IBlendShapeData, integer): integer
	GetFaceCount: function(IBlendShapeData): integer
	GetFaceInfo: function(IBlendShapeData, integer): SceneAPI_DataTypes_IBlendShapeData_Face
	GetFaceVertexIndex: function(IBlendShapeData, integer, integer): integer
	GetNormal: function(IBlendShapeData, integer): Vector3
	GetPosition: function(IBlendShapeData, integer): Vector3
	GetUsedControlPointCount: function(IBlendShapeData): integer
	GetUsedPointIndexForControlPoint: function(IBlendShapeData, integer): integer
	GetVertexCount: function(IBlendShapeData): integer
	ReleaseOwnership: function(): any
end


global record IBoneData
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record IGraphObject
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record IMaterialData
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record IMeshData
	AcquireOwnership: function(): any
	GetOriginalUnitSizeInMeters: function(IMeshData): number
	GetUnitSizeInMeters: function(IMeshData): number
	ReleaseOwnership: function(): any
end


global record Image
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ImageGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ImageGradientConfig
	tiling: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record InputDeviceGamepad
	deviceIndex: any
	deviceName: any
	gamepad_button_a: any
	gamepad_button_b: any
	gamepad_button_d_down: any
	gamepad_button_d_left: any
	gamepad_button_d_right: any
	gamepad_button_d_up: any
	gamepad_button_l1: any
	gamepad_button_l3: any
	gamepad_button_r1: any
	gamepad_button_r3: any
	gamepad_button_select: any
	gamepad_button_start: any
	gamepad_button_x: any
	gamepad_button_y: any
	gamepad_thumbstick_l: any
	gamepad_thumbstick_l_down: any
	gamepad_thumbstick_l_left: any
	gamepad_thumbstick_l_right: any
	gamepad_thumbstick_l_up: any
	gamepad_thumbstick_l_x: any
	gamepad_thumbstick_l_y: any
	gamepad_thumbstick_r: any
	gamepad_thumbstick_r_down: any
	gamepad_thumbstick_r_left: any
	gamepad_thumbstick_r_right: any
	gamepad_thumbstick_r_up: any
	gamepad_thumbstick_r_x: any
	gamepad_thumbstick_r_y: any
	gamepad_trigger_l2: any
	gamepad_trigger_r2: any
	localUserId: any
	name: any

	AcquireOwnership: function(): any
	IsConnected: function(InputDevice): boolean
	IsSupported: function(InputDevice): boolean
	PromptLocalUserSignIn: function(InputDevice): any
	ReleaseOwnership: function(): any
end


global record InputDeviceKeyboard
	deviceIndex: any
	deviceName: any
	keyboard_key_alphanumeric_0: any
	keyboard_key_alphanumeric_1: any
	keyboard_key_alphanumeric_2: any
	keyboard_key_alphanumeric_3: any
	keyboard_key_alphanumeric_4: any
	keyboard_key_alphanumeric_5: any
	keyboard_key_alphanumeric_6: any
	keyboard_key_alphanumeric_7: any
	keyboard_key_alphanumeric_8: any
	keyboard_key_alphanumeric_9: any
	keyboard_key_alphanumeric_A: any
	keyboard_key_alphanumeric_B: any
	keyboard_key_alphanumeric_C: any
	keyboard_key_alphanumeric_D: any
	keyboard_key_alphanumeric_E: any
	keyboard_key_alphanumeric_F: any
	keyboard_key_alphanumeric_G: any
	keyboard_key_alphanumeric_H: any
	keyboard_key_alphanumeric_I: any
	keyboard_key_alphanumeric_J: any
	keyboard_key_alphanumeric_K: any
	keyboard_key_alphanumeric_L: any
	keyboard_key_alphanumeric_M: any
	keyboard_key_alphanumeric_N: any
	keyboard_key_alphanumeric_O: any
	keyboard_key_alphanumeric_P: any
	keyboard_key_alphanumeric_Q: any
	keyboard_key_alphanumeric_R: any
	keyboard_key_alphanumeric_S: any
	keyboard_key_alphanumeric_T: any
	keyboard_key_alphanumeric_U: any
	keyboard_key_alphanumeric_V: any
	keyboard_key_alphanumeric_W: any
	keyboard_key_alphanumeric_X: any
	keyboard_key_alphanumeric_Y: any
	keyboard_key_alphanumeric_Z: any
	keyboard_key_edit_backspace: any
	keyboard_key_edit_capslock: any
	keyboard_key_edit_enter: any
	keyboard_key_edit_space: any
	keyboard_key_edit_tab: any
	keyboard_key_escape: any
	keyboard_key_function_F01: any
	keyboard_key_function_F02: any
	keyboard_key_function_F03: any
	keyboard_key_function_F04: any
	keyboard_key_function_F05: any
	keyboard_key_function_F06: any
	keyboard_key_function_F07: any
	keyboard_key_function_F08: any
	keyboard_key_function_F09: any
	keyboard_key_function_F10: any
	keyboard_key_function_F11: any
	keyboard_key_function_F12: any
	keyboard_key_function_F13: any
	keyboard_key_function_F14: any
	keyboard_key_function_F15: any
	keyboard_key_function_F16: any
	keyboard_key_function_F17: any
	keyboard_key_function_F18: any
	keyboard_key_function_F19: any
	keyboard_key_function_F20: any
	keyboard_key_modifier_alt_l: any
	keyboard_key_modifier_alt_r: any
	keyboard_key_modifier_ctrl_l: any
	keyboard_key_modifier_ctrl_r: any
	keyboard_key_modifier_shift_l: any
	keyboard_key_modifier_shift_r: any
	keyboard_key_modifier_super_l: any
	keyboard_key_modifier_super_r: any
	keyboard_key_navigation_arrow_down: any
	keyboard_key_navigation_arrow_left: any
	keyboard_key_navigation_arrow_right: any
	keyboard_key_navigation_arrow_up: any
	keyboard_key_navigation_delete: any
	keyboard_key_navigation_end: any
	keyboard_key_navigation_home: any
	keyboard_key_navigation_insert: any
	keyboard_key_navigation_page_down: any
	keyboard_key_navigation_page_up: any
	keyboard_key_num_lock: any
	keyboard_key_numpad_0: any
	keyboard_key_numpad_1: any
	keyboard_key_numpad_2: any
	keyboard_key_numpad_3: any
	keyboard_key_numpad_4: any
	keyboard_key_numpad_5: any
	keyboard_key_numpad_6: any
	keyboard_key_numpad_7: any
	keyboard_key_numpad_8: any
	keyboard_key_numpad_9: any
	keyboard_key_numpad_add: any
	keyboard_key_numpad_decimal: any
	keyboard_key_numpad_divide: any
	keyboard_key_numpad_enter: any
	keyboard_key_numpad_multiply: any
	keyboard_key_numpad_subtract: any
	keyboard_key_punctuation_apostrophe: any
	keyboard_key_punctuation_backslash: any
	keyboard_key_punctuation_bracket_l: any
	keyboard_key_punctuation_bracket_r: any
	keyboard_key_punctuation_comma: any
	keyboard_key_punctuation_equals: any
	keyboard_key_punctuation_hyphen: any
	keyboard_key_punctuation_period: any
	keyboard_key_punctuation_semicolon: any
	keyboard_key_punctuation_slash: any
	keyboard_key_punctuation_tilde: any
	keyboard_key_supplementary_iso: any
	keyboard_key_windows_system_pause: any
	keyboard_key_windows_system_print: any
	keyboard_key_windows_system_scroll_lock: any
	localUserId: any
	name: any

	AcquireOwnership: function(): any
	IsConnected: function(InputDevice): boolean
	IsSupported: function(InputDevice): boolean
	PromptLocalUserSignIn: function(InputDevice): any
	ReleaseOwnership: function(): any
end


global record InputDeviceMotion
	deviceIndex: any
	deviceName: any
	localUserId: any
	motion_acceleration_gravity: any
	motion_acceleration_raw: any
	motion_acceleration_user: any
	motion_magnetic_field_north: any
	motion_magnetic_field_raw: any
	motion_magnetic_field_unbiased: any
	motion_orientation_current: any
	motion_rotation_rate_raw: any
	motion_rotation_rate_unbiased: any
	name: any

	AcquireOwnership: function(): any
	IsConnected: function(InputDevice): boolean
	IsSupported: function(InputDevice): boolean
	PromptLocalUserSignIn: function(InputDevice): any
	ReleaseOwnership: function(): any
end


global record InputDeviceMouse
	deviceIndex: any
	deviceName: any
	localUserId: any
	mouse_button_left: any
	mouse_button_middle: any
	mouse_button_other1: any
	mouse_button_other2: any
	mouse_button_right: any
	mouse_delta_x: any
	mouse_delta_y: any
	mouse_delta_z: any
	name: any

	AcquireOwnership: function(): any
	IsConnected: function(InputDevice): boolean
	IsSupported: function(InputDevice): boolean
	PromptLocalUserSignIn: function(InputDevice): any
	ReleaseOwnership: function(): any
end


global record InputDeviceTouch
	deviceIndex: any
	deviceName: any
	localUserId: any
	name: any
	touch_index_0: any
	touch_index_1: any
	touch_index_2: any
	touch_index_3: any
	touch_index_4: any
	touch_index_5: any
	touch_index_6: any
	touch_index_7: any
	touch_index_8: any
	touch_index_9: any

	AcquireOwnership: function(): any
	IsConnected: function(InputDevice): boolean
	IsSupported: function(InputDevice): boolean
	PromptLocalUserSignIn: function(InputDevice): any
	ReleaseOwnership: function(): any
end


global record InputDeviceVirtualKeyboard
	deviceIndex: any
	deviceName: any
	localUserId: any
	name: any
	virtual_keyboard_edit_clear: any
	virtual_keyboard_edit_enter: any
	virtual_keyboard_navigation_back: any

	AcquireOwnership: function(): any
	IsConnected: function(InputDevice): boolean
	IsSupported: function(InputDevice): boolean
	PromptLocalUserSignIn: function(InputDevice): any
	ReleaseOwnership: function(): any
end


global record InputEventNotificationId
	actionName: any
	actionNameCrc: any
	localUserId: any

	Clone: function(InputEventNotificationId): InputEventNotificationId
	CreateInputEventNotificationId: function(localUserId: integer, actionName: basic_string_view_char_char_traits_char): InputEventNotificationId

	metamethod __call: function(self, string): InputEventNotificationId
end


global record InvertGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record InvertGradientConfig
	gradientSampler: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): boolean
	ModValueUnchecked: function(Iterator_VM_AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): shared_ptr_IManifestObject
	Next: function(Iterator_VM_AZ_SceneAPI_PrefabGroupRequests_ManifestUpdates): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): AZ_Render_MaterialAssignmentId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): AZ_Render_MaterialAssignment
	Next: function(Iterator_VM_unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): AZ_Uuid
	IsNotAtEnd: function(Iterator_VM_unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Next: function(Iterator_VM_unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): Aabb
	Next: function(Iterator_VM_unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): AssetId
	Next: function(Iterator_VM_unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): Color
	Next: function(Iterator_VM_unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): Crc32
	Next: function(Iterator_VM_unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): EntityId
	Next: function(Iterator_VM_unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): Matrix3x3
	Next: function(Iterator_VM_unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): Matrix4x4
	Next: function(Iterator_VM_unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): MatrixMxN
	Next: function(Iterator_VM_unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): Obb
	Next: function(Iterator_VM_unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): Plane
	Next: function(Iterator_VM_unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): Quaternion
	Next: function(Iterator_VM_unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): Transform
	Next: function(Iterator_VM_unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): Vector2
	Next: function(Iterator_VM_unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): Vector3
	Next: function(Iterator_VM_unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): Vector4
	Next: function(Iterator_VM_unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): VectorN
	Next: function(Iterator_VM_unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): string
	Next: function(Iterator_VM_unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): boolean
	Next: function(Iterator_VM_unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): number
	Next: function(Iterator_VM_unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): Aabb
	Next: function(Iterator_VM_unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): AssetId
	Next: function(Iterator_VM_unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): Color
	Next: function(Iterator_VM_unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): Crc32
	Next: function(Iterator_VM_unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): EntityId
	Next: function(Iterator_VM_unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): Matrix3x3
	Next: function(Iterator_VM_unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): Matrix4x4
	Next: function(Iterator_VM_unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): MatrixMxN
	Next: function(Iterator_VM_unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): Obb
	Next: function(Iterator_VM_unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): Plane
	Next: function(Iterator_VM_unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): Quaternion
	Next: function(Iterator_VM_unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): Transform
	Next: function(Iterator_VM_unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): Vector2
	Next: function(Iterator_VM_unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): Vector3
	Next: function(Iterator_VM_unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): Vector4
	Next: function(Iterator_VM_unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): VectorN
	Next: function(Iterator_VM_unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): string
	Next: function(Iterator_VM_unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): boolean
	Next: function(Iterator_VM_unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): number
	Next: function(Iterator_VM_unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): Aabb
	Next: function(Iterator_VM_unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): AssetId
	Next: function(Iterator_VM_unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): Color
	Next: function(Iterator_VM_unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): Crc32
	Next: function(Iterator_VM_unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): EntityId
	Next: function(Iterator_VM_unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): Matrix3x3
	Next: function(Iterator_VM_unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): Matrix4x4
	Next: function(Iterator_VM_unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): MatrixMxN
	Next: function(Iterator_VM_unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): Obb
	Next: function(Iterator_VM_unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): Plane
	Next: function(Iterator_VM_unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): Quaternion
	Next: function(Iterator_VM_unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): Transform
	Next: function(Iterator_VM_unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): Vector2
	Next: function(Iterator_VM_unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): Vector3
	Next: function(Iterator_VM_unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): Vector4
	Next: function(Iterator_VM_unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): VectorN
	Next: function(Iterator_VM_unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): string
	Next: function(Iterator_VM_unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): boolean
	Next: function(Iterator_VM_unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): number
	Next: function(Iterator_VM_unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Name_Name_hash_Name_equal_to_Name
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Name_Name_hash_Name_equal_to_Name): Name
	IsNotAtEnd: function(Iterator_VM_unordered_map_Name_Name_hash_Name_equal_to_Name): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Name_Name_hash_Name_equal_to_Name): Name
	Next: function(Iterator_VM_unordered_map_Name_Name_hash_Name_equal_to_Name): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_Name_any_hash_Name_equal_to_Name
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_Name_any_hash_Name_equal_to_Name): Name
	IsNotAtEnd: function(Iterator_VM_unordered_map_Name_any_hash_Name_equal_to_Name): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_Name_any_hash_Name_equal_to_Name): any
	Next: function(Iterator_VM_unordered_map_Name_any_hash_Name_equal_to_Name): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Aabb
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): AssetId
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): AzFramework_EntitySpawnTicket
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): AzFramework_Scripts_SpawnableScriptAssetRef
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Color
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Crc32
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): EntityId
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Matrix3x3
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Matrix4x4
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): MatrixMxN
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Obb
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Plane
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Quaternion
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Transform
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Vector2
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Vector3
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Vector4
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): VectorN
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): number
	Next: function(Iterator_VM_unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Aabb_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Aabb_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Aabb_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Aabb_hash_bool_equal_to_bool): Aabb
	Next: function(Iterator_VM_unordered_map_bool_Aabb_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_AssetId_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_AssetId_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_AssetId_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_AssetId_hash_bool_equal_to_bool): AssetId
	Next: function(Iterator_VM_unordered_map_bool_AssetId_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Color_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Color_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Color_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Color_hash_bool_equal_to_bool): Color
	Next: function(Iterator_VM_unordered_map_bool_Color_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Crc32_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Crc32_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Crc32_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Crc32_hash_bool_equal_to_bool): Crc32
	Next: function(Iterator_VM_unordered_map_bool_Crc32_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_EntityId_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_EntityId_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_EntityId_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_EntityId_hash_bool_equal_to_bool): EntityId
	Next: function(Iterator_VM_unordered_map_bool_EntityId_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): Matrix3x3
	Next: function(Iterator_VM_unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): Matrix4x4
	Next: function(Iterator_VM_unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): MatrixMxN
	Next: function(Iterator_VM_unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Obb_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Obb_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Obb_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Obb_hash_bool_equal_to_bool): Obb
	Next: function(Iterator_VM_unordered_map_bool_Obb_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Plane_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Plane_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Plane_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Plane_hash_bool_equal_to_bool): Plane
	Next: function(Iterator_VM_unordered_map_bool_Plane_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Quaternion_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Quaternion_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Quaternion_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Quaternion_hash_bool_equal_to_bool): Quaternion
	Next: function(Iterator_VM_unordered_map_bool_Quaternion_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Transform_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Transform_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Transform_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Transform_hash_bool_equal_to_bool): Transform
	Next: function(Iterator_VM_unordered_map_bool_Transform_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Vector2_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Vector2_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Vector2_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Vector2_hash_bool_equal_to_bool): Vector2
	Next: function(Iterator_VM_unordered_map_bool_Vector2_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Vector3_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Vector3_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Vector3_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Vector3_hash_bool_equal_to_bool): Vector3
	Next: function(Iterator_VM_unordered_map_bool_Vector3_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_Vector4_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_Vector4_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_Vector4_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_Vector4_hash_bool_equal_to_bool): Vector4
	Next: function(Iterator_VM_unordered_map_bool_Vector4_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_VectorN_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_VectorN_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_VectorN_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_VectorN_hash_bool_equal_to_bool): VectorN
	Next: function(Iterator_VM_unordered_map_bool_VectorN_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): string
	Next: function(Iterator_VM_unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_bool_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_bool_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_bool_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_bool_hash_bool_equal_to_bool): boolean
	Next: function(Iterator_VM_unordered_map_bool_bool_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_bool_double_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_bool_double_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_map_bool_double_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_bool_double_hash_bool_equal_to_bool): number
	Next: function(Iterator_VM_unordered_map_bool_double_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Aabb_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Aabb_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Aabb_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Aabb_hash_double_equal_to_double): Aabb
	Next: function(Iterator_VM_unordered_map_double_Aabb_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_AssetId_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_AssetId_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_AssetId_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_AssetId_hash_double_equal_to_double): AssetId
	Next: function(Iterator_VM_unordered_map_double_AssetId_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): AzFramework_EntitySpawnTicket
	Next: function(Iterator_VM_unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): AzFramework_Scripts_SpawnableScriptAssetRef
	Next: function(Iterator_VM_unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Color_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Color_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Color_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Color_hash_double_equal_to_double): Color
	Next: function(Iterator_VM_unordered_map_double_Color_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Crc32_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Crc32_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Crc32_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Crc32_hash_double_equal_to_double): Crc32
	Next: function(Iterator_VM_unordered_map_double_Crc32_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_EntityId_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_EntityId_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_EntityId_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_EntityId_hash_double_equal_to_double): EntityId
	Next: function(Iterator_VM_unordered_map_double_EntityId_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Matrix3x3_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Matrix3x3_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Matrix3x3_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Matrix3x3_hash_double_equal_to_double): Matrix3x3
	Next: function(Iterator_VM_unordered_map_double_Matrix3x3_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Matrix4x4_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Matrix4x4_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Matrix4x4_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Matrix4x4_hash_double_equal_to_double): Matrix4x4
	Next: function(Iterator_VM_unordered_map_double_Matrix4x4_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_MatrixMxN_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_MatrixMxN_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_MatrixMxN_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_MatrixMxN_hash_double_equal_to_double): MatrixMxN
	Next: function(Iterator_VM_unordered_map_double_MatrixMxN_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Obb_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Obb_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Obb_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Obb_hash_double_equal_to_double): Obb
	Next: function(Iterator_VM_unordered_map_double_Obb_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Plane_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Plane_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Plane_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Plane_hash_double_equal_to_double): Plane
	Next: function(Iterator_VM_unordered_map_double_Plane_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Quaternion_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Quaternion_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Quaternion_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Quaternion_hash_double_equal_to_double): Quaternion
	Next: function(Iterator_VM_unordered_map_double_Quaternion_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Transform_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Transform_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Transform_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Transform_hash_double_equal_to_double): Transform
	Next: function(Iterator_VM_unordered_map_double_Transform_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Vector2_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Vector2_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Vector2_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Vector2_hash_double_equal_to_double): Vector2
	Next: function(Iterator_VM_unordered_map_double_Vector2_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Vector3_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Vector3_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Vector3_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Vector3_hash_double_equal_to_double): Vector3
	Next: function(Iterator_VM_unordered_map_double_Vector3_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_Vector4_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_Vector4_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_Vector4_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_Vector4_hash_double_equal_to_double): Vector4
	Next: function(Iterator_VM_unordered_map_double_Vector4_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_VectorN_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_VectorN_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_VectorN_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_VectorN_hash_double_equal_to_double): VectorN
	Next: function(Iterator_VM_unordered_map_double_VectorN_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): string
	Next: function(Iterator_VM_unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_bool_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_bool_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_bool_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_bool_hash_double_equal_to_double): boolean
	Next: function(Iterator_VM_unordered_map_double_bool_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_double_double_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_double_double_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_map_double_double_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_double_double_hash_double_equal_to_double): number
	Next: function(Iterator_VM_unordered_map_double_double_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): integer
	IsNotAtEnd: function(Iterator_VM_unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): pair_int_unsignedint
	Next: function(Iterator_VM_unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_int_shared_ptr_Node_hash_int_equal_to_int
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): integer
	IsNotAtEnd: function(Iterator_VM_unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): shared_ptr_Node
	Next: function(Iterator_VM_unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): integer
	IsNotAtEnd: function(Iterator_VM_unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): TargetBlendState
	Next: function(Iterator_VM_unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_AssetId_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_AssetId_hash_AssetId_equal_to_AssetId): AssetId
	IsNotAtEnd: function(Iterator_VM_unordered_set_AssetId_hash_AssetId_equal_to_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_AssetId_hash_AssetId_equal_to_AssetId): AssetId
	Next: function(Iterator_VM_unordered_set_AssetId_hash_AssetId_equal_to_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_Crc32_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_Crc32_hash_Crc32_equal_to_Crc32): Crc32
	IsNotAtEnd: function(Iterator_VM_unordered_set_Crc32_hash_Crc32_equal_to_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_Crc32_hash_Crc32_equal_to_Crc32): Crc32
	Next: function(Iterator_VM_unordered_set_Crc32_hash_Crc32_equal_to_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_EntityId_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_EntityId_hash_EntityId_equal_to_EntityId): EntityId
	IsNotAtEnd: function(Iterator_VM_unordered_set_EntityId_hash_EntityId_equal_to_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_EntityId_hash_EntityId_equal_to_EntityId): EntityId
	Next: function(Iterator_VM_unordered_set_EntityId_hash_EntityId_equal_to_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_Name_hash_Name_equal_to_Name
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_Name_hash_Name_equal_to_Name): Name
	IsNotAtEnd: function(Iterator_VM_unordered_set_Name_hash_Name_equal_to_Name): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_Name_hash_Name_equal_to_Name): Name
	Next: function(Iterator_VM_unordered_set_Name_hash_Name_equal_to_Name): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): SurfaceTag
	IsNotAtEnd: function(Iterator_VM_unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): SurfaceTag
	Next: function(Iterator_VM_unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	IsNotAtEnd: function(Iterator_VM_unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): string
	Next: function(Iterator_VM_unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_bool_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_bool_hash_bool_equal_to_bool): boolean
	IsNotAtEnd: function(Iterator_VM_unordered_set_bool_hash_bool_equal_to_bool): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_bool_hash_bool_equal_to_bool): boolean
	Next: function(Iterator_VM_unordered_set_bool_hash_bool_equal_to_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_unordered_set_double_hash_double_equal_to_double
	AcquireOwnership: function(): any
	GetKeyUnchecked: function(Iterator_VM_unordered_set_double_hash_double_equal_to_double): number
	IsNotAtEnd: function(Iterator_VM_unordered_set_double_hash_double_equal_to_double): boolean
	ModValueUnchecked: function(Iterator_VM_unordered_set_double_hash_double_equal_to_double): number
	Next: function(Iterator_VM_unordered_set_double_hash_double_equal_to_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_IO_FixedMaxPath
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_IO_FixedMaxPath): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_IO_FixedMaxPath): AZ_IO_FixedMaxPath
	Next: function(Iterator_VM_vector_AZ_IO_FixedMaxPath): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_IO_Path
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_IO_Path): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_IO_Path): AZ_IO_Path
	Next: function(Iterator_VM_vector_AZ_IO_Path): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_IO_PathView
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_IO_PathView): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_IO_PathView): AZ_IO_PathView
	Next: function(Iterator_VM_vector_AZ_IO_PathView): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_RPI_ShaderOptionDescriptor
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_RPI_ShaderOptionDescriptor): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_RPI_ShaderOptionDescriptor): AZ_RPI_ShaderOptionDescriptor
	Next: function(Iterator_VM_vector_AZ_RPI_ShaderOptionDescriptor): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_RPI_ShaderSourceData_EntryPoint
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_RPI_ShaderSourceData_EntryPoint): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_RPI_ShaderSourceData_EntryPoint): AZ_RPI_ShaderSourceData_EntryPoint
	Next: function(Iterator_VM_vector_AZ_RPI_ShaderSourceData_EntryPoint): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_RPI_ShaderSourceData_SupervariantInfo): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_RPI_ShaderSourceData_SupervariantInfo): AZ_RPI_ShaderSourceData_SupervariantInfo
	Next: function(Iterator_VM_vector_AZ_RPI_ShaderSourceData_SupervariantInfo): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): AZ_RPI_ShaderVariantListSourceData_VariantInfo
	Next: function(Iterator_VM_vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_Render_LightConfig
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_Render_LightConfig): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_Render_LightConfig): AZ_Render_LightConfig
	Next: function(Iterator_VM_vector_AZ_Render_LightConfig): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_Render_MaterialAssignmentId
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_Render_MaterialAssignmentId): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_Render_MaterialAssignmentId): AZ_Render_MaterialAssignmentId
	Next: function(Iterator_VM_vector_AZ_Render_MaterialAssignmentId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AZ_Uuid
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AZ_Uuid): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AZ_Uuid): AZ_Uuid
	Next: function(Iterator_VM_vector_AZ_Uuid): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Aabb
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Aabb): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Aabb): Aabb
	Next: function(Iterator_VM_vector_Aabb): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AssetId
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AssetId): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AssetId): AssetId
	Next: function(Iterator_VM_vector_AssetId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Asset_Physics_MaterialAsset
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Asset_Physics_MaterialAsset): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Asset_Physics_MaterialAsset): Asset_Physics_MaterialAsset
	Next: function(Iterator_VM_vector_Asset_Physics_MaterialAsset): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Asset_RuntimeAsset
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Asset_RuntimeAsset): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Asset_RuntimeAsset): Asset_RuntimeAsset
	Next: function(Iterator_VM_vector_Asset_RuntimeAsset): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AzFramework_EntitySpawnTicket
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AzFramework_EntitySpawnTicket): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AzFramework_EntitySpawnTicket): AzFramework_EntitySpawnTicket
	Next: function(Iterator_VM_vector_AzFramework_EntitySpawnTicket): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AzFramework_Scripts_SpawnableScriptAssetRef
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AzFramework_Scripts_SpawnableScriptAssetRef): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AzFramework_Scripts_SpawnableScriptAssetRef): AzFramework_Scripts_SpawnableScriptAssetRef
	Next: function(Iterator_VM_vector_AzFramework_Scripts_SpawnableScriptAssetRef): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_AzToolsFramework_ComponentDetails
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_AzToolsFramework_ComponentDetails): boolean
	ModValueUnchecked: function(Iterator_VM_vector_AzToolsFramework_ComponentDetails): AzToolsFramework_ComponentDetails
	Next: function(Iterator_VM_vector_AzToolsFramework_ComponentDetails): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_BehaviorComponentId
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_BehaviorComponentId): boolean
	ModValueUnchecked: function(Iterator_VM_vector_BehaviorComponentId): BehaviorComponentId
	Next: function(Iterator_VM_vector_BehaviorComponentId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Color
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Color): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Color): Color
	Next: function(Iterator_VM_vector_Color): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Contact
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Contact): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Contact): Contact
	Next: function(Iterator_VM_vector_Contact): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Crc32
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Crc32): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Crc32): Crc32
	Next: function(Iterator_VM_vector_Crc32): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_DynamicNodeSlotConfig
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_DynamicNodeSlotConfig): boolean
	ModValueUnchecked: function(Iterator_VM_vector_DynamicNodeSlotConfig): DynamicNodeSlotConfig
	Next: function(Iterator_VM_vector_DynamicNodeSlotConfig): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_EntityComponentIdPair
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_EntityComponentIdPair): boolean
	ModValueUnchecked: function(Iterator_VM_vector_EntityComponentIdPair): EntityComponentIdPair
	Next: function(Iterator_VM_vector_EntityComponentIdPair): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_EntityId
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_EntityId): boolean
	ModValueUnchecked: function(Iterator_VM_vector_EntityId): EntityId
	Next: function(Iterator_VM_vector_EntityId): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_HeightMaterialPoint
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_HeightMaterialPoint): boolean
	ModValueUnchecked: function(Iterator_VM_vector_HeightMaterialPoint): HeightMaterialPoint
	Next: function(Iterator_VM_vector_HeightMaterialPoint): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_LuaClassSymbol
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_LuaClassSymbol): boolean
	ModValueUnchecked: function(Iterator_VM_vector_LuaClassSymbol): LuaClassSymbol
	Next: function(Iterator_VM_vector_LuaClassSymbol): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_LuaEBusSender
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_LuaEBusSender): boolean
	ModValueUnchecked: function(Iterator_VM_vector_LuaEBusSender): LuaEBusSender
	Next: function(Iterator_VM_vector_LuaEBusSender): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_LuaEBusSymbol
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_LuaEBusSymbol): boolean
	ModValueUnchecked: function(Iterator_VM_vector_LuaEBusSymbol): LuaEBusSymbol
	Next: function(Iterator_VM_vector_LuaEBusSymbol): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_LuaMethodSymbol
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_LuaMethodSymbol): boolean
	ModValueUnchecked: function(Iterator_VM_vector_LuaMethodSymbol): LuaMethodSymbol
	Next: function(Iterator_VM_vector_LuaMethodSymbol): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_LuaPropertySymbol
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_LuaPropertySymbol): boolean
	ModValueUnchecked: function(Iterator_VM_vector_LuaPropertySymbol): LuaPropertySymbol
	Next: function(Iterator_VM_vector_LuaPropertySymbol): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Matrix3x3
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Matrix3x3): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Matrix3x3): Matrix3x3
	Next: function(Iterator_VM_vector_Matrix3x3): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Matrix4x4
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Matrix4x4): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Matrix4x4): Matrix4x4
	Next: function(Iterator_VM_vector_Matrix4x4): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_MatrixMxN
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_MatrixMxN): boolean
	ModValueUnchecked: function(Iterator_VM_vector_MatrixMxN): MatrixMxN
	Next: function(Iterator_VM_vector_MatrixMxN): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Method
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Method): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Method): Method
	Next: function(Iterator_VM_vector_Method): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Name
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Name): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Name): Name
	Next: function(Iterator_VM_vector_Name): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Obb
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Obb): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Obb): Obb
	Next: function(Iterator_VM_vector_Obb): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Parameter
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Parameter): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Parameter): Parameter
	Next: function(Iterator_VM_vector_Parameter): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Plane
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Plane): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Plane): Plane
	Next: function(Iterator_VM_vector_Plane): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Quaternion
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Quaternion): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Quaternion): Quaternion
	Next: function(Iterator_VM_vector_Quaternion): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_SceneAPI_Events_ExportProduct
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_SceneAPI_Events_ExportProduct): boolean
	ModValueUnchecked: function(Iterator_VM_vector_SceneAPI_Events_ExportProduct): SceneAPI_Events_ExportProduct
	Next: function(Iterator_VM_vector_SceneAPI_Events_ExportProduct): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_SceneQueryHit
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_SceneQueryHit): boolean
	ModValueUnchecked: function(Iterator_VM_vector_SceneQueryHit): SceneQueryHit
	Next: function(Iterator_VM_vector_SceneQueryHit): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_SurfacePoint
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_SurfacePoint): boolean
	ModValueUnchecked: function(Iterator_VM_vector_SurfacePoint): SurfacePoint
	Next: function(Iterator_VM_vector_SurfacePoint): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_SurfaceTag
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_SurfaceTag): boolean
	ModValueUnchecked: function(Iterator_VM_vector_SurfaceTag): SurfaceTag
	Next: function(Iterator_VM_vector_SurfaceTag): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Transform
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Transform): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Transform): Transform
	Next: function(Iterator_VM_vector_Transform): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Vector2
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Vector2): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Vector2): Vector2
	Next: function(Iterator_VM_vector_Vector2): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Vector3
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Vector3): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Vector3): Vector3
	Next: function(Iterator_VM_vector_Vector3): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_Vector4
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_Vector4): boolean
	ModValueUnchecked: function(Iterator_VM_vector_Vector4): Vector4
	Next: function(Iterator_VM_vector_Vector4): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_VectorN
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_VectorN): boolean
	ModValueUnchecked: function(Iterator_VM_vector_VectorN): VectorN
	Next: function(Iterator_VM_vector_VectorN): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_VisibleGeometry
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_VisibleGeometry): boolean
	ModValueUnchecked: function(Iterator_VM_vector_VisibleGeometry): VisibleGeometry
	Next: function(Iterator_VM_vector_VisibleGeometry): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_WhiteBox_Api_FaceVertHandles
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_WhiteBox_Api_FaceVertHandles): boolean
	ModValueUnchecked: function(Iterator_VM_vector_WhiteBox_Api_FaceVertHandles): WhiteBox_Api_FaceVertHandles
	Next: function(Iterator_VM_vector_WhiteBox_Api_FaceVertHandles): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_WhiteBox_Api_PolygonHandle
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_WhiteBox_Api_PolygonHandle): boolean
	ModValueUnchecked: function(Iterator_VM_vector_WhiteBox_Api_PolygonHandle): WhiteBox_Api_PolygonHandle
	Next: function(Iterator_VM_vector_WhiteBox_Api_PolygonHandle): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): boolean
	ModValueUnchecked: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	Next: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): boolean
	ModValueUnchecked: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	Next: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): boolean
	ModValueUnchecked: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	Next: function(Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_any
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_any): boolean
	ModValueUnchecked: function(Iterator_VM_vector_any): any
	Next: function(Iterator_VM_vector_any): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_basic_string_char_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_vector_basic_string_char_char_traits_char): string
	Next: function(Iterator_VM_vector_basic_string_char_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_bool
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_bool): boolean
	ModValueUnchecked: function(Iterator_VM_vector_bool): boolean
	Next: function(Iterator_VM_vector_bool): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_char
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_char): boolean
	ModValueUnchecked: function(Iterator_VM_vector_char): string
	Next: function(Iterator_VM_vector_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_charconstPtr
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_char): boolean
	ModValueUnchecked: function(Iterator_VM_vector_char): string
	Next: function(Iterator_VM_vector_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_double
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_double): boolean
	ModValueUnchecked: function(Iterator_VM_vector_double): number
	Next: function(Iterator_VM_vector_double): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_fixed_string_char_1024_char_traits_char
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_fixed_string_char_1024_char_traits_char): boolean
	ModValueUnchecked: function(Iterator_VM_vector_fixed_string_char_1024_char_traits_char): fixed_string_char_1024_char_traits_char
	Next: function(Iterator_VM_vector_fixed_string_char_1024_char_traits_char): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_float
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_float): boolean
	ModValueUnchecked: function(Iterator_VM_vector_float): number
	Next: function(Iterator_VM_vector_float): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_int
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_int): boolean
	ModValueUnchecked: function(Iterator_VM_vector_int): integer
	Next: function(Iterator_VM_vector_int): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_pair_basic_string_char_char_traits_char__int
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_pair_basic_string_char_char_traits_char__int): boolean
	ModValueUnchecked: function(Iterator_VM_vector_pair_basic_string_char_char_traits_char__int): pair_basic_string_char_char_traits_char__int
	Next: function(Iterator_VM_vector_pair_basic_string_char_char_traits_char__int): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_shared_ptr_Connection
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_shared_ptr_Connection): boolean
	ModValueUnchecked: function(Iterator_VM_vector_shared_ptr_Connection): shared_ptr_Connection
	Next: function(Iterator_VM_vector_shared_ptr_Connection): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_shared_ptr_DataType
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_shared_ptr_DataType): boolean
	ModValueUnchecked: function(Iterator_VM_vector_shared_ptr_DataType): shared_ptr_DataType
	Next: function(Iterator_VM_vector_shared_ptr_DataType): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_shared_ptr_Node
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_shared_ptr_Node): boolean
	ModValueUnchecked: function(Iterator_VM_vector_shared_ptr_Node): shared_ptr_Node
	Next: function(Iterator_VM_vector_shared_ptr_Node): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_shared_ptr_SlotDefinitionconst
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_shared_ptr_SlotDefinitionconst): boolean
	ModValueUnchecked: function(Iterator_VM_vector_shared_ptr_SlotDefinitionconst): shared_ptr_SlotDefinitionconst
	Next: function(Iterator_VM_vector_shared_ptr_SlotDefinitionconst): any
	ReleaseOwnership: function(): any
end


global record Iterator_VM_vector_unsignedint
	AcquireOwnership: function(): any
	IsNotAtEnd: function(Iterator_VM_vector_unsignedint): boolean
	ModValueUnchecked: function(Iterator_VM_vector_unsignedint): integer
	Next: function(Iterator_VM_vector_unsignedint): any
	ReleaseOwnership: function(): any
end


global record LevelsGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record LevelsGradientConfig
	gradientSampler: any
	inputMax: any
	inputMid: any
	inputMin: any
	outputMax: any
	outputMin: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record LightConfig
	color: any
	direction: any
	enableShadowDebugColoring: any
	intensity: any
	shadowCascadeCount: any
	shadowFarClipDistance: any
	shadowRatioLogarithmUniform: any
	shadowmapSize: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record LightingPreset
	alternateSkyboxImageAsset: any
	exposure: any
	iblDiffuseImageAsset: any
	iblExposure: any
	iblSpecularImageAsset: any
	lights: any
	shadowCatcherOpacity: any
	skyboxExposure: any
	skyboxImageAsset: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record LmbrCentral_QuadShapeConfig
	Height: any
	Width: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record LuaMaterialFunctorAPI_EditorContext
	AcquireOwnership: function(): any
	GetMaterialPropertyValue_Color: function(LuaMaterialFunctorAPI_EditorContext, string): Color
	GetMaterialPropertyValue_Image: function(LuaMaterialFunctorAPI_EditorContext, string): Image
	GetMaterialPropertyValue_Vector2: function(LuaMaterialFunctorAPI_EditorContext, string): Vector2
	GetMaterialPropertyValue_Vector3: function(LuaMaterialFunctorAPI_EditorContext, string): Vector3
	GetMaterialPropertyValue_Vector4: function(LuaMaterialFunctorAPI_EditorContext, string): Vector4
	GetMaterialPropertyValue_bool: function(LuaMaterialFunctorAPI_EditorContext, string): boolean
	GetMaterialPropertyValue_enum: function(LuaMaterialFunctorAPI_EditorContext, string): integer
	GetMaterialPropertyValue_float: function(LuaMaterialFunctorAPI_EditorContext, string): number
	GetMaterialPropertyValue_int: function(LuaMaterialFunctorAPI_EditorContext, string): integer
	GetMaterialPropertyValue_uint: function(LuaMaterialFunctorAPI_EditorContext, string): integer
	HasMaterialProperty: function(LuaMaterialFunctorAPI_EditorContext, string): boolean
	ReleaseOwnership: function(): any
	SetMaterialPropertyDescription: function(LuaMaterialFunctorAPI_EditorContext, string, string): boolean
	SetMaterialPropertyGroupVisibility: function(LuaMaterialFunctorAPI_EditorContext, string, RPI_MaterialPropertyGroupVisibility): boolean
	SetMaterialPropertyMaxValue_float: function(LuaMaterialFunctorAPI_EditorContext, string, number): boolean
	SetMaterialPropertyMaxValue_int: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertyMaxValue_uint: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertyMinValue_float: function(LuaMaterialFunctorAPI_EditorContext, string, number): boolean
	SetMaterialPropertyMinValue_int: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertyMinValue_uint: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertySoftMaxValue_float: function(LuaMaterialFunctorAPI_EditorContext, string, number): boolean
	SetMaterialPropertySoftMaxValue_int: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertySoftMaxValue_uint: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertySoftMinValue_float: function(LuaMaterialFunctorAPI_EditorContext, string, number): boolean
	SetMaterialPropertySoftMinValue_int: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertySoftMinValue_uint: function(LuaMaterialFunctorAPI_EditorContext, string, integer): boolean
	SetMaterialPropertyVisibility: function(LuaMaterialFunctorAPI_EditorContext, string, RPI_MaterialPropertyVisibility): boolean
end


global record LuaMaterialFunctorAPI_RenderStates
	AcquireOwnership: function(): any
	ClearAlphaToCoverageEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearBlendAlphaDest: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendAlphaOp: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendAlphaSource: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendDest: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendEnabled: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendOp: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendSource: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearBlendWriteMask: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearConservativeRasterEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearCullMode: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthBias: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthBiasClamp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthBiasSlopeScale: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthClipEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthComparisonFunc: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearDepthWriteMask: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearFillMode: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearForcedSampleCount: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearIndependentBlendEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearMultisampleCount: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearMultisampleCustomPosition: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	ClearMultisampleCustomPositionCount: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearMultisampleEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearMultisampleQuality: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilBackFaceDepthFailOp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilBackFaceFailOp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilBackFaceFunc: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilBackFacePassOp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilEnabled: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilFrontFaceDepthFailOp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilFrontFaceFailOp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilFrontFaceFunc: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilFrontFacePassOp: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilReadMask: function(LuaMaterialFunctorAPI_RenderStates): any
	ClearStencilWriteMask: function(LuaMaterialFunctorAPI_RenderStates): any
	ReleaseOwnership: function(): any
	SetAlphaToCoverageEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetBlendAlphaDest: function(LuaMaterialFunctorAPI_RenderStates, integer, BlendFactor): any
	SetBlendAlphaOp: function(LuaMaterialFunctorAPI_RenderStates, integer, BlendOp): any
	SetBlendAlphaSource: function(LuaMaterialFunctorAPI_RenderStates, integer, BlendFactor): any
	SetBlendDest: function(LuaMaterialFunctorAPI_RenderStates, integer, BlendFactor): any
	SetBlendEnabled: function(LuaMaterialFunctorAPI_RenderStates, integer, boolean): any
	SetBlendOp: function(LuaMaterialFunctorAPI_RenderStates, integer, BlendOp): any
	SetBlendSource: function(LuaMaterialFunctorAPI_RenderStates, integer, BlendFactor): any
	SetBlendWriteMask: function(LuaMaterialFunctorAPI_RenderStates, integer, integer): any
	SetConservativeRasterEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetCullMode: function(LuaMaterialFunctorAPI_RenderStates, CullMode): any
	SetDepthBias: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	SetDepthBiasClamp: function(LuaMaterialFunctorAPI_RenderStates, number): any
	SetDepthBiasSlopeScale: function(LuaMaterialFunctorAPI_RenderStates, number): any
	SetDepthClipEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetDepthComparisonFunc: function(LuaMaterialFunctorAPI_RenderStates, ComparisonFunc): any
	SetDepthEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetDepthWriteMask: function(LuaMaterialFunctorAPI_RenderStates, DepthWriteMask): any
	SetFillMode: function(LuaMaterialFunctorAPI_RenderStates, FillMode): any
	SetForcedSampleCount: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	SetIndependentBlendEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetMultisampleCount: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	SetMultisampleCustomPosition: function(LuaMaterialFunctorAPI_RenderStates, integer, integer, integer): any
	SetMultisampleCustomPositionCount: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	SetMultisampleEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetMultisampleQuality: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	SetStencilBackFaceDepthFailOp: function(LuaMaterialFunctorAPI_RenderStates, StencilOp): any
	SetStencilBackFaceFailOp: function(LuaMaterialFunctorAPI_RenderStates, StencilOp): any
	SetStencilBackFaceFunc: function(LuaMaterialFunctorAPI_RenderStates, ComparisonFunc): any
	SetStencilBackFacePassOp: function(LuaMaterialFunctorAPI_RenderStates, StencilOp): any
	SetStencilEnabled: function(LuaMaterialFunctorAPI_RenderStates, boolean): any
	SetStencilFrontFaceDepthFailOp: function(LuaMaterialFunctorAPI_RenderStates, StencilOp): any
	SetStencilFrontFaceFailOp: function(LuaMaterialFunctorAPI_RenderStates, StencilOp): any
	SetStencilFrontFaceFunc: function(LuaMaterialFunctorAPI_RenderStates, ComparisonFunc): any
	SetStencilFrontFacePassOp: function(LuaMaterialFunctorAPI_RenderStates, StencilOp): any
	SetStencilReadMask: function(LuaMaterialFunctorAPI_RenderStates, integer): any
	SetStencilWriteMask: function(LuaMaterialFunctorAPI_RenderStates, integer): any
end


global record LuaMaterialFunctorAPI_RuntimeContext
	AcquireOwnership: function(): any
	GetMaterialPropertyValue_Color: function(LuaMaterialFunctorAPI_RuntimeContext, string): Color
	GetMaterialPropertyValue_Image: function(LuaMaterialFunctorAPI_RuntimeContext, string): Image
	GetMaterialPropertyValue_Vector2: function(LuaMaterialFunctorAPI_RuntimeContext, string): Vector2
	GetMaterialPropertyValue_Vector3: function(LuaMaterialFunctorAPI_RuntimeContext, string): Vector3
	GetMaterialPropertyValue_Vector4: function(LuaMaterialFunctorAPI_RuntimeContext, string): Vector4
	GetMaterialPropertyValue_bool: function(LuaMaterialFunctorAPI_RuntimeContext, string): boolean
	GetMaterialPropertyValue_enum: function(LuaMaterialFunctorAPI_RuntimeContext, string): integer
	GetMaterialPropertyValue_float: function(LuaMaterialFunctorAPI_RuntimeContext, string): number
	GetMaterialPropertyValue_int: function(LuaMaterialFunctorAPI_RuntimeContext, string): integer
	GetMaterialPropertyValue_uint: function(LuaMaterialFunctorAPI_RuntimeContext, string): integer
	GetShader: function(LuaMaterialFunctorAPI_RuntimeContext, integer): LuaMaterialFunctorAPI_ShaderItem
	GetShaderByTag: function(LuaMaterialFunctorAPI_RuntimeContext, string): LuaMaterialFunctorAPI_ShaderItem
	GetShaderCount: function(LuaMaterialFunctorAPI_RuntimeContext): integer
	HasMaterialProperty: function(LuaMaterialFunctorAPI_RuntimeContext, string): boolean
	HasShaderWithTag: function(LuaMaterialFunctorAPI_RuntimeContext, string): boolean
	ReleaseOwnership: function(): any
	SetInternalMaterialPropertyValue_Color: function(LuaMaterialFunctorAPI_RuntimeContext, string, Color): boolean
	SetInternalMaterialPropertyValue_Image: function(LuaMaterialFunctorAPI_RuntimeContext, string, Image): boolean
	SetInternalMaterialPropertyValue_Vector2: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector2): boolean
	SetInternalMaterialPropertyValue_Vector3: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector3): boolean
	SetInternalMaterialPropertyValue_Vector4: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector4): boolean
	SetInternalMaterialPropertyValue_bool: function(LuaMaterialFunctorAPI_RuntimeContext, string, boolean): boolean
	SetInternalMaterialPropertyValue_enum: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetInternalMaterialPropertyValue_float: function(LuaMaterialFunctorAPI_RuntimeContext, string, number): boolean
	SetInternalMaterialPropertyValue_int: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetInternalMaterialPropertyValue_uint: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetShaderConstant_Color: function(LuaMaterialFunctorAPI_RuntimeContext, string, Color): boolean
	SetShaderConstant_Matrix3x3: function(LuaMaterialFunctorAPI_RuntimeContext, string, Matrix3x3): boolean
	SetShaderConstant_Matrix4x4: function(LuaMaterialFunctorAPI_RuntimeContext, string, Matrix4x4): boolean
	SetShaderConstant_Vector2: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector2): boolean
	SetShaderConstant_Vector3: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector3): boolean
	SetShaderConstant_Vector4: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector4): boolean
	SetShaderConstant_bool: function(LuaMaterialFunctorAPI_RuntimeContext, string, boolean): boolean
	SetShaderConstant_float: function(LuaMaterialFunctorAPI_RuntimeContext, string, number): boolean
	SetShaderConstant_int: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetShaderConstant_uint: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetShaderOptionValue_bool: function(LuaMaterialFunctorAPI_RuntimeContext, string, boolean): boolean
	SetShaderOptionValue_enum: function(LuaMaterialFunctorAPI_RuntimeContext, string, string): boolean
	SetShaderOptionValue_uint: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetShaderParameterValue_Color: function(LuaMaterialFunctorAPI_RuntimeContext, string, Color): boolean
	SetShaderParameterValue_Matrix3x3: function(LuaMaterialFunctorAPI_RuntimeContext, string, Matrix3x3): boolean
	SetShaderParameterValue_Matrix4x4: function(LuaMaterialFunctorAPI_RuntimeContext, string, Matrix4x4): boolean
	SetShaderParameterValue_Vector2: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector2): boolean
	SetShaderParameterValue_Vector3: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector3): boolean
	SetShaderParameterValue_Vector4: function(LuaMaterialFunctorAPI_RuntimeContext, string, Vector4): boolean
	SetShaderParameterValue_bool: function(LuaMaterialFunctorAPI_RuntimeContext, string, boolean): boolean
	SetShaderParameterValue_float: function(LuaMaterialFunctorAPI_RuntimeContext, string, number): boolean
	SetShaderParameterValue_int: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
	SetShaderParameterValue_uint: function(LuaMaterialFunctorAPI_RuntimeContext, string, integer): boolean
end


global record LuaMaterialFunctorAPI_ShaderItem
	AcquireOwnership: function(): any
	GetRenderStatesOverride: function(LuaMaterialFunctorAPI_ShaderItem): LuaMaterialFunctorAPI_RenderStates
	ReleaseOwnership: function(): any
	SetDrawListTagOverride: function(LuaMaterialFunctorAPI_ShaderItem, string): any
	SetEnabled: function(LuaMaterialFunctorAPI_ShaderItem, boolean): any
	SetShaderOptionValue_bool: function(LuaMaterialFunctorAPI_ShaderItem, string, boolean): any
	SetShaderOptionValue_enum: function(LuaMaterialFunctorAPI_ShaderItem, string, string): any
	SetShaderOptionValue_uint: function(LuaMaterialFunctorAPI_ShaderItem, string, integer): any
end


global record MaterialAssignment
	materialAsset: any
	propertyOverrides: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
	ToString: function(AZ_Render_MaterialAssignment): string
end


global record MaterialAssignmentId
	lodIndex: any
	materialSlotStableId: any

	AcquireOwnership: function(): any
	IsAssetOnly: function(AZ_Render_MaterialAssignmentId): boolean
	IsDefault: function(AZ_Render_MaterialAssignmentId): boolean
	IsLodAndAsset: function(AZ_Render_MaterialAssignmentId): boolean
	IsLodAndSlotId: function(AZ_Render_MaterialAssignmentId): boolean
	IsSlotIdOnly: function(AZ_Render_MaterialAssignmentId): boolean
	ReleaseOwnership: function(): any
	ToString: function(AZ_Render_MaterialAssignmentId): string
end


global record MaterialComponentConfig
	materials: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record MaterialData
	AmbientOcclusion: any
	BaseColor: any
	Bump: any
	Diffuse: any
	Emissive: any
	Metallic: any
	Normal: any
	Roughness: any
	Specular: any

	AcquireOwnership: function(): any
	GetBaseColor: function(MaterialData): Vector3
	GetDiffuseColor: function(MaterialData): Vector3
	GetEmissiveColor: function(MaterialData): Vector3
	GetEmissiveIntensity: function(MaterialData): number
	GetMaterialName: function(MaterialData): string
	GetMetallicFactor: function(MaterialData): number
	GetOpacity: function(MaterialData): number
	GetRoughnessFactor: function(MaterialData): number
	GetShininess: function(MaterialData): number
	GetSpecularColor: function(MaterialData): Vector3
	GetTexture: function(MaterialData, enum): string
	GetUniqueId: function(MaterialData): integer
	GetUseAOMap: function(MaterialData): boolean
	GetUseColorMap: function(MaterialData): boolean
	GetUseEmissiveMap: function(MaterialData): boolean
	GetUseMetallicMap: function(MaterialData): boolean
	GetUseRoughnessMap: function(MaterialData): boolean
	IsNoDraw: function(MaterialData): boolean
	ReleaseOwnership: function(): any
end


global record Math
	Abs: function(number): number
	AcquireOwnership: function(): any
	ArcCos: function(number): number
	ArcSin: function(number): number
	ArcTan: function(number): number
	ArcTan2: function(number, number): number
	Ceil: function(number): number
	Clamp: function(number, number, number): number
	Cos: function(number): number
	DegToRad: function(Degrees: number): number
	DivideByNumber: function(Divisor: number, number): number
	Floor: function(number): number
	GetSinCos: function(): any...
	IsClose: function(number, number, number): boolean
	IsEven: function(integer): boolean
	IsOdd: function(Value: integer): boolean
	Lerp: function(a: number, b: number, t: number): number
	LerpInverse: function(a: number, b: number, value: number): number
	Max: function(number, number): number
	Min: function(number, number): number
	Mod: function(number, number): number
	Pow: function(number, number): number
	RadToDeg: function(Radians: number): number
	ReleaseOwnership: function(): any
	Round: function(number): number
	Sign: function(number): number
	Sin: function(number): number
	Sqrt: function(number): number
	Tan: function(number): number
end


global record MathUtils
	AcquireOwnership: function(): any
	ConvertEulerDegreesToQuaternion: function(Vector3): Quaternion
	ConvertEulerDegreesToTransform: function(Vector3): Transform
	ConvertEulerDegreesToTransformPrecise: function(Vector3): Transform
	ConvertEulerRadiansToQuaternion: function(Vector3): Quaternion
	ConvertQuaternionToEulerDegrees: function(Quaternion): Vector3
	ConvertQuaternionToEulerRadians: function(Quaternion): Vector3
	ConvertTransformToEulerDegrees: function(Transform): Vector3
	ConvertTransformToEulerRadians: function(Transform): Vector3
	CreateLookAt: function(Vector3, Vector3, enum): Transform
	ReleaseOwnership: function(): any
end


global record Matrix3x3
	basisX: any
	basisY: any
	basisZ: any

	Clone: function(Matrix3x3): Matrix3x3
	ConstructFromValues: function(Vector3, Vector3, Vector3): Matrix3x3
	ConstructFromValuesNumeric: function(number, number, number, number, number, number, number, number, number): Matrix3x3
	CreateCrossProduct: function(Vector3): Matrix3x3
	CreateDiagonal: function(Vector3): Matrix3x3
	CreateFromColumns: function(Vector3, Vector3, Vector3): Matrix3x3
	CreateFromMatrix4x4: function(Matrix4x4): Matrix3x3
	CreateFromQuaternion: function(Quaternion): Matrix3x3
	CreateFromRows: function(Vector3, Vector3, Vector3): Matrix3x3
	CreateFromTransform: function(Transform): Matrix3x3
	CreateFromValue: function(number): Matrix3x3
	CreateIdentity: function(): Matrix3x3
	CreateRotationX: function(number): Matrix3x3
	CreateRotationY: function(number): Matrix3x3
	CreateRotationZ: function(number): Matrix3x3
	CreateScale: function(Vector3): Matrix3x3
	CreateZero: function(): Matrix3x3
	ExtractScale: function(Matrix3x3): Vector3
	GetAdjugate: function(Matrix3x3): Matrix3x3
	GetBasis: function(): any...
	GetColumn: function(Matrix3x3, integer): Vector3
	GetColumns: function(): any...
	GetDeterminant: function(Matrix3x3): number
	GetDiagonal: function(Matrix3x3): Vector3
	GetElement: function(Matrix3x3, integer, integer): number
	GetInverseFast: function(Matrix3x3): Matrix3x3
	GetInverseFull: function(Matrix3x3): Matrix3x3
	GetOrthogonalized: function(Matrix3x3): Matrix3x3
	GetPolarDecomposition: function(): any...
	GetRow: function(Matrix3x3, integer): Vector3
	GetRows: function(): any...
	GetTranspose: function(Matrix3x3): Matrix3x3
	InvertFast: function(Matrix3x3): any
	InvertFull: function(Matrix3x3): any
	IsClose: function(Matrix3x3, Matrix3x3, number): boolean
	IsFinite: function(Matrix3x3): boolean
	IsOrthogonal: function(Matrix3x3, number): boolean
	MultiplyByScale: function(Matrix3x3, Vector3): any
	Orthogonalize: function(Matrix3x3): any
	RetrieveScale: function(Matrix3x3): Vector3
	SetBasis: function(Matrix3x3, Vector3, Vector3, Vector3): any
	SetColumn: function(): any...
	SetColumns: function(Matrix3x3, Vector3, Vector3, Vector3): any
	SetElement: function(Matrix3x3, integer, integer, number): any
	SetRotationPartFromQuaternion: function(Matrix3x3, Quaternion): any
	SetRow: function(): any...
	SetRows: function(Matrix3x3, Vector3, Vector3, Vector3): any
	Transpose: function(Matrix3x3): any
	TransposedMultiply: function(Matrix3x3, Matrix3x3): Matrix3x3
end


global record Matrix3x4
	basisX: any
	basisY: any
	basisZ: any
	translation: any

	Clone: function(Matrix3x4): Matrix3x4
	CreateDiagonal: function(Vector3): Matrix3x4
	CreateFromColumns: function(Vector3, Vector3, Vector3, Vector3): Matrix3x4
	CreateFromMatrix3x3: function(Matrix3x3): Matrix3x4
	CreateFromMatrix3x3AndTranslation: function(Matrix3x3, Vector3): Matrix3x4
	CreateFromQuaternion: function(Quaternion): Matrix3x4
	CreateFromQuaternionAndTranslation: function(Quaternion, Vector3): Matrix3x4
	CreateFromRows: function(Vector4, Vector4, Vector4): Matrix3x4
	CreateFromValue: function(number): Matrix3x4
	CreateIdentity: function(): Matrix3x4
	CreateRotationX: function(number): Matrix3x4
	CreateRotationY: function(number): Matrix3x4
	CreateRotationZ: function(number): Matrix3x4
	CreateScale: function(Vector3): Matrix3x4
	CreateTranslation: function(Vector3): Matrix3x4
	CreateZero: function(): Matrix3x4
	ExtractScale: function(Matrix3x4): Vector3
	GetBasisAndTranslation: function(): any...
	GetColumn: function(Matrix3x4, integer): Vector3
	GetColumns: function(): any...
	GetDeterminant3x3: function(Matrix3x4): number
	GetElement: function(Matrix3x4, integer, integer): number
	GetInverseFast: function(Matrix3x4): Matrix3x4
	GetInverseFull: function(Matrix3x4): Matrix3x4
	GetMultipliedByScale: function(Matrix3x4, Vector3): Matrix3x4
	GetOrthogonalized: function(Matrix3x4): Matrix3x4
	GetRow: function(Matrix3x4, integer): Vector4
	GetRowAsVector3: function(Matrix3x4, integer): Vector3
	GetRows: function(): any...
	GetTranslation: function(Matrix3x4): Vector3
	GetTranspose: function(Matrix3x4): Matrix3x4
	GetTranspose3x3: function(Matrix3x4): Matrix3x4
	InvertFast: function(Matrix3x4): any
	InvertFull: function(Matrix3x4): any
	IsClose: function(Matrix3x4, Matrix3x4, number): boolean
	IsFinite: function(Matrix3x4): boolean
	IsOrthogonal: function(Matrix3x4, number): boolean
	Multiply3x3: function(Matrix3x4, Vector3): Vector3
	MultiplyVector3: function(Matrix3x4, Vector3): Vector3
	MultiplyVector4: function(Matrix3x4, Vector4): Vector4
	Orthogonalize: function(Matrix3x4): any
	RetrieveScale: function(Matrix3x4): Vector3
	SetBasisAndTranslation: function(Matrix3x4, Vector3, Vector3, Vector3, Vector3): any
	SetColumn: function(): any...
	SetColumns: function(Matrix3x4, Vector3, Vector3, Vector3, Vector3): any
	SetElement: function(Matrix3x4, integer, integer, number): any
	SetRotationPartFromQuaternion: function(Matrix3x4, Quaternion): any
	SetRow: function(): any...
	SetRows: function(Matrix3x4, Vector4, Vector4, Vector4): any
	SetTranslation: function(): any...
	Transpose: function(Matrix3x4): any
	Transpose3x3: function(Matrix3x4): any
	UnsafeCreateFromMatrix4x4: function(Matrix4x4): Matrix3x4
end


global record Matrix4x4
	basisX: any
	basisY: any
	basisZ: any
	translation: any

	Clone: function(Matrix4x4): Matrix4x4
	ConstructFromValues: function(Vector4, Vector4, Vector4, Vector4): Matrix4x4
	ConstructFromValuesNumeric: function(number, number, number, number, number, number, number, number, number, number, number, number, number, number, number, number): Matrix4x4
	CreateDiagonal: function(Vector4): Matrix4x4
	CreateFromColumns: function(Vector4, Vector4, Vector4, Vector4): Matrix4x4
	CreateFromQuaternion: function(Quaternion): Matrix4x4
	CreateFromQuaternionAndTranslation: function(Quaternion, Vector3): Matrix4x4
	CreateFromRows: function(Vector4, Vector4, Vector4, Vector4): Matrix4x4
	CreateFromValue: function(number): Matrix4x4
	CreateIdentity: function(): Matrix4x4
	CreateProjection: function(number, number, number, number): Matrix4x4
	CreateProjectionFov: function(number, number, number, number): Matrix4x4
	CreateProjectionOffset: function(number, number, number, number, number, number): Matrix4x4
	CreateRotationX: function(number): Matrix4x4
	CreateRotationY: function(number): Matrix4x4
	CreateRotationZ: function(number): Matrix4x4
	CreateScale: function(Vector3): Matrix4x4
	CreateTranslation: function(Vector3): Matrix4x4
	CreateZero: function(): Matrix4x4
	ExtractScale: function(Matrix4x4): Vector3
	GetColumn: function(Matrix4x4, integer): Vector4
	GetColumnAsVector3: function(Matrix4x4, integer): Vector3
	GetColumns: function(): any...
	GetDiagonal: function(Matrix4x4): Vector4
	GetElement: function(Matrix4x4, integer, integer): number
	GetInverseFast: function(Matrix4x4): Matrix4x4
	GetInverseFull: function(Matrix4x4): Matrix4x4
	GetInverseTransform: function(Matrix4x4): Matrix4x4
	GetRow: function(Matrix4x4, integer): Vector4
	GetRowAsVector3: function(Matrix4x4, integer): Vector3
	GetRows: function(): any...
	GetTranslation: function(Matrix4x4): Vector3
	GetTranspose: function(Matrix4x4): Matrix4x4
	InvertFast: function(Matrix4x4): any
	InvertFull: function(Matrix4x4): any
	InvertTransform: function(Matrix4x4): any
	IsClose: function(Matrix4x4, Matrix4x4, number): boolean
	IsFinite: function(Matrix4x4): boolean
	Multiply3x3: function(Matrix4x4, Vector3): Vector3
	MultiplyByScale: function(Matrix4x4, Vector3): any
	RetrieveScale: function(Matrix4x4): Vector3
	SetBasisAndTranslation: function(Matrix4x4, Vector4, Vector4, Vector4, Vector4): any
	SetColumn: function(): any...
	SetColumns: function(Matrix4x4, Vector4, Vector4, Vector4, Vector4): any
	SetElement: function(Matrix4x4, integer, integer, number): any
	SetRotationPartFromQuaternion: function(Matrix4x4, Quaternion): any
	SetRow: function(): any...
	SetRows: function(Matrix4x4, Vector4, Vector4, Vector4, Vector4): any
	SetTranslation: function(): any...
	Transpose: function(Matrix4x4): any
	TransposedMultiply3x3: function(Matrix4x4, Vector3): Vector3
end


global record MatrixMxN
	CreateRandom: function(integer, integer): MatrixMxN
	CreateZero: function(integer, integer): MatrixMxN
	GetAbs: function(MatrixMxN): MatrixMxN
	GetCeil: function(MatrixMxN): MatrixMxN
	GetClamp: function(MatrixMxN, MatrixMxN, MatrixMxN): MatrixMxN
	GetElement: function(MatrixMxN, integer, integer): number
	GetFloor: function(MatrixMxN): MatrixMxN
	GetMax: function(MatrixMxN, MatrixMxN): MatrixMxN
	GetMin: function(MatrixMxN, MatrixMxN): MatrixMxN
	GetRound: function(MatrixMxN): MatrixMxN
	GetSquare: function(MatrixMxN): MatrixMxN
	GetTranspose: function(MatrixMxN): MatrixMxN
	MatrixMatrixMultiply: function(MatrixMxN, MatrixMxN, MatrixMxN): any
	OuterProduct: function(VectorN, VectorN, MatrixMxN): any
	SetElement: function(MatrixMxN, integer, integer, number): any
	VectorMatrixMultiply: function(MatrixMxN, VectorN, VectorN): any
	VectorMatrixMultiplyLeft: function(VectorN, MatrixMxN, VectorN): any
end


global record MeshData
	AcquireOwnership: function(): any
	GetControlPointIndex: function(MeshData, integer): integer
	GetFaceCount: function(MeshData): integer
	GetFaceInfo: function(MeshData, integer): AZ_SceneAPI_DataTypes_IMeshData_Face
	GetFaceMaterialId: function(MeshData, integer): integer
	GetNormal: function(MeshData, integer): Vector3
	GetOriginalUnitSizeInMeters: function(IMeshData): number
	GetPosition: function(MeshData, integer): Vector3
	GetUnitSizeInMeters: function(IMeshData): number
	GetUsedControlPointCount: function(MeshData): integer
	GetUsedPointIndexForControlPoint: function(MeshData, integer): integer
	GetVertexCount: function(MeshData): integer
	GetVertexIndex: function(MeshData, integer, integer): integer
	HasNormalData: function(MeshData): boolean
	ReleaseOwnership: function(): any
end


global record MeshVertexBitangentData
	FromSourceScene: any
	MikkT: any

	AcquireOwnership: function(): any
	GetBitangent: function(MeshVertexBitangentData, integer): Vector3
	GetBitangentSetIndex: function(MeshVertexBitangentData): integer
	GetCount: function(MeshVertexBitangentData): integer
	GetGenerationMethod: function(MeshVertexBitangentData): enum
	ReleaseOwnership: function(): any
end


global record MeshVertexColorData
	AcquireOwnership: function(): any
	GetColor: function(MeshVertexColorData, integer): SceneAPI_DataTypes_Color
	GetCount: function(MeshVertexColorData): integer
	GetCustomName: function(MeshVertexColorData): string
	ReleaseOwnership: function(): any
end


global record MeshVertexTangentData
	FromSourceScene: any
	MikkT: any

	AcquireOwnership: function(): any
	GetCount: function(MeshVertexTangentData): integer
	GetGenerationMethod: function(MeshVertexTangentData): enum
	GetTangent: function(MeshVertexTangentData, integer): Vector4
	GetTangentSetIndex: function(MeshVertexTangentData): integer
	ReleaseOwnership: function(): any
end


global record MeshVertexUVData
	AcquireOwnership: function(): any
	GetCount: function(MeshVertexUVData): integer
	GetCustomName: function(MeshVertexUVData): string
	GetUV: function(MeshVertexUVData, integer): Vector2
	ReleaseOwnership: function(): any
end


global record MiniAudioListenerComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record MiniAudioPlaybackComponentController
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record MixedGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record MixedGradientConfig
	AcquireOwnership: function(): any
	AddLayer: function(MixedGradientConfig): any
	GetLayer: function(MixedGradientConfig, integer): MixedGradientLayer
	GetNumLayers: function(MixedGradientConfig): integer
	ReleaseOwnership: function(): any
	RemoveLayer: function(MixedGradientConfig, integer): any
end


global record MixedGradientLayer
	enabled: any
	gradientSampler: any
	mixingOperation: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ModelPreset
	modelAsset: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record MotionEvent
	entityId: any
	eventType: any
	eventTypeName: any
	globalWeight: any
	isEventStart: any
	localWeight: any
	parameter: any
	time: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Name
	IsEmpty: function(Name): boolean
	Set: function(Name, basic_string_view_char_char_traits_char): any
	ToString: function(Name): string
end


global record NodeIndex
	AcquireOwnership: function(): any
	AsNumber: function(AZ_SceneAPI_Containers_SceneGraph_NodeIndex): integer
	Distance: function(AZ_SceneAPI_Containers_SceneGraph_NodeIndex, AZ_SceneAPI_Containers_SceneGraph_NodeIndex): integer
	IsValid: function(AZ_SceneAPI_Containers_SceneGraph_NodeIndex): boolean
	ReleaseOwnership: function(): any
end


global record Obb
	halfLengths: any
	position: any
	rotation: any

	Clone: function(Obb): Obb
	ConstructObbFromValues: function(number, number, number, number, number, number, number, number, number, number, number, number, number, number, number): Obb
	CreateFromAabb: function(Aabb): Obb
	CreateFromPositionRotationAndHalfLengths: function(Vector3, Quaternion, Vector3): Obb
	GetAxis: function(Obb, integer): Vector3
	GetAxisX: function(Obb): Vector3
	GetAxisY: function(Obb): Vector3
	GetAxisZ: function(Obb): Vector3
	GetHalfLength: function(Obb, integer): number
	GetHalfLengthX: function(Obb): number
	GetHalfLengthY: function(Obb): number
	GetHalfLengthZ: function(Obb): number
	IsFinite: function(Obb): boolean
	SetHalfLength: function(Obb, integer, number): any
	SetHalfLengthX: function(Obb, number): any
	SetHalfLengthY: function(Obb, number): any
	SetHalfLengthZ: function(Obb, number): any
end


global record OutputDeviceTransformType
	OutputDeviceTransformType_100Nits: any
	OutputDeviceTransformType_2000Nits: any
	OutputDeviceTransformType_4000Nits: any
	OutputDeviceTransformType_48Nits: any
	OutputDeviceTransformType_NumOutputDeviceTransformTypes: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record PaintBrushSettings
	blendMode: any
	color: any
	distancePercent: any
	flowPercent: any
	hardnessPercent: any
	size: any
	smoothMode: any
	smoothingRadius: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record PerlinGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record PerlinGradientConfig
	amplitude: any
	frequency: any
	octave: any
	randomSeed: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end

global record PhysicsScene is Scene
	AcquireOwnership: function(): any
	GetOnGravityChangeEvent: function(string): Event_tuple_Crc32_AZ_s8_Vector3
	QueryScene: function(Scene, SceneQueryRequest): SceneQueryHits
	ReleaseOwnership: function(): any
end


global record PhysicsSystemInterface is SystemInterface
	AcquireOwnership: function(): any
	GetOnPostsimulateEvent: function(): Event_float
	GetOnPresimulateEvent: function(): Event_float
	GetScene: function(SystemInterface, tuple_Crc32_AZ_s8): PhysicsScene
	GetSceneHandle: function(SystemInterface, string): tuple_Crc32_AZ_s8
	ReleaseOwnership: function(): any
end


global record PipelineRuntimeContext
	AcquireOwnership: function(): any
	GetMaterialPropertyValue_Color: function(PipelineRuntimeContext, string): Color
	GetMaterialPropertyValue_Image: function(PipelineRuntimeContext, string): Image
	GetMaterialPropertyValue_Vector2: function(PipelineRuntimeContext, string): Vector2
	GetMaterialPropertyValue_Vector3: function(PipelineRuntimeContext, string): Vector3
	GetMaterialPropertyValue_Vector4: function(PipelineRuntimeContext, string): Vector4
	GetMaterialPropertyValue_bool: function(PipelineRuntimeContext, string): boolean
	GetMaterialPropertyValue_enum: function(PipelineRuntimeContext, string): integer
	GetMaterialPropertyValue_float: function(PipelineRuntimeContext, string): number
	GetMaterialPropertyValue_int: function(PipelineRuntimeContext, string): integer
	GetMaterialPropertyValue_uint: function(PipelineRuntimeContext, string): integer
	GetShader: function(PipelineRuntimeContext, integer): LuaMaterialFunctorAPI_ShaderItem
	GetShaderByTag: function(PipelineRuntimeContext, string): LuaMaterialFunctorAPI_ShaderItem
	GetShaderCount: function(PipelineRuntimeContext): integer
	HasMaterialProperty: function(PipelineRuntimeContext, string): boolean
	HasShaderWithTag: function(PipelineRuntimeContext, string): boolean
	ReleaseOwnership: function(): any
	SetShaderOptionValue_bool: function(PipelineRuntimeContext, string, boolean): boolean
	SetShaderOptionValue_enum: function(PipelineRuntimeContext, string, string): boolean
	SetShaderOptionValue_uint: function(PipelineRuntimeContext, string, integer): boolean
end


global record Plane
	ApplyTransform: function(Plane, Transform): any
	CastRay: function(): any...
	Clone: function(Plane): Plane
	CreateFromCoefficients: function(number, number, number, number): Plane
	CreateFromNormalAndDistance: function(Vector3, number): Plane
	CreateFromNormalAndPoint: function(Vector3, Vector3): Plane
	GetDistance: function(Plane): number
	GetNormal: function(Plane): Vector3
	GetPlaneEquationCoefficients: function(Plane): Vector4
	GetPointDist: function(Plane, Vector3): number
	GetProjected: function(Plane, Vector3): Vector3
	GetTransform: function(Plane, Transform): Plane
	IntersectSegment: function(): any...
	IsFinite: function(Plane): boolean
	Set: function(): any...
	SetDistance: function(Plane, number): any
	SetNormal: function(Plane, Vector3): any
end


global record Platform
	Android64: any
	Current: any
	Linux: any
	Mac: any
	Windows64: any
	iOS: any

	AcquireOwnership: function(): any
	GetName: function(PlatformID): string
	ReleaseOwnership: function(): any
end


global record PolygonPrism
	height: any
	vertexContainer: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record PositionSplineQueryResult
	distanceSq: any
	splineAddress: any

end


global record PosterizeGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record PosterizeGradientConfig
	bands: any
	gradientSampler: any
	mode: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Quaternion
	w: any
	x: any
	y: any
	z: any

	Clone: function(Quaternion): Quaternion
	CreateFromAxisAngle: function(Vector3, number): Quaternion
	CreateFromBasis: function(Vector3, Vector3, Vector3): Quaternion
	CreateFromEulerAnglesDegrees: function(Vector3): Quaternionconst
	CreateFromEulerDegreesXYZ: function(Vector3): Quaternion
	CreateFromEulerDegreesYXZ: function(Vector3): Quaternion
	CreateFromEulerDegreesZYX: function(Vector3): Quaternion
	CreateFromEulerRadiansXYZ: function(Vector3): Quaternion
	CreateFromEulerRadiansYXZ: function(Vector3): Quaternion
	CreateFromEulerRadiansZYX: function(Vector3): Quaternion
	CreateFromMatrix3x3: function(Matrix3x3): Quaternion
	CreateFromMatrix4x4: function(Matrix4x4): Quaternion
	CreateFromScaledAxisAngle: function(Vector3): Quaternion
	CreateFromValues: function(number, number, number, number): Quaternion
	CreateFromVector3: function(Vector3): Quaternion
	CreateFromVector3AndValue: function(Vector3, number): Quaternion
	CreateIdentity: function(): Quaternion
	CreateRotationX: function(number): Quaternion
	CreateRotationY: function(number): Quaternion
	CreateRotationZ: function(number): Quaternion
	CreateShortestArc: function(Vector3, Vector3): Quaternion
	CreateZero: function(): Quaternion
	Dot: function(Quaternion, Quaternion): number
	GetAngle: function(Quaternion): number
	GetConjugate: function(Quaternion): Quaternion
	GetElement: function(Quaternion, integer): number
	GetEulerDegrees: function(Quaternion): Vector3
	GetEulerDegreesXYZ: function(Quaternion): Vector3
	GetEulerDegreesYXZ: function(Quaternion): Vector3
	GetEulerDegreesZYX: function(Quaternion): Vector3
	GetEulerRadians: function(Quaternion): Vector3
	GetEulerRadiansXYZ: function(Quaternion): Vector3
	GetEulerRadiansYXZ: function(Quaternion): Vector3
	GetEulerRadiansZYX: function(Quaternion): Vector3
	GetImaginary: function(Quaternion): Vector3
	GetInverseFast: function(Quaternion): Quaternion
	GetInverseFull: function(Quaternion): Quaternion
	GetLength: function(Quaternion): number
	GetLengthReciprocal: function(Quaternion): number
	GetLengthSq: function(Quaternion): number
	GetNormalized: function(Quaternion): Quaternion
	InvertFast: function(Quaternion): any
	InvertFull: function(Quaternion): any
	IsClose: function(Quaternion, Quaternion, number): boolean
	IsFinite: function(Quaternion): boolean
	IsIdentity: function(Quaternion, number): boolean
	IsZero: function(Quaternion, number): boolean
	Lerp: function(Quaternion, Quaternion, number): Quaternion
	Normalize: function(Quaternion): any
	NormalizeWithLength: function(Quaternion): number
	Set: function(): any...
	SetElement: function(Quaternion, integer, number): any
	SetFromEulerDegrees: function(Quaternion, Vector3): any
	SetFromEulerRadians: function(Quaternion, Vector3): any
	Slerp: function(Quaternion, Quaternion, number): Quaternion
	Squad: function(Quaternion, Quaternion, Quaternion, Quaternion, number): Quaternion
end


global record RandomGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record RandomGradientConfig
	randomSeed: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record RaySplineQueryResult
	distanceSq: any
	rayDistance: any
	splineAddress: any

end


global record ReductionType
	Comparison: any
	Filter: any
	Maximum: any
	Minimum: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ReferenceGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ReferenceGradientConfig
	gradientSampler: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ReferenceShapeComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ReferenceShapeConfig
	shapeEntityId: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Render_DisplayMapperOperationType
	Aces: any
	AcesFilmic: any
	AcesFitted: any
	AcesLut: any
	Filmic: any
	GammaSRGB: any
	Passthrough: any
	Reinhard: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Render_ShadowmapSize
	ShadowmapSize_1024: any
	ShadowmapSize_2048: any
	ShadowmapSize_256: any
	ShadowmapSize_512: any
	ShadowmapSize_None: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record RigidBodyComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record RuntimeData
	AcquireOwnership: function(): any
	GetRequiredAssets: function(RuntimeData): vector_Asset_RuntimeAsset
	ReleaseOwnership: function(): any
end


global record SceneGraphName
	AcquireOwnership: function(): any
	GetName: function(AZ_SceneAPI_Containers_SceneGraph_Name): string
	GetPath: function(AZ_SceneAPI_Containers_SceneGraph_Name): string
	ReleaseOwnership: function(): any
end


global record SceneManifest
	AcquireOwnership: function(): any
	ExportToJson: function(SceneManifest): string
	ImportFromJson: function(SceneManifest, basic_string_view_char_char_traits_char): boolean
	ReleaseOwnership: function(): any
end


global record SceneQueries
	AcquireOwnership: function(): any
	CreateRayCastRequest: function(Vector3, Vector3, number, string): RayCastRequest
	ReleaseOwnership: function(): any
end


global record SceneQueryHits
	HitArray: vector_SceneQueryHit

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ScriptExecutionContext
	AcquireOwnership: function(): any
	ExcludeAllShaders: function(ScriptExecutionContext): any
	ExcludeShader: function(ScriptExecutionContext, string): any
	GetLightingModelName: function(ScriptExecutionContext): string
	IncludeAllShaders: function(ScriptExecutionContext): any
	IncludeShader: function(ScriptExecutionContext, string): any
	ReleaseOwnership: function(): any
end


global record ScriptTimePoint
	AcquireOwnership: function(): any
	GetMilliseconds: function(ScriptTimePoint): number
	GetSeconds: function(ScriptTimePoint): number
	ReleaseOwnership: function(): any
	ToString: function(ScriptTimePoint): string
end


global record SequenceComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SettingsRegistryInterface
	AcquireOwnership: function(): any
	DumpSettings: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): optional_basic_string_char_char_traits_char
	GetBool: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): optional_bool
	GetFloat: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): optional_double
	GetInt: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): optional_AZ_s64
	GetNotifyEvent: function(SettingsRegistryScriptProxy): Event_basic_string_view_char_char_traits_char
	GetString: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): optional_basic_string_char_char_traits_char
	GetUInt: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): optional_AZ_u64
	IsValid: function(SettingsRegistryScriptProxy): boolean
	MergeSettings: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, enum): boolean
	MergeSettingsFile: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, basic_string_view_char_char_traits_char, enum): boolean
	MergeSettingsFolder: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, SpecializationsProxy, basic_string_view_char_char_traits_char): boolean
	ReleaseOwnership: function(): any
	RemoveKey: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char): boolean
	SetBool: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, boolean): boolean
	SetFloat: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, number): boolean
	SetInt: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, AZ_s64): boolean
	SetString: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, basic_string_view_char_char_traits_char): boolean
	SetUInt: function(SettingsRegistryScriptProxy, basic_string_view_char_char_traits_char, AZ_u64): boolean
end


global record ShaderSemantic
	index: any
	name: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
	ToString: function(ShaderSemantic): string
end


global record ShapeAreaFalloffGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ShapeAreaFalloffGradientConfig
	falloffType: any
	falloffWidth: any
	is3dFalloff: any
	shapeEntityId: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SimpleAssetReferenceBase
	assetPath: any
	assetType: any
	fileFilter: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
	SetAssetPath: function(SimpleAssetReferenceBase, string): any
end


global record SimpleMotionComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SimulatedBody
	AcquireOwnership: function(): any
	GetOnCollisionBeginEvent: function(EntityId): Event_tuple_Crc32_int_CollisionEvent
	GetOnCollisionEndEvent: function(EntityId): Event_tuple_Crc32_int_CollisionEvent
	GetOnCollisionPersistEvent: function(EntityId): Event_tuple_Crc32_int_CollisionEvent
	GetOnTriggerEnterEvent: function(EntityId): Event_tuple_Crc32_int_TriggerEvent
	GetOnTriggerExitEvent: function(EntityId): Event_tuple_Crc32_int_TriggerEvent
	ReleaseOwnership: function(): any
end


global record SliceInstantiationTicket
	IsValid: function(SliceInstantiationTicket): boolean
end


global record SmoothStep
	falloffMidpoint: any
	falloffRange: any
	falloffStrength: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SmoothStepGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SmoothStepGradientConfig
	gradientSampler: any
	smoothStep: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SoundAssetRef
	AcquireOwnership: function(): any
	GetAsset: function(SoundAssetRef): Asset_SoundAsset
	ReleaseOwnership: function(): any
	SetAsset: function(SoundAssetRef, Asset_SoundAsset): any
end


global record SpawnableScriptAssetRef
	AcquireOwnership: function(): any
	GetAsset: function(AzFramework_Scripts_SpawnableScriptAssetRef): Asset_AzFramework_Spawnable
	GetAssetId: function(AzFramework_Scripts_SpawnableScriptAssetRef): AssetId
	IsValid: function(AzFramework_Scripts_SpawnableScriptAssetRef): boolean
	ReleaseOwnership: function(): any
	SetAsset: function(AzFramework_Scripts_SpawnableScriptAssetRef, Asset_AzFramework_Spawnable): any
	SetAssetId: function(AzFramework_Scripts_SpawnableScriptAssetRef, AssetId): any

	metamethod __call: function(self): SpawnableScriptAssetRef
end


global record Specializations
	AcquireOwnership: function(): any
	Append: function(SpecializationsProxy, basic_string_view_char_char_traits_char): boolean
	Contains: function(SpecializationsProxy, basic_string_view_char_char_traits_char): boolean
	GetCount: function(SpecializationsProxy): integer
	GetPriority: function(SpecializationsProxy, basic_string_view_char_char_traits_char): integer
	GetSpecialization: function(SpecializationsProxy, integer): basic_string_view_char_char_traits_char
	ReleaseOwnership: function(): any
end


global record SphereShapeConfig
	Radius: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Spline
	vertexContainer: any

	AcquireOwnership: function(): any
	GetAabb: function(Spline, Transform): Aabb
	GetAddressByDistance: function(Spline, number): SplineAddress
	GetAddressByFraction: function(Spline, number): SplineAddress
	GetLength: function(Spline, SplineAddress): number
	GetNearestAddressPosition: function(Spline, Vector3): PositionSplineQueryResult
	GetNearestAddressRay: function(Spline, Vector3, Vector3): RaySplineQueryResult
	GetNormal: function(Spline, SplineAddress): Vector3
	GetPosition: function(Spline, SplineAddress): Vector3
	GetSegmentCount: function(Spline): integer
	GetSegmentGranularity: function(Spline): integer
	GetSegmentLength: function(Spline, integer): number
	GetSplineLength: function(Spline): number
	GetTangent: function(Spline, SplineAddress): Vector3
	IsClosed: function(Spline): boolean
	ReleaseOwnership: function(): any
end


global record SplineAddress
	segmentFraction: any
	segmentIndex: any

	GetSegmentIndexAndFraction: function(SplineAddress): tuple_AZ_u64_float
end


global record StencilOp
	Decrement: any
	DecrementSaturate: any
	Increment: any
	IncrementSaturate: any
	Invalid: any
	Invert: any
	Keep: any
	Replace: any
	Zero: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceAltitudeGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceAltitudeGradientConfig
	altitudeMax: any
	altitudeMin: any
	shapeEntityId: any

	AcquireOwnership: function(): any
	AddTag: function(SurfaceAltitudeGradientConfig, string): any
	GetNumTags: function(SurfaceAltitudeGradientConfig): integer
	GetTag: function(SurfaceAltitudeGradientConfig, integer): Crc32
	ReleaseOwnership: function(): any
	RemoveTag: function(SurfaceAltitudeGradientConfig, integer): any
end


global record SurfaceDataColliderComponent
	modifierTags: any
	providerTags: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceDataColliderConfig
	modifierTags: any
	providerTags: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceDataSystemComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceMaskGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceMaskGradientConfig
	AcquireOwnership: function(): any
	AddTag: function(SurfaceMaskGradientConfig, string): any
	GetNumTags: function(SurfaceMaskGradientConfig): integer
	GetTag: function(SurfaceMaskGradientConfig, integer): Crc32
	ReleaseOwnership: function(): any
	RemoveTag: function(SurfaceMaskGradientConfig, integer): any
end


global record SurfacePointList
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceSlopeGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record SurfaceSlopeGradientConfig
	rampType: any
	slopeMax: any
	slopeMin: any
	smoothStep: any

	AcquireOwnership: function(): any
	AddTag: function(SurfaceSlopeGradientConfig, string): any
	GetNumTags: function(SurfaceSlopeGradientConfig): integer
	GetTag: function(SurfaceSlopeGradientConfig, integer): Crc32
	ReleaseOwnership: function(): any
	RemoveTag: function(SurfaceSlopeGradientConfig, integer): any
end


global record SurfaceTag
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
	SetTag: function(SurfaceTag, string): any
end


global record SurfaceTagWeight
	surfaceType: any
	weight: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record TagHelper
	AcquireOwnership: function(): any
	GetEntitiesbyTag: function(Crc32): vector_EntityId
	ReleaseOwnership: function(): any
end


global record ThresholdGradientComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record ThresholdGradientConfig
	gradientSampler: any
	threshold: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record TickOrder
	Animation: any
	Attachment: any
	Default: any
	First: any
	Game: any
	Input: any
	Last: any
	Physics: any
	Placement: any
	PreRender: any
	UI: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record Transform
	rotation: Quaternion
	translation: Vector3

	Clone: function(Transform): Transform
	ConstructFromValuesNumeric: function(number, number, number, number, number, number, number, number, number, number, number, number): Transform
	CreateFromMatrix3x3: function(Matrix3x3): Transform
	CreateFromMatrix3x3AndTranslation: function(Matrix3x3, Vector3): Transform
	CreateFromQuaternion: function(Quaternion): Transform
	CreateFromQuaternionAndTranslation: function(Quaternion, Vector3): Transform
	CreateIdentity: function(): Transform
	CreateLookAt: function(Vector3, Vector3, enum): Transform
	CreateRotationX: function(number): Transform
	CreateRotationY: function(number): Transform
	CreateRotationZ: function(number): Transform
	CreateTranslation: function(Vector3): Transform
	CreateUniformScale: function(number): Transform
	ExtractUniformScale: function(Transform): number
	GetBasis: function(Transform, integer): Vector3
	GetBasisAndTranslation: function(): any...
	GetBasisX: function(Transform): Vector3
	GetBasisY: function(Transform): Vector3
	GetBasisZ: function(Transform): Vector3
	GetEulerDegrees: function(Transform): Vector3
	GetInverse: function(Transform): Transform
	GetOrthogonalized: function(Transform): Transform
	GetRotation: function(Transform): Quaternion
	GetTranslation: function(Transform): Vector3
	GetUniformScale: function(Transform): number
	Invert: function(Transform): any
	IsClose: function(Transform, Transform, number): boolean
	IsFinite: function(Transform): boolean
	IsOrthogonal: function(Transform, number): boolean
	MultiplyByUniformScale: function(Transform, number): any
	Orthogonalize: function(Transform): any
	SetRotation: function(Transform, Quaternion): any
	SetTranslation: function(): any...
	SetUniformScale: function(Transform, number): any
	TransformVector: function(Transform, Vector3): Vector3
end


global record TransformComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record TransformConfig
	MaintainCurrentWorldTransform: any
	MaintainOriginalRelativeTransform: any
	isStatic: any
	localTransform: any
	parentActivationTransformMode: any
	parentId: any
	worldTransform: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
	SetLocalAndWorldTransform: function(TransformConfig, Transform, Transform): any
	SetTransform: function(TransformConfig, Transform): any
end


global record TriggerEvent
	AcquireOwnership: function(): any
	GetOtherEntityId: function(TriggerEvent): EntityId
	GetTriggerEntityId: function(TriggerEvent): EntityId
	ReleaseOwnership: function(): any
end


global record TypeExposition
	AcquireOwnership: function(): any
	Reflect_AZ_Outcome_AZ_Vector3_void: function(Outcome_Vector3_unexpect_t): boolean
	Reflect_array_AZ_Vector3_2: function(array_Vector3_2): integer
	ReleaseOwnership: function(): any
end


global record UiAnchors
	bottom: any
	left: any
	right: any
	top: any

	SetAnchors: function(Anchors, number, number, number, number): any
	SetBottom: function(Anchors, number): any
	SetLeft: function(Anchors, number): any
	SetRight: function(Anchors, number): any
	SetTop: function(Anchors, number): any
end


global record UiFaderComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiImageComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiImageSequenceComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiLayoutCellComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiLayoutColumnComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiLayoutRowComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiOffsets
	bottom: any
	left: any
	right: any
	top: any

	SetBottom: function(Offsets, number): any
	SetLeft: function(Offsets, number): any
	SetOffsets: function(Offsets, number, number, number, number): any
	SetRight: function(Offsets, number): any
	SetTop: function(Offsets, number): any
end


global record UiPadding
	bottom: any
	left: any
	right: any
	top: any

	SetBottom: function(Padding, integer): any
	SetLeft: function(Padding, integer): any
	SetPadding: function(Padding, integer, integer, integer, integer): any
	SetRight: function(Padding, integer): any
	SetTop: function(Padding, integer): any
end


global record UiParticleEmitterComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiScrollBarComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiSliderComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiTextComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiTextInputComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiTooltipDisplayComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UiTransform2dComponent
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record UnitTesting
	AcquireOwnership: function(): any
	AddFailure: function(ExecutionState, Report: string): any
	AddSuccess: function(ExecutionState, Report: string): any
	Checkpoint: function(ExecutionState, Report: string): any
	ExpectEqualAabbAabb: function(ExecutionState, Candidate: Aabb, Reference: Aabb, Report: string): any
	ExpectEqualColorColor: function(ExecutionState, Candidate: Color, Reference: Color, Report: string): any
	ExpectEqualCrc32Crc32: function(ExecutionState, Candidate: Crc32, Reference: Crc32, Report: string): any
	ExpectEqualEntityIdEntityId: function(ExecutionState, Candidate: EntityId, Reference: EntityId, Report: string): any
	ExpectEqualMatrix3x3Matrix3x3: function(ExecutionState, Candidate: Matrix3x3, Reference: Matrix3x3, Report: string): any
	ExpectEqualMatrix4x4Matrix4x4: function(ExecutionState, Candidate: Matrix4x4, Reference: Matrix4x4, Report: string): any
	ExpectEqualObbObb: function(ExecutionState, Candidate: Obb, Reference: Obb, Report: string): any
	ExpectEqualPlanePlane: function(ExecutionState, Candidate: Plane, Reference: Plane, Report: string): any
	ExpectEqualQuaternionQuaternion: function(ExecutionState, Candidate: Quaternion, Reference: Quaternion, Report: string): any
	ExpectEqualTransformTransform: function(ExecutionState, Candidate: Transform, Reference: Transform, Report: string): any
	ExpectEqualVector2Vector2: function(ExecutionState, Candidate: Vector2, Reference: Vector2, Report: string): any
	ExpectEqualVector3Vector3: function(ExecutionState, Candidate: Vector3, Reference: Vector3, Report: string): any
	ExpectEqualVector4Vector4: function(ExecutionState, Candidate: Vector4, Reference: Vector4, Report: string): any
	ExpectEqualbasic_string_char_char_traits_charbasic_string_char_char_traits_char: function(ExecutionState, Candidate: string, Reference: string, Report: string): any
	ExpectEqualboolbool: function(ExecutionState, Candidate: boolean, Reference: boolean, Report: string): any
	ExpectEqualdoubledouble: function(ExecutionState, Candidate: number, Reference: number, Report: string): any
	ExpectFalse: function(ExecutionState, Candidate: boolean, Report: string): any
	ExpectGreaterThanEqualVector2Vector2: function(ExecutionState, Candidate: Vector2, Reference: Vector2, Report: string): any
	ExpectGreaterThanEqualVector3Vector3: function(ExecutionState, Candidate: Vector3, Reference: Vector3, Report: string): any
	ExpectGreaterThanEqualVector4Vector4: function(ExecutionState, Candidate: Vector4, Reference: Vector4, Report: string): any
	ExpectGreaterThanEqualbasic_string_char_char_traits_charbasic_string_char_char_traits_char: function(ExecutionState, Candidate: string, Reference: string, Report: string): any
	ExpectGreaterThanEqualdoubledouble: function(ExecutionState, Candidate: number, Reference: number, Report: string): any
	ExpectGreaterThanbasic_string_char_char_traits_charbasic_string_char_char_traits_char: function(ExecutionState, Candidate: string, Reference: string, Report: string): any
	ExpectGreaterThandoubledouble: function(ExecutionState, Candidate: number, Reference: number, Report: string): any
	ExpectLessThanEqualVector2Vector2: function(ExecutionState, Candidate: Vector2, Reference: Vector2, Report: string): any
	ExpectLessThanEqualVector3Vector3: function(ExecutionState, Candidate: Vector3, Reference: Vector3, Report: string): any
	ExpectLessThanEqualVector4Vector4: function(ExecutionState, Candidate: Vector4, Reference: Vector4, Report: string): any
	ExpectLessThanEqualbasic_string_char_char_traits_charbasic_string_char_char_traits_char: function(ExecutionState, Candidate: string, Reference: string, Report: string): any
	ExpectLessThanEqualdoubledouble: function(ExecutionState, Candidate: number, Reference: number, Report: string): any
	ExpectLessThanVector2Vector2: function(ExecutionState, Candidate: Vector2, Reference: Vector2, Report: string): any
	ExpectLessThanVector3Vector3: function(ExecutionState, Candidate: Vector3, Reference: Vector3, Report: string): any
	ExpectLessThanVector4Vector4: function(ExecutionState, Candidate: Vector4, Reference: Vector4, Report: string): any
	ExpectLessThanbasic_string_char_char_traits_charbasic_string_char_char_traits_char: function(ExecutionState, Candidate: string, Reference: string, Report: string): any
	ExpectLessThandoubledouble: function(ExecutionState, Candidate: number, Reference: number, Report: string): any
	ExpectNotEqualAabbAabb: function(ExecutionState, Candidate: Aabb, Reference: Aabb, Report: string): any
	ExpectNotEqualColorColor: function(ExecutionState, Candidate: Color, Reference: Color, Report: string): any
	ExpectNotEqualCrc32Crc32: function(ExecutionState, Candidate: Crc32, Reference: Crc32, Report: string): any
	ExpectNotEqualEntityIdEntityId: function(ExecutionState, Candidate: EntityId, Reference: EntityId, Report: string): any
	ExpectNotEqualMatrix3x3Matrix3x3: function(ExecutionState, Candidate: Matrix3x3, Reference: Matrix3x3, Report: string): any
	ExpectNotEqualMatrix4x4Matrix4x4: function(ExecutionState, Candidate: Matrix4x4, Reference: Matrix4x4, Report: string): any
	ExpectNotEqualObbObb: function(ExecutionState, Candidate: Obb, Reference: Obb, Report: string): any
	ExpectNotEqualPlanePlane: function(ExecutionState, Candidate: Plane, Reference: Plane, Report: string): any
	ExpectNotEqualQuaternionQuaternion: function(ExecutionState, Candidate: Quaternion, Reference: Quaternion, Report: string): any
	ExpectNotEqualTransformTransform: function(ExecutionState, Candidate: Transform, Reference: Transform, Report: string): any
	ExpectNotEqualVector2Vector2: function(ExecutionState, Candidate: Vector2, Reference: Vector2, Report: string): any
	ExpectNotEqualVector3Vector3: function(ExecutionState, Candidate: Vector3, Reference: Vector3, Report: string): any
	ExpectNotEqualVector4Vector4: function(ExecutionState, Candidate: Vector4, Reference: Vector4, Report: string): any
	ExpectNotEqualbasic_string_char_char_traits_charbasic_string_char_char_traits_char: function(ExecutionState, Candidate: string, Reference: string, Report: string): any
	ExpectNotEqualboolbool: function(ExecutionState, Candidate: boolean, Reference: boolean, Report: string): any
	ExpectNotEqualdoubledouble: function(ExecutionState, Candidate: number, Reference: number, Report: string): any
	ExpectTrue: function(ExecutionState, Candidate: boolean, Report: string): any
	MarkComplete: function(ExecutionState, Report: string): any
	ReleaseOwnership: function(): any
end


global record Uuid
	Clone: function(AZ_Uuid): AZ_Uuid
	Create: function(): AZ_Uuid
	CreateName: function(basic_string_view_char_char_traits_char): AZ_Uuid
	CreateNull: function(): AZ_Uuid
	CreateRandom: function(): AZ_Uuid
	CreateString: function(): any...
	IsNull: function(AZ_Uuid): boolean
end


global record Vector2
	x: number
	y: number

	Angnumber: function(Vector2, Vector2): number
	AngleDeg: function(Vector2, Vector2): number
	AngleSafe: function(Vector2, Vector2): number
	AngleSafeDeg: function(Vector2, Vector2): number
	Clone: function(Vector2: Vector2): Vector2
	ConstructFromValues: function(number, number): Vector2
	CreateAxisX: function(number): Vector2
	CreateAxisY: function(number): Vector2
	CreateFromAngle: function(number): Vector2
	CreateOne: function(): Vector2
	CreateSelectCmpEqual: function(Vector2, Vector2, Vector2, Vector2): Vector2
	CreateSelectCmpGreater: function(Vector2, Vector2, Vector2, Vector2): Vector2
	CreateSelectCmpGreaterEqual: function(Vector2, Vector2, Vector2, Vector2): Vector2
	CreateZero: function(): Vector2
	DivideFloatExplicit: function(Source: Vector2, Divisor: number): Vector2
	Dot: function(Vector2, Vector2): number
	GetAbs: function(Vector2): Vector2
	GetClamp: function(Vector2, Vector2, Vector2): Vector2
	GetDistance: function(Vector2, Vector2): number
	GetDistanceSq: function(Vector2, Vector2): number
	GetElement: function(Vector2, integer): number
	GetLength: function(Source: Vector2): number
	GetLengthSq: function(Vector2): number
	GetMadd: function(Vector2, Vector2, Vector2): Vector2
	GetMax: function(Vector2, Vector2): Vector2
	GetMin: function(Vector2, Vector2): Vector2
	GetNormalized: function(Vector2): Vector2
	GetNormalizedSafe: function(Vector2, number): Vector2
	GetPerpendicular: function(Vector2): Vector2
	GetProjected: function(Vector2, Vector2): Vector2
	GetProjectedOnNormal: function(Vector2, Vector2): Vector2
	GetSelect: function(Vector2, Vector2, Vector2): Vector2
	IsClose: function(Vector2, Vector2, number): boolean
	IsFinite: function(Vector2): boolean
	IsGreaterEqualThan: function(Vector2, Vector2): boolean
	IsGreaterThan: function(Vector2, Vector2): boolean
	IsLessEqualThan: function(Vector2, Vector2): boolean
	IsLessThan: function(Vector2, Vector2): boolean
	IsNormalized: function(Vector2, number): boolean
	IsZero: function(Vector2, number): boolean
	Lerp: function(Vector2, Vector2, number): Vector2
	Madd: function(Vector2, Vector2, Vector2): any
	Normalize: function(Vector2): any
	NormalizeSafe: function(Vector2, number): any
	NormalizeSafeWithLength: function(Vector2, number): number
	NormalizeWithLength: function(Vector2): number
	Project: function(Vector2, Vector2): any
	ProjectOnNormal: function(Vector2, Vector2): any
	Select: function(Vector2, Vector2, Vector2): any
	Set: function(): any...
	SetElement: function(Vector2, Index: integer, Value: number): any
	SetLength: function(Vector2, number): any
	Slerp: function(Vector2, Vector2, number): Vector2
end


global record Vector3
	x: number
	y: number
	z: number

	Angle: function(Vector3, Vector3): number
	AngleDeg: function(Vector3, Vector3): number
	AngleSafe: function(Vector3, Vector3): number
	AngleSafeDeg: function(Vector3, Vector3): number
	BuildTangentBasis: function(): any...
	Clone: function(Vector3): Vector3
	ConstructFromValues: function(number, number, number): Vector3
	CreateAxisX: function(number): Vector3
	CreateAxisY: function(number): Vector3
	CreateAxisZ: function(number): Vector3
	CreateOne: function(): Vector3
	CreateZero: function(): Vector3
	Cross: function(Vector3, Vector3): Vector3
	CrossXAxis: function(Vector3): Vector3
	CrossYAxis: function(Vector3): Vector3
	CrossZAxis: function(Vector3): Vector3
	DivideFloatExplicit: function(Source: Vector3, Divisor: number): Vector3
	Dot: function(Vector3, Vector3): number
	GetAbs: function(Vector3): Vector3
	GetAngleMod: function(Vector3): Vector3
	GetClamp: function(Vector3, Vector3, Vector3): Vector3
	GetCos: function(Vector3): Vector3
	GetDistance: function(Vector3, Vector3): number
	GetDistanceSq: function(Vector3, Vector3): number
	GetElement: function(Vector3, integer): number
	GetLength: function(Source: Vector3): number
	GetLengthReciprocal: function(Vector3): number
	GetLengthSq: function(Vector3): number
	GetMadd: function(Vector3, Vector3, Vector3): Vector3
	GetMax: function(Vector3, Vector3): Vector3
	GetMin: function(Vector3, Vector3): Vector3
	GetNormalized: function(Vector3): Vector3
	GetNormalizedSafe: function(Vector3, number): Vector3
	GetProjected: function(Vector3, Vector3): Vector3
	GetProjectedOnNormal: function(Vector3, Vector3): Vector3
	GetReciprocal: function(Vector3): Vector3
	GetSin: function(Vector3): Vector3
	GetSinCos: function(): any...
	IsClose: function(Vector3, Vector3, number): boolean
	IsFinite: function(Vector3): boolean
	IsGreaterEqualThan: function(Vector3, Vector3): boolean
	IsGreaterThan: function(Vector3, Vector3): boolean
	IsLessEqualThan: function(Vector3, Vector3): boolean
	IsLessThan: function(Vector3, Vector3): boolean
	IsNormalized: function(Vector3, number): boolean
	IsPerpendicular: function(Vector3, Vector3, number): boolean
	IsZero: function(Vector3, number): boolean
	Lerp: function(Vector3, Vector3, number): Vector3
	Madd: function(Vector3, Vector3, Vector3): any
	Normalize: function(Vector3): any
	NormalizeSafe: function(Vector3, number): any
	NormalizeSafeWithLength: function(Vector3, number): number
	NormalizeWithLength: function(Vector3): number
	Project: function(Vector3, Vector3): any
	ProjectOnNormal: function(Vector3, Vector3): any
	Set: function(): any...
	SetElement: function(Vector3, integer, number): any
	SetLength: function(Vector3, number): any
	SetLengthEstimate: function(Vector3, number): any
	Slerp: function(Vector3, Vector3, number): Vector3
	XAxisCross: function(Vector3): Vector3
	YAxisCross: function(Vector3): Vector3
	ZAxisCross: function(Vector3): Vector3

	metamethod __call: function(self, number, number, number): Vector3
	metamethod __mul: function(Vector3, number): Vector3
end


global record Vector4
	w: number
	x: number
	y: number
	z: number

	Clone: function(Vector4): Vector4
	ConstructFromValues: function(number, number, number, number): Vector4
	CreateAxisW: function(number): Vector4
	CreateAxisX: function(number): Vector4
	CreateAxisY: function(number): Vector4
	CreateAxisZ: function(number): Vector4
	CreateFromVector3: function(Vector3): Vector4
	CreateFromVector3AndFloat: function(Vector3, number): Vector4
	CreateOne: function(): Vector4
	CreateZero: function(): Vector4
	DivideFloatExplicit: function(Source: Vector4, Divisor: number): Vector4
	Dot: function(Vector4, Vector4): number
	Dot3: function(Vector4, Vector3): number
	GetAbs: function(Vector4): Vector4
	GetElement: function(Vector4, integer): number
	GetHomogenized: function(Vector4): Vector3
	GetLength: function(Source: Vector4): number
	GetLengthReciprocal: function(Vector4): number
	GetLengthSq: function(Vector4): number
	GetNormalized: function(Vector4): Vector4
	GetNormalizedSafe: function(Vector4, number): Vector4
	GetReciprocal: function(Vector4): Vector4
	Homogenize: function(Vector4): any
	IsClose: function(Vector4, Vector4, number): boolean
	IsFinite: function(Vector4): boolean
	IsGreaterEqualThan: function(Vector4, Vector4): boolean
	IsGreaterThan: function(Vector4, Vector4): boolean
	IsLessEqualThan: function(Vector4, Vector4): boolean
	IsLessThan: function(Vector4, Vector4): boolean
	IsNormalized: function(Vector4, number): boolean
	IsZero: function(Vector4, number): boolean
	Normalize: function(Vector4): any
	NormalizeSafe: function(Vector4, number): any
	NormalizeSafeWithLength: function(Vector4, number): number
	NormalizeWithLength: function(Vector4): number
	Set: function(): any...
	SetElement: function(Vector4, integer, number): any
end


global record VectorN
end


global record VertexColor
	alpha: any
	blue: any
	green: any
	red: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record VisibleGeometry
	indices: any
	transform: any
	transparent: any
	vertices: any

	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record fixed_vector_SurfaceTagWeight_16
	AcquireOwnership: function(): any
	ReleaseOwnership: function(): any
end


global record unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId
	AcquireOwnership: function(): any
	At: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignmentId): AZ_Render_MaterialAssignment
	BucketCount: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): integer
	Clear: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId
	Empty: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): boolean
	Erase: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignmentId): unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId
	EraseCheck_VM: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignmentId): boolean
	GetKeys: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): vector_AZ_Render_MaterialAssignmentId
	GetSize: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): integer
	Insert: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, Index: AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignment): unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId
	Iterate_VM: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): Iterator_VM_unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, integer): any
	Swap: function(unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId): any
	contains: function(Key: unordered_map_AZ_Render_MaterialAssignmentId_AZ_Render_MaterialAssignment_hash_AZ_Render_MaterialAssignmentId_equal_to_AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignmentId): boolean
end


global record unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid
	AcquireOwnership: function(): any
	At: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, AZ_Uuid): unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	BucketCount: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): integer
	Clear: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid
	Empty: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): boolean
	Erase: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, AZ_Uuid): unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid
	EraseCheck_VM: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, AZ_Uuid): boolean
	GetKeys: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): vector_AZ_Uuid
	GetSize: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): integer
	Insert: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, Index: AZ_Uuid, unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid
	Iterate_VM: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): Iterator_VM_unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, integer): any
	Swap: function(unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid): any
	contains: function(Key: unordered_map_AZ_Uuid_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char___hash_AZ_Uuid_equal_to_AZ_Uuid, AZ_Uuid): boolean
end


global record unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, AssetId): Aabb
	BucketCount: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, Index: AssetId, Aabb): unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Aabb_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, AssetId): AssetId
	BucketCount: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, Index: AssetId, AssetId): unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_AssetId_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, AssetId): Color
	BucketCount: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, Index: AssetId, Color): unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Color_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, AssetId): Crc32
	BucketCount: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, Index: AssetId, Crc32): unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Crc32_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, AssetId): EntityId
	BucketCount: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, Index: AssetId, EntityId): unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_EntityId_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, AssetId): Matrix3x3
	BucketCount: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, Index: AssetId, Matrix3x3): unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Matrix3x3_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, AssetId): Matrix4x4
	BucketCount: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, Index: AssetId, Matrix4x4): unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Matrix4x4_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, AssetId): MatrixMxN
	BucketCount: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, Index: AssetId, MatrixMxN): unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_MatrixMxN_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, AssetId): Obb
	BucketCount: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, Index: AssetId, Obb): unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Obb_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, AssetId): Plane
	BucketCount: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, Index: AssetId, Plane): unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Plane_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, AssetId): Quaternion
	BucketCount: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, Index: AssetId, Quaternion): unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Quaternion_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, AssetId): Transform
	BucketCount: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, Index: AssetId, Transform): unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Transform_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, AssetId): Vector2
	BucketCount: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, Index: AssetId, Vector2): unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Vector2_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, AssetId): Vector3
	BucketCount: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, Index: AssetId, Vector3): unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Vector3_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, AssetId): Vector4
	BucketCount: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, Index: AssetId, Vector4): unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_Vector4_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, AssetId): VectorN
	BucketCount: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, Index: AssetId, VectorN): unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_VectorN_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, AssetId): string
	BucketCount: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, Index: AssetId, string): unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_basic_string_char_char_traits_char__hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, AssetId): boolean
	BucketCount: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, Index: AssetId, boolean): unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_bool_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	At: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, AssetId): number
	BucketCount: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, AssetId): unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, Index: AssetId, number): unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId): any
	contains: function(Key: unordered_map_AssetId_double_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, Crc32): Aabb
	BucketCount: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, Index: Crc32, Aabb): unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Aabb_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, Crc32): AssetId
	BucketCount: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, Index: Crc32, AssetId): unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_AssetId_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, Crc32): Color
	BucketCount: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, Index: Crc32, Color): unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Color_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, Crc32): Crc32
	BucketCount: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, Index: Crc32, Crc32): unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Crc32_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, Crc32): EntityId
	BucketCount: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, Index: Crc32, EntityId): unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_EntityId_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, Crc32): Matrix3x3
	BucketCount: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, Index: Crc32, Matrix3x3): unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Matrix3x3_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, Crc32): Matrix4x4
	BucketCount: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, Index: Crc32, Matrix4x4): unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Matrix4x4_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, Crc32): MatrixMxN
	BucketCount: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, Index: Crc32, MatrixMxN): unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_MatrixMxN_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, Crc32): Obb
	BucketCount: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, Index: Crc32, Obb): unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Obb_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, Crc32): Plane
	BucketCount: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, Index: Crc32, Plane): unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Plane_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, Crc32): Quaternion
	BucketCount: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, Index: Crc32, Quaternion): unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Quaternion_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, Crc32): Transform
	BucketCount: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, Index: Crc32, Transform): unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Transform_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, Crc32): Vector2
	BucketCount: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, Index: Crc32, Vector2): unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Vector2_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, Crc32): Vector3
	BucketCount: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, Index: Crc32, Vector3): unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Vector3_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, Crc32): Vector4
	BucketCount: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, Index: Crc32, Vector4): unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_Vector4_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, Crc32): VectorN
	BucketCount: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, Index: Crc32, VectorN): unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_VectorN_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, Crc32): string
	BucketCount: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, Index: Crc32, string): unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_basic_string_char_char_traits_char__hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, Crc32): boolean
	BucketCount: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, Index: Crc32, boolean): unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_bool_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	At: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, Crc32): number
	BucketCount: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, Crc32): unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, Index: Crc32, number): unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32): any
	contains: function(Key: unordered_map_Crc32_double_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, EntityId): Aabb
	BucketCount: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, Index: EntityId, Aabb): unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Aabb_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, EntityId): AssetId
	BucketCount: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, Index: EntityId, AssetId): unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_AssetId_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, EntityId): Color
	BucketCount: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, Index: EntityId, Color): unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Color_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, EntityId): Crc32
	BucketCount: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, Index: EntityId, Crc32): unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Crc32_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, EntityId): EntityId
	BucketCount: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, Index: EntityId, EntityId): unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_EntityId_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, EntityId): Matrix3x3
	BucketCount: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, Index: EntityId, Matrix3x3): unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Matrix3x3_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, EntityId): Matrix4x4
	BucketCount: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, Index: EntityId, Matrix4x4): unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Matrix4x4_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, EntityId): MatrixMxN
	BucketCount: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, Index: EntityId, MatrixMxN): unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_MatrixMxN_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, EntityId): Obb
	BucketCount: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, Index: EntityId, Obb): unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Obb_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, EntityId): Plane
	BucketCount: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, Index: EntityId, Plane): unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Plane_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, EntityId): Quaternion
	BucketCount: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, Index: EntityId, Quaternion): unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Quaternion_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, EntityId): Transform
	BucketCount: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, Index: EntityId, Transform): unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Transform_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, EntityId): Vector2
	BucketCount: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, Index: EntityId, Vector2): unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Vector2_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, EntityId): Vector3
	BucketCount: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, Index: EntityId, Vector3): unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Vector3_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, EntityId): Vector4
	BucketCount: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, Index: EntityId, Vector4): unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_Vector4_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, EntityId): VectorN
	BucketCount: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, Index: EntityId, VectorN): unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_VectorN_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, EntityId): string
	BucketCount: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, Index: EntityId, string): unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_basic_string_char_char_traits_char__hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, EntityId): boolean
	BucketCount: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, Index: EntityId, boolean): unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_bool_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	At: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, EntityId): number
	BucketCount: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, EntityId): unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, Index: EntityId, number): unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId): any
	contains: function(Key: unordered_map_EntityId_double_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_map_Name_Name_hash_Name_equal_to_Name
	AcquireOwnership: function(): any
	At: function(unordered_map_Name_Name_hash_Name_equal_to_Name, Name): Name
	BucketCount: function(unordered_map_Name_Name_hash_Name_equal_to_Name): integer
	Clear: function(unordered_map_Name_Name_hash_Name_equal_to_Name): unordered_map_Name_Name_hash_Name_equal_to_Name
	Empty: function(unordered_map_Name_Name_hash_Name_equal_to_Name): boolean
	Erase: function(unordered_map_Name_Name_hash_Name_equal_to_Name, Name): unordered_map_Name_Name_hash_Name_equal_to_Name
	EraseCheck_VM: function(unordered_map_Name_Name_hash_Name_equal_to_Name, Name): boolean
	GetKeys: function(unordered_map_Name_Name_hash_Name_equal_to_Name): vector_Name
	GetSize: function(unordered_map_Name_Name_hash_Name_equal_to_Name): integer
	Insert: function(unordered_map_Name_Name_hash_Name_equal_to_Name, Index: Name, Name): unordered_map_Name_Name_hash_Name_equal_to_Name
	Iterate_VM: function(unordered_map_Name_Name_hash_Name_equal_to_Name): Iterator_VM_unordered_map_Name_Name_hash_Name_equal_to_Name
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Name_Name_hash_Name_equal_to_Name, integer): any
	Swap: function(unordered_map_Name_Name_hash_Name_equal_to_Name, unordered_map_Name_Name_hash_Name_equal_to_Name): any
	contains: function(Key: unordered_map_Name_Name_hash_Name_equal_to_Name, Name): boolean
end


global record unordered_map_Name_any_hash_Name_equal_to_Name
	AcquireOwnership: function(): any
	At: function(unordered_map_Name_any_hash_Name_equal_to_Name, Name): any
	BucketCount: function(unordered_map_Name_any_hash_Name_equal_to_Name): integer
	Clear: function(unordered_map_Name_any_hash_Name_equal_to_Name): unordered_map_Name_any_hash_Name_equal_to_Name
	Empty: function(unordered_map_Name_any_hash_Name_equal_to_Name): boolean
	Erase: function(unordered_map_Name_any_hash_Name_equal_to_Name, Name): unordered_map_Name_any_hash_Name_equal_to_Name
	EraseCheck_VM: function(unordered_map_Name_any_hash_Name_equal_to_Name, Name): boolean
	GetKeys: function(unordered_map_Name_any_hash_Name_equal_to_Name): vector_Name
	GetSize: function(unordered_map_Name_any_hash_Name_equal_to_Name): integer
	Insert: function(unordered_map_Name_any_hash_Name_equal_to_Name, Index: Name, any): unordered_map_Name_any_hash_Name_equal_to_Name
	Iterate_VM: function(unordered_map_Name_any_hash_Name_equal_to_Name): Iterator_VM_unordered_map_Name_any_hash_Name_equal_to_Name
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_Name_any_hash_Name_equal_to_Name, integer): any
	Swap: function(unordered_map_Name_any_hash_Name_equal_to_Name, unordered_map_Name_any_hash_Name_equal_to_Name): any
	contains: function(Key: unordered_map_Name_any_hash_Name_equal_to_Name, Name): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Aabb
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Aabb): unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Aabb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): AssetId
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, AssetId): unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__AssetId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): AzFramework_EntitySpawnTicket
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, AzFramework_EntitySpawnTicket): unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__AzFramework_EntitySpawnTicket_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): AzFramework_Scripts_SpawnableScriptAssetRef
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, AzFramework_Scripts_SpawnableScriptAssetRef): unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__AzFramework_Scripts_SpawnableScriptAssetRef_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Color
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Color): unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Color_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Crc32
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Crc32): unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Crc32_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): EntityId
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, EntityId): unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__EntityId_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Matrix3x3
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Matrix3x3): unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Matrix3x3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Matrix4x4
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Matrix4x4): unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Matrix4x4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): MatrixMxN
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, MatrixMxN): unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__MatrixMxN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Obb
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Obb): unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Obb_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Plane
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Plane): unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Plane_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Quaternion
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Quaternion): unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Quaternion_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Transform
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Transform): unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Transform_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Vector2
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Vector2): unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Vector2_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Vector3
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Vector3): unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Vector3_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): Vector4
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, Vector4): unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__Vector4_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): VectorN
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, VectorN): unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__VectorN_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): any
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, any): unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__any_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): string
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, string): unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, boolean): unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__bool_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): number
	BucketCount: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, Index: string, number): unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(Key: unordered_map_basic_string_char_char_traits_char__double_hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_map_bool_Aabb_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool, boolean): Aabb
	BucketCount: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool): unordered_map_bool_Aabb_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool, boolean): unordered_map_bool_Aabb_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool, Index: boolean, Aabb): unordered_map_bool_Aabb_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Aabb_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Aabb_hash_bool_equal_to_bool, unordered_map_bool_Aabb_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Aabb_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_AssetId_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool, boolean): AssetId
	BucketCount: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool): unordered_map_bool_AssetId_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool, boolean): unordered_map_bool_AssetId_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool, Index: boolean, AssetId): unordered_map_bool_AssetId_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_AssetId_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_AssetId_hash_bool_equal_to_bool, unordered_map_bool_AssetId_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_AssetId_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Color_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Color_hash_bool_equal_to_bool, boolean): Color
	BucketCount: function(unordered_map_bool_Color_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Color_hash_bool_equal_to_bool): unordered_map_bool_Color_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Color_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Color_hash_bool_equal_to_bool, boolean): unordered_map_bool_Color_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Color_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Color_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Color_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Color_hash_bool_equal_to_bool, Index: boolean, Color): unordered_map_bool_Color_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Color_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Color_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Color_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Color_hash_bool_equal_to_bool, unordered_map_bool_Color_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Color_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Crc32_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool, boolean): Crc32
	BucketCount: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool): unordered_map_bool_Crc32_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool, boolean): unordered_map_bool_Crc32_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool, Index: boolean, Crc32): unordered_map_bool_Crc32_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Crc32_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Crc32_hash_bool_equal_to_bool, unordered_map_bool_Crc32_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Crc32_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_EntityId_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool, boolean): EntityId
	BucketCount: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool): unordered_map_bool_EntityId_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool, boolean): unordered_map_bool_EntityId_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool, Index: boolean, EntityId): unordered_map_bool_EntityId_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_EntityId_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_EntityId_hash_bool_equal_to_bool, unordered_map_bool_EntityId_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_EntityId_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, boolean): Matrix3x3
	BucketCount: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, boolean): unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, Index: boolean, Matrix3x3): unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Matrix3x3_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, boolean): Matrix4x4
	BucketCount: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, boolean): unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, Index: boolean, Matrix4x4): unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Matrix4x4_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, boolean): MatrixMxN
	BucketCount: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, boolean): unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, Index: boolean, MatrixMxN): unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_MatrixMxN_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Obb_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Obb_hash_bool_equal_to_bool, boolean): Obb
	BucketCount: function(unordered_map_bool_Obb_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Obb_hash_bool_equal_to_bool): unordered_map_bool_Obb_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Obb_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Obb_hash_bool_equal_to_bool, boolean): unordered_map_bool_Obb_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Obb_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Obb_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Obb_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Obb_hash_bool_equal_to_bool, Index: boolean, Obb): unordered_map_bool_Obb_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Obb_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Obb_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Obb_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Obb_hash_bool_equal_to_bool, unordered_map_bool_Obb_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Obb_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Plane_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Plane_hash_bool_equal_to_bool, boolean): Plane
	BucketCount: function(unordered_map_bool_Plane_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Plane_hash_bool_equal_to_bool): unordered_map_bool_Plane_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Plane_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Plane_hash_bool_equal_to_bool, boolean): unordered_map_bool_Plane_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Plane_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Plane_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Plane_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Plane_hash_bool_equal_to_bool, Index: boolean, Plane): unordered_map_bool_Plane_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Plane_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Plane_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Plane_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Plane_hash_bool_equal_to_bool, unordered_map_bool_Plane_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Plane_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Quaternion_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool, boolean): Quaternion
	BucketCount: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool): unordered_map_bool_Quaternion_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool, boolean): unordered_map_bool_Quaternion_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool, Index: boolean, Quaternion): unordered_map_bool_Quaternion_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Quaternion_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Quaternion_hash_bool_equal_to_bool, unordered_map_bool_Quaternion_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Quaternion_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Transform_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Transform_hash_bool_equal_to_bool, boolean): Transform
	BucketCount: function(unordered_map_bool_Transform_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Transform_hash_bool_equal_to_bool): unordered_map_bool_Transform_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Transform_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Transform_hash_bool_equal_to_bool, boolean): unordered_map_bool_Transform_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Transform_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Transform_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Transform_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Transform_hash_bool_equal_to_bool, Index: boolean, Transform): unordered_map_bool_Transform_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Transform_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Transform_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Transform_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Transform_hash_bool_equal_to_bool, unordered_map_bool_Transform_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Transform_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Vector2_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool, boolean): Vector2
	BucketCount: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool): unordered_map_bool_Vector2_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool, boolean): unordered_map_bool_Vector2_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool, Index: boolean, Vector2): unordered_map_bool_Vector2_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Vector2_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Vector2_hash_bool_equal_to_bool, unordered_map_bool_Vector2_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Vector2_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Vector3_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool, boolean): Vector3
	BucketCount: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool): unordered_map_bool_Vector3_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool, boolean): unordered_map_bool_Vector3_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool, Index: boolean, Vector3): unordered_map_bool_Vector3_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Vector3_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Vector3_hash_bool_equal_to_bool, unordered_map_bool_Vector3_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Vector3_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_Vector4_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool, boolean): Vector4
	BucketCount: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool): unordered_map_bool_Vector4_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool, boolean): unordered_map_bool_Vector4_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool, Index: boolean, Vector4): unordered_map_bool_Vector4_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_Vector4_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_Vector4_hash_bool_equal_to_bool, unordered_map_bool_Vector4_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_Vector4_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_VectorN_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool, boolean): VectorN
	BucketCount: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool): unordered_map_bool_VectorN_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool, boolean): unordered_map_bool_VectorN_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool, Index: boolean, VectorN): unordered_map_bool_VectorN_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_VectorN_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_VectorN_hash_bool_equal_to_bool, unordered_map_bool_VectorN_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_VectorN_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, boolean): string
	BucketCount: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, boolean): unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, Index: boolean, string): unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_basic_string_char_char_traits_char__hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_bool_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_bool_hash_bool_equal_to_bool, boolean): boolean
	BucketCount: function(unordered_map_bool_bool_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_bool_hash_bool_equal_to_bool): unordered_map_bool_bool_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_bool_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_bool_hash_bool_equal_to_bool, boolean): unordered_map_bool_bool_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_bool_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_bool_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_bool_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_bool_hash_bool_equal_to_bool, Index: boolean, boolean): unordered_map_bool_bool_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_bool_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_bool_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_bool_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_bool_hash_bool_equal_to_bool, unordered_map_bool_bool_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_bool_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_bool_double_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	At: function(unordered_map_bool_double_hash_bool_equal_to_bool, boolean): number
	BucketCount: function(unordered_map_bool_double_hash_bool_equal_to_bool): integer
	Clear: function(unordered_map_bool_double_hash_bool_equal_to_bool): unordered_map_bool_double_hash_bool_equal_to_bool
	Empty: function(unordered_map_bool_double_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_map_bool_double_hash_bool_equal_to_bool, boolean): unordered_map_bool_double_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_map_bool_double_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_map_bool_double_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_map_bool_double_hash_bool_equal_to_bool): integer
	Insert: function(unordered_map_bool_double_hash_bool_equal_to_bool, Index: boolean, number): unordered_map_bool_double_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_map_bool_double_hash_bool_equal_to_bool): Iterator_VM_unordered_map_bool_double_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_bool_double_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_map_bool_double_hash_bool_equal_to_bool, unordered_map_bool_double_hash_bool_equal_to_bool): any
	contains: function(Key: unordered_map_bool_double_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_map_double_Aabb_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Aabb_hash_double_equal_to_double, number): Aabb
	BucketCount: function(unordered_map_double_Aabb_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Aabb_hash_double_equal_to_double): unordered_map_double_Aabb_hash_double_equal_to_double
	Empty: function(unordered_map_double_Aabb_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Aabb_hash_double_equal_to_double, number): unordered_map_double_Aabb_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Aabb_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Aabb_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Aabb_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Aabb_hash_double_equal_to_double, Index: number, Aabb): unordered_map_double_Aabb_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Aabb_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Aabb_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Aabb_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Aabb_hash_double_equal_to_double, unordered_map_double_Aabb_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Aabb_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_AssetId_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_AssetId_hash_double_equal_to_double, number): AssetId
	BucketCount: function(unordered_map_double_AssetId_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_AssetId_hash_double_equal_to_double): unordered_map_double_AssetId_hash_double_equal_to_double
	Empty: function(unordered_map_double_AssetId_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_AssetId_hash_double_equal_to_double, number): unordered_map_double_AssetId_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_AssetId_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_AssetId_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_AssetId_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_AssetId_hash_double_equal_to_double, Index: number, AssetId): unordered_map_double_AssetId_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_AssetId_hash_double_equal_to_double): Iterator_VM_unordered_map_double_AssetId_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_AssetId_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_AssetId_hash_double_equal_to_double, unordered_map_double_AssetId_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_AssetId_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, number): AzFramework_EntitySpawnTicket
	BucketCount: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double
	Empty: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, number): unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, Index: number, AzFramework_EntitySpawnTicket): unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): Iterator_VM_unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_AzFramework_EntitySpawnTicket_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, number): AzFramework_Scripts_SpawnableScriptAssetRef
	BucketCount: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double
	Empty: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, number): unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, Index: number, AzFramework_Scripts_SpawnableScriptAssetRef): unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): Iterator_VM_unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_AzFramework_Scripts_SpawnableScriptAssetRef_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Color_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Color_hash_double_equal_to_double, number): Color
	BucketCount: function(unordered_map_double_Color_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Color_hash_double_equal_to_double): unordered_map_double_Color_hash_double_equal_to_double
	Empty: function(unordered_map_double_Color_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Color_hash_double_equal_to_double, number): unordered_map_double_Color_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Color_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Color_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Color_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Color_hash_double_equal_to_double, Index: number, Color): unordered_map_double_Color_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Color_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Color_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Color_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Color_hash_double_equal_to_double, unordered_map_double_Color_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Color_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Crc32_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Crc32_hash_double_equal_to_double, number): Crc32
	BucketCount: function(unordered_map_double_Crc32_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Crc32_hash_double_equal_to_double): unordered_map_double_Crc32_hash_double_equal_to_double
	Empty: function(unordered_map_double_Crc32_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Crc32_hash_double_equal_to_double, number): unordered_map_double_Crc32_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Crc32_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Crc32_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Crc32_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Crc32_hash_double_equal_to_double, Index: number, Crc32): unordered_map_double_Crc32_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Crc32_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Crc32_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Crc32_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Crc32_hash_double_equal_to_double, unordered_map_double_Crc32_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Crc32_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_EntityId_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_EntityId_hash_double_equal_to_double, number): EntityId
	BucketCount: function(unordered_map_double_EntityId_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_EntityId_hash_double_equal_to_double): unordered_map_double_EntityId_hash_double_equal_to_double
	Empty: function(unordered_map_double_EntityId_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_EntityId_hash_double_equal_to_double, number): unordered_map_double_EntityId_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_EntityId_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_EntityId_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_EntityId_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_EntityId_hash_double_equal_to_double, Index: number, EntityId): unordered_map_double_EntityId_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_EntityId_hash_double_equal_to_double): Iterator_VM_unordered_map_double_EntityId_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_EntityId_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_EntityId_hash_double_equal_to_double, unordered_map_double_EntityId_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_EntityId_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Matrix3x3_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double, number): Matrix3x3
	BucketCount: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double): unordered_map_double_Matrix3x3_hash_double_equal_to_double
	Empty: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double, number): unordered_map_double_Matrix3x3_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double, Index: number, Matrix3x3): unordered_map_double_Matrix3x3_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Matrix3x3_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Matrix3x3_hash_double_equal_to_double, unordered_map_double_Matrix3x3_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Matrix3x3_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Matrix4x4_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double, number): Matrix4x4
	BucketCount: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double): unordered_map_double_Matrix4x4_hash_double_equal_to_double
	Empty: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double, number): unordered_map_double_Matrix4x4_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double, Index: number, Matrix4x4): unordered_map_double_Matrix4x4_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Matrix4x4_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Matrix4x4_hash_double_equal_to_double, unordered_map_double_Matrix4x4_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Matrix4x4_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_MatrixMxN_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double, number): MatrixMxN
	BucketCount: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double): unordered_map_double_MatrixMxN_hash_double_equal_to_double
	Empty: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double, number): unordered_map_double_MatrixMxN_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double, Index: number, MatrixMxN): unordered_map_double_MatrixMxN_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double): Iterator_VM_unordered_map_double_MatrixMxN_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_MatrixMxN_hash_double_equal_to_double, unordered_map_double_MatrixMxN_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_MatrixMxN_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Obb_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Obb_hash_double_equal_to_double, number): Obb
	BucketCount: function(unordered_map_double_Obb_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Obb_hash_double_equal_to_double): unordered_map_double_Obb_hash_double_equal_to_double
	Empty: function(unordered_map_double_Obb_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Obb_hash_double_equal_to_double, number): unordered_map_double_Obb_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Obb_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Obb_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Obb_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Obb_hash_double_equal_to_double, Index: number, Obb): unordered_map_double_Obb_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Obb_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Obb_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Obb_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Obb_hash_double_equal_to_double, unordered_map_double_Obb_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Obb_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Plane_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Plane_hash_double_equal_to_double, number): Plane
	BucketCount: function(unordered_map_double_Plane_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Plane_hash_double_equal_to_double): unordered_map_double_Plane_hash_double_equal_to_double
	Empty: function(unordered_map_double_Plane_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Plane_hash_double_equal_to_double, number): unordered_map_double_Plane_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Plane_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Plane_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Plane_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Plane_hash_double_equal_to_double, Index: number, Plane): unordered_map_double_Plane_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Plane_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Plane_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Plane_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Plane_hash_double_equal_to_double, unordered_map_double_Plane_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Plane_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Quaternion_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Quaternion_hash_double_equal_to_double, number): Quaternion
	BucketCount: function(unordered_map_double_Quaternion_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Quaternion_hash_double_equal_to_double): unordered_map_double_Quaternion_hash_double_equal_to_double
	Empty: function(unordered_map_double_Quaternion_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Quaternion_hash_double_equal_to_double, number): unordered_map_double_Quaternion_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Quaternion_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Quaternion_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Quaternion_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Quaternion_hash_double_equal_to_double, Index: number, Quaternion): unordered_map_double_Quaternion_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Quaternion_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Quaternion_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Quaternion_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Quaternion_hash_double_equal_to_double, unordered_map_double_Quaternion_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Quaternion_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Transform_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Transform_hash_double_equal_to_double, number): Transform
	BucketCount: function(unordered_map_double_Transform_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Transform_hash_double_equal_to_double): unordered_map_double_Transform_hash_double_equal_to_double
	Empty: function(unordered_map_double_Transform_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Transform_hash_double_equal_to_double, number): unordered_map_double_Transform_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Transform_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Transform_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Transform_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Transform_hash_double_equal_to_double, Index: number, Transform): unordered_map_double_Transform_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Transform_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Transform_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Transform_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Transform_hash_double_equal_to_double, unordered_map_double_Transform_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Transform_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Vector2_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Vector2_hash_double_equal_to_double, number): Vector2
	BucketCount: function(unordered_map_double_Vector2_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Vector2_hash_double_equal_to_double): unordered_map_double_Vector2_hash_double_equal_to_double
	Empty: function(unordered_map_double_Vector2_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Vector2_hash_double_equal_to_double, number): unordered_map_double_Vector2_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Vector2_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Vector2_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Vector2_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Vector2_hash_double_equal_to_double, Index: number, Vector2): unordered_map_double_Vector2_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Vector2_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Vector2_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Vector2_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Vector2_hash_double_equal_to_double, unordered_map_double_Vector2_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Vector2_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Vector3_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Vector3_hash_double_equal_to_double, number): Vector3
	BucketCount: function(unordered_map_double_Vector3_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Vector3_hash_double_equal_to_double): unordered_map_double_Vector3_hash_double_equal_to_double
	Empty: function(unordered_map_double_Vector3_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Vector3_hash_double_equal_to_double, number): unordered_map_double_Vector3_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Vector3_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Vector3_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Vector3_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Vector3_hash_double_equal_to_double, Index: number, Vector3): unordered_map_double_Vector3_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Vector3_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Vector3_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Vector3_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Vector3_hash_double_equal_to_double, unordered_map_double_Vector3_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Vector3_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_Vector4_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_Vector4_hash_double_equal_to_double, number): Vector4
	BucketCount: function(unordered_map_double_Vector4_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_Vector4_hash_double_equal_to_double): unordered_map_double_Vector4_hash_double_equal_to_double
	Empty: function(unordered_map_double_Vector4_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_Vector4_hash_double_equal_to_double, number): unordered_map_double_Vector4_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_Vector4_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_Vector4_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_Vector4_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_Vector4_hash_double_equal_to_double, Index: number, Vector4): unordered_map_double_Vector4_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_Vector4_hash_double_equal_to_double): Iterator_VM_unordered_map_double_Vector4_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_Vector4_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_Vector4_hash_double_equal_to_double, unordered_map_double_Vector4_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_Vector4_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_VectorN_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_VectorN_hash_double_equal_to_double, number): VectorN
	BucketCount: function(unordered_map_double_VectorN_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_VectorN_hash_double_equal_to_double): unordered_map_double_VectorN_hash_double_equal_to_double
	Empty: function(unordered_map_double_VectorN_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_VectorN_hash_double_equal_to_double, number): unordered_map_double_VectorN_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_VectorN_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_VectorN_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_VectorN_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_VectorN_hash_double_equal_to_double, Index: number, VectorN): unordered_map_double_VectorN_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_VectorN_hash_double_equal_to_double): Iterator_VM_unordered_map_double_VectorN_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_VectorN_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_VectorN_hash_double_equal_to_double, unordered_map_double_VectorN_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_VectorN_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, number): string
	BucketCount: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double
	Empty: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, number): unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, Index: number, string): unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): Iterator_VM_unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_basic_string_char_char_traits_char__hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_bool_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_bool_hash_double_equal_to_double, number): boolean
	BucketCount: function(unordered_map_double_bool_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_bool_hash_double_equal_to_double): unordered_map_double_bool_hash_double_equal_to_double
	Empty: function(unordered_map_double_bool_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_bool_hash_double_equal_to_double, number): unordered_map_double_bool_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_bool_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_bool_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_bool_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_bool_hash_double_equal_to_double, Index: number, boolean): unordered_map_double_bool_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_bool_hash_double_equal_to_double): Iterator_VM_unordered_map_double_bool_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_bool_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_bool_hash_double_equal_to_double, unordered_map_double_bool_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_bool_hash_double_equal_to_double, number): boolean
end


global record unordered_map_double_double_hash_double_equal_to_double
	AcquireOwnership: function(): any
	At: function(unordered_map_double_double_hash_double_equal_to_double, number): number
	BucketCount: function(unordered_map_double_double_hash_double_equal_to_double): integer
	Clear: function(unordered_map_double_double_hash_double_equal_to_double): unordered_map_double_double_hash_double_equal_to_double
	Empty: function(unordered_map_double_double_hash_double_equal_to_double): boolean
	Erase: function(unordered_map_double_double_hash_double_equal_to_double, number): unordered_map_double_double_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_map_double_double_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_map_double_double_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_map_double_double_hash_double_equal_to_double): integer
	Insert: function(unordered_map_double_double_hash_double_equal_to_double, Index: number, number): unordered_map_double_double_hash_double_equal_to_double
	Iterate_VM: function(unordered_map_double_double_hash_double_equal_to_double): Iterator_VM_unordered_map_double_double_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_double_double_hash_double_equal_to_double, integer): any
	Swap: function(unordered_map_double_double_hash_double_equal_to_double, unordered_map_double_double_hash_double_equal_to_double): any
	contains: function(Key: unordered_map_double_double_hash_double_equal_to_double, number): boolean
end


global record unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int
	AcquireOwnership: function(): any
	At: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, integer): pair_int_unsignedint
	BucketCount: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): integer
	Clear: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int
	Empty: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): boolean
	Erase: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, integer): unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int
	EraseCheck_VM: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, integer): boolean
	GetKeys: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): vector_int
	GetSize: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): integer
	Insert: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, Index: integer, pair_int_unsignedint): unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int
	Iterate_VM: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): Iterator_VM_unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, integer): any
	Swap: function(unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int): any
	contains: function(Key: unordered_map_int_pair_int_unsignedint_hash_int_equal_to_int, integer): boolean
end


global record unordered_map_int_shared_ptr_Node_hash_int_equal_to_int
	AcquireOwnership: function(): any
	At: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, integer): shared_ptr_Node
	BucketCount: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): integer
	Clear: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): unordered_map_int_shared_ptr_Node_hash_int_equal_to_int
	Empty: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): boolean
	Erase: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, integer): unordered_map_int_shared_ptr_Node_hash_int_equal_to_int
	EraseCheck_VM: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, integer): boolean
	GetKeys: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): vector_int
	GetSize: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): integer
	Insert: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, Index: integer, shared_ptr_Node): unordered_map_int_shared_ptr_Node_hash_int_equal_to_int
	Iterate_VM: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): Iterator_VM_unordered_map_int_shared_ptr_Node_hash_int_equal_to_int
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, integer): any
	Swap: function(unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, unordered_map_int_shared_ptr_Node_hash_int_equal_to_int): any
	contains: function(Key: unordered_map_int_shared_ptr_Node_hash_int_equal_to_int, integer): boolean
end


global record unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint
	AcquireOwnership: function(): any
	At: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, integer): TargetBlendState
	BucketCount: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): integer
	Clear: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint
	Empty: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): boolean
	Erase: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, integer): unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint
	EraseCheck_VM: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, integer): boolean
	GetKeys: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): vector_unsignedint
	GetSize: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): integer
	Insert: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, Index: integer, TargetBlendState): unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint
	Iterate_VM: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): Iterator_VM_unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint
	ReleaseOwnership: function(): any
	Reserve: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, integer): any
	Swap: function(unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint): any
	contains: function(Key: unordered_map_unsignedint_TargetBlendState_hash_unsignedint_equal_to_unsignedint, integer): boolean
end


global record unordered_set_AssetId_hash_AssetId_equal_to_AssetId
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId): integer
	Clear: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId): unordered_set_AssetId_hash_AssetId_equal_to_AssetId
	Empty: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId): boolean
	Erase: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId, AssetId): unordered_set_AssetId_hash_AssetId_equal_to_AssetId
	EraseCheck_VM: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId, AssetId): boolean
	GetKeys: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId): vector_AssetId
	GetSize: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId): integer
	Insert: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId, AssetId): unordered_set_AssetId_hash_AssetId_equal_to_AssetId
	Iterate_VM: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId): Iterator_VM_unordered_set_AssetId_hash_AssetId_equal_to_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId, integer): any
	Swap: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId, unordered_set_AssetId_hash_AssetId_equal_to_AssetId): any
	contains: function(unordered_set_AssetId_hash_AssetId_equal_to_AssetId, AssetId): boolean
end


global record unordered_set_Crc32_hash_Crc32_equal_to_Crc32
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32): integer
	Clear: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32): unordered_set_Crc32_hash_Crc32_equal_to_Crc32
	Empty: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32): boolean
	Erase: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32, Crc32): unordered_set_Crc32_hash_Crc32_equal_to_Crc32
	EraseCheck_VM: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32, Crc32): boolean
	GetKeys: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32): vector_Crc32
	GetSize: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32): integer
	Insert: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32, Crc32): unordered_set_Crc32_hash_Crc32_equal_to_Crc32
	Iterate_VM: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32): Iterator_VM_unordered_set_Crc32_hash_Crc32_equal_to_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32, integer): any
	Swap: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32, unordered_set_Crc32_hash_Crc32_equal_to_Crc32): any
	contains: function(unordered_set_Crc32_hash_Crc32_equal_to_Crc32, Crc32): boolean
end


global record unordered_set_EntityId_hash_EntityId_equal_to_EntityId
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId): integer
	Clear: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId): unordered_set_EntityId_hash_EntityId_equal_to_EntityId
	Empty: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId): boolean
	Erase: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId, EntityId): unordered_set_EntityId_hash_EntityId_equal_to_EntityId
	EraseCheck_VM: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId, EntityId): boolean
	GetKeys: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId): vector_EntityId
	GetSize: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId): integer
	Insert: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId, EntityId): unordered_set_EntityId_hash_EntityId_equal_to_EntityId
	Iterate_VM: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId): Iterator_VM_unordered_set_EntityId_hash_EntityId_equal_to_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId, integer): any
	Swap: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId, unordered_set_EntityId_hash_EntityId_equal_to_EntityId): any
	contains: function(unordered_set_EntityId_hash_EntityId_equal_to_EntityId, EntityId): boolean
end


global record unordered_set_Name_hash_Name_equal_to_Name
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_Name_hash_Name_equal_to_Name): integer
	Clear: function(unordered_set_Name_hash_Name_equal_to_Name): unordered_set_Name_hash_Name_equal_to_Name
	Empty: function(unordered_set_Name_hash_Name_equal_to_Name): boolean
	Erase: function(unordered_set_Name_hash_Name_equal_to_Name, Name): unordered_set_Name_hash_Name_equal_to_Name
	EraseCheck_VM: function(unordered_set_Name_hash_Name_equal_to_Name, Name): boolean
	GetKeys: function(unordered_set_Name_hash_Name_equal_to_Name): vector_Name
	GetSize: function(unordered_set_Name_hash_Name_equal_to_Name): integer
	Insert: function(unordered_set_Name_hash_Name_equal_to_Name, Name): unordered_set_Name_hash_Name_equal_to_Name
	Iterate_VM: function(unordered_set_Name_hash_Name_equal_to_Name): Iterator_VM_unordered_set_Name_hash_Name_equal_to_Name
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_Name_hash_Name_equal_to_Name, integer): any
	Swap: function(unordered_set_Name_hash_Name_equal_to_Name, unordered_set_Name_hash_Name_equal_to_Name): any
	contains: function(unordered_set_Name_hash_Name_equal_to_Name, Name): boolean
end


global record unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): integer
	Clear: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag
	Empty: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): boolean
	Erase: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag, SurfaceTag): unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag
	EraseCheck_VM: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag, SurfaceTag): boolean
	GetKeys: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): vector_SurfaceTag
	GetSize: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): integer
	Insert: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag, SurfaceTag): unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag
	Iterate_VM: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): Iterator_VM_unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag, integer): any
	Swap: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag, unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag): any
	contains: function(unordered_set_SurfaceTag_hash_SurfaceTag_equal_to_SurfaceTag, SurfaceTag): boolean
end


global record unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Clear: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Empty: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): boolean
	Erase: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	EraseCheck_VM: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
	GetKeys: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	GetSize: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): integer
	Insert: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	Iterate_VM: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): Iterator_VM_unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, integer): any
	Swap: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char): any
	contains: function(unordered_set_basic_string_char_char_traits_char__hash_basic_string_char_char_traits_char__equal_to_basic_string_char_char_traits_char, string): boolean
end


global record unordered_set_bool_hash_bool_equal_to_bool
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_bool_hash_bool_equal_to_bool): integer
	Clear: function(unordered_set_bool_hash_bool_equal_to_bool): unordered_set_bool_hash_bool_equal_to_bool
	Empty: function(unordered_set_bool_hash_bool_equal_to_bool): boolean
	Erase: function(unordered_set_bool_hash_bool_equal_to_bool, boolean): unordered_set_bool_hash_bool_equal_to_bool
	EraseCheck_VM: function(unordered_set_bool_hash_bool_equal_to_bool, boolean): boolean
	GetKeys: function(unordered_set_bool_hash_bool_equal_to_bool): vector_bool
	GetSize: function(unordered_set_bool_hash_bool_equal_to_bool): integer
	Insert: function(unordered_set_bool_hash_bool_equal_to_bool, boolean): unordered_set_bool_hash_bool_equal_to_bool
	Iterate_VM: function(unordered_set_bool_hash_bool_equal_to_bool): Iterator_VM_unordered_set_bool_hash_bool_equal_to_bool
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_bool_hash_bool_equal_to_bool, integer): any
	Swap: function(unordered_set_bool_hash_bool_equal_to_bool, unordered_set_bool_hash_bool_equal_to_bool): any
	contains: function(unordered_set_bool_hash_bool_equal_to_bool, boolean): boolean
end


global record unordered_set_double_hash_double_equal_to_double
	AcquireOwnership: function(): any
	BucketCount: function(unordered_set_double_hash_double_equal_to_double): integer
	Clear: function(unordered_set_double_hash_double_equal_to_double): unordered_set_double_hash_double_equal_to_double
	Empty: function(unordered_set_double_hash_double_equal_to_double): boolean
	Erase: function(unordered_set_double_hash_double_equal_to_double, number): unordered_set_double_hash_double_equal_to_double
	EraseCheck_VM: function(unordered_set_double_hash_double_equal_to_double, number): boolean
	GetKeys: function(unordered_set_double_hash_double_equal_to_double): vector_double
	GetSize: function(unordered_set_double_hash_double_equal_to_double): integer
	Insert: function(unordered_set_double_hash_double_equal_to_double, number): unordered_set_double_hash_double_equal_to_double
	Iterate_VM: function(unordered_set_double_hash_double_equal_to_double): Iterator_VM_unordered_set_double_hash_double_equal_to_double
	ReleaseOwnership: function(): any
	Reserve: function(unordered_set_double_hash_double_equal_to_double, integer): any
	Swap: function(unordered_set_double_hash_double_equal_to_double, unordered_set_double_hash_double_equal_to_double): any
	contains: function(unordered_set_double_hash_double_equal_to_double, number): boolean
end


global record vector_AZ_IO_FixedMaxPath
	AcquireOwnership: function(): any
	At: function(vector_AZ_IO_FixedMaxPath, Index: integer): AZ_IO_FixedMaxPath
	AtUnchecked: function(Container: vector_AZ_IO_FixedMaxPath, Index: integer): AZ_IO_FixedMaxPath
	Back: function(Container: vector_AZ_IO_FixedMaxPath): AZ_IO_FixedMaxPath
	Capacity: function(vector_AZ_IO_FixedMaxPath): integer
	Clear: function(Container: vector_AZ_IO_FixedMaxPath): vector_AZ_IO_FixedMaxPath
	Empty: function(Container: vector_AZ_IO_FixedMaxPath): boolean
	EraseCheck_VM: function(vector_AZ_IO_FixedMaxPath, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_IO_FixedMaxPath, Key: AZ_u64): vector_AZ_IO_FixedMaxPath
	Front: function(Container: vector_AZ_IO_FixedMaxPath): AZ_IO_FixedMaxPath
	GetSize: function(Container: vector_AZ_IO_FixedMaxPath): integer
	HasKey: function(Container: vector_AZ_IO_FixedMaxPath, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_IO_FixedMaxPath, Index: AZ_u64, Value: AZ_IO_FixedMaxPath): vector_AZ_IO_FixedMaxPath
	Iterate_VM: function(vector_AZ_IO_FixedMaxPath): Iterator_VM_vector_AZ_IO_FixedMaxPath
	NotEmpty: function(Container: vector_AZ_IO_FixedMaxPath): boolean
	PushBack: function(vector_AZ_IO_FixedMaxPath, AZ_IO_FixedMaxPath): any
	PushBack_VM: function(Container: vector_AZ_IO_FixedMaxPath, Value: AZ_IO_FixedMaxPath): vector_AZ_IO_FixedMaxPath
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_IO_FixedMaxPath, integer): any
	Resize: function(vector_AZ_IO_FixedMaxPath, integer): any
	Size: function(vector_AZ_IO_FixedMaxPath): integer
	Swap: function(vector_AZ_IO_FixedMaxPath, vector_AZ_IO_FixedMaxPath): any
	clear: function(vector_AZ_IO_FixedMaxPath): any
	pop_back: function(vector_AZ_IO_FixedMaxPath): any
	push_back: function(vector_AZ_IO_FixedMaxPath, AZ_IO_FixedMaxPath): any
end


global record vector_AZ_IO_Path
	AcquireOwnership: function(): any
	At: function(vector_AZ_IO_Path, Index: integer): AZ_IO_Path
	AtUnchecked: function(Container: vector_AZ_IO_Path, Index: integer): AZ_IO_Path
	Back: function(Container: vector_AZ_IO_Path): AZ_IO_Path
	Capacity: function(vector_AZ_IO_Path): integer
	Clear: function(Container: vector_AZ_IO_Path): vector_AZ_IO_Path
	Empty: function(Container: vector_AZ_IO_Path): boolean
	EraseCheck_VM: function(vector_AZ_IO_Path, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_IO_Path, Key: AZ_u64): vector_AZ_IO_Path
	Front: function(Container: vector_AZ_IO_Path): AZ_IO_Path
	GetSize: function(Container: vector_AZ_IO_Path): integer
	HasKey: function(Container: vector_AZ_IO_Path, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_IO_Path, Index: AZ_u64, Value: AZ_IO_Path): vector_AZ_IO_Path
	Iterate_VM: function(vector_AZ_IO_Path): Iterator_VM_vector_AZ_IO_Path
	NotEmpty: function(Container: vector_AZ_IO_Path): boolean
	PushBack: function(vector_AZ_IO_Path, AZ_IO_Path): any
	PushBack_VM: function(Container: vector_AZ_IO_Path, Value: AZ_IO_Path): vector_AZ_IO_Path
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_IO_Path, integer): any
	Resize: function(vector_AZ_IO_Path, integer): any
	Size: function(vector_AZ_IO_Path): integer
	Swap: function(vector_AZ_IO_Path, vector_AZ_IO_Path): any
	clear: function(vector_AZ_IO_Path): any
	pop_back: function(vector_AZ_IO_Path): any
	push_back: function(vector_AZ_IO_Path, AZ_IO_Path): any
end


global record vector_AZ_IO_PathView
	AcquireOwnership: function(): any
	At: function(vector_AZ_IO_PathView, Index: integer): AZ_IO_PathView
	AtUnchecked: function(Container: vector_AZ_IO_PathView, Index: integer): AZ_IO_PathView
	Back: function(Container: vector_AZ_IO_PathView): AZ_IO_PathView
	Capacity: function(vector_AZ_IO_PathView): integer
	Clear: function(Container: vector_AZ_IO_PathView): vector_AZ_IO_PathView
	Empty: function(Container: vector_AZ_IO_PathView): boolean
	EraseCheck_VM: function(vector_AZ_IO_PathView, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_IO_PathView, Key: AZ_u64): vector_AZ_IO_PathView
	Front: function(Container: vector_AZ_IO_PathView): AZ_IO_PathView
	GetSize: function(Container: vector_AZ_IO_PathView): integer
	HasKey: function(Container: vector_AZ_IO_PathView, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_IO_PathView, Index: AZ_u64, Value: AZ_IO_PathView): vector_AZ_IO_PathView
	Iterate_VM: function(vector_AZ_IO_PathView): Iterator_VM_vector_AZ_IO_PathView
	NotEmpty: function(Container: vector_AZ_IO_PathView): boolean
	PushBack: function(vector_AZ_IO_PathView, AZ_IO_PathView): any
	PushBack_VM: function(Container: vector_AZ_IO_PathView, Value: AZ_IO_PathView): vector_AZ_IO_PathView
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_IO_PathView, integer): any
	Resize: function(vector_AZ_IO_PathView, integer): any
	Size: function(vector_AZ_IO_PathView): integer
	Swap: function(vector_AZ_IO_PathView, vector_AZ_IO_PathView): any
	clear: function(vector_AZ_IO_PathView): any
	pop_back: function(vector_AZ_IO_PathView): any
	push_back: function(vector_AZ_IO_PathView, AZ_IO_PathView): any
end


global record vector_AZ_RPI_ShaderOptionDescriptor
	AcquireOwnership: function(): any
	At: function(vector_AZ_RPI_ShaderOptionDescriptor, Index: integer): AZ_RPI_ShaderOptionDescriptor
	AtUnchecked: function(Container: vector_AZ_RPI_ShaderOptionDescriptor, Index: integer): AZ_RPI_ShaderOptionDescriptor
	Back: function(Container: vector_AZ_RPI_ShaderOptionDescriptor): AZ_RPI_ShaderOptionDescriptor
	Capacity: function(vector_AZ_RPI_ShaderOptionDescriptor): integer
	Clear: function(Container: vector_AZ_RPI_ShaderOptionDescriptor): vector_AZ_RPI_ShaderOptionDescriptor
	Empty: function(Container: vector_AZ_RPI_ShaderOptionDescriptor): boolean
	EraseCheck_VM: function(vector_AZ_RPI_ShaderOptionDescriptor, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_RPI_ShaderOptionDescriptor, Key: AZ_u64): vector_AZ_RPI_ShaderOptionDescriptor
	Front: function(Container: vector_AZ_RPI_ShaderOptionDescriptor): AZ_RPI_ShaderOptionDescriptor
	GetSize: function(Container: vector_AZ_RPI_ShaderOptionDescriptor): integer
	HasKey: function(Container: vector_AZ_RPI_ShaderOptionDescriptor, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_RPI_ShaderOptionDescriptor, Index: AZ_u64, Value: AZ_RPI_ShaderOptionDescriptor): vector_AZ_RPI_ShaderOptionDescriptor
	Iterate_VM: function(vector_AZ_RPI_ShaderOptionDescriptor): Iterator_VM_vector_AZ_RPI_ShaderOptionDescriptor
	NotEmpty: function(Container: vector_AZ_RPI_ShaderOptionDescriptor): boolean
	PushBack: function(vector_AZ_RPI_ShaderOptionDescriptor, AZ_RPI_ShaderOptionDescriptor): any
	PushBack_VM: function(Container: vector_AZ_RPI_ShaderOptionDescriptor, Value: AZ_RPI_ShaderOptionDescriptor): vector_AZ_RPI_ShaderOptionDescriptor
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_RPI_ShaderOptionDescriptor, integer): any
	Resize: function(vector_AZ_RPI_ShaderOptionDescriptor, integer): any
	Size: function(vector_AZ_RPI_ShaderOptionDescriptor): integer
	Swap: function(vector_AZ_RPI_ShaderOptionDescriptor, vector_AZ_RPI_ShaderOptionDescriptor): any
	clear: function(vector_AZ_RPI_ShaderOptionDescriptor): any
	pop_back: function(vector_AZ_RPI_ShaderOptionDescriptor): any
	push_back: function(vector_AZ_RPI_ShaderOptionDescriptor, AZ_RPI_ShaderOptionDescriptor): any
end


global record vector_AZ_RPI_ShaderSourceData_EntryPoint
	AcquireOwnership: function(): any
	At: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, Index: integer): AZ_RPI_ShaderSourceData_EntryPoint
	AtUnchecked: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint, Index: integer): AZ_RPI_ShaderSourceData_EntryPoint
	Back: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint): AZ_RPI_ShaderSourceData_EntryPoint
	Capacity: function(vector_AZ_RPI_ShaderSourceData_EntryPoint): integer
	Clear: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint): vector_AZ_RPI_ShaderSourceData_EntryPoint
	Empty: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint): boolean
	EraseCheck_VM: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint, Key: AZ_u64): vector_AZ_RPI_ShaderSourceData_EntryPoint
	Front: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint): AZ_RPI_ShaderSourceData_EntryPoint
	GetSize: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint): integer
	HasKey: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint, Index: AZ_u64, Value: AZ_RPI_ShaderSourceData_EntryPoint): vector_AZ_RPI_ShaderSourceData_EntryPoint
	Iterate_VM: function(vector_AZ_RPI_ShaderSourceData_EntryPoint): Iterator_VM_vector_AZ_RPI_ShaderSourceData_EntryPoint
	NotEmpty: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint): boolean
	PushBack: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, AZ_RPI_ShaderSourceData_EntryPoint): any
	PushBack_VM: function(Container: vector_AZ_RPI_ShaderSourceData_EntryPoint, Value: AZ_RPI_ShaderSourceData_EntryPoint): vector_AZ_RPI_ShaderSourceData_EntryPoint
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, integer): any
	Resize: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, integer): any
	Size: function(vector_AZ_RPI_ShaderSourceData_EntryPoint): integer
	Swap: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, vector_AZ_RPI_ShaderSourceData_EntryPoint): any
	clear: function(vector_AZ_RPI_ShaderSourceData_EntryPoint): any
	pop_back: function(vector_AZ_RPI_ShaderSourceData_EntryPoint): any
	push_back: function(vector_AZ_RPI_ShaderSourceData_EntryPoint, AZ_RPI_ShaderSourceData_EntryPoint): any
end


global record vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	AcquireOwnership: function(): any
	At: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, Index: integer): AZ_RPI_ShaderSourceData_SupervariantInfo
	AtUnchecked: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo, Index: integer): AZ_RPI_ShaderSourceData_SupervariantInfo
	Back: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo): AZ_RPI_ShaderSourceData_SupervariantInfo
	Capacity: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo): integer
	Clear: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo): vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	Empty: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo): boolean
	EraseCheck_VM: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo, Key: AZ_u64): vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	Front: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo): AZ_RPI_ShaderSourceData_SupervariantInfo
	GetSize: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo): integer
	HasKey: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo, Index: AZ_u64, Value: AZ_RPI_ShaderSourceData_SupervariantInfo): vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	Iterate_VM: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo): Iterator_VM_vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	NotEmpty: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo): boolean
	PushBack: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, AZ_RPI_ShaderSourceData_SupervariantInfo): any
	PushBack_VM: function(Container: vector_AZ_RPI_ShaderSourceData_SupervariantInfo, Value: AZ_RPI_ShaderSourceData_SupervariantInfo): vector_AZ_RPI_ShaderSourceData_SupervariantInfo
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, integer): any
	Resize: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, integer): any
	Size: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo): integer
	Swap: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, vector_AZ_RPI_ShaderSourceData_SupervariantInfo): any
	clear: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo): any
	pop_back: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo): any
	push_back: function(vector_AZ_RPI_ShaderSourceData_SupervariantInfo, AZ_RPI_ShaderSourceData_SupervariantInfo): any
end


global record vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	AcquireOwnership: function(): any
	At: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, Index: integer): AZ_RPI_ShaderVariantListSourceData_VariantInfo
	AtUnchecked: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, Index: integer): AZ_RPI_ShaderVariantListSourceData_VariantInfo
	Back: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): AZ_RPI_ShaderVariantListSourceData_VariantInfo
	Capacity: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): integer
	Clear: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	Empty: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): boolean
	EraseCheck_VM: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, Key: AZ_u64): vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	Front: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): AZ_RPI_ShaderVariantListSourceData_VariantInfo
	GetSize: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): integer
	HasKey: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, Index: AZ_u64, Value: AZ_RPI_ShaderVariantListSourceData_VariantInfo): vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	Iterate_VM: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): Iterator_VM_vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	NotEmpty: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): boolean
	PushBack: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, AZ_RPI_ShaderVariantListSourceData_VariantInfo): any
	PushBack_VM: function(Container: vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, Value: AZ_RPI_ShaderVariantListSourceData_VariantInfo): vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, integer): any
	Resize: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, integer): any
	Size: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): integer
	Swap: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): any
	clear: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): any
	pop_back: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo): any
	push_back: function(vector_AZ_RPI_ShaderVariantListSourceData_VariantInfo, AZ_RPI_ShaderVariantListSourceData_VariantInfo): any
end


global record vector_AZ_Render_LightConfig
	AcquireOwnership: function(): any
	At: function(vector_AZ_Render_LightConfig, Index: integer): AZ_Render_LightConfig
	AtUnchecked: function(Container: vector_AZ_Render_LightConfig, Index: integer): AZ_Render_LightConfig
	Back: function(Container: vector_AZ_Render_LightConfig): AZ_Render_LightConfig
	Capacity: function(vector_AZ_Render_LightConfig): integer
	Clear: function(Container: vector_AZ_Render_LightConfig): vector_AZ_Render_LightConfig
	Empty: function(Container: vector_AZ_Render_LightConfig): boolean
	EraseCheck_VM: function(vector_AZ_Render_LightConfig, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_Render_LightConfig, Key: AZ_u64): vector_AZ_Render_LightConfig
	Front: function(Container: vector_AZ_Render_LightConfig): AZ_Render_LightConfig
	GetSize: function(Container: vector_AZ_Render_LightConfig): integer
	HasKey: function(Container: vector_AZ_Render_LightConfig, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_Render_LightConfig, Index: AZ_u64, Value: AZ_Render_LightConfig): vector_AZ_Render_LightConfig
	Iterate_VM: function(vector_AZ_Render_LightConfig): Iterator_VM_vector_AZ_Render_LightConfig
	NotEmpty: function(Container: vector_AZ_Render_LightConfig): boolean
	PushBack: function(vector_AZ_Render_LightConfig, AZ_Render_LightConfig): any
	PushBack_VM: function(Container: vector_AZ_Render_LightConfig, Value: AZ_Render_LightConfig): vector_AZ_Render_LightConfig
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_Render_LightConfig, integer): any
	Resize: function(vector_AZ_Render_LightConfig, integer): any
	Size: function(vector_AZ_Render_LightConfig): integer
	Swap: function(vector_AZ_Render_LightConfig, vector_AZ_Render_LightConfig): any
	clear: function(vector_AZ_Render_LightConfig): any
	pop_back: function(vector_AZ_Render_LightConfig): any
	push_back: function(vector_AZ_Render_LightConfig, AZ_Render_LightConfig): any
end


global record vector_AZ_Render_MaterialAssignmentId
	AcquireOwnership: function(): any
	At: function(vector_AZ_Render_MaterialAssignmentId, Index: integer): AZ_Render_MaterialAssignmentId
	AtUnchecked: function(Container: vector_AZ_Render_MaterialAssignmentId, Index: integer): AZ_Render_MaterialAssignmentId
	Back: function(Container: vector_AZ_Render_MaterialAssignmentId): AZ_Render_MaterialAssignmentId
	Capacity: function(vector_AZ_Render_MaterialAssignmentId): integer
	Clear: function(Container: vector_AZ_Render_MaterialAssignmentId): vector_AZ_Render_MaterialAssignmentId
	Empty: function(Container: vector_AZ_Render_MaterialAssignmentId): boolean
	EraseCheck_VM: function(vector_AZ_Render_MaterialAssignmentId, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_Render_MaterialAssignmentId, Key: AZ_u64): vector_AZ_Render_MaterialAssignmentId
	Front: function(Container: vector_AZ_Render_MaterialAssignmentId): AZ_Render_MaterialAssignmentId
	GetSize: function(Container: vector_AZ_Render_MaterialAssignmentId): integer
	HasKey: function(Container: vector_AZ_Render_MaterialAssignmentId, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_Render_MaterialAssignmentId, Index: AZ_u64, Value: AZ_Render_MaterialAssignmentId): vector_AZ_Render_MaterialAssignmentId
	Iterate_VM: function(vector_AZ_Render_MaterialAssignmentId): Iterator_VM_vector_AZ_Render_MaterialAssignmentId
	NotEmpty: function(Container: vector_AZ_Render_MaterialAssignmentId): boolean
	PushBack: function(vector_AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignmentId): any
	PushBack_VM: function(Container: vector_AZ_Render_MaterialAssignmentId, Value: AZ_Render_MaterialAssignmentId): vector_AZ_Render_MaterialAssignmentId
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_Render_MaterialAssignmentId, integer): any
	Resize: function(vector_AZ_Render_MaterialAssignmentId, integer): any
	Size: function(vector_AZ_Render_MaterialAssignmentId): integer
	Swap: function(vector_AZ_Render_MaterialAssignmentId, vector_AZ_Render_MaterialAssignmentId): any
	clear: function(vector_AZ_Render_MaterialAssignmentId): any
	pop_back: function(vector_AZ_Render_MaterialAssignmentId): any
	push_back: function(vector_AZ_Render_MaterialAssignmentId, AZ_Render_MaterialAssignmentId): any
end


global record vector_AZ_Uuid
	AcquireOwnership: function(): any
	At: function(vector_AZ_Uuid, Index: integer): AZ_Uuid
	AtUnchecked: function(Container: vector_AZ_Uuid, Index: integer): AZ_Uuid
	Back: function(Container: vector_AZ_Uuid): AZ_Uuid
	Capacity: function(vector_AZ_Uuid): integer
	Clear: function(Container: vector_AZ_Uuid): vector_AZ_Uuid
	Empty: function(Container: vector_AZ_Uuid): boolean
	EraseCheck_VM: function(vector_AZ_Uuid, AZ_u64): boolean
	Erase_VM: function(Container: vector_AZ_Uuid, Key: AZ_u64): vector_AZ_Uuid
	Front: function(Container: vector_AZ_Uuid): AZ_Uuid
	GetSize: function(Container: vector_AZ_Uuid): integer
	HasKey: function(Container: vector_AZ_Uuid, Key: AZ_u64): boolean
	Insert: function(Container: vector_AZ_Uuid, Index: AZ_u64, Value: AZ_Uuid): vector_AZ_Uuid
	Iterate_VM: function(vector_AZ_Uuid): Iterator_VM_vector_AZ_Uuid
	NotEmpty: function(Container: vector_AZ_Uuid): boolean
	PushBack: function(vector_AZ_Uuid, AZ_Uuid): any
	PushBack_VM: function(Container: vector_AZ_Uuid, Value: AZ_Uuid): vector_AZ_Uuid
	ReleaseOwnership: function(): any
	Reserve: function(vector_AZ_Uuid, integer): any
	Resize: function(vector_AZ_Uuid, integer): any
	Size: function(vector_AZ_Uuid): integer
	Swap: function(vector_AZ_Uuid, vector_AZ_Uuid): any
	clear: function(vector_AZ_Uuid): any
	pop_back: function(vector_AZ_Uuid): any
	push_back: function(vector_AZ_Uuid, AZ_Uuid): any
end


global record vector_Aabb
	AcquireOwnership: function(): any
	At: function(vector_Aabb, Index: integer): Aabb
	AtUnchecked: function(Container: vector_Aabb, Index: integer): Aabb
	Back: function(Container: vector_Aabb): Aabb
	Capacity: function(vector_Aabb): integer
	Clear: function(Container: vector_Aabb): vector_Aabb
	Empty: function(Container: vector_Aabb): boolean
	EraseCheck_VM: function(vector_Aabb, AZ_u64): boolean
	Erase_VM: function(Container: vector_Aabb, Key: AZ_u64): vector_Aabb
	Front: function(Container: vector_Aabb): Aabb
	GetSize: function(Container: vector_Aabb): integer
	HasKey: function(Container: vector_Aabb, Key: AZ_u64): boolean
	Insert: function(Container: vector_Aabb, Index: AZ_u64, Value: Aabb): vector_Aabb
	Iterate_VM: function(vector_Aabb): Iterator_VM_vector_Aabb
	NotEmpty: function(Container: vector_Aabb): boolean
	PushBack: function(vector_Aabb, Aabb): any
	PushBack_VM: function(Container: vector_Aabb, Value: Aabb): vector_Aabb
	ReleaseOwnership: function(): any
	Reserve: function(vector_Aabb, integer): any
	Resize: function(vector_Aabb, integer): any
	Size: function(vector_Aabb): integer
	Swap: function(vector_Aabb, vector_Aabb): any
	clear: function(vector_Aabb): any
	pop_back: function(vector_Aabb): any
	push_back: function(vector_Aabb, Aabb): any
end


global record vector_AssetId
	AcquireOwnership: function(): any
	At: function(vector_AssetId, Index: integer): AssetId
	AtUnchecked: function(Container: vector_AssetId, Index: integer): AssetId
	Back: function(Container: vector_AssetId): AssetId
	Capacity: function(vector_AssetId): integer
	Clear: function(Container: vector_AssetId): vector_AssetId
	Empty: function(Container: vector_AssetId): boolean
	EraseCheck_VM: function(vector_AssetId, AZ_u64): boolean
	Erase_VM: function(Container: vector_AssetId, Key: AZ_u64): vector_AssetId
	Front: function(Container: vector_AssetId): AssetId
	GetSize: function(Container: vector_AssetId): integer
	HasKey: function(Container: vector_AssetId, Key: AZ_u64): boolean
	Insert: function(Container: vector_AssetId, Index: AZ_u64, Value: AssetId): vector_AssetId
	Iterate_VM: function(vector_AssetId): Iterator_VM_vector_AssetId
	NotEmpty: function(Container: vector_AssetId): boolean
	PushBack: function(vector_AssetId, AssetId): any
	PushBack_VM: function(Container: vector_AssetId, Value: AssetId): vector_AssetId
	ReleaseOwnership: function(): any
	Reserve: function(vector_AssetId, integer): any
	Resize: function(vector_AssetId, integer): any
	Size: function(vector_AssetId): integer
	Swap: function(vector_AssetId, vector_AssetId): any
	clear: function(vector_AssetId): any
	pop_back: function(vector_AssetId): any
	push_back: function(vector_AssetId, AssetId): any
end


global record vector_Asset_Physics_MaterialAsset
	AcquireOwnership: function(): any
	At: function(vector_Asset_Physics_MaterialAsset, Index: integer): Asset_Physics_MaterialAsset
	AtUnchecked: function(Container: vector_Asset_Physics_MaterialAsset, Index: integer): Asset_Physics_MaterialAsset
	Back: function(Container: vector_Asset_Physics_MaterialAsset): Asset_Physics_MaterialAsset
	Capacity: function(vector_Asset_Physics_MaterialAsset): integer
	Clear: function(Container: vector_Asset_Physics_MaterialAsset): vector_Asset_Physics_MaterialAsset
	Empty: function(Container: vector_Asset_Physics_MaterialAsset): boolean
	EraseCheck_VM: function(vector_Asset_Physics_MaterialAsset, AZ_u64): boolean
	Erase_VM: function(Container: vector_Asset_Physics_MaterialAsset, Key: AZ_u64): vector_Asset_Physics_MaterialAsset
	Front: function(Container: vector_Asset_Physics_MaterialAsset): Asset_Physics_MaterialAsset
	GetSize: function(Container: vector_Asset_Physics_MaterialAsset): integer
	HasKey: function(Container: vector_Asset_Physics_MaterialAsset, Key: AZ_u64): boolean
	Insert: function(Container: vector_Asset_Physics_MaterialAsset, Index: AZ_u64, Value: Asset_Physics_MaterialAsset): vector_Asset_Physics_MaterialAsset
	Iterate_VM: function(vector_Asset_Physics_MaterialAsset): Iterator_VM_vector_Asset_Physics_MaterialAsset
	NotEmpty: function(Container: vector_Asset_Physics_MaterialAsset): boolean
	PushBack: function(vector_Asset_Physics_MaterialAsset, Asset_Physics_MaterialAsset): any
	PushBack_VM: function(Container: vector_Asset_Physics_MaterialAsset, Value: Asset_Physics_MaterialAsset): vector_Asset_Physics_MaterialAsset
	ReleaseOwnership: function(): any
	Reserve: function(vector_Asset_Physics_MaterialAsset, integer): any
	Resize: function(vector_Asset_Physics_MaterialAsset, integer): any
	Size: function(vector_Asset_Physics_MaterialAsset): integer
	Swap: function(vector_Asset_Physics_MaterialAsset, vector_Asset_Physics_MaterialAsset): any
	clear: function(vector_Asset_Physics_MaterialAsset): any
	pop_back: function(vector_Asset_Physics_MaterialAsset): any
	push_back: function(vector_Asset_Physics_MaterialAsset, Asset_Physics_MaterialAsset): any
end


global record vector_Asset_RuntimeAsset
	AcquireOwnership: function(): any
	At: function(vector_Asset_RuntimeAsset, Index: integer): Asset_RuntimeAsset
	AtUnchecked: function(Container: vector_Asset_RuntimeAsset, Index: integer): Asset_RuntimeAsset
	Back: function(Container: vector_Asset_RuntimeAsset): Asset_RuntimeAsset
	Capacity: function(vector_Asset_RuntimeAsset): integer
	Clear: function(Container: vector_Asset_RuntimeAsset): vector_Asset_RuntimeAsset
	Empty: function(Container: vector_Asset_RuntimeAsset): boolean
	EraseCheck_VM: function(vector_Asset_RuntimeAsset, AZ_u64): boolean
	Erase_VM: function(Container: vector_Asset_RuntimeAsset, Key: AZ_u64): vector_Asset_RuntimeAsset
	Front: function(Container: vector_Asset_RuntimeAsset): Asset_RuntimeAsset
	GetSize: function(Container: vector_Asset_RuntimeAsset): integer
	HasKey: function(Container: vector_Asset_RuntimeAsset, Key: AZ_u64): boolean
	Insert: function(Container: vector_Asset_RuntimeAsset, Index: AZ_u64, Value: Asset_RuntimeAsset): vector_Asset_RuntimeAsset
	Iterate_VM: function(vector_Asset_RuntimeAsset): Iterator_VM_vector_Asset_RuntimeAsset
	NotEmpty: function(Container: vector_Asset_RuntimeAsset): boolean
	PushBack: function(vector_Asset_RuntimeAsset, Asset_RuntimeAsset): any
	PushBack_VM: function(Container: vector_Asset_RuntimeAsset, Value: Asset_RuntimeAsset): vector_Asset_RuntimeAsset
	ReleaseOwnership: function(): any
	Reserve: function(vector_Asset_RuntimeAsset, integer): any
	Resize: function(vector_Asset_RuntimeAsset, integer): any
	Size: function(vector_Asset_RuntimeAsset): integer
	Swap: function(vector_Asset_RuntimeAsset, vector_Asset_RuntimeAsset): any
	clear: function(vector_Asset_RuntimeAsset): any
	pop_back: function(vector_Asset_RuntimeAsset): any
	push_back: function(vector_Asset_RuntimeAsset, Asset_RuntimeAsset): any
end


global record vector_AzFramework_EntitySpawnTicket
	AcquireOwnership: function(): any
	At: function(vector_AzFramework_EntitySpawnTicket, Index: integer): AzFramework_EntitySpawnTicket
	AtUnchecked: function(Container: vector_AzFramework_EntitySpawnTicket, Index: integer): AzFramework_EntitySpawnTicket
	Back: function(Container: vector_AzFramework_EntitySpawnTicket): AzFramework_EntitySpawnTicket
	Capacity: function(vector_AzFramework_EntitySpawnTicket): integer
	Clear: function(Container: vector_AzFramework_EntitySpawnTicket): vector_AzFramework_EntitySpawnTicket
	Empty: function(Container: vector_AzFramework_EntitySpawnTicket): boolean
	EraseCheck_VM: function(vector_AzFramework_EntitySpawnTicket, AZ_u64): boolean
	Erase_VM: function(Container: vector_AzFramework_EntitySpawnTicket, Key: AZ_u64): vector_AzFramework_EntitySpawnTicket
	Front: function(Container: vector_AzFramework_EntitySpawnTicket): AzFramework_EntitySpawnTicket
	GetSize: function(Container: vector_AzFramework_EntitySpawnTicket): integer
	HasKey: function(Container: vector_AzFramework_EntitySpawnTicket, Key: AZ_u64): boolean
	Insert: function(Container: vector_AzFramework_EntitySpawnTicket, Index: AZ_u64, Value: AzFramework_EntitySpawnTicket): vector_AzFramework_EntitySpawnTicket
	Iterate_VM: function(vector_AzFramework_EntitySpawnTicket): Iterator_VM_vector_AzFramework_EntitySpawnTicket
	NotEmpty: function(Container: vector_AzFramework_EntitySpawnTicket): boolean
	PushBack: function(vector_AzFramework_EntitySpawnTicket, AzFramework_EntitySpawnTicket): any
	PushBack_VM: function(Container: vector_AzFramework_EntitySpawnTicket, Value: AzFramework_EntitySpawnTicket): vector_AzFramework_EntitySpawnTicket
	ReleaseOwnership: function(): any
	Reserve: function(vector_AzFramework_EntitySpawnTicket, integer): any
	Resize: function(vector_AzFramework_EntitySpawnTicket, integer): any
	Size: function(vector_AzFramework_EntitySpawnTicket): integer
	Swap: function(vector_AzFramework_EntitySpawnTicket, vector_AzFramework_EntitySpawnTicket): any
	clear: function(vector_AzFramework_EntitySpawnTicket): any
	pop_back: function(vector_AzFramework_EntitySpawnTicket): any
	push_back: function(vector_AzFramework_EntitySpawnTicket, AzFramework_EntitySpawnTicket): any
end


global record vector_AzFramework_Scripts_SpawnableScriptAssetRef
	AcquireOwnership: function(): any
	At: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, Index: integer): AzFramework_Scripts_SpawnableScriptAssetRef
	AtUnchecked: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef, Index: integer): AzFramework_Scripts_SpawnableScriptAssetRef
	Back: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef): AzFramework_Scripts_SpawnableScriptAssetRef
	Capacity: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef): integer
	Clear: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef): vector_AzFramework_Scripts_SpawnableScriptAssetRef
	Empty: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef): boolean
	EraseCheck_VM: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, AZ_u64): boolean
	Erase_VM: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef, Key: AZ_u64): vector_AzFramework_Scripts_SpawnableScriptAssetRef
	Front: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef): AzFramework_Scripts_SpawnableScriptAssetRef
	GetSize: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef): integer
	HasKey: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef, Key: AZ_u64): boolean
	Insert: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef, Index: AZ_u64, Value: AzFramework_Scripts_SpawnableScriptAssetRef): vector_AzFramework_Scripts_SpawnableScriptAssetRef
	Iterate_VM: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef): Iterator_VM_vector_AzFramework_Scripts_SpawnableScriptAssetRef
	NotEmpty: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef): boolean
	PushBack: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, AzFramework_Scripts_SpawnableScriptAssetRef): any
	PushBack_VM: function(Container: vector_AzFramework_Scripts_SpawnableScriptAssetRef, Value: AzFramework_Scripts_SpawnableScriptAssetRef): vector_AzFramework_Scripts_SpawnableScriptAssetRef
	ReleaseOwnership: function(): any
	Reserve: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, integer): any
	Resize: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, integer): any
	Size: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef): integer
	Swap: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, vector_AzFramework_Scripts_SpawnableScriptAssetRef): any
	clear: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef): any
	pop_back: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef): any
	push_back: function(vector_AzFramework_Scripts_SpawnableScriptAssetRef, AzFramework_Scripts_SpawnableScriptAssetRef): any
end


global record vector_AzToolsFramework_ComponentDetails
	AcquireOwnership: function(): any
	At: function(vector_AzToolsFramework_ComponentDetails, Index: integer): AzToolsFramework_ComponentDetails
	AtUnchecked: function(Container: vector_AzToolsFramework_ComponentDetails, Index: integer): AzToolsFramework_ComponentDetails
	Back: function(Container: vector_AzToolsFramework_ComponentDetails): AzToolsFramework_ComponentDetails
	Capacity: function(vector_AzToolsFramework_ComponentDetails): integer
	Clear: function(Container: vector_AzToolsFramework_ComponentDetails): vector_AzToolsFramework_ComponentDetails
	Empty: function(Container: vector_AzToolsFramework_ComponentDetails): boolean
	EraseCheck_VM: function(vector_AzToolsFramework_ComponentDetails, AZ_u64): boolean
	Erase_VM: function(Container: vector_AzToolsFramework_ComponentDetails, Key: AZ_u64): vector_AzToolsFramework_ComponentDetails
	Front: function(Container: vector_AzToolsFramework_ComponentDetails): AzToolsFramework_ComponentDetails
	GetSize: function(Container: vector_AzToolsFramework_ComponentDetails): integer
	HasKey: function(Container: vector_AzToolsFramework_ComponentDetails, Key: AZ_u64): boolean
	Insert: function(Container: vector_AzToolsFramework_ComponentDetails, Index: AZ_u64, Value: AzToolsFramework_ComponentDetails): vector_AzToolsFramework_ComponentDetails
	Iterate_VM: function(vector_AzToolsFramework_ComponentDetails): Iterator_VM_vector_AzToolsFramework_ComponentDetails
	NotEmpty: function(Container: vector_AzToolsFramework_ComponentDetails): boolean
	PushBack: function(vector_AzToolsFramework_ComponentDetails, AzToolsFramework_ComponentDetails): any
	PushBack_VM: function(Container: vector_AzToolsFramework_ComponentDetails, Value: AzToolsFramework_ComponentDetails): vector_AzToolsFramework_ComponentDetails
	ReleaseOwnership: function(): any
	Reserve: function(vector_AzToolsFramework_ComponentDetails, integer): any
	Resize: function(vector_AzToolsFramework_ComponentDetails, integer): any
	Size: function(vector_AzToolsFramework_ComponentDetails): integer
	Swap: function(vector_AzToolsFramework_ComponentDetails, vector_AzToolsFramework_ComponentDetails): any
	clear: function(vector_AzToolsFramework_ComponentDetails): any
	pop_back: function(vector_AzToolsFramework_ComponentDetails): any
	push_back: function(vector_AzToolsFramework_ComponentDetails, AzToolsFramework_ComponentDetails): any
end


global record vector_BehaviorComponentId
	AcquireOwnership: function(): any
	At: function(vector_BehaviorComponentId, Index: integer): BehaviorComponentId
	AtUnchecked: function(Container: vector_BehaviorComponentId, Index: integer): BehaviorComponentId
	Back: function(Container: vector_BehaviorComponentId): BehaviorComponentId
	Capacity: function(vector_BehaviorComponentId): integer
	Clear: function(Container: vector_BehaviorComponentId): vector_BehaviorComponentId
	Empty: function(Container: vector_BehaviorComponentId): boolean
	EraseCheck_VM: function(vector_BehaviorComponentId, AZ_u64): boolean
	Erase_VM: function(Container: vector_BehaviorComponentId, Key: AZ_u64): vector_BehaviorComponentId
	Front: function(Container: vector_BehaviorComponentId): BehaviorComponentId
	GetSize: function(Container: vector_BehaviorComponentId): integer
	HasKey: function(Container: vector_BehaviorComponentId, Key: AZ_u64): boolean
	Insert: function(Container: vector_BehaviorComponentId, Index: AZ_u64, Value: BehaviorComponentId): vector_BehaviorComponentId
	Iterate_VM: function(vector_BehaviorComponentId): Iterator_VM_vector_BehaviorComponentId
	NotEmpty: function(Container: vector_BehaviorComponentId): boolean
	PushBack: function(vector_BehaviorComponentId, BehaviorComponentId): any
	PushBack_VM: function(Container: vector_BehaviorComponentId, Value: BehaviorComponentId): vector_BehaviorComponentId
	ReleaseOwnership: function(): any
	Reserve: function(vector_BehaviorComponentId, integer): any
	Resize: function(vector_BehaviorComponentId, integer): any
	Size: function(vector_BehaviorComponentId): integer
	Swap: function(vector_BehaviorComponentId, vector_BehaviorComponentId): any
	clear: function(vector_BehaviorComponentId): any
	pop_back: function(vector_BehaviorComponentId): any
	push_back: function(vector_BehaviorComponentId, BehaviorComponentId): any
end


global record vector_Color
	AcquireOwnership: function(): any
	At: function(vector_Color, Index: integer): Color
	AtUnchecked: function(Container: vector_Color, Index: integer): Color
	Back: function(Container: vector_Color): Color
	Capacity: function(vector_Color): integer
	Clear: function(Container: vector_Color): vector_Color
	Empty: function(Container: vector_Color): boolean
	EraseCheck_VM: function(vector_Color, AZ_u64): boolean
	Erase_VM: function(Container: vector_Color, Key: AZ_u64): vector_Color
	Front: function(Container: vector_Color): Color
	GetSize: function(Container: vector_Color): integer
	HasKey: function(Container: vector_Color, Key: AZ_u64): boolean
	Insert: function(Container: vector_Color, Index: AZ_u64, Value: Color): vector_Color
	Iterate_VM: function(vector_Color): Iterator_VM_vector_Color
	NotEmpty: function(Container: vector_Color): boolean
	PushBack: function(vector_Color, Color): any
	PushBack_VM: function(Container: vector_Color, Value: Color): vector_Color
	ReleaseOwnership: function(): any
	Reserve: function(vector_Color, integer): any
	Resize: function(vector_Color, integer): any
	Size: function(vector_Color): integer
	Swap: function(vector_Color, vector_Color): any
	clear: function(vector_Color): any
	pop_back: function(vector_Color): any
	push_back: function(vector_Color, Color): any
end


global record vector_Contact
	AcquireOwnership: function(): any
	At: function(vector_Contact, Index: integer): Contact
	AtUnchecked: function(Container: vector_Contact, Index: integer): Contact
	Back: function(Container: vector_Contact): Contact
	Capacity: function(vector_Contact): integer
	Clear: function(Container: vector_Contact): vector_Contact
	Empty: function(Container: vector_Contact): boolean
	EraseCheck_VM: function(vector_Contact, AZ_u64): boolean
	Erase_VM: function(Container: vector_Contact, Key: AZ_u64): vector_Contact
	Front: function(Container: vector_Contact): Contact
	GetSize: function(Container: vector_Contact): integer
	HasKey: function(Container: vector_Contact, Key: AZ_u64): boolean
	Insert: function(Container: vector_Contact, Index: AZ_u64, Value: Contact): vector_Contact
	Iterate_VM: function(vector_Contact): Iterator_VM_vector_Contact
	NotEmpty: function(Container: vector_Contact): boolean
	PushBack: function(vector_Contact, Contact): any
	PushBack_VM: function(Container: vector_Contact, Value: Contact): vector_Contact
	ReleaseOwnership: function(): any
	Reserve: function(vector_Contact, integer): any
	Resize: function(vector_Contact, integer): any
	Size: function(vector_Contact): integer
	Swap: function(vector_Contact, vector_Contact): any
	clear: function(vector_Contact): any
	pop_back: function(vector_Contact): any
	push_back: function(vector_Contact, Contact): any
end


global record vector_Crc32
	AcquireOwnership: function(): any
	At: function(vector_Crc32, Index: integer): Crc32
	AtUnchecked: function(Container: vector_Crc32, Index: integer): Crc32
	Back: function(Container: vector_Crc32): Crc32
	Capacity: function(vector_Crc32): integer
	Clear: function(Container: vector_Crc32): vector_Crc32
	Empty: function(Container: vector_Crc32): boolean
	EraseCheck_VM: function(vector_Crc32, AZ_u64): boolean
	Erase_VM: function(Container: vector_Crc32, Key: AZ_u64): vector_Crc32
	Front: function(Container: vector_Crc32): Crc32
	GetSize: function(Container: vector_Crc32): integer
	HasKey: function(Container: vector_Crc32, Key: AZ_u64): boolean
	Insert: function(Container: vector_Crc32, Index: AZ_u64, Value: Crc32): vector_Crc32
	Iterate_VM: function(vector_Crc32): Iterator_VM_vector_Crc32
	NotEmpty: function(Container: vector_Crc32): boolean
	PushBack: function(vector_Crc32, Crc32): any
	PushBack_VM: function(Container: vector_Crc32, Value: Crc32): vector_Crc32
	ReleaseOwnership: function(): any
	Reserve: function(vector_Crc32, integer): any
	Resize: function(vector_Crc32, integer): any
	Size: function(vector_Crc32): integer
	Swap: function(vector_Crc32, vector_Crc32): any
	clear: function(vector_Crc32): any
	pop_back: function(vector_Crc32): any
	push_back: function(vector_Crc32, Crc32): any
end


global record vector_DynamicNodeSlotConfig
	AcquireOwnership: function(): any
	At: function(vector_DynamicNodeSlotConfig, Index: integer): DynamicNodeSlotConfig
	AtUnchecked: function(Container: vector_DynamicNodeSlotConfig, Index: integer): DynamicNodeSlotConfig
	Back: function(Container: vector_DynamicNodeSlotConfig): DynamicNodeSlotConfig
	Capacity: function(vector_DynamicNodeSlotConfig): integer
	Clear: function(Container: vector_DynamicNodeSlotConfig): vector_DynamicNodeSlotConfig
	Empty: function(Container: vector_DynamicNodeSlotConfig): boolean
	EraseCheck_VM: function(vector_DynamicNodeSlotConfig, AZ_u64): boolean
	Erase_VM: function(Container: vector_DynamicNodeSlotConfig, Key: AZ_u64): vector_DynamicNodeSlotConfig
	Front: function(Container: vector_DynamicNodeSlotConfig): DynamicNodeSlotConfig
	GetSize: function(Container: vector_DynamicNodeSlotConfig): integer
	HasKey: function(Container: vector_DynamicNodeSlotConfig, Key: AZ_u64): boolean
	Insert: function(Container: vector_DynamicNodeSlotConfig, Index: AZ_u64, Value: DynamicNodeSlotConfig): vector_DynamicNodeSlotConfig
	Iterate_VM: function(vector_DynamicNodeSlotConfig): Iterator_VM_vector_DynamicNodeSlotConfig
	NotEmpty: function(Container: vector_DynamicNodeSlotConfig): boolean
	PushBack: function(vector_DynamicNodeSlotConfig, DynamicNodeSlotConfig): any
	PushBack_VM: function(Container: vector_DynamicNodeSlotConfig, Value: DynamicNodeSlotConfig): vector_DynamicNodeSlotConfig
	ReleaseOwnership: function(): any
	Reserve: function(vector_DynamicNodeSlotConfig, integer): any
	Resize: function(vector_DynamicNodeSlotConfig, integer): any
	Size: function(vector_DynamicNodeSlotConfig): integer
	Swap: function(vector_DynamicNodeSlotConfig, vector_DynamicNodeSlotConfig): any
	clear: function(vector_DynamicNodeSlotConfig): any
	pop_back: function(vector_DynamicNodeSlotConfig): any
	push_back: function(vector_DynamicNodeSlotConfig, DynamicNodeSlotConfig): any
end


global record vector_EntityComponentIdPair
	AcquireOwnership: function(): any
	At: function(vector_EntityComponentIdPair, Index: integer): EntityComponentIdPair
	AtUnchecked: function(Container: vector_EntityComponentIdPair, Index: integer): EntityComponentIdPair
	Back: function(Container: vector_EntityComponentIdPair): EntityComponentIdPair
	Capacity: function(vector_EntityComponentIdPair): integer
	Clear: function(Container: vector_EntityComponentIdPair): vector_EntityComponentIdPair
	Empty: function(Container: vector_EntityComponentIdPair): boolean
	EraseCheck_VM: function(vector_EntityComponentIdPair, AZ_u64): boolean
	Erase_VM: function(Container: vector_EntityComponentIdPair, Key: AZ_u64): vector_EntityComponentIdPair
	Front: function(Container: vector_EntityComponentIdPair): EntityComponentIdPair
	GetSize: function(Container: vector_EntityComponentIdPair): integer
	HasKey: function(Container: vector_EntityComponentIdPair, Key: AZ_u64): boolean
	Insert: function(Container: vector_EntityComponentIdPair, Index: AZ_u64, Value: EntityComponentIdPair): vector_EntityComponentIdPair
	Iterate_VM: function(vector_EntityComponentIdPair): Iterator_VM_vector_EntityComponentIdPair
	NotEmpty: function(Container: vector_EntityComponentIdPair): boolean
	PushBack: function(vector_EntityComponentIdPair, EntityComponentIdPair): any
	PushBack_VM: function(Container: vector_EntityComponentIdPair, Value: EntityComponentIdPair): vector_EntityComponentIdPair
	ReleaseOwnership: function(): any
	Reserve: function(vector_EntityComponentIdPair, integer): any
	Resize: function(vector_EntityComponentIdPair, integer): any
	Size: function(vector_EntityComponentIdPair): integer
	Swap: function(vector_EntityComponentIdPair, vector_EntityComponentIdPair): any
	clear: function(vector_EntityComponentIdPair): any
	pop_back: function(vector_EntityComponentIdPair): any
	push_back: function(vector_EntityComponentIdPair, EntityComponentIdPair): any
end


global record vector_EntityId
	AcquireOwnership: function(): any
	At: function(vector_EntityId, Index: integer): EntityId
	AtUnchecked: function(Container: vector_EntityId, Index: integer): EntityId
	Back: function(Container: vector_EntityId): EntityId
	Capacity: function(vector_EntityId): integer
	Clear: function(Container: vector_EntityId): vector_EntityId
	Empty: function(Container: vector_EntityId): boolean
	EraseCheck_VM: function(vector_EntityId, AZ_u64): boolean
	Erase_VM: function(Container: vector_EntityId, Key: AZ_u64): vector_EntityId
	Front: function(Container: vector_EntityId): EntityId
	GetSize: function(Container: vector_EntityId): integer
	HasKey: function(Container: vector_EntityId, Key: AZ_u64): boolean
	Insert: function(Container: vector_EntityId, Index: AZ_u64, Value: EntityId): vector_EntityId
	Iterate_VM: function(vector_EntityId): Iterator_VM_vector_EntityId
	NotEmpty: function(Container: vector_EntityId): boolean
	PushBack: function(vector_EntityId, EntityId): any
	PushBack_VM: function(Container: vector_EntityId, Value: EntityId): vector_EntityId
	ReleaseOwnership: function(): any
	Reserve: function(vector_EntityId, integer): any
	Resize: function(vector_EntityId, integer): any
	Size: function(vector_EntityId): integer
	Swap: function(vector_EntityId, vector_EntityId): any
	clear: function(vector_EntityId): any
	pop_back: function(vector_EntityId): any
	push_back: function(vector_EntityId, EntityId): any
end


global record vector_HeightMaterialPoint
	AcquireOwnership: function(): any
	At: function(vector_HeightMaterialPoint, Index: integer): HeightMaterialPoint
	AtUnchecked: function(Container: vector_HeightMaterialPoint, Index: integer): HeightMaterialPoint
	Back: function(Container: vector_HeightMaterialPoint): HeightMaterialPoint
	Capacity: function(vector_HeightMaterialPoint): integer
	Clear: function(Container: vector_HeightMaterialPoint): vector_HeightMaterialPoint
	Empty: function(Container: vector_HeightMaterialPoint): boolean
	EraseCheck_VM: function(vector_HeightMaterialPoint, AZ_u64): boolean
	Erase_VM: function(Container: vector_HeightMaterialPoint, Key: AZ_u64): vector_HeightMaterialPoint
	Front: function(Container: vector_HeightMaterialPoint): HeightMaterialPoint
	GetSize: function(Container: vector_HeightMaterialPoint): integer
	HasKey: function(Container: vector_HeightMaterialPoint, Key: AZ_u64): boolean
	Insert: function(Container: vector_HeightMaterialPoint, Index: AZ_u64, Value: HeightMaterialPoint): vector_HeightMaterialPoint
	Iterate_VM: function(vector_HeightMaterialPoint): Iterator_VM_vector_HeightMaterialPoint
	NotEmpty: function(Container: vector_HeightMaterialPoint): boolean
	PushBack: function(vector_HeightMaterialPoint, HeightMaterialPoint): any
	PushBack_VM: function(Container: vector_HeightMaterialPoint, Value: HeightMaterialPoint): vector_HeightMaterialPoint
	ReleaseOwnership: function(): any
	Reserve: function(vector_HeightMaterialPoint, integer): any
	Resize: function(vector_HeightMaterialPoint, integer): any
	Size: function(vector_HeightMaterialPoint): integer
	Swap: function(vector_HeightMaterialPoint, vector_HeightMaterialPoint): any
	clear: function(vector_HeightMaterialPoint): any
	pop_back: function(vector_HeightMaterialPoint): any
	push_back: function(vector_HeightMaterialPoint, HeightMaterialPoint): any
end


global record vector_LuaClassSymbol
	AcquireOwnership: function(): any
	At: function(vector_LuaClassSymbol, Index: integer): LuaClassSymbol
	AtUnchecked: function(Container: vector_LuaClassSymbol, Index: integer): LuaClassSymbol
	Back: function(Container: vector_LuaClassSymbol): LuaClassSymbol
	Capacity: function(vector_LuaClassSymbol): integer
	Clear: function(Container: vector_LuaClassSymbol): vector_LuaClassSymbol
	Empty: function(Container: vector_LuaClassSymbol): boolean
	EraseCheck_VM: function(vector_LuaClassSymbol, AZ_u64): boolean
	Erase_VM: function(Container: vector_LuaClassSymbol, Key: AZ_u64): vector_LuaClassSymbol
	Front: function(Container: vector_LuaClassSymbol): LuaClassSymbol
	GetSize: function(Container: vector_LuaClassSymbol): integer
	HasKey: function(Container: vector_LuaClassSymbol, Key: AZ_u64): boolean
	Insert: function(Container: vector_LuaClassSymbol, Index: AZ_u64, Value: LuaClassSymbol): vector_LuaClassSymbol
	Iterate_VM: function(vector_LuaClassSymbol): Iterator_VM_vector_LuaClassSymbol
	NotEmpty: function(Container: vector_LuaClassSymbol): boolean
	PushBack: function(vector_LuaClassSymbol, LuaClassSymbol): any
	PushBack_VM: function(Container: vector_LuaClassSymbol, Value: LuaClassSymbol): vector_LuaClassSymbol
	ReleaseOwnership: function(): any
	Reserve: function(vector_LuaClassSymbol, integer): any
	Resize: function(vector_LuaClassSymbol, integer): any
	Size: function(vector_LuaClassSymbol): integer
	Swap: function(vector_LuaClassSymbol, vector_LuaClassSymbol): any
	clear: function(vector_LuaClassSymbol): any
	pop_back: function(vector_LuaClassSymbol): any
	push_back: function(vector_LuaClassSymbol, LuaClassSymbol): any
end


global record vector_LuaEBusSender
	AcquireOwnership: function(): any
	At: function(vector_LuaEBusSender, Index: integer): LuaEBusSender
	AtUnchecked: function(Container: vector_LuaEBusSender, Index: integer): LuaEBusSender
	Back: function(Container: vector_LuaEBusSender): LuaEBusSender
	Capacity: function(vector_LuaEBusSender): integer
	Clear: function(Container: vector_LuaEBusSender): vector_LuaEBusSender
	Empty: function(Container: vector_LuaEBusSender): boolean
	EraseCheck_VM: function(vector_LuaEBusSender, AZ_u64): boolean
	Erase_VM: function(Container: vector_LuaEBusSender, Key: AZ_u64): vector_LuaEBusSender
	Front: function(Container: vector_LuaEBusSender): LuaEBusSender
	GetSize: function(Container: vector_LuaEBusSender): integer
	HasKey: function(Container: vector_LuaEBusSender, Key: AZ_u64): boolean
	Insert: function(Container: vector_LuaEBusSender, Index: AZ_u64, Value: LuaEBusSender): vector_LuaEBusSender
	Iterate_VM: function(vector_LuaEBusSender): Iterator_VM_vector_LuaEBusSender
	NotEmpty: function(Container: vector_LuaEBusSender): boolean
	PushBack: function(vector_LuaEBusSender, LuaEBusSender): any
	PushBack_VM: function(Container: vector_LuaEBusSender, Value: LuaEBusSender): vector_LuaEBusSender
	ReleaseOwnership: function(): any
	Reserve: function(vector_LuaEBusSender, integer): any
	Resize: function(vector_LuaEBusSender, integer): any
	Size: function(vector_LuaEBusSender): integer
	Swap: function(vector_LuaEBusSender, vector_LuaEBusSender): any
	clear: function(vector_LuaEBusSender): any
	pop_back: function(vector_LuaEBusSender): any
	push_back: function(vector_LuaEBusSender, LuaEBusSender): any
end


global record vector_LuaEBusSymbol
	AcquireOwnership: function(): any
	At: function(vector_LuaEBusSymbol, Index: integer): LuaEBusSymbol
	AtUnchecked: function(Container: vector_LuaEBusSymbol, Index: integer): LuaEBusSymbol
	Back: function(Container: vector_LuaEBusSymbol): LuaEBusSymbol
	Capacity: function(vector_LuaEBusSymbol): integer
	Clear: function(Container: vector_LuaEBusSymbol): vector_LuaEBusSymbol
	Empty: function(Container: vector_LuaEBusSymbol): boolean
	EraseCheck_VM: function(vector_LuaEBusSymbol, AZ_u64): boolean
	Erase_VM: function(Container: vector_LuaEBusSymbol, Key: AZ_u64): vector_LuaEBusSymbol
	Front: function(Container: vector_LuaEBusSymbol): LuaEBusSymbol
	GetSize: function(Container: vector_LuaEBusSymbol): integer
	HasKey: function(Container: vector_LuaEBusSymbol, Key: AZ_u64): boolean
	Insert: function(Container: vector_LuaEBusSymbol, Index: AZ_u64, Value: LuaEBusSymbol): vector_LuaEBusSymbol
	Iterate_VM: function(vector_LuaEBusSymbol): Iterator_VM_vector_LuaEBusSymbol
	NotEmpty: function(Container: vector_LuaEBusSymbol): boolean
	PushBack: function(vector_LuaEBusSymbol, LuaEBusSymbol): any
	PushBack_VM: function(Container: vector_LuaEBusSymbol, Value: LuaEBusSymbol): vector_LuaEBusSymbol
	ReleaseOwnership: function(): any
	Reserve: function(vector_LuaEBusSymbol, integer): any
	Resize: function(vector_LuaEBusSymbol, integer): any
	Size: function(vector_LuaEBusSymbol): integer
	Swap: function(vector_LuaEBusSymbol, vector_LuaEBusSymbol): any
	clear: function(vector_LuaEBusSymbol): any
	pop_back: function(vector_LuaEBusSymbol): any
	push_back: function(vector_LuaEBusSymbol, LuaEBusSymbol): any
end


global record vector_LuaMethodSymbol
	AcquireOwnership: function(): any
	At: function(vector_LuaMethodSymbol, Index: integer): LuaMethodSymbol
	AtUnchecked: function(Container: vector_LuaMethodSymbol, Index: integer): LuaMethodSymbol
	Back: function(Container: vector_LuaMethodSymbol): LuaMethodSymbol
	Capacity: function(vector_LuaMethodSymbol): integer
	Clear: function(Container: vector_LuaMethodSymbol): vector_LuaMethodSymbol
	Empty: function(Container: vector_LuaMethodSymbol): boolean
	EraseCheck_VM: function(vector_LuaMethodSymbol, AZ_u64): boolean
	Erase_VM: function(Container: vector_LuaMethodSymbol, Key: AZ_u64): vector_LuaMethodSymbol
	Front: function(Container: vector_LuaMethodSymbol): LuaMethodSymbol
	GetSize: function(Container: vector_LuaMethodSymbol): integer
	HasKey: function(Container: vector_LuaMethodSymbol, Key: AZ_u64): boolean
	Insert: function(Container: vector_LuaMethodSymbol, Index: AZ_u64, Value: LuaMethodSymbol): vector_LuaMethodSymbol
	Iterate_VM: function(vector_LuaMethodSymbol): Iterator_VM_vector_LuaMethodSymbol
	NotEmpty: function(Container: vector_LuaMethodSymbol): boolean
	PushBack: function(vector_LuaMethodSymbol, LuaMethodSymbol): any
	PushBack_VM: function(Container: vector_LuaMethodSymbol, Value: LuaMethodSymbol): vector_LuaMethodSymbol
	ReleaseOwnership: function(): any
	Reserve: function(vector_LuaMethodSymbol, integer): any
	Resize: function(vector_LuaMethodSymbol, integer): any
	Size: function(vector_LuaMethodSymbol): integer
	Swap: function(vector_LuaMethodSymbol, vector_LuaMethodSymbol): any
	clear: function(vector_LuaMethodSymbol): any
	pop_back: function(vector_LuaMethodSymbol): any
	push_back: function(vector_LuaMethodSymbol, LuaMethodSymbol): any
end


global record vector_LuaPropertySymbol
	AcquireOwnership: function(): any
	At: function(vector_LuaPropertySymbol, Index: integer): LuaPropertySymbol
	AtUnchecked: function(Container: vector_LuaPropertySymbol, Index: integer): LuaPropertySymbol
	Back: function(Container: vector_LuaPropertySymbol): LuaPropertySymbol
	Capacity: function(vector_LuaPropertySymbol): integer
	Clear: function(Container: vector_LuaPropertySymbol): vector_LuaPropertySymbol
	Empty: function(Container: vector_LuaPropertySymbol): boolean
	EraseCheck_VM: function(vector_LuaPropertySymbol, AZ_u64): boolean
	Erase_VM: function(Container: vector_LuaPropertySymbol, Key: AZ_u64): vector_LuaPropertySymbol
	Front: function(Container: vector_LuaPropertySymbol): LuaPropertySymbol
	GetSize: function(Container: vector_LuaPropertySymbol): integer
	HasKey: function(Container: vector_LuaPropertySymbol, Key: AZ_u64): boolean
	Insert: function(Container: vector_LuaPropertySymbol, Index: AZ_u64, Value: LuaPropertySymbol): vector_LuaPropertySymbol
	Iterate_VM: function(vector_LuaPropertySymbol): Iterator_VM_vector_LuaPropertySymbol
	NotEmpty: function(Container: vector_LuaPropertySymbol): boolean
	PushBack: function(vector_LuaPropertySymbol, LuaPropertySymbol): any
	PushBack_VM: function(Container: vector_LuaPropertySymbol, Value: LuaPropertySymbol): vector_LuaPropertySymbol
	ReleaseOwnership: function(): any
	Reserve: function(vector_LuaPropertySymbol, integer): any
	Resize: function(vector_LuaPropertySymbol, integer): any
	Size: function(vector_LuaPropertySymbol): integer
	Swap: function(vector_LuaPropertySymbol, vector_LuaPropertySymbol): any
	clear: function(vector_LuaPropertySymbol): any
	pop_back: function(vector_LuaPropertySymbol): any
	push_back: function(vector_LuaPropertySymbol, LuaPropertySymbol): any
end


global record vector_Matrix3x3
	AcquireOwnership: function(): any
	At: function(vector_Matrix3x3, Index: integer): Matrix3x3
	AtUnchecked: function(Container: vector_Matrix3x3, Index: integer): Matrix3x3
	Back: function(Container: vector_Matrix3x3): Matrix3x3
	Capacity: function(vector_Matrix3x3): integer
	Clear: function(Container: vector_Matrix3x3): vector_Matrix3x3
	Empty: function(Container: vector_Matrix3x3): boolean
	EraseCheck_VM: function(vector_Matrix3x3, AZ_u64): boolean
	Erase_VM: function(Container: vector_Matrix3x3, Key: AZ_u64): vector_Matrix3x3
	Front: function(Container: vector_Matrix3x3): Matrix3x3
	GetSize: function(Container: vector_Matrix3x3): integer
	HasKey: function(Container: vector_Matrix3x3, Key: AZ_u64): boolean
	Insert: function(Container: vector_Matrix3x3, Index: AZ_u64, Value: Matrix3x3): vector_Matrix3x3
	Iterate_VM: function(vector_Matrix3x3): Iterator_VM_vector_Matrix3x3
	NotEmpty: function(Container: vector_Matrix3x3): boolean
	PushBack: function(vector_Matrix3x3, Matrix3x3): any
	PushBack_VM: function(Container: vector_Matrix3x3, Value: Matrix3x3): vector_Matrix3x3
	ReleaseOwnership: function(): any
	Reserve: function(vector_Matrix3x3, integer): any
	Resize: function(vector_Matrix3x3, integer): any
	Size: function(vector_Matrix3x3): integer
	Swap: function(vector_Matrix3x3, vector_Matrix3x3): any
	clear: function(vector_Matrix3x3): any
	pop_back: function(vector_Matrix3x3): any
	push_back: function(vector_Matrix3x3, Matrix3x3): any
end


global record vector_Matrix4x4
	AcquireOwnership: function(): any
	At: function(vector_Matrix4x4, Index: integer): Matrix4x4
	AtUnchecked: function(Container: vector_Matrix4x4, Index: integer): Matrix4x4
	Back: function(Container: vector_Matrix4x4): Matrix4x4
	Capacity: function(vector_Matrix4x4): integer
	Clear: function(Container: vector_Matrix4x4): vector_Matrix4x4
	Empty: function(Container: vector_Matrix4x4): boolean
	EraseCheck_VM: function(vector_Matrix4x4, AZ_u64): boolean
	Erase_VM: function(Container: vector_Matrix4x4, Key: AZ_u64): vector_Matrix4x4
	Front: function(Container: vector_Matrix4x4): Matrix4x4
	GetSize: function(Container: vector_Matrix4x4): integer
	HasKey: function(Container: vector_Matrix4x4, Key: AZ_u64): boolean
	Insert: function(Container: vector_Matrix4x4, Index: AZ_u64, Value: Matrix4x4): vector_Matrix4x4
	Iterate_VM: function(vector_Matrix4x4): Iterator_VM_vector_Matrix4x4
	NotEmpty: function(Container: vector_Matrix4x4): boolean
	PushBack: function(vector_Matrix4x4, Matrix4x4): any
	PushBack_VM: function(Container: vector_Matrix4x4, Value: Matrix4x4): vector_Matrix4x4
	ReleaseOwnership: function(): any
	Reserve: function(vector_Matrix4x4, integer): any
	Resize: function(vector_Matrix4x4, integer): any
	Size: function(vector_Matrix4x4): integer
	Swap: function(vector_Matrix4x4, vector_Matrix4x4): any
	clear: function(vector_Matrix4x4): any
	pop_back: function(vector_Matrix4x4): any
	push_back: function(vector_Matrix4x4, Matrix4x4): any
end


global record vector_MatrixMxN
	AcquireOwnership: function(): any
	At: function(vector_MatrixMxN, Index: integer): MatrixMxN
	AtUnchecked: function(Container: vector_MatrixMxN, Index: integer): MatrixMxN
	Back: function(Container: vector_MatrixMxN): MatrixMxN
	Capacity: function(vector_MatrixMxN): integer
	Clear: function(Container: vector_MatrixMxN): vector_MatrixMxN
	Empty: function(Container: vector_MatrixMxN): boolean
	EraseCheck_VM: function(vector_MatrixMxN, AZ_u64): boolean
	Erase_VM: function(Container: vector_MatrixMxN, Key: AZ_u64): vector_MatrixMxN
	Front: function(Container: vector_MatrixMxN): MatrixMxN
	GetSize: function(Container: vector_MatrixMxN): integer
	HasKey: function(Container: vector_MatrixMxN, Key: AZ_u64): boolean
	Insert: function(Container: vector_MatrixMxN, Index: AZ_u64, Value: MatrixMxN): vector_MatrixMxN
	Iterate_VM: function(vector_MatrixMxN): Iterator_VM_vector_MatrixMxN
	NotEmpty: function(Container: vector_MatrixMxN): boolean
	PushBack: function(vector_MatrixMxN, MatrixMxN): any
	PushBack_VM: function(Container: vector_MatrixMxN, Value: MatrixMxN): vector_MatrixMxN
	ReleaseOwnership: function(): any
	Reserve: function(vector_MatrixMxN, integer): any
	Resize: function(vector_MatrixMxN, integer): any
	Size: function(vector_MatrixMxN): integer
	Swap: function(vector_MatrixMxN, vector_MatrixMxN): any
	clear: function(vector_MatrixMxN): any
	pop_back: function(vector_MatrixMxN): any
	push_back: function(vector_MatrixMxN, MatrixMxN): any
end


global record vector_Method
	AcquireOwnership: function(): any
	At: function(vector_Method, Index: integer): Method
	AtUnchecked: function(Container: vector_Method, Index: integer): Method
	Back: function(Container: vector_Method): Method
	Capacity: function(vector_Method): integer
	Clear: function(Container: vector_Method): vector_Method
	Empty: function(Container: vector_Method): boolean
	EraseCheck_VM: function(vector_Method, AZ_u64): boolean
	Erase_VM: function(Container: vector_Method, Key: AZ_u64): vector_Method
	Front: function(Container: vector_Method): Method
	GetSize: function(Container: vector_Method): integer
	HasKey: function(Container: vector_Method, Key: AZ_u64): boolean
	Insert: function(Container: vector_Method, Index: AZ_u64, Value: Method): vector_Method
	Iterate_VM: function(vector_Method): Iterator_VM_vector_Method
	NotEmpty: function(Container: vector_Method): boolean
	PushBack: function(vector_Method, Method): any
	PushBack_VM: function(Container: vector_Method, Value: Method): vector_Method
	ReleaseOwnership: function(): any
	Reserve: function(vector_Method, integer): any
	Resize: function(vector_Method, integer): any
	Size: function(vector_Method): integer
	Swap: function(vector_Method, vector_Method): any
	clear: function(vector_Method): any
	pop_back: function(vector_Method): any
	push_back: function(vector_Method, Method): any
end


global record vector_Name
	AcquireOwnership: function(): any
	At: function(vector_Name, Index: integer): Name
	AtUnchecked: function(Container: vector_Name, Index: integer): Name
	Back: function(Container: vector_Name): Name
	Capacity: function(vector_Name): integer
	Clear: function(Container: vector_Name): vector_Name
	Empty: function(Container: vector_Name): boolean
	EraseCheck_VM: function(vector_Name, AZ_u64): boolean
	Erase_VM: function(Container: vector_Name, Key: AZ_u64): vector_Name
	Front: function(Container: vector_Name): Name
	GetSize: function(Container: vector_Name): integer
	HasKey: function(Container: vector_Name, Key: AZ_u64): boolean
	Insert: function(Container: vector_Name, Index: AZ_u64, Value: Name): vector_Name
	Iterate_VM: function(vector_Name): Iterator_VM_vector_Name
	NotEmpty: function(Container: vector_Name): boolean
	PushBack: function(vector_Name, Name): any
	PushBack_VM: function(Container: vector_Name, Value: Name): vector_Name
	ReleaseOwnership: function(): any
	Reserve: function(vector_Name, integer): any
	Resize: function(vector_Name, integer): any
	Size: function(vector_Name): integer
	Swap: function(vector_Name, vector_Name): any
	clear: function(vector_Name): any
	pop_back: function(vector_Name): any
	push_back: function(vector_Name, Name): any
end


global record vector_Obb
	AcquireOwnership: function(): any
	At: function(vector_Obb, Index: integer): Obb
	AtUnchecked: function(Container: vector_Obb, Index: integer): Obb
	Back: function(Container: vector_Obb): Obb
	Capacity: function(vector_Obb): integer
	Clear: function(Container: vector_Obb): vector_Obb
	Empty: function(Container: vector_Obb): boolean
	EraseCheck_VM: function(vector_Obb, AZ_u64): boolean
	Erase_VM: function(Container: vector_Obb, Key: AZ_u64): vector_Obb
	Front: function(Container: vector_Obb): Obb
	GetSize: function(Container: vector_Obb): integer
	HasKey: function(Container: vector_Obb, Key: AZ_u64): boolean
	Insert: function(Container: vector_Obb, Index: AZ_u64, Value: Obb): vector_Obb
	Iterate_VM: function(vector_Obb): Iterator_VM_vector_Obb
	NotEmpty: function(Container: vector_Obb): boolean
	PushBack: function(vector_Obb, Obb): any
	PushBack_VM: function(Container: vector_Obb, Value: Obb): vector_Obb
	ReleaseOwnership: function(): any
	Reserve: function(vector_Obb, integer): any
	Resize: function(vector_Obb, integer): any
	Size: function(vector_Obb): integer
	Swap: function(vector_Obb, vector_Obb): any
	clear: function(vector_Obb): any
	pop_back: function(vector_Obb): any
	push_back: function(vector_Obb, Obb): any
end


global record vector_Parameter
	AcquireOwnership: function(): any
	At: function(vector_Parameter, Index: integer): Parameter
	AtUnchecked: function(Container: vector_Parameter, Index: integer): Parameter
	Back: function(Container: vector_Parameter): Parameter
	Capacity: function(vector_Parameter): integer
	Clear: function(Container: vector_Parameter): vector_Parameter
	Empty: function(Container: vector_Parameter): boolean
	EraseCheck_VM: function(vector_Parameter, AZ_u64): boolean
	Erase_VM: function(Container: vector_Parameter, Key: AZ_u64): vector_Parameter
	Front: function(Container: vector_Parameter): Parameter
	GetSize: function(Container: vector_Parameter): integer
	HasKey: function(Container: vector_Parameter, Key: AZ_u64): boolean
	Insert: function(Container: vector_Parameter, Index: AZ_u64, Value: Parameter): vector_Parameter
	Iterate_VM: function(vector_Parameter): Iterator_VM_vector_Parameter
	NotEmpty: function(Container: vector_Parameter): boolean
	PushBack: function(vector_Parameter, Parameter): any
	PushBack_VM: function(Container: vector_Parameter, Value: Parameter): vector_Parameter
	ReleaseOwnership: function(): any
	Reserve: function(vector_Parameter, integer): any
	Resize: function(vector_Parameter, integer): any
	Size: function(vector_Parameter): integer
	Swap: function(vector_Parameter, vector_Parameter): any
	clear: function(vector_Parameter): any
	pop_back: function(vector_Parameter): any
	push_back: function(vector_Parameter, Parameter): any
end


global record vector_Plane
	AcquireOwnership: function(): any
	At: function(vector_Plane, Index: integer): Plane
	AtUnchecked: function(Container: vector_Plane, Index: integer): Plane
	Back: function(Container: vector_Plane): Plane
	Capacity: function(vector_Plane): integer
	Clear: function(Container: vector_Plane): vector_Plane
	Empty: function(Container: vector_Plane): boolean
	EraseCheck_VM: function(vector_Plane, AZ_u64): boolean
	Erase_VM: function(Container: vector_Plane, Key: AZ_u64): vector_Plane
	Front: function(Container: vector_Plane): Plane
	GetSize: function(Container: vector_Plane): integer
	HasKey: function(Container: vector_Plane, Key: AZ_u64): boolean
	Insert: function(Container: vector_Plane, Index: AZ_u64, Value: Plane): vector_Plane
	Iterate_VM: function(vector_Plane): Iterator_VM_vector_Plane
	NotEmpty: function(Container: vector_Plane): boolean
	PushBack: function(vector_Plane, Plane): any
	PushBack_VM: function(Container: vector_Plane, Value: Plane): vector_Plane
	ReleaseOwnership: function(): any
	Reserve: function(vector_Plane, integer): any
	Resize: function(vector_Plane, integer): any
	Size: function(vector_Plane): integer
	Swap: function(vector_Plane, vector_Plane): any
	clear: function(vector_Plane): any
	pop_back: function(vector_Plane): any
	push_back: function(vector_Plane, Plane): any
end


global record vector_Quaternion
	AcquireOwnership: function(): any
	At: function(vector_Quaternion, Index: integer): Quaternion
	AtUnchecked: function(Container: vector_Quaternion, Index: integer): Quaternion
	Back: function(Container: vector_Quaternion): Quaternion
	Capacity: function(vector_Quaternion): integer
	Clear: function(Container: vector_Quaternion): vector_Quaternion
	Empty: function(Container: vector_Quaternion): boolean
	EraseCheck_VM: function(vector_Quaternion, AZ_u64): boolean
	Erase_VM: function(Container: vector_Quaternion, Key: AZ_u64): vector_Quaternion
	Front: function(Container: vector_Quaternion): Quaternion
	GetSize: function(Container: vector_Quaternion): integer
	HasKey: function(Container: vector_Quaternion, Key: AZ_u64): boolean
	Insert: function(Container: vector_Quaternion, Index: AZ_u64, Value: Quaternion): vector_Quaternion
	Iterate_VM: function(vector_Quaternion): Iterator_VM_vector_Quaternion
	NotEmpty: function(Container: vector_Quaternion): boolean
	PushBack: function(vector_Quaternion, Quaternion): any
	PushBack_VM: function(Container: vector_Quaternion, Value: Quaternion): vector_Quaternion
	ReleaseOwnership: function(): any
	Reserve: function(vector_Quaternion, integer): any
	Resize: function(vector_Quaternion, integer): any
	Size: function(vector_Quaternion): integer
	Swap: function(vector_Quaternion, vector_Quaternion): any
	clear: function(vector_Quaternion): any
	pop_back: function(vector_Quaternion): any
	push_back: function(vector_Quaternion, Quaternion): any
end


global record vector_SceneAPI_Events_ExportProduct
	AcquireOwnership: function(): any
	At: function(vector_SceneAPI_Events_ExportProduct, Index: integer): SceneAPI_Events_ExportProduct
	AtUnchecked: function(Container: vector_SceneAPI_Events_ExportProduct, Index: integer): SceneAPI_Events_ExportProduct
	Back: function(Container: vector_SceneAPI_Events_ExportProduct): SceneAPI_Events_ExportProduct
	Capacity: function(vector_SceneAPI_Events_ExportProduct): integer
	Clear: function(Container: vector_SceneAPI_Events_ExportProduct): vector_SceneAPI_Events_ExportProduct
	Empty: function(Container: vector_SceneAPI_Events_ExportProduct): boolean
	EraseCheck_VM: function(vector_SceneAPI_Events_ExportProduct, AZ_u64): boolean
	Erase_VM: function(Container: vector_SceneAPI_Events_ExportProduct, Key: AZ_u64): vector_SceneAPI_Events_ExportProduct
	Front: function(Container: vector_SceneAPI_Events_ExportProduct): SceneAPI_Events_ExportProduct
	GetSize: function(Container: vector_SceneAPI_Events_ExportProduct): integer
	HasKey: function(Container: vector_SceneAPI_Events_ExportProduct, Key: AZ_u64): boolean
	Insert: function(Container: vector_SceneAPI_Events_ExportProduct, Index: AZ_u64, Value: SceneAPI_Events_ExportProduct): vector_SceneAPI_Events_ExportProduct
	Iterate_VM: function(vector_SceneAPI_Events_ExportProduct): Iterator_VM_vector_SceneAPI_Events_ExportProduct
	NotEmpty: function(Container: vector_SceneAPI_Events_ExportProduct): boolean
	PushBack: function(vector_SceneAPI_Events_ExportProduct, SceneAPI_Events_ExportProduct): any
	PushBack_VM: function(Container: vector_SceneAPI_Events_ExportProduct, Value: SceneAPI_Events_ExportProduct): vector_SceneAPI_Events_ExportProduct
	ReleaseOwnership: function(): any
	Reserve: function(vector_SceneAPI_Events_ExportProduct, integer): any
	Resize: function(vector_SceneAPI_Events_ExportProduct, integer): any
	Size: function(vector_SceneAPI_Events_ExportProduct): integer
	Swap: function(vector_SceneAPI_Events_ExportProduct, vector_SceneAPI_Events_ExportProduct): any
	clear: function(vector_SceneAPI_Events_ExportProduct): any
	pop_back: function(vector_SceneAPI_Events_ExportProduct): any
	push_back: function(vector_SceneAPI_Events_ExportProduct, SceneAPI_Events_ExportProduct): any
end


global record vector_SceneQueryHit is {SceneQueryHit}
	AcquireOwnership: function(): any
	At: function(vector_SceneQueryHit, Index: integer): SceneQueryHit
	AtUnchecked: function(Container: vector_SceneQueryHit, Index: integer): SceneQueryHit
	Back: function(Container: vector_SceneQueryHit): SceneQueryHit
	Capacity: function(vector_SceneQueryHit): integer
	Clear: function(Container: vector_SceneQueryHit): vector_SceneQueryHit
	Empty: function(Container: vector_SceneQueryHit): boolean
	EraseCheck_VM: function(vector_SceneQueryHit, AZ_u64): boolean
	Erase_VM: function(Container: vector_SceneQueryHit, Key: AZ_u64): vector_SceneQueryHit
	Front: function(Container: vector_SceneQueryHit): SceneQueryHit
	GetSize: function(Container: vector_SceneQueryHit): integer
	HasKey: function(Container: vector_SceneQueryHit, Key: AZ_u64): boolean
	Insert: function(Container: vector_SceneQueryHit, Index: AZ_u64, Value: SceneQueryHit): vector_SceneQueryHit
	Iterate_VM: function(vector_SceneQueryHit): Iterator_VM_vector_SceneQueryHit
	NotEmpty: function(Container: vector_SceneQueryHit): boolean
	PushBack: function(vector_SceneQueryHit, SceneQueryHit): any
	PushBack_VM: function(Container: vector_SceneQueryHit, Value: SceneQueryHit): vector_SceneQueryHit
	ReleaseOwnership: function(): any
	Reserve: function(vector_SceneQueryHit, integer): any
	Resize: function(vector_SceneQueryHit, integer): any
	Size: function(vector_SceneQueryHit): integer
	Swap: function(vector_SceneQueryHit, vector_SceneQueryHit): any
	clear: function(vector_SceneQueryHit): any
	pop_back: function(vector_SceneQueryHit): any
	push_back: function(vector_SceneQueryHit, SceneQueryHit): any
end


global record vector_SurfacePoint
	AcquireOwnership: function(): any
	At: function(vector_SurfacePoint, Index: integer): SurfacePoint
	AtUnchecked: function(Container: vector_SurfacePoint, Index: integer): SurfacePoint
	Back: function(Container: vector_SurfacePoint): SurfacePoint
	Capacity: function(vector_SurfacePoint): integer
	Clear: function(Container: vector_SurfacePoint): vector_SurfacePoint
	Empty: function(Container: vector_SurfacePoint): boolean
	EraseCheck_VM: function(vector_SurfacePoint, AZ_u64): boolean
	Erase_VM: function(Container: vector_SurfacePoint, Key: AZ_u64): vector_SurfacePoint
	Front: function(Container: vector_SurfacePoint): SurfacePoint
	GetSize: function(Container: vector_SurfacePoint): integer
	HasKey: function(Container: vector_SurfacePoint, Key: AZ_u64): boolean
	Insert: function(Container: vector_SurfacePoint, Index: AZ_u64, Value: SurfacePoint): vector_SurfacePoint
	Iterate_VM: function(vector_SurfacePoint): Iterator_VM_vector_SurfacePoint
	NotEmpty: function(Container: vector_SurfacePoint): boolean
	PushBack: function(vector_SurfacePoint, SurfacePoint): any
	PushBack_VM: function(Container: vector_SurfacePoint, Value: SurfacePoint): vector_SurfacePoint
	ReleaseOwnership: function(): any
	Reserve: function(vector_SurfacePoint, integer): any
	Resize: function(vector_SurfacePoint, integer): any
	Size: function(vector_SurfacePoint): integer
	Swap: function(vector_SurfacePoint, vector_SurfacePoint): any
	clear: function(vector_SurfacePoint): any
	pop_back: function(vector_SurfacePoint): any
	push_back: function(vector_SurfacePoint, SurfacePoint): any
end


global record vector_SurfaceTag
	AcquireOwnership: function(): any
	At: function(vector_SurfaceTag, Index: integer): SurfaceTag
	AtUnchecked: function(Container: vector_SurfaceTag, Index: integer): SurfaceTag
	Back: function(Container: vector_SurfaceTag): SurfaceTag
	Capacity: function(vector_SurfaceTag): integer
	Clear: function(Container: vector_SurfaceTag): vector_SurfaceTag
	Empty: function(Container: vector_SurfaceTag): boolean
	EraseCheck_VM: function(vector_SurfaceTag, AZ_u64): boolean
	Erase_VM: function(Container: vector_SurfaceTag, Key: AZ_u64): vector_SurfaceTag
	Front: function(Container: vector_SurfaceTag): SurfaceTag
	GetSize: function(Container: vector_SurfaceTag): integer
	HasKey: function(Container: vector_SurfaceTag, Key: AZ_u64): boolean
	Insert: function(Container: vector_SurfaceTag, Index: AZ_u64, Value: SurfaceTag): vector_SurfaceTag
	Iterate_VM: function(vector_SurfaceTag): Iterator_VM_vector_SurfaceTag
	NotEmpty: function(Container: vector_SurfaceTag): boolean
	PushBack: function(vector_SurfaceTag, SurfaceTag): any
	PushBack_VM: function(Container: vector_SurfaceTag, Value: SurfaceTag): vector_SurfaceTag
	ReleaseOwnership: function(): any
	Reserve: function(vector_SurfaceTag, integer): any
	Resize: function(vector_SurfaceTag, integer): any
	Size: function(vector_SurfaceTag): integer
	Swap: function(vector_SurfaceTag, vector_SurfaceTag): any
	clear: function(vector_SurfaceTag): any
	pop_back: function(vector_SurfaceTag): any
	push_back: function(vector_SurfaceTag, SurfaceTag): any
end


global record vector_Transform
	AcquireOwnership: function(): any
	At: function(vector_Transform, Index: integer): Transform
	AtUnchecked: function(Container: vector_Transform, Index: integer): Transform
	Back: function(Container: vector_Transform): Transform
	Capacity: function(vector_Transform): integer
	Clear: function(Container: vector_Transform): vector_Transform
	Empty: function(Container: vector_Transform): boolean
	EraseCheck_VM: function(vector_Transform, AZ_u64): boolean
	Erase_VM: function(Container: vector_Transform, Key: AZ_u64): vector_Transform
	Front: function(Container: vector_Transform): Transform
	GetSize: function(Container: vector_Transform): integer
	HasKey: function(Container: vector_Transform, Key: AZ_u64): boolean
	Insert: function(Container: vector_Transform, Index: AZ_u64, Value: Transform): vector_Transform
	Iterate_VM: function(vector_Transform): Iterator_VM_vector_Transform
	NotEmpty: function(Container: vector_Transform): boolean
	PushBack: function(vector_Transform, Transform): any
	PushBack_VM: function(Container: vector_Transform, Value: Transform): vector_Transform
	ReleaseOwnership: function(): any
	Reserve: function(vector_Transform, integer): any
	Resize: function(vector_Transform, integer): any
	Size: function(vector_Transform): integer
	Swap: function(vector_Transform, vector_Transform): any
	clear: function(vector_Transform): any
	pop_back: function(vector_Transform): any
	push_back: function(vector_Transform, Transform): any
end


global record vector_Vector2
	AcquireOwnership: function(): any
	At: function(vector_Vector2, Index: integer): Vector2
	AtUnchecked: function(Container: vector_Vector2, Index: integer): Vector2
	Back: function(Container: vector_Vector2): Vector2
	Capacity: function(vector_Vector2): integer
	Clear: function(Container: vector_Vector2): vector_Vector2
	Empty: function(Container: vector_Vector2): boolean
	EraseCheck_VM: function(vector_Vector2, AZ_u64): boolean
	Erase_VM: function(Container: vector_Vector2, Key: AZ_u64): vector_Vector2
	Front: function(Container: vector_Vector2): Vector2
	GetSize: function(Container: vector_Vector2): integer
	HasKey: function(Container: vector_Vector2, Key: AZ_u64): boolean
	Insert: function(Container: vector_Vector2, Index: AZ_u64, Value: Vector2): vector_Vector2
	Iterate_VM: function(vector_Vector2): Iterator_VM_vector_Vector2
	NotEmpty: function(Container: vector_Vector2): boolean
	PushBack: function(vector_Vector2, Vector2): any
	PushBack_VM: function(Container: vector_Vector2, Value: Vector2): vector_Vector2
	ReleaseOwnership: function(): any
	Reserve: function(vector_Vector2, integer): any
	Resize: function(vector_Vector2, integer): any
	Size: function(vector_Vector2): integer
	Swap: function(vector_Vector2, vector_Vector2): any
	clear: function(vector_Vector2): any
	pop_back: function(vector_Vector2): any
	push_back: function(vector_Vector2, Vector2): any
end


global record vector_Vector3
	AcquireOwnership: function(): any
	At: function(vector_Vector3, Index: integer): Vector3
	AtUnchecked: function(Container: vector_Vector3, Index: integer): Vector3
	Back: function(Container: vector_Vector3): Vector3
	Capacity: function(vector_Vector3): integer
	Clear: function(Container: vector_Vector3): vector_Vector3
	Empty: function(Container: vector_Vector3): boolean
	EraseCheck_VM: function(vector_Vector3, AZ_u64): boolean
	Erase_VM: function(Container: vector_Vector3, Key: AZ_u64): vector_Vector3
	Front: function(Container: vector_Vector3): Vector3
	GetSize: function(Container: vector_Vector3): integer
	HasKey: function(Container: vector_Vector3, Key: AZ_u64): boolean
	Insert: function(Container: vector_Vector3, Index: AZ_u64, Value: Vector3): vector_Vector3
	Iterate_VM: function(vector_Vector3): Iterator_VM_vector_Vector3
	NotEmpty: function(Container: vector_Vector3): boolean
	PushBack: function(vector_Vector3, Vector3): any
	PushBack_VM: function(Container: vector_Vector3, Value: Vector3): vector_Vector3
	ReleaseOwnership: function(): any
	Reserve: function(vector_Vector3, integer): any
	Resize: function(vector_Vector3, integer): any
	Size: function(vector_Vector3): integer
	Swap: function(vector_Vector3, vector_Vector3): any
	clear: function(vector_Vector3): any
	pop_back: function(vector_Vector3): any
	push_back: function(vector_Vector3, Vector3): any
end


global record vector_Vector4
	AcquireOwnership: function(): any
	At: function(vector_Vector4, Index: integer): Vector4
	AtUnchecked: function(Container: vector_Vector4, Index: integer): Vector4
	Back: function(Container: vector_Vector4): Vector4
	Capacity: function(vector_Vector4): integer
	Clear: function(Container: vector_Vector4): vector_Vector4
	Empty: function(Container: vector_Vector4): boolean
	EraseCheck_VM: function(vector_Vector4, AZ_u64): boolean
	Erase_VM: function(Container: vector_Vector4, Key: AZ_u64): vector_Vector4
	Front: function(Container: vector_Vector4): Vector4
	GetSize: function(Container: vector_Vector4): integer
	HasKey: function(Container: vector_Vector4, Key: AZ_u64): boolean
	Insert: function(Container: vector_Vector4, Index: AZ_u64, Value: Vector4): vector_Vector4
	Iterate_VM: function(vector_Vector4): Iterator_VM_vector_Vector4
	NotEmpty: function(Container: vector_Vector4): boolean
	PushBack: function(vector_Vector4, Vector4): any
	PushBack_VM: function(Container: vector_Vector4, Value: Vector4): vector_Vector4
	ReleaseOwnership: function(): any
	Reserve: function(vector_Vector4, integer): any
	Resize: function(vector_Vector4, integer): any
	Size: function(vector_Vector4): integer
	Swap: function(vector_Vector4, vector_Vector4): any
	clear: function(vector_Vector4): any
	pop_back: function(vector_Vector4): any
	push_back: function(vector_Vector4, Vector4): any
end


global record vector_VectorN
	AcquireOwnership: function(): any
	At: function(vector_VectorN, Index: integer): VectorN
	AtUnchecked: function(Container: vector_VectorN, Index: integer): VectorN
	Back: function(Container: vector_VectorN): VectorN
	Capacity: function(vector_VectorN): integer
	Clear: function(Container: vector_VectorN): vector_VectorN
	Empty: function(Container: vector_VectorN): boolean
	EraseCheck_VM: function(vector_VectorN, AZ_u64): boolean
	Erase_VM: function(Container: vector_VectorN, Key: AZ_u64): vector_VectorN
	Front: function(Container: vector_VectorN): VectorN
	GetSize: function(Container: vector_VectorN): integer
	HasKey: function(Container: vector_VectorN, Key: AZ_u64): boolean
	Insert: function(Container: vector_VectorN, Index: AZ_u64, Value: VectorN): vector_VectorN
	Iterate_VM: function(vector_VectorN): Iterator_VM_vector_VectorN
	NotEmpty: function(Container: vector_VectorN): boolean
	PushBack: function(vector_VectorN, VectorN): any
	PushBack_VM: function(Container: vector_VectorN, Value: VectorN): vector_VectorN
	ReleaseOwnership: function(): any
	Reserve: function(vector_VectorN, integer): any
	Resize: function(vector_VectorN, integer): any
	Size: function(vector_VectorN): integer
	Swap: function(vector_VectorN, vector_VectorN): any
	clear: function(vector_VectorN): any
	pop_back: function(vector_VectorN): any
	push_back: function(vector_VectorN, VectorN): any
end


global record vector_VisibleGeometry
	AcquireOwnership: function(): any
	At: function(vector_VisibleGeometry, Index: integer): VisibleGeometry
	AtUnchecked: function(Container: vector_VisibleGeometry, Index: integer): VisibleGeometry
	Back: function(Container: vector_VisibleGeometry): VisibleGeometry
	Capacity: function(vector_VisibleGeometry): integer
	Clear: function(Container: vector_VisibleGeometry): vector_VisibleGeometry
	Empty: function(Container: vector_VisibleGeometry): boolean
	EraseCheck_VM: function(vector_VisibleGeometry, AZ_u64): boolean
	Erase_VM: function(Container: vector_VisibleGeometry, Key: AZ_u64): vector_VisibleGeometry
	Front: function(Container: vector_VisibleGeometry): VisibleGeometry
	GetSize: function(Container: vector_VisibleGeometry): integer
	HasKey: function(Container: vector_VisibleGeometry, Key: AZ_u64): boolean
	Insert: function(Container: vector_VisibleGeometry, Index: AZ_u64, Value: VisibleGeometry): vector_VisibleGeometry
	Iterate_VM: function(vector_VisibleGeometry): Iterator_VM_vector_VisibleGeometry
	NotEmpty: function(Container: vector_VisibleGeometry): boolean
	PushBack: function(vector_VisibleGeometry, VisibleGeometry): any
	PushBack_VM: function(Container: vector_VisibleGeometry, Value: VisibleGeometry): vector_VisibleGeometry
	ReleaseOwnership: function(): any
	Reserve: function(vector_VisibleGeometry, integer): any
	Resize: function(vector_VisibleGeometry, integer): any
	Size: function(vector_VisibleGeometry): integer
	Swap: function(vector_VisibleGeometry, vector_VisibleGeometry): any
	clear: function(vector_VisibleGeometry): any
	pop_back: function(vector_VisibleGeometry): any
	push_back: function(vector_VisibleGeometry, VisibleGeometry): any
end


global record vector_WhiteBox_Api_FaceVertHandles
	AcquireOwnership: function(): any
	At: function(vector_WhiteBox_Api_FaceVertHandles, Index: integer): WhiteBox_Api_FaceVertHandles
	AtUnchecked: function(Container: vector_WhiteBox_Api_FaceVertHandles, Index: integer): WhiteBox_Api_FaceVertHandles
	Back: function(Container: vector_WhiteBox_Api_FaceVertHandles): WhiteBox_Api_FaceVertHandles
	Capacity: function(vector_WhiteBox_Api_FaceVertHandles): integer
	Clear: function(Container: vector_WhiteBox_Api_FaceVertHandles): vector_WhiteBox_Api_FaceVertHandles
	Empty: function(Container: vector_WhiteBox_Api_FaceVertHandles): boolean
	EraseCheck_VM: function(vector_WhiteBox_Api_FaceVertHandles, AZ_u64): boolean
	Erase_VM: function(Container: vector_WhiteBox_Api_FaceVertHandles, Key: AZ_u64): vector_WhiteBox_Api_FaceVertHandles
	Front: function(Container: vector_WhiteBox_Api_FaceVertHandles): WhiteBox_Api_FaceVertHandles
	GetSize: function(Container: vector_WhiteBox_Api_FaceVertHandles): integer
	HasKey: function(Container: vector_WhiteBox_Api_FaceVertHandles, Key: AZ_u64): boolean
	Insert: function(Container: vector_WhiteBox_Api_FaceVertHandles, Index: AZ_u64, Value: WhiteBox_Api_FaceVertHandles): vector_WhiteBox_Api_FaceVertHandles
	Iterate_VM: function(vector_WhiteBox_Api_FaceVertHandles): Iterator_VM_vector_WhiteBox_Api_FaceVertHandles
	NotEmpty: function(Container: vector_WhiteBox_Api_FaceVertHandles): boolean
	PushBack: function(vector_WhiteBox_Api_FaceVertHandles, WhiteBox_Api_FaceVertHandles): any
	PushBack_VM: function(Container: vector_WhiteBox_Api_FaceVertHandles, Value: WhiteBox_Api_FaceVertHandles): vector_WhiteBox_Api_FaceVertHandles
	ReleaseOwnership: function(): any
	Reserve: function(vector_WhiteBox_Api_FaceVertHandles, integer): any
	Resize: function(vector_WhiteBox_Api_FaceVertHandles, integer): any
	Size: function(vector_WhiteBox_Api_FaceVertHandles): integer
	Swap: function(vector_WhiteBox_Api_FaceVertHandles, vector_WhiteBox_Api_FaceVertHandles): any
	clear: function(vector_WhiteBox_Api_FaceVertHandles): any
	pop_back: function(vector_WhiteBox_Api_FaceVertHandles): any
	push_back: function(vector_WhiteBox_Api_FaceVertHandles, WhiteBox_Api_FaceVertHandles): any
end


global record vector_WhiteBox_Api_PolygonHandle
	AcquireOwnership: function(): any
	At: function(vector_WhiteBox_Api_PolygonHandle, Index: integer): WhiteBox_Api_PolygonHandle
	AtUnchecked: function(Container: vector_WhiteBox_Api_PolygonHandle, Index: integer): WhiteBox_Api_PolygonHandle
	Back: function(Container: vector_WhiteBox_Api_PolygonHandle): WhiteBox_Api_PolygonHandle
	Capacity: function(vector_WhiteBox_Api_PolygonHandle): integer
	Clear: function(Container: vector_WhiteBox_Api_PolygonHandle): vector_WhiteBox_Api_PolygonHandle
	Empty: function(Container: vector_WhiteBox_Api_PolygonHandle): boolean
	EraseCheck_VM: function(vector_WhiteBox_Api_PolygonHandle, AZ_u64): boolean
	Erase_VM: function(Container: vector_WhiteBox_Api_PolygonHandle, Key: AZ_u64): vector_WhiteBox_Api_PolygonHandle
	Front: function(Container: vector_WhiteBox_Api_PolygonHandle): WhiteBox_Api_PolygonHandle
	GetSize: function(Container: vector_WhiteBox_Api_PolygonHandle): integer
	HasKey: function(Container: vector_WhiteBox_Api_PolygonHandle, Key: AZ_u64): boolean
	Insert: function(Container: vector_WhiteBox_Api_PolygonHandle, Index: AZ_u64, Value: WhiteBox_Api_PolygonHandle): vector_WhiteBox_Api_PolygonHandle
	Iterate_VM: function(vector_WhiteBox_Api_PolygonHandle): Iterator_VM_vector_WhiteBox_Api_PolygonHandle
	NotEmpty: function(Container: vector_WhiteBox_Api_PolygonHandle): boolean
	PushBack: function(vector_WhiteBox_Api_PolygonHandle, WhiteBox_Api_PolygonHandle): any
	PushBack_VM: function(Container: vector_WhiteBox_Api_PolygonHandle, Value: WhiteBox_Api_PolygonHandle): vector_WhiteBox_Api_PolygonHandle
	ReleaseOwnership: function(): any
	Reserve: function(vector_WhiteBox_Api_PolygonHandle, integer): any
	Resize: function(vector_WhiteBox_Api_PolygonHandle, integer): any
	Size: function(vector_WhiteBox_Api_PolygonHandle): integer
	Swap: function(vector_WhiteBox_Api_PolygonHandle, vector_WhiteBox_Api_PolygonHandle): any
	clear: function(vector_WhiteBox_Api_PolygonHandle): any
	pop_back: function(vector_WhiteBox_Api_PolygonHandle): any
	push_back: function(vector_WhiteBox_Api_PolygonHandle, WhiteBox_Api_PolygonHandle): any
end


global record vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	AcquireOwnership: function(): any
	At: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, Index: integer): WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	AtUnchecked: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, Index: integer): WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	Back: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	Capacity: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): integer
	Clear: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	Empty: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): boolean
	EraseCheck_VM: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, AZ_u64): boolean
	Erase_VM: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, Key: AZ_u64): vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	Front: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	GetSize: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): integer
	HasKey: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, Key: AZ_u64): boolean
	Insert: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, Index: AZ_u64, Value: WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	Iterate_VM: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	NotEmpty: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): boolean
	PushBack: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): any
	PushBack_VM: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, Value: WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag
	ReleaseOwnership: function(): any
	Reserve: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, integer): any
	Resize: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, integer): any
	Size: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): integer
	Swap: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): any
	clear: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): any
	pop_back: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): any
	push_back: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag, WhiteBox_GenericHandle_WhiteBox_Api_EdgeHandleTag): any
end


global record vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	AcquireOwnership: function(): any
	At: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, Index: integer): WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	AtUnchecked: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, Index: integer): WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	Back: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	Capacity: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): integer
	Clear: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	Empty: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): boolean
	EraseCheck_VM: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, AZ_u64): boolean
	Erase_VM: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, Key: AZ_u64): vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	Front: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	GetSize: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): integer
	HasKey: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, Key: AZ_u64): boolean
	Insert: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, Index: AZ_u64, Value: WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	Iterate_VM: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	NotEmpty: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): boolean
	PushBack: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): any
	PushBack_VM: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, Value: WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag
	ReleaseOwnership: function(): any
	Reserve: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, integer): any
	Resize: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, integer): any
	Size: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): integer
	Swap: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): any
	clear: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): any
	pop_back: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): any
	push_back: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag, WhiteBox_GenericHandle_WhiteBox_Api_FaceHandleTag): any
end


global record vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	AcquireOwnership: function(): any
	At: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, Index: integer): WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	AtUnchecked: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, Index: integer): WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	Back: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	Capacity: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): integer
	Clear: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	Empty: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): boolean
	EraseCheck_VM: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, AZ_u64): boolean
	Erase_VM: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, Key: AZ_u64): vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	Front: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	GetSize: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): integer
	HasKey: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, Key: AZ_u64): boolean
	Insert: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, Index: AZ_u64, Value: WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	Iterate_VM: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): Iterator_VM_vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	NotEmpty: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): boolean
	PushBack: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): any
	PushBack_VM: function(Container: vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, Value: WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag
	ReleaseOwnership: function(): any
	Reserve: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, integer): any
	Resize: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, integer): any
	Size: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): integer
	Swap: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): any
	clear: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): any
	pop_back: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): any
	push_back: function(vector_WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag, WhiteBox_GenericHandle_WhiteBox_Api_VertexHandleTag): any
end


global record vector_any
	AcquireOwnership: function(): any
	At: function(vector_any, Index: integer): any
	AtUnchecked: function(Container: vector_any, Index: integer): any
	Back: function(Container: vector_any): any
	Capacity: function(vector_any): integer
	Clear: function(Container: vector_any): vector_any
	Empty: function(Container: vector_any): boolean
	EraseCheck_VM: function(vector_any, AZ_u64): boolean
	Erase_VM: function(Container: vector_any, Key: AZ_u64): vector_any
	Front: function(Container: vector_any): any
	GetSize: function(Container: vector_any): integer
	HasKey: function(Container: vector_any, Key: AZ_u64): boolean
	Insert: function(Container: vector_any, Index: AZ_u64, Value: any): vector_any
	Iterate_VM: function(vector_any): Iterator_VM_vector_any
	NotEmpty: function(Container: vector_any): boolean
	PushBack: function(vector_any, any): any
	PushBack_VM: function(Container: vector_any, Value: any): vector_any
	ReleaseOwnership: function(): any
	Reserve: function(vector_any, integer): any
	Resize: function(vector_any, integer): any
	Size: function(vector_any): integer
	Swap: function(vector_any, vector_any): any
	clear: function(vector_any): any
	pop_back: function(vector_any): any
	push_back: function(vector_any, any): any
end


global record vector_basic_string_char_char_traits_char
	AcquireOwnership: function(): any
	At: function(vector_basic_string_char_char_traits_char, Index: integer): string
	AtUnchecked: function(Container: vector_basic_string_char_char_traits_char, Index: integer): string
	Back: function(Container: vector_basic_string_char_char_traits_char): string
	Capacity: function(vector_basic_string_char_char_traits_char): integer
	Clear: function(Container: vector_basic_string_char_char_traits_char): vector_basic_string_char_char_traits_char
	Empty: function(Container: vector_basic_string_char_char_traits_char): boolean
	EraseCheck_VM: function(vector_basic_string_char_char_traits_char, AZ_u64): boolean
	Erase_VM: function(Container: vector_basic_string_char_char_traits_char, Key: AZ_u64): vector_basic_string_char_char_traits_char
	Front: function(Container: vector_basic_string_char_char_traits_char): string
	GetSize: function(Container: vector_basic_string_char_char_traits_char): integer
	HasKey: function(Container: vector_basic_string_char_char_traits_char, Key: AZ_u64): boolean
	Insert: function(Container: vector_basic_string_char_char_traits_char, Index: AZ_u64, Value: string): vector_basic_string_char_char_traits_char
	Iterate_VM: function(vector_basic_string_char_char_traits_char): Iterator_VM_vector_basic_string_char_char_traits_char
	NotEmpty: function(Container: vector_basic_string_char_char_traits_char): boolean
	PushBack: function(vector_basic_string_char_char_traits_char, string): any
	PushBack_VM: function(Container: vector_basic_string_char_char_traits_char, Value: string): vector_basic_string_char_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(vector_basic_string_char_char_traits_char, integer): any
	Resize: function(vector_basic_string_char_char_traits_char, integer): any
	Size: function(vector_basic_string_char_char_traits_char): integer
	Swap: function(vector_basic_string_char_char_traits_char, vector_basic_string_char_char_traits_char): any
	clear: function(vector_basic_string_char_char_traits_char): any
	pop_back: function(vector_basic_string_char_char_traits_char): any
	push_back: function(vector_basic_string_char_char_traits_char, string): any
end


global record vector_bool
	AcquireOwnership: function(): any
	At: function(vector_bool, Index: integer): boolean
	AtUnchecked: function(Container: vector_bool, Index: integer): boolean
	Back: function(Container: vector_bool): boolean
	Capacity: function(vector_bool): integer
	Clear: function(Container: vector_bool): vector_bool
	Empty: function(Container: vector_bool): boolean
	EraseCheck_VM: function(vector_bool, AZ_u64): boolean
	Erase_VM: function(Container: vector_bool, Key: AZ_u64): vector_bool
	Front: function(Container: vector_bool): boolean
	GetSize: function(Container: vector_bool): integer
	HasKey: function(Container: vector_bool, Key: AZ_u64): boolean
	Insert: function(Container: vector_bool, Index: AZ_u64, Value: boolean): vector_bool
	Iterate_VM: function(vector_bool): Iterator_VM_vector_bool
	NotEmpty: function(Container: vector_bool): boolean
	PushBack: function(vector_bool, boolean): any
	PushBack_VM: function(Container: vector_bool, Value: boolean): vector_bool
	ReleaseOwnership: function(): any
	Reserve: function(vector_bool, integer): any
	Resize: function(vector_bool, integer): any
	Size: function(vector_bool): integer
	Swap: function(vector_bool, vector_bool): any
	clear: function(vector_bool): any
	pop_back: function(vector_bool): any
	push_back: function(vector_bool, boolean): any
end


global record vector_char
	AcquireOwnership: function(): any
	At: function(vector_char, Index: integer): string
	AtUnchecked: function(Container: vector_char, Index: integer): string
	Back: function(Container: vector_char): string
	Capacity: function(vector_char): integer
	Clear: function(Container: vector_char): vector_char
	Empty: function(Container: vector_char): boolean
	EraseCheck_VM: function(vector_char, AZ_u64): boolean
	Erase_VM: function(Container: vector_char, Key: AZ_u64): vector_char
	Front: function(Container: vector_char): string
	GetSize: function(Container: vector_char): integer
	HasKey: function(Container: vector_char, Key: AZ_u64): boolean
	Insert: function(Container: vector_char, Index: AZ_u64, Value: string): vector_char
	Iterate_VM: function(vector_char): Iterator_VM_vector_char
	NotEmpty: function(Container: vector_char): boolean
	PushBack: function(vector_char, string): any
	PushBack_VM: function(Container: vector_char, Value: string): vector_char
	ReleaseOwnership: function(): any
	Reserve: function(vector_char, integer): any
	Resize: function(vector_char, integer): any
	Size: function(vector_char): integer
	Swap: function(vector_char, vector_char): any
	clear: function(vector_char): any
	pop_back: function(vector_char): any
	push_back: function(vector_char, string): any
end


global record vector_charconstPtr
	AcquireOwnership: function(): any
	At: function(vector_char, Index: integer): string
	AtUnchecked: function(Container: vector_char, Index: integer): string
	Back: function(Container: vector_char): string
	Capacity: function(vector_char): integer
	Clear: function(Container: vector_char): vector_char
	Empty: function(Container: vector_char): boolean
	EraseCheck_VM: function(vector_char, AZ_u64): boolean
	Erase_VM: function(Container: vector_char, Key: AZ_u64): vector_char
	Front: function(Container: vector_char): string
	GetSize: function(Container: vector_char): integer
	HasKey: function(Container: vector_char, Key: AZ_u64): boolean
	Insert: function(Container: vector_char, Index: AZ_u64, Value: string): vector_char
	Iterate_VM: function(vector_char): Iterator_VM_vector_char
	NotEmpty: function(Container: vector_char): boolean
	PushBack: function(vector_char, string): any
	PushBack_VM: function(Container: vector_char, Value: string): vector_char
	ReleaseOwnership: function(): any
	Reserve: function(vector_char, integer): any
	Resize: function(vector_char, integer): any
	Size: function(vector_char): integer
	Swap: function(vector_char, vector_char): any
	clear: function(vector_char): any
	pop_back: function(vector_char): any
	push_back: function(vector_char, string): any
end


global record vector_double
	AcquireOwnership: function(): any
	At: function(vector_double, Index: integer): number
	AtUnchecked: function(Container: vector_double, Index: integer): number
	Back: function(Container: vector_double): number
	Capacity: function(vector_double): integer
	Clear: function(Container: vector_double): vector_double
	Empty: function(Container: vector_double): boolean
	EraseCheck_VM: function(vector_double, AZ_u64): boolean
	Erase_VM: function(Container: vector_double, Key: AZ_u64): vector_double
	Front: function(Container: vector_double): number
	GetSize: function(Container: vector_double): integer
	HasKey: function(Container: vector_double, Key: AZ_u64): boolean
	Insert: function(Container: vector_double, Index: AZ_u64, Value: number): vector_double
	Iterate_VM: function(vector_double): Iterator_VM_vector_double
	NotEmpty: function(Container: vector_double): boolean
	PushBack: function(vector_double, number): any
	PushBack_VM: function(Container: vector_double, Value: number): vector_double
	ReleaseOwnership: function(): any
	Reserve: function(vector_double, integer): any
	Resize: function(vector_double, integer): any
	Size: function(vector_double): integer
	Swap: function(vector_double, vector_double): any
	clear: function(vector_double): any
	pop_back: function(vector_double): any
	push_back: function(vector_double, number): any
end


global record vector_fixed_string_char_1024_char_traits_char
	AcquireOwnership: function(): any
	At: function(vector_fixed_string_char_1024_char_traits_char, Index: integer): fixed_string_char_1024_char_traits_char
	AtUnchecked: function(Container: vector_fixed_string_char_1024_char_traits_char, Index: integer): fixed_string_char_1024_char_traits_char
	Back: function(Container: vector_fixed_string_char_1024_char_traits_char): fixed_string_char_1024_char_traits_char
	Capacity: function(vector_fixed_string_char_1024_char_traits_char): integer
	Clear: function(Container: vector_fixed_string_char_1024_char_traits_char): vector_fixed_string_char_1024_char_traits_char
	Empty: function(Container: vector_fixed_string_char_1024_char_traits_char): boolean
	EraseCheck_VM: function(vector_fixed_string_char_1024_char_traits_char, AZ_u64): boolean
	Erase_VM: function(Container: vector_fixed_string_char_1024_char_traits_char, Key: AZ_u64): vector_fixed_string_char_1024_char_traits_char
	Front: function(Container: vector_fixed_string_char_1024_char_traits_char): fixed_string_char_1024_char_traits_char
	GetSize: function(Container: vector_fixed_string_char_1024_char_traits_char): integer
	HasKey: function(Container: vector_fixed_string_char_1024_char_traits_char, Key: AZ_u64): boolean
	Insert: function(Container: vector_fixed_string_char_1024_char_traits_char, Index: AZ_u64, Value: fixed_string_char_1024_char_traits_char): vector_fixed_string_char_1024_char_traits_char
	Iterate_VM: function(vector_fixed_string_char_1024_char_traits_char): Iterator_VM_vector_fixed_string_char_1024_char_traits_char
	NotEmpty: function(Container: vector_fixed_string_char_1024_char_traits_char): boolean
	PushBack: function(vector_fixed_string_char_1024_char_traits_char, fixed_string_char_1024_char_traits_char): any
	PushBack_VM: function(Container: vector_fixed_string_char_1024_char_traits_char, Value: fixed_string_char_1024_char_traits_char): vector_fixed_string_char_1024_char_traits_char
	ReleaseOwnership: function(): any
	Reserve: function(vector_fixed_string_char_1024_char_traits_char, integer): any
	Resize: function(vector_fixed_string_char_1024_char_traits_char, integer): any
	Size: function(vector_fixed_string_char_1024_char_traits_char): integer
	Swap: function(vector_fixed_string_char_1024_char_traits_char, vector_fixed_string_char_1024_char_traits_char): any
	clear: function(vector_fixed_string_char_1024_char_traits_char): any
	pop_back: function(vector_fixed_string_char_1024_char_traits_char): any
	push_back: function(vector_fixed_string_char_1024_char_traits_char, fixed_string_char_1024_char_traits_char): any
end


global record vector_float
	AcquireOwnership: function(): any
	At: function(vector_float, Index: integer): number
	AtUnchecked: function(Container: vector_float, Index: integer): number
	Back: function(Container: vector_float): number
	Capacity: function(vector_float): integer
	Clear: function(Container: vector_float): vector_float
	Empty: function(Container: vector_float): boolean
	EraseCheck_VM: function(vector_float, AZ_u64): boolean
	Erase_VM: function(Container: vector_float, Key: AZ_u64): vector_float
	Front: function(Container: vector_float): number
	GetSize: function(Container: vector_float): integer
	HasKey: function(Container: vector_float, Key: AZ_u64): boolean
	Insert: function(Container: vector_float, Index: AZ_u64, Value: number): vector_float
	Iterate_VM: function(vector_float): Iterator_VM_vector_float
	NotEmpty: function(Container: vector_float): boolean
	PushBack: function(vector_float, number): any
	PushBack_VM: function(Container: vector_float, Value: number): vector_float
	ReleaseOwnership: function(): any
	Reserve: function(vector_float, integer): any
	Resize: function(vector_float, integer): any
	Size: function(vector_float): integer
	Swap: function(vector_float, vector_float): any
	clear: function(vector_float): any
	pop_back: function(vector_float): any
	push_back: function(vector_float, number): any
end


global record vector_int
	AcquireOwnership: function(): any
	At: function(vector_int, Index: integer): integer
	AtUnchecked: function(Container: vector_int, Index: integer): integer
	Back: function(Container: vector_int): integer
	Capacity: function(vector_int): integer
	Clear: function(Container: vector_int): vector_int
	Empty: function(Container: vector_int): boolean
	EraseCheck_VM: function(vector_int, AZ_u64): boolean
	Erase_VM: function(Container: vector_int, Key: AZ_u64): vector_int
	Front: function(Container: vector_int): integer
	GetSize: function(Container: vector_int): integer
	HasKey: function(Container: vector_int, Key: AZ_u64): boolean
	Insert: function(Container: vector_int, Index: AZ_u64, Value: integer): vector_int
	Iterate_VM: function(vector_int): Iterator_VM_vector_int
	NotEmpty: function(Container: vector_int): boolean
	PushBack: function(vector_int, integer): any
	PushBack_VM: function(Container: vector_int, Value: integer): vector_int
	ReleaseOwnership: function(): any
	Reserve: function(vector_int, integer): any
	Resize: function(vector_int, integer): any
	Size: function(vector_int): integer
	Swap: function(vector_int, vector_int): any
	clear: function(vector_int): any
	pop_back: function(vector_int): any
	push_back: function(vector_int, integer): any
end


global record vector_pair_basic_string_char_char_traits_char__int
	AcquireOwnership: function(): any
	At: function(vector_pair_basic_string_char_char_traits_char__int, Index: integer): pair_basic_string_char_char_traits_char__int
	AtUnchecked: function(Container: vector_pair_basic_string_char_char_traits_char__int, Index: integer): pair_basic_string_char_char_traits_char__int
	Back: function(Container: vector_pair_basic_string_char_char_traits_char__int): pair_basic_string_char_char_traits_char__int
	Capacity: function(vector_pair_basic_string_char_char_traits_char__int): integer
	Clear: function(Container: vector_pair_basic_string_char_char_traits_char__int): vector_pair_basic_string_char_char_traits_char__int
	Empty: function(Container: vector_pair_basic_string_char_char_traits_char__int): boolean
	EraseCheck_VM: function(vector_pair_basic_string_char_char_traits_char__int, AZ_u64): boolean
	Erase_VM: function(Container: vector_pair_basic_string_char_char_traits_char__int, Key: AZ_u64): vector_pair_basic_string_char_char_traits_char__int
	Front: function(Container: vector_pair_basic_string_char_char_traits_char__int): pair_basic_string_char_char_traits_char__int
	GetSize: function(Container: vector_pair_basic_string_char_char_traits_char__int): integer
	HasKey: function(Container: vector_pair_basic_string_char_char_traits_char__int, Key: AZ_u64): boolean
	Insert: function(Container: vector_pair_basic_string_char_char_traits_char__int, Index: AZ_u64, Value: pair_basic_string_char_char_traits_char__int): vector_pair_basic_string_char_char_traits_char__int
	Iterate_VM: function(vector_pair_basic_string_char_char_traits_char__int): Iterator_VM_vector_pair_basic_string_char_char_traits_char__int
	NotEmpty: function(Container: vector_pair_basic_string_char_char_traits_char__int): boolean
	PushBack: function(vector_pair_basic_string_char_char_traits_char__int, pair_basic_string_char_char_traits_char__int): any
	PushBack_VM: function(Container: vector_pair_basic_string_char_char_traits_char__int, Value: pair_basic_string_char_char_traits_char__int): vector_pair_basic_string_char_char_traits_char__int
	ReleaseOwnership: function(): any
	Reserve: function(vector_pair_basic_string_char_char_traits_char__int, integer): any
	Resize: function(vector_pair_basic_string_char_char_traits_char__int, integer): any
	Size: function(vector_pair_basic_string_char_char_traits_char__int): integer
	Swap: function(vector_pair_basic_string_char_char_traits_char__int, vector_pair_basic_string_char_char_traits_char__int): any
	clear: function(vector_pair_basic_string_char_char_traits_char__int): any
	pop_back: function(vector_pair_basic_string_char_char_traits_char__int): any
	push_back: function(vector_pair_basic_string_char_char_traits_char__int, pair_basic_string_char_char_traits_char__int): any
end


global record vector_shared_ptr_Connection
	AcquireOwnership: function(): any
	At: function(vector_shared_ptr_Connection, Index: integer): shared_ptr_Connection
	AtUnchecked: function(Container: vector_shared_ptr_Connection, Index: integer): shared_ptr_Connection
	Back: function(Container: vector_shared_ptr_Connection): shared_ptr_Connection
	Capacity: function(vector_shared_ptr_Connection): integer
	Clear: function(Container: vector_shared_ptr_Connection): vector_shared_ptr_Connection
	Empty: function(Container: vector_shared_ptr_Connection): boolean
	EraseCheck_VM: function(vector_shared_ptr_Connection, AZ_u64): boolean
	Erase_VM: function(Container: vector_shared_ptr_Connection, Key: AZ_u64): vector_shared_ptr_Connection
	Front: function(Container: vector_shared_ptr_Connection): shared_ptr_Connection
	GetSize: function(Container: vector_shared_ptr_Connection): integer
	HasKey: function(Container: vector_shared_ptr_Connection, Key: AZ_u64): boolean
	Insert: function(Container: vector_shared_ptr_Connection, Index: AZ_u64, Value: shared_ptr_Connection): vector_shared_ptr_Connection
	Iterate_VM: function(vector_shared_ptr_Connection): Iterator_VM_vector_shared_ptr_Connection
	NotEmpty: function(Container: vector_shared_ptr_Connection): boolean
	PushBack: function(vector_shared_ptr_Connection, shared_ptr_Connection): any
	PushBack_VM: function(Container: vector_shared_ptr_Connection, Value: shared_ptr_Connection): vector_shared_ptr_Connection
	ReleaseOwnership: function(): any
	Reserve: function(vector_shared_ptr_Connection, integer): any
	Resize: function(vector_shared_ptr_Connection, integer): any
	Size: function(vector_shared_ptr_Connection): integer
	Swap: function(vector_shared_ptr_Connection, vector_shared_ptr_Connection): any
	clear: function(vector_shared_ptr_Connection): any
	pop_back: function(vector_shared_ptr_Connection): any
	push_back: function(vector_shared_ptr_Connection, shared_ptr_Connection): any
end


global record vector_shared_ptr_DataType
	AcquireOwnership: function(): any
	At: function(vector_shared_ptr_DataType, Index: integer): shared_ptr_DataType
	AtUnchecked: function(Container: vector_shared_ptr_DataType, Index: integer): shared_ptr_DataType
	Back: function(Container: vector_shared_ptr_DataType): shared_ptr_DataType
	Capacity: function(vector_shared_ptr_DataType): integer
	Clear: function(Container: vector_shared_ptr_DataType): vector_shared_ptr_DataType
	Empty: function(Container: vector_shared_ptr_DataType): boolean
	EraseCheck_VM: function(vector_shared_ptr_DataType, AZ_u64): boolean
	Erase_VM: function(Container: vector_shared_ptr_DataType, Key: AZ_u64): vector_shared_ptr_DataType
	Front: function(Container: vector_shared_ptr_DataType): shared_ptr_DataType
	GetSize: function(Container: vector_shared_ptr_DataType): integer
	HasKey: function(Container: vector_shared_ptr_DataType, Key: AZ_u64): boolean
	Insert: function(Container: vector_shared_ptr_DataType, Index: AZ_u64, Value: shared_ptr_DataType): vector_shared_ptr_DataType
	Iterate_VM: function(vector_shared_ptr_DataType): Iterator_VM_vector_shared_ptr_DataType
	NotEmpty: function(Container: vector_shared_ptr_DataType): boolean
	PushBack: function(vector_shared_ptr_DataType, shared_ptr_DataType): any
	PushBack_VM: function(Container: vector_shared_ptr_DataType, Value: shared_ptr_DataType): vector_shared_ptr_DataType
	ReleaseOwnership: function(): any
	Reserve: function(vector_shared_ptr_DataType, integer): any
	Resize: function(vector_shared_ptr_DataType, integer): any
	Size: function(vector_shared_ptr_DataType): integer
	Swap: function(vector_shared_ptr_DataType, vector_shared_ptr_DataType): any
	clear: function(vector_shared_ptr_DataType): any
	pop_back: function(vector_shared_ptr_DataType): any
	push_back: function(vector_shared_ptr_DataType, shared_ptr_DataType): any
end


global record vector_shared_ptr_Node
	AcquireOwnership: function(): any
	At: function(vector_shared_ptr_Node, Index: integer): shared_ptr_Node
	AtUnchecked: function(Container: vector_shared_ptr_Node, Index: integer): shared_ptr_Node
	Back: function(Container: vector_shared_ptr_Node): shared_ptr_Node
	Capacity: function(vector_shared_ptr_Node): integer
	Clear: function(Container: vector_shared_ptr_Node): vector_shared_ptr_Node
	Empty: function(Container: vector_shared_ptr_Node): boolean
	EraseCheck_VM: function(vector_shared_ptr_Node, AZ_u64): boolean
	Erase_VM: function(Container: vector_shared_ptr_Node, Key: AZ_u64): vector_shared_ptr_Node
	Front: function(Container: vector_shared_ptr_Node): shared_ptr_Node
	GetSize: function(Container: vector_shared_ptr_Node): integer
	HasKey: function(Container: vector_shared_ptr_Node, Key: AZ_u64): boolean
	Insert: function(Container: vector_shared_ptr_Node, Index: AZ_u64, Value: shared_ptr_Node): vector_shared_ptr_Node
	Iterate_VM: function(vector_shared_ptr_Node): Iterator_VM_vector_shared_ptr_Node
	NotEmpty: function(Container: vector_shared_ptr_Node): boolean
	PushBack: function(vector_shared_ptr_Node, shared_ptr_Node): any
	PushBack_VM: function(Container: vector_shared_ptr_Node, Value: shared_ptr_Node): vector_shared_ptr_Node
	ReleaseOwnership: function(): any
	Reserve: function(vector_shared_ptr_Node, integer): any
	Resize: function(vector_shared_ptr_Node, integer): any
	Size: function(vector_shared_ptr_Node): integer
	Swap: function(vector_shared_ptr_Node, vector_shared_ptr_Node): any
	clear: function(vector_shared_ptr_Node): any
	pop_back: function(vector_shared_ptr_Node): any
	push_back: function(vector_shared_ptr_Node, shared_ptr_Node): any
end


global record vector_shared_ptr_SlotDefinitionconst
	AcquireOwnership: function(): any
	At: function(vector_shared_ptr_SlotDefinitionconst, Index: integer): shared_ptr_SlotDefinitionconst
	AtUnchecked: function(Container: vector_shared_ptr_SlotDefinitionconst, Index: integer): shared_ptr_SlotDefinitionconst
	Back: function(Container: vector_shared_ptr_SlotDefinitionconst): shared_ptr_SlotDefinitionconst
	Capacity: function(vector_shared_ptr_SlotDefinitionconst): integer
	Clear: function(Container: vector_shared_ptr_SlotDefinitionconst): vector_shared_ptr_SlotDefinitionconst
	Empty: function(Container: vector_shared_ptr_SlotDefinitionconst): boolean
	EraseCheck_VM: function(vector_shared_ptr_SlotDefinitionconst, AZ_u64): boolean
	Erase_VM: function(Container: vector_shared_ptr_SlotDefinitionconst, Key: AZ_u64): vector_shared_ptr_SlotDefinitionconst
	Front: function(Container: vector_shared_ptr_SlotDefinitionconst): shared_ptr_SlotDefinitionconst
	GetSize: function(Container: vector_shared_ptr_SlotDefinitionconst): integer
	HasKey: function(Container: vector_shared_ptr_SlotDefinitionconst, Key: AZ_u64): boolean
	Insert: function(Container: vector_shared_ptr_SlotDefinitionconst, Index: AZ_u64, Value: shared_ptr_SlotDefinitionconst): vector_shared_ptr_SlotDefinitionconst
	Iterate_VM: function(vector_shared_ptr_SlotDefinitionconst): Iterator_VM_vector_shared_ptr_SlotDefinitionconst
	NotEmpty: function(Container: vector_shared_ptr_SlotDefinitionconst): boolean
	PushBack: function(vector_shared_ptr_SlotDefinitionconst, shared_ptr_SlotDefinitionconst): any
	PushBack_VM: function(Container: vector_shared_ptr_SlotDefinitionconst, Value: shared_ptr_SlotDefinitionconst): vector_shared_ptr_SlotDefinitionconst
	ReleaseOwnership: function(): any
	Reserve: function(vector_shared_ptr_SlotDefinitionconst, integer): any
	Resize: function(vector_shared_ptr_SlotDefinitionconst, integer): any
	Size: function(vector_shared_ptr_SlotDefinitionconst): integer
	Swap: function(vector_shared_ptr_SlotDefinitionconst, vector_shared_ptr_SlotDefinitionconst): any
	clear: function(vector_shared_ptr_SlotDefinitionconst): any
	pop_back: function(vector_shared_ptr_SlotDefinitionconst): any
	push_back: function(vector_shared_ptr_SlotDefinitionconst, shared_ptr_SlotDefinitionconst): any
end


global record vector_unsignedint
	AcquireOwnership: function(): any
	At: function(vector_unsignedint, Index: integer): integer
	AtUnchecked: function(Container: vector_unsignedint, Index: integer): integer
	Back: function(Container: vector_unsignedint): integer
	Capacity: function(vector_unsignedint): integer
	Clear: function(Container: vector_unsignedint): vector_unsignedint
	Empty: function(Container: vector_unsignedint): boolean
	EraseCheck_VM: function(vector_unsignedint, AZ_u64): boolean
	Erase_VM: function(Container: vector_unsignedint, Key: AZ_u64): vector_unsignedint
	Front: function(Container: vector_unsignedint): integer
	GetSize: function(Container: vector_unsignedint): integer
	HasKey: function(Container: vector_unsignedint, Key: AZ_u64): boolean
	Insert: function(Container: vector_unsignedint, Index: AZ_u64, Value: integer): vector_unsignedint
	Iterate_VM: function(vector_unsignedint): Iterator_VM_vector_unsignedint
	NotEmpty: function(Container: vector_unsignedint): boolean
	PushBack: function(vector_unsignedint, integer): any
	PushBack_VM: function(Container: vector_unsignedint, Value: integer): vector_unsignedint
	ReleaseOwnership: function(): any
	Reserve: function(vector_unsignedint, integer): any
	Resize: function(vector_unsignedint, integer): any
	Size: function(vector_unsignedint): integer
	Swap: function(vector_unsignedint, vector_unsignedint): any
	clear: function(vector_unsignedint): any
	pop_back: function(vector_unsignedint): any
	push_back: function(vector_unsignedint, integer): any
end


--[[ ========  Global Properties ========== ]]--
global AddressMode_Border: any
global AddressMode_Clamp: any
global AddressMode_Mirror: any
global AddressMode_MirrorOnce: any
global AddressMode_Wrap: any
global AreaLightComponentTypeId: any
global AudioObstructionType_Ignore: any
global AudioObstructionType_MultiRay: any
global AudioObstructionType_SingleRay: any
global AudioPreloadComponentLoadType_Auto: any
global AudioPreloadComponentLoadType_Manual: any
global AxisAlignedBoxShapeComponentTypeId: any
global BlendFactor_AlphaDest: any
global BlendFactor_AlphaDestInverse: any
global BlendFactor_AlphaSource: any
global BlendFactor_AlphaSource1: any
global BlendFactor_AlphaSource1Inverse: any
global BlendFactor_AlphaSourceInverse: any
global BlendFactor_AlphaSourceSaturate: any
global BlendFactor_ColorDest: any
global BlendFactor_ColorDestInverse: any
global BlendFactor_ColorSource: any
global BlendFactor_ColorSource1: any
global BlendFactor_ColorSource1Inverse: any
global BlendFactor_ColorSourceInverse: any
global BlendFactor_Factor: any
global BlendFactor_FactorInverse: any
global BlendFactor_Invalid: any
global BlendFactor_One: any
global BlendFactor_Zero: any
global BlendOp_Add: any
global BlendOp_Invalid: any
global BlendOp_Maximum: any
global BlendOp_Minimum: any
global BlendOp_Subtract: any
global BlendOp_SubtractReverse: any
global BloomComponentTypeId: any
global BorderColor_OpaqueBlack: any
global BorderColor_OpaqueWhite: any
global BorderColor_TransparentBlack: any
global BoxShapeComponentTypeId: any
global CUBE: any
global CYLINDER: any
global CapsuleShapeComponentTypeId: any
global ChromaticAberrationComponentTypeId: any
global ComparisonFunc_Always: any
global ComparisonFunc_Equal: any
global ComparisonFunc_Greater: any
global ComparisonFunc_GreaterEqual: any
global ComparisonFunc_Invalid: any
global ComparisonFunc_Less: any
global ComparisonFunc_LessEqual: any
global ComparisonFunc_Never: any
global ComparisonFunc_NotEqual: any
global ConstantGradientComponentTypeId: any
global CubeMapCaptureComponentTypeId: any
global CullMode_Back: any
global CullMode_Front: any
global CullMode_Invalid: any
global CullMode_None: any
global CylinderShapeComponentTypeId: any
global DecalComponentTypeId: any
global DefaultLodOverride: any
global DefaultLodType: any
global DefaultMaterialAssignment: any
global DefaultMaterialAssignmentId: any
global DefaultMaterialAssignmentMap: any
global DefaultPhysicsSceneId: any
global DefaultPhysicsSceneName: string
global DeferredFogComponentTypeId: any
global DepthOfFieldComponentTypeId: any
global DepthWriteMask_All: any
global DepthWriteMask_Invalid: any
global DepthWriteMask_Zero: any
global DiffuseGlobalIlluminationComponentTypeId: any
global DiffuseProbeGridComponentTypeId: any
global DirectionalLightComponentTypeId: any
global DiskShapeComponentTypeId: any
global DisplayMapperComponentTypeId: any
global DisplayMapperOperationType_Aces: any
global DisplayMapperOperationType_AcesFilmic: any
global DisplayMapperOperationType_AcesFitted: any
global DisplayMapperOperationType_AcesLut: any
global DisplayMapperOperationType_Filmic: any
global DisplayMapperOperationType_GammaSRGB: any
global DisplayMapperOperationType_Passthrough: any
global DisplayMapperOperationType_Reinhard: any
global DisplaySettings_HideHelpers: any
global DisplaySettings_HideLinks: any
global DisplaySettings_HideTracks: any
global DisplaySettings_NoCollision: any
global DisplaySettings_NoLabels: any
global DisplaySettings_Physics: any
global DisplaySettings_SerializableFlagsMask: any
global DisplaySettings_ShowDimensionFigures: any
global DitherGradientComponentTypeId: any
global EditorAreaLightComponentTypeId: any
global EditorBloomComponentTypeId: any
global EditorChromaticAberrationComponentTypeId: any
global EditorCubeMapCaptureComponentTypeId: any
global EditorDecalComponentTypeId: any
global EditorDeferredFogComponentTypeId: any
global EditorDepthOfFieldComponentTypeId: any
global EditorDiffuseGlobalIlluminationComponentTypeId: any
global EditorDiffuseProbeGridComponentTypeId: any
global EditorDirectionalLightComponentTypeId: any
global EditorDisplayMapperComponentTypeId: any
global EditorEntityReferenceComponentTypeId: any
global EditorEntityStartStatus_EditorOnly: any
global EditorEntityStartStatus_StartActive: any
global EditorEntityStartStatus_StartInactive: any
global EditorExposureControlComponentTypeId: any
global EditorFilmGrainComponentTypeId: any
global EditorGradientWeightModifierComponentTypeId: any
global EditorGridComponentTypeId: any
global EditorHDRiSkyboxComponentTypeId: any
global EditorImageBasedLightComponentTypeId: any
global EditorLookModificationComponentTypeId: any
global EditorMaterialComponentTypeId: any
global EditorMeshComponentTypeId: any
global EditorMotionBlurComponentTypeId: any
global EditorNonUniformScaleComponentTypeId: any
global EditorOcclusionCullingPlaneComponentTypeId: any
global EditorPaniniProjectionComponentTypeId: any
global EditorPhysicalSkyComponentTypeId: any
global EditorPhysicsSceneId: any
global EditorPhysicsSceneName: any
global EditorPostFxLayerComponentTypeId: any
global EditorPrefabComponentTypeId: any
global EditorRadiusWeightModifierComponentTypeId: any
global EditorReflectionProbeComponentTypeId: any
global EditorShapeWeightModifierComponentTypeId: any
global EditorSpecularReflectionsComponentTypeId: any
global EditorSsaoComponentTypeId: any
global EditorTransformComponentTypeId: any
global EditorVignetteComponentTypeId: any
global EditorWhiteBalanceComponentTypeId: any
global EntityReferenceComponentTypeId: any
global ExposureControlComponentTypeId: any
global FillMode_Invalid: any
global FillMode_Solid: any
global FillMode_Wireframe: any
global FilmGrainComponentTypeId: any
global FilterMode_Linear: any
global FilterMode_Point: any
global FloatEpsilon: any
global FrameCaptureResult_FileWriteError: any
global FrameCaptureResult_InternalError: any
global FrameCaptureResult_InvalidArgument: any
global FrameCaptureResult_None: any
global FrameCaptureResult_Success: any
global FrameCaptureResult_UnsupportedFormat: any
global GradientSurfaceDataComponentTypeId: any
global GradientTransformComponentTypeId: any
global GradientWeightModifierComponentTypeId: any
global GridComponentTypeId: any
global HDRiSkyboxComponentTypeId: any
global ICOSAHEDRON: any
global ImageBasedLightComponentTypeId: any
global ImageGradientComponentTypeId: any
global InvalidComponentId: any
global InvalidParameterIndex: any
global InvalidTemplateId: any
global InvertGradientComponentTypeId: any
global JsonMergePatch: any
global JsonPatch: any
global LANDSCAPE_CANVAS_EDITOR_ID: any
global LevelsGradientComponentTypeId: any
global LightAttenuationRadiusMode_Automatic: any
global LightAttenuationRadiusMode_Explicit: any
global LookModificationComponentTypeId: any
global MaterialComponentTypeId: any
global MaterialPropertyGroupVisibility_Enabled: any
global MaterialPropertyGroupVisibility_Hidden: any
global MaterialPropertyVisibility_Disabled: any
global MaterialPropertyVisibility_Enabled: any
global MaterialPropertyVisibility_Hidden: any
global MeshComponentTypeId: any
global MiniAudioListenerComponentTypeId: any
global MiniAudioPlaybackComponentTypeId: any
global MixedGradientComponentTypeId: any
global MotionBlurComponentTypeId: any
global MultiPositionBehaviorType_Blended: any
global MultiPositionBehaviorType_Separate: any
global OcclusionCullingPlaneComponentTypeId: any
global PaniniProjectionComponentTypeId: any
global PerlinGradientComponentTypeId: any
global PhotometricUnit_Candela: any
global PhotometricUnit_Ev100_Illuminance: any
global PhotometricUnit_Ev100_Luminance: any
global PhotometricUnit_Lumen: any
global PhotometricUnit_Lux: any
global PhotometricUnit_Nit: any
global PhotometricUnit_Unknown: any
global PhysicalSkyComponentTypeId: any
global PostFxLayerComponentTypeId: any
global PosterizeGradientComponentTypeId: any
global QuadShapeComponentTypeId: any
global RadiusWeightModifierComponentTypeId: any
global RandomGradientComponentTypeId: any
global ReductionType_Comparison: any
global ReductionType_Filter: any
global ReductionType_Maximum: any
global ReductionType_Minimum: any
global ReferenceGradientComponentTypeId: any
global ReferenceShapeComponentTypeId: any
global ReflectionProbeComponentTypeId: any
global RenderDebugComponentTypeId: any
global RenderDebugEditorComponentTypeId: any
global SPHERE: any
global ShadowFilterMethod_ESM: any
global ShadowFilterMethod_ESM_PCF: any
global ShadowFilterMethod_None: any
global ShadowFilterMethod_PCF: any
global ShadowmapSize_1024: any
global ShadowmapSize_2045: any
global ShadowmapSize_256: any
global ShadowmapSize_512: any
global ShadowmapSize_None: any
global ShapeAreaFalloffGradientComponentTypeId: any
global ShapeChangeReasons_ShapeChanged: any
global ShapeChangeReasons_TransformChanged: any
global ShapeType_Box: any
global ShapeType_Cylinder: any
global ShapeType_Heightfield: any
global ShapeType_PhysicsAsset: any
global ShapeType_Sphere: any
global ShapeWeightModifierComponentTypeId: any
global SmoothStepGradientComponentTypeId: any
global SpecularReflectionsComponentTypeId: any
global SphereShapeComponentTypeId: any
global SsaoComponentTypeId: any
global StencilOp_Decrement: any
global StencilOp_DecrementSaturate: any
global StencilOp_Increment: any
global StencilOp_IncrementSaturate: any
global StencilOp_Invalid: any
global StencilOp_Invert: any
global StencilOp_Keep: any
global StencilOp_Replace: any
global StencilOp_Zero: any
global SurfaceAltitudeGradientComponentTypeId: any
global SurfaceMaskGradientComponentTypeId: any
global SurfaceSlopeGradientComponentTypeId: any
global SystemConfigPlatform_Android: any
global SystemConfigPlatform_InvalidPlatform: any
global SystemConfigPlatform_Ios: any
global SystemConfigPlatform_Mac: any
global SystemConfigPlatform_OsxMetal: any
global SystemConfigPlatform_Pc: any
global SystemConfigPlatform_Provo: any
global SystemEntityId: any
global TETRAHEDRON: any
global ThresholdGradientComponentTypeId: any
global TransformComponentTypeId: any
global TransformMode_Rotation: any
global TransformMode_Scale: any
global TransformMode_Translation: any
global TransformPivot_Center: any
global TransformPivot_Object: any
global TransformRefreshType_All: any
global TransformRefreshType_Orientation: any
global TransformRefreshType_Translation: any
global TubeShapeComponentTypeId: any
global UiLayoutCellUnspecifiedSize: any
global VignetteComponentTypeId: any
global WhiteBalanceComponentTypeId: any
global eSSB_GotoEndTime: any
global eSSB_GotoStartTime: any
global eSSB_LeaveTime: any
global eUiAnimationEvent_Aborted: any
global eUiAnimationEvent_Started: any
global eUiAnimationEvent_Stopped: any
global eUiAnimationEvent_Updated: any
global eUiDragState_Invalid: any
global eUiDragState_Normal: any
global eUiDragState_Valid: any
global eUiDropState_Invalid: any
global eUiDropState_Normal: any
global eUiDropState_Valid: any
global eUiEmitShape_Circle: any
global eUiEmitShape_Point: any
global eUiEmitShape_Quad: any
global eUiFillCornerOrigin_BottomLeft: any
global eUiFillCornerOrigin_BottomRight: any
global eUiFillCornerOrigin_TopLeft: any
global eUiFillCornerOrigin_TopRight: any
global eUiFillEdgeOrigin_Bottom: any
global eUiFillEdgeOrigin_Left: any
global eUiFillEdgeOrigin_Right: any
global eUiFillEdgeOrigin_Top: any
global eUiFillType_Linear: any
global eUiFillType_None: any
global eUiFillType_Radial: any
global eUiFillType_RadialCorner: any
global eUiFillType_RadialEdge: any
global eUiFlipbookAnimationFramerateUnits_FPS: any
global eUiFlipbookAnimationFramerateUnits_SecondsPerFrame: any
global eUiFlipbookAnimationLoopType_Linear: any
global eUiFlipbookAnimationLoopType_None: any
global eUiFlipbookAnimationLoopType_PingPong: any
global eUiHAlign_Center: any
global eUiHAlign_Left: any
global eUiHAlign_Right: any
global eUiHorizontalOrder_LeftToRight: any
global eUiHorizontalOrder_RightToLeft: any
global eUiImageSequenceImageType_Fixed: any
global eUiImageSequenceImageType_Stretched: any
global eUiImageSequenceImageType_StretchedToFill: any
global eUiImageSequenceImageType_StretchedToFit: any
global eUiImageType_Fixed: any
global eUiImageType_Sliced: any
global eUiImageType_Stretched: any
global eUiImageType_StretchedToFill: any
global eUiImageType_StretchedToFit: any
global eUiImageType_Tiled: any
global eUiInteractableState_Disabled: any
global eUiInteractableState_Hover: any
global eUiInteractableState_Normal: any
global eUiInteractableState_Pressed: any
global eUiLayoutGridStartingDirection_HorizontalOrder: any
global eUiLayoutGridStartingDirection_VerticalOrder: any
global eUiNavigationMode_Automatic: any
global eUiNavigationMode_Custom: any
global eUiNavigationMode_None: any
global eUiParticleCoordinateType_Cartesian: any
global eUiParticleCoordinateType_Polar: any
global eUiParticleInitialDirectionType_RelativeToEmitAngle: any
global eUiParticleInitialDirectionType_RelativeToEmitterCenter: any
global eUiScaleToDeviceMode_NonUniformScale: any
global eUiScaleToDeviceMode_None: any
global eUiScaleToDeviceMode_ScaleXOnly: any
global eUiScaleToDeviceMode_ScaleYOnly: any
global eUiScaleToDeviceMode_UniformScaleToFill: any
global eUiScaleToDeviceMode_UniformScaleToFit: any
global eUiScaleToDeviceMode_UniformScaleToFitX: any
global eUiScaleToDeviceMode_UniformScaleToFitY: any
global eUiScrollBoxScrollBarVisibility_AlwaysShow: any
global eUiScrollBoxScrollBarVisibility_AutoHide: any
global eUiScrollBoxScrollBarVisibility_AutoHideAndResizeViewport: any
global eUiScrollBoxSnapMode_Children: any
global eUiScrollBoxSnapMode_Grid: any
global eUiScrollBoxSnapMode_None: any
global eUiScrollerOrientation_Horizontal: any
global eUiScrollerOrientation_Vertical: any
global eUiSpriteType_RenderTarget: any
global eUiSpriteType_SpriteAsset: any
global eUiTextOverflowMode_ClipText: any
global eUiTextOverflowMode_Ellipsis: any
global eUiTextOverflowMode_OverflowText: any
global eUiTextShrinkToFit_None: any
global eUiTextShrinkToFit_Uniform: any
global eUiTextShrinkToFit_WidthOnly: any
global eUiTextWrapTextSetting_NoWrap: any
global eUiTextWrapTextSetting_Wrap: any
global eUiTooltipDisplayAutoPositionMode_OffsetFromElement: any
global eUiTooltipDisplayAutoPositionMode_OffsetFromMouse: any
global eUiTooltipDisplayTriggerMode_OnClick: any
global eUiTooltipDisplayTriggerMode_OnHover: any
global eUiTooltipDisplayTriggerMode_OnPress: any
global eUiVAlign_Bottom: any
global eUiVAlign_Center: any
global eUiVAlign_Top: any
global eUiVerticalOrder_BottomToTop: any
global eUiVerticalOrder_TopToBottom: any
global g_ProfilerSystem: any
global g_SettingsRegistry: any


--[[ ========  Global Functions ========== ]]--
global AddNonUniformScaleComponent: function(EntityId, Vector3): any
global CreateBoxCastRequest: function(Vector3, Transform, Vector3, number, AzPhysics_SceneQuery_QueryType, CollisionGroup): ShapeCastRequest
global CreateBoxOverlapRequest: function(Vector3, Transform): OverlapRequest
global CreateCapsuleCastRequest: function(number, number, Transform, Vector3, number, AzPhysics_SceneQuery_QueryType, CollisionGroup): ShapeCastRequest
global CreateCapsuleOverlapRequest: function(number, number, Transform): OverlapRequest
global CreateSphereCastRequest: function(number, Transform, Vector3, number, AzPhysics_SceneQuery_QueryType, CollisionGroup): ShapeCastRequest
global CreateSphereOverlapRequest: function(number, Transform): OverlapRequest
global Error: function(string): any
global GetPhysicsSystem: function(): PhysicsSystemInterface
global LoadTemplate: function(string): AZ_u64
global Print: function(string): any
global ReflectAssetPhysicsMaterialAsset: function(Asset_Physics_MaterialAsset): any
global SaveShaderVariantListSourceData: function(string, AZ_RPI_ShaderVariantListSourceData): boolean
global SaveTemplateToString: function(AZ_u64): string
global ScriptCanvasPhysics_WorldFunctions_BoxCastWithGroup: function(Distance: number, Pose: Transform, Direction: Vector3, Dimensions: Vector3, Collision, Group: string, Ignore: EntityId): tuple_bool_Vector3_Vector3_float_EntityId_Crc32
global ScriptCanvasPhysics_WorldFunctions_CapsuleCastWithGroup: function(Distance: number, Pose: Transform, Direction: Vector3, Height: number, Radius: number, Collision, Group: string, Ignore: EntityId): tuple_bool_Vector3_Vector3_float_EntityId_Crc32
global ScriptCanvasPhysics_WorldFunctions_OverlapBoxWithGroup: function(Pose: Transform, Dimensions: Vector3, Collision, Group: string, Ignore: EntityId): tuple_bool_vector_EntityId
global ScriptCanvasPhysics_WorldFunctions_OverlapCapsuleWithGroup: function(Pose: Transform, Height: number, Radius: number, Collision, Group: string, Ignore: EntityId): tuple_bool_vector_EntityId
global ScriptCanvasPhysics_WorldFunctions_OverlapSphereWithGroup: function(Position: Vector3, Radius: number, Collision, Group: string, Ignore: EntityId): tuple_bool_vector_EntityId
global ScriptCanvasPhysics_WorldFunctions_RayCastFromScreenWithGroup: function(Screen, Position: Vector2, Distance: number, Collision, Group: string, Ignore: EntityId): tuple_bool_Vector3_Vector3_float_EntityId_Crc32
global ScriptCanvasPhysics_WorldFunctions_RayCastLocalSpaceWithGroup: function(Source: EntityId, Direction: Vector3, Distance: number, Collision, Group: string, Ignore: EntityId): tuple_bool_Vector3_Vector3_float_EntityId_Crc32
global ScriptCanvasPhysics_WorldFunctions_RayCastMultipleLocalSpaceWithGroup: function(Source: EntityId, Direction: Vector3, Distance: number, Collision, Group: string, Ignore: EntityId): vector_SceneQueryHit
global ScriptCanvasPhysics_WorldFunctions_RayCastWorldSpaceWithGroup: function(Start: Vector3, Direction: Vector3, Distance: number, Collision, Group: string, Ignore: EntityId): tuple_bool_Vector3_Vector3_float_EntityId_Crc32
global ScriptCanvasPhysics_WorldFunctions_SphereCastWithGroup: function(Distance: number, Pose: Transform, Direction: Vector3, Radius: number, Collision, Group: string, Ignore: EntityId): tuple_bool_Vector3_Vector3_float_EntityId_Crc32
global ScriptCanvas_AABBFunctions_AddAABB: function(A: Aabb, B: Aabb): Aabb
global ScriptCanvas_AABBFunctions_AddPoint: function(Source: Aabb, Point: Vector3): Aabb
global ScriptCanvas_AABBFunctions_ApplyTransform: function(Source: Aabb, Transform: Transform): Aabb
global ScriptCanvas_AABBFunctions_Center: function(Source: Aabb): Vector3
global ScriptCanvas_AABBFunctions_Clamp: function(Source: Aabb, Clamp: Aabb): Aabb
global ScriptCanvas_AABBFunctions_ContainsAABB: function(Source: Aabb, Candidate: Aabb): boolean
global ScriptCanvas_AABBFunctions_ContainsVector3: function(Source: Aabb, Candidate: Vector3): boolean
global ScriptCanvas_AABBFunctions_Distance: function(Source: Aabb, Point: Vector3): number
global ScriptCanvas_AABBFunctions_Expand: function(Source: Aabb, Delta: Vector3): Aabb
global ScriptCanvas_AABBFunctions_Extents: function(Source: Aabb): Vector3
global ScriptCanvas_AABBFunctions_FromCenterHalfExtents: function(Center: Vector3, HalfExtents: Vector3): Aabb
global ScriptCanvas_AABBFunctions_FromCenterRadius: function(Center: Vector3, Radius: number): Aabb
global ScriptCanvas_AABBFunctions_FromMinMax: function(Min: Vector3, Max: Vector3): Aabb
global ScriptCanvas_AABBFunctions_FromOBB: function(Source: Obb): Aabb
global ScriptCanvas_AABBFunctions_FromPoint: function(Source: Vector3): Aabb
global ScriptCanvas_AABBFunctions_GetMax: function(Source: Aabb): Vector3
global ScriptCanvas_AABBFunctions_GetMin: function(Source: Aabb): Vector3
global ScriptCanvas_AABBFunctions_IsFinite: function(Source: Aabb): boolean
global ScriptCanvas_AABBFunctions_IsValid: function(Source: Aabb): boolean
global ScriptCanvas_AABBFunctions_Null: function(): Aabb
global ScriptCanvas_AABBFunctions_Overlaps: function(A: Aabb, B: Aabb): boolean
global ScriptCanvas_AABBFunctions_SurfaceArea: function(Source: Aabb): number
global ScriptCanvas_AABBFunctions_ToSphere: function(Source: Aabb): tuple_Vector3_double
global ScriptCanvas_AABBFunctions_Translate: function(Source: Aabb, Translation: Vector3): Aabb
global ScriptCanvas_AABBFunctions_XExtent: function(Source: Aabb): number
global ScriptCanvas_AABBFunctions_YExtent: function(Source: Aabb): number
global ScriptCanvas_AABBFunctions_ZExtent: function(Source: Aabb): number
global ScriptCanvas_CRCFunctions_FromString: function(Value: string): Crc32
global ScriptCanvas_ColorFunctions_Dot: function(A: Color, B: Color): number
global ScriptCanvas_ColorFunctions_Dot3: function(A: Color, B: Color): number
global ScriptCanvas_ColorFunctions_FromValues: function(R: number, G: number, B: number, A: number): Color
global ScriptCanvas_ColorFunctions_FromVector3: function(Source: Vector3): Color
global ScriptCanvas_ColorFunctions_FromVector3AndNumber: function(RGB: Vector3, A: number): Color
global ScriptCanvas_ColorFunctions_GammaToLinear: function(Source: Color): Color
global ScriptCanvas_ColorFunctions_IsClose: function(A: Color, B: Color, Tolerance: number): boolean
global ScriptCanvas_ColorFunctions_IsZero: function(Source: Color, Tolerance: number): boolean
global ScriptCanvas_ColorFunctions_LinearToGamma: function(Source: Color): Color
global ScriptCanvas_ColorFunctions_MultiplyByNumber: function(Source: Color, Multiplier: number): Color
global ScriptCanvas_ColorFunctions_One: function(): Color
global ScriptCanvas_EntityFunctions_GetEntityForward: function(EntityId: EntityId, Scale: number): Vector3
global ScriptCanvas_EntityFunctions_GetEntityRight: function(EntityId: EntityId, Scale: number): Vector3
global ScriptCanvas_EntityFunctions_GetEntityUp: function(EntityId: EntityId, Scale: number): Vector3
global ScriptCanvas_EntityFunctions_IsActive: function(EntityId: EntityId): boolean
global ScriptCanvas_EntityFunctions_IsValid: function(EntityId: EntityId): boolean
global ScriptCanvas_EntityFunctions_Rotate: function(EntityId: EntityId, Euler, Angles: Vector3): any
global ScriptCanvas_EntityFunctions_ToString: function(EntityId: EntityId): string
global ScriptCanvas_MathFunctions_MultiplyAndAdd: function(Multiplicand: number, Multiplier: number, Addend: number): number
global ScriptCanvas_MathFunctions_StringToNumber: function(Value: string): number
global ScriptCanvas_MathRandoms_RandomColor: function(MinValue: Color, MaxValue: Color): Color
global ScriptCanvas_MathRandoms_RandomGrayscale: function(MinValue: number, MaxValue: number): Color
global ScriptCanvas_MathRandoms_RandomInteger: function(MinValue: number, MaxValue: number): number
global ScriptCanvas_MathRandoms_RandomNumber: function(MinValue: number, MaxValue: number): number
global ScriptCanvas_MathRandoms_RandomPointInArc: function(Origin: Vector3, Direction: Vector3, Normal: Vector3, Radius: number, Angle: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointInBox: function(Dimensions: Vector3): Vector3
global ScriptCanvas_MathRandoms_RandomPointInCircle: function(Radius: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointInCone: function(Radius: number, Angle: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointInCylinder: function(Radius: number, Height: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointInEllipsoid: function(Dimensions: Vector3): Vector3
global ScriptCanvas_MathRandoms_RandomPointInSphere: function(Radius: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointInSquare: function(Dimensions: Vector2): Vector3
global ScriptCanvas_MathRandoms_RandomPointInWedge: function(Origin: Vector3, Direction: Vector3, Normal: Vector3, Radius: number, Height: number, Angle: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointOnCircle: function(Radius: number): Vector3
global ScriptCanvas_MathRandoms_RandomPointOnSphere: function(Radius: number): Vector3
global ScriptCanvas_MathRandoms_RandomQuaternion: function(MinValue: number, MaxValue: number): Quaternion
global ScriptCanvas_MathRandoms_RandomUnitVector2: function(): Vector2
global ScriptCanvas_MathRandoms_RandomUnitVector3: function(): Vector3
global ScriptCanvas_MathRandoms_RandomVector2: function(MinValue: Vector2, MaxValue: Vector2): Vector2
global ScriptCanvas_MathRandoms_RandomVector3: function(MinValue: Vector3, MaxValue: Vector3): Vector3
global ScriptCanvas_MathRandoms_RandomVector4: function(MinValue: Vector4, MaxValue: Vector4): Vector4
global ScriptCanvas_Matrix3x3Functions_FromColumns: function(Column1: Vector3, Column2: Vector3, Column3: Vector3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromCrossProduct: function(Source: Vector3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromDiagonal: function(Source: Vector3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromMatrix4x4: function(Source: Matrix4x4): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromQuaternion: function(Source: Quaternion): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromRotationXDegrees: function(Degrees: number): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromRotationYDegrees: function(Degrees: number): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromRotationZDegrees: function(Degrees: number): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromRows: function(Row1: Vector3, Row2: Vector3, Row3: Vector3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromScale: function(Scale: Vector3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_FromTransform: function(Transform: Transform): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_GetColumn: function(Source: Matrix3x3, Column: number): Vector3
global ScriptCanvas_Matrix3x3Functions_GetColumns: function(Source: Matrix3x3): tuple_Vector3_Vector3_Vector3
global ScriptCanvas_Matrix3x3Functions_GetDiagonal: function(Source: Matrix3x3): Vector3
global ScriptCanvas_Matrix3x3Functions_GetElement: function(Source: Matrix3x3, Row: number, Column: number): number
global ScriptCanvas_Matrix3x3Functions_GetRow: function(Source: Matrix3x3, Row: number): Vector3
global ScriptCanvas_Matrix3x3Functions_GetRows: function(Source: Matrix3x3): tuple_Vector3_Vector3_Vector3
global ScriptCanvas_Matrix3x3Functions_Invert: function(Source: Matrix3x3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_IsClose: function(A: Matrix3x3, B: Matrix3x3, Tolerance: number): boolean
global ScriptCanvas_Matrix3x3Functions_IsFinite: function(Source: Matrix3x3): boolean
global ScriptCanvas_Matrix3x3Functions_IsOrthogonal: function(Source: Matrix3x3): boolean
global ScriptCanvas_Matrix3x3Functions_MultiplyByNumber: function(Source: Matrix3x3, Multiplier: number): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_MultiplyByVector: function(Source: Matrix3x3, Vector: Vector3): Vector3
global ScriptCanvas_Matrix3x3Functions_Orthogonalize: function(Source: Matrix3x3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_ToAdjugate: function(Source: Matrix3x3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_ToDeterminant: function(Source: Matrix3x3): number
global ScriptCanvas_Matrix3x3Functions_ToScale: function(Source: Matrix3x3): Vector3
global ScriptCanvas_Matrix3x3Functions_Transpose: function(Source: Matrix3x3): Matrix3x3
global ScriptCanvas_Matrix3x3Functions_Zero: function(): Matrix3x3
global ScriptCanvas_Matrix4x4Functions_FromColumns: function(Column1: Vector4, Column2: Vector4, Column3: Vector4, Column4: Vector4): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromDiagonal: function(Source: Vector4): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromMatrix3x3: function(Source: Matrix3x3): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromQuaternion: function(Source: Quaternion): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromQuaternionAndTranslation: function(Rotation: Quaternion, Translation: Vector3): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromRotationXDegrees: function(Degrees: number): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromRotationYDegrees: function(Degrees: number): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromRotationZDegrees: function(Degrees: number): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromRows: function(Row1: Vector4, Row2: Vector4, Row3: Vector4, Row4: Vector4): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromScale: function(Scale: Vector3): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromTransform: function(Transform: Transform): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_FromTranslation: function(Source: Vector3): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_GetColumn: function(Source: Matrix4x4, Column: number): Vector4
global ScriptCanvas_Matrix4x4Functions_GetColumns: function(Source: Matrix4x4): tuple_Vector4_Vector4_Vector4_Vector4
global ScriptCanvas_Matrix4x4Functions_GetDiagonal: function(Source: Matrix4x4): Vector4
global ScriptCanvas_Matrix4x4Functions_GetElement: function(Source: Matrix4x4, Row: number, Column: number): number
global ScriptCanvas_Matrix4x4Functions_GetRow: function(Source: Matrix4x4, Row: number): Vector4
global ScriptCanvas_Matrix4x4Functions_GetRows: function(Source: Matrix4x4): tuple_Vector4_Vector4_Vector4_Vector4
global ScriptCanvas_Matrix4x4Functions_GetTranslation: function(Source: Matrix4x4): Vector3
global ScriptCanvas_Matrix4x4Functions_Invert: function(Source: Matrix4x4): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_IsClose: function(A: Matrix4x4, B: Matrix4x4, Tolerance: number): boolean
global ScriptCanvas_Matrix4x4Functions_IsFinite: function(Source: Matrix4x4): boolean
global ScriptCanvas_Matrix4x4Functions_MultiplyByVector: function(Source: Matrix4x4, Vector: Vector4): Vector4
global ScriptCanvas_Matrix4x4Functions_ToScale: function(Source: Matrix4x4): Vector3
global ScriptCanvas_Matrix4x4Functions_Transpose: function(Source: Matrix4x4): Matrix4x4
global ScriptCanvas_Matrix4x4Functions_Zero: function(): Matrix4x4
global ScriptCanvas_MatrixMxNFunctions_GetColumnCount: function(Column: MatrixMxN): number
global ScriptCanvas_MatrixMxNFunctions_GetElement: function(Source: MatrixMxN, Row: number, Column: number): number
global ScriptCanvas_MatrixMxNFunctions_GetRowCount: function(Source: MatrixMxN): number
global ScriptCanvas_MatrixMxNFunctions_LeftMultiplyByVector: function(Matrix: VectorN, Vector: MatrixMxN): VectorN
global ScriptCanvas_MatrixMxNFunctions_MultiplyByMatrix: function(Matrix1: MatrixMxN, Matrix2: MatrixMxN): MatrixMxN
global ScriptCanvas_MatrixMxNFunctions_OuterProduct: function(Vector1: VectorN, Vector2: VectorN): MatrixMxN
global ScriptCanvas_MatrixMxNFunctions_Random: function(Rows: number, Columns: number): MatrixMxN
global ScriptCanvas_MatrixMxNFunctions_RightMultiplyByVector: function(Vector: MatrixMxN, Matrix: VectorN): VectorN
global ScriptCanvas_MatrixMxNFunctions_Transpose: function(Source: MatrixMxN): MatrixMxN
global ScriptCanvas_MatrixMxNFunctions_Zero: function(Rows: number, Columns: number): MatrixMxN
global ScriptCanvas_OBBFunctions_FromAabb: function(Source: Aabb): Obb
global ScriptCanvas_OBBFunctions_FromPositionRotationAndHalfLengths: function(Position: Vector3, Rotation: Quaternion, HalfLengths: Vector3): Obb
global ScriptCanvas_OBBFunctions_GetAxisX: function(Source: Obb): Vector3
global ScriptCanvas_OBBFunctions_GetAxisY: function(Source: Obb): Vector3
global ScriptCanvas_OBBFunctions_GetAxisZ: function(Source: Obb): Vector3
global ScriptCanvas_OBBFunctions_GetPosition: function(Source: Obb): Vector3
global ScriptCanvas_OBBFunctions_IsFinite: function(Source: Obb): boolean
global ScriptCanvas_PlaneFunctions_DistanceToPoint: function(Source: Plane, Point: Vector3): number
global ScriptCanvas_PlaneFunctions_FromCoefficients: function(A: number, B: number, C: number, D: number): Plane
global ScriptCanvas_PlaneFunctions_FromNormalAndDistance: function(Normal: Vector3, Distance: number): Plane
global ScriptCanvas_PlaneFunctions_FromNormalAndPoint: function(Normal: Vector3, Point: Vector3): Plane
global ScriptCanvas_PlaneFunctions_GetDistance: function(Source: Plane): number
global ScriptCanvas_PlaneFunctions_GetNormal: function(Source: Plane): Vector3
global ScriptCanvas_PlaneFunctions_GetPlaneEquationCoefficients: function(Source: Plane): tuple_double_double_double_double
global ScriptCanvas_PlaneFunctions_IsFinite: function(Source: Plane): boolean
global ScriptCanvas_PlaneFunctions_Project: function(Source: Plane, Point: Vector3): Vector3
global ScriptCanvas_PlaneFunctions_Transform: function(Source: Plane, Transform: Transform): Plane
global ScriptCanvas_QuaternionFunctions_Conjugate: function(Source: Quaternion): Quaternion
global ScriptCanvas_QuaternionFunctions_ConvertTransformToRotation: function(Transform: Transform): Quaternion
global ScriptCanvas_QuaternionFunctions_CreateFromEulerAngles: function(Pitch: number, Roll: number, Yaw: number): Quaternion
global ScriptCanvas_QuaternionFunctions_CreateFromValues: function(x: number, y: number, z: number, w: number): Quaternion
global ScriptCanvas_QuaternionFunctions_Dot: function(A: Quaternion, B: Quaternion): number
global ScriptCanvas_QuaternionFunctions_FromAxisAngleDegrees: function(Axis: Vector3, Degrees: number): Quaternion
global ScriptCanvas_QuaternionFunctions_FromMatrix3x3: function(Source: Matrix3x3): Quaternion
global ScriptCanvas_QuaternionFunctions_FromMatrix4x4: function(Source: Matrix4x4): Quaternion
global ScriptCanvas_QuaternionFunctions_FromTransform: function(Source: Transform): Quaternion
global ScriptCanvas_QuaternionFunctions_InvertFull: function(Source: Quaternion): Quaternion
global ScriptCanvas_QuaternionFunctions_IsClose: function(A: Quaternion, B: Quaternion, Tolerance: number): boolean
global ScriptCanvas_QuaternionFunctions_IsFinite: function(Source: Quaternion): boolean
global ScriptCanvas_QuaternionFunctions_IsIdentity: function(Source: Quaternion, Tolerance: number): boolean
global ScriptCanvas_QuaternionFunctions_IsZero: function(Source: Quaternion, Tolerance: number): boolean
global ScriptCanvas_QuaternionFunctions_LengthReciprocal: function(Source: Quaternion): number
global ScriptCanvas_QuaternionFunctions_LengthSquared: function(Source: Quaternion): number
global ScriptCanvas_QuaternionFunctions_Lerp: function(From: Quaternion, To: Quaternion, T: number): Quaternion
global ScriptCanvas_QuaternionFunctions_MultiplyByNumber: function(Source: Quaternion, Multiplier: number): Quaternion
global ScriptCanvas_QuaternionFunctions_Negate: function(Source: Quaternion): Quaternion
global ScriptCanvas_QuaternionFunctions_Normalize: function(Source: Quaternion): Quaternion
global ScriptCanvas_QuaternionFunctions_RotateVector3: function(Quaternion: Quaternion, Vector: Vector3): Vector3
global ScriptCanvas_QuaternionFunctions_RotationXDegrees: function(Degrees: number): Quaternion
global ScriptCanvas_QuaternionFunctions_RotationYDegrees: function(Degrees: number): Quaternion
global ScriptCanvas_QuaternionFunctions_RotationZDegrees: function(Degrees: number): Quaternion
global ScriptCanvas_QuaternionFunctions_ShortestArc: function(From: Vector3, To: Vector3): Quaternion
global ScriptCanvas_QuaternionFunctions_Slerp: function(From: Quaternion, To: Quaternion, T: number): Quaternion
global ScriptCanvas_QuaternionFunctions_Squad: function(From: Quaternion, To: Quaternion, In: Quaternion, Out: Quaternion, T: number): Quaternion
global ScriptCanvas_QuaternionFunctions_ToAngleDegrees: function(Source: Quaternion): number
global ScriptCanvas_StringFunctions_ContainsString: function(Source: string, Pattern: string, Search, From, End: boolean, Case, Sensitive: boolean): integer
global ScriptCanvas_StringFunctions_EndsWith: function(Source: string, Pattern: string, Case, Sensitive: boolean): boolean
global ScriptCanvas_StringFunctions_IsValidFindPosition: function(Position: integer): boolean
global ScriptCanvas_StringFunctions_Join: function(String, Array: vector_basic_string_char_char_traits_char, Separator: string): string
global ScriptCanvas_StringFunctions_ReplaceString: function(Source: string, Replace: string, With: string, Case, Sensitive: boolean): string
global ScriptCanvas_StringFunctions_Split: function(Source: string, Delimiters: string): vector_basic_string_char_char_traits_char
global ScriptCanvas_StringFunctions_StartsWith: function(Source: string, Pattern: string, Case, Sensitive: boolean): boolean
global ScriptCanvas_StringFunctions_Substring: function(Source: string, From: integer, Length: integer): string
global ScriptCanvas_StringFunctions_ToLower: function(Source: string): string
global ScriptCanvas_StringFunctions_ToUpper: function(Source: string): string
global ScriptCanvas_TransformFunctions_FromMatrix3x3: function(Source: Matrix3x3): Transform
global ScriptCanvas_TransformFunctions_FromMatrix3x3AndTranslation: function(Matrix: Matrix3x3, Translation: Vector3): Transform
global ScriptCanvas_TransformFunctions_FromRotation: function(Source: Quaternion): Transform
global ScriptCanvas_TransformFunctions_FromRotationAndTranslation: function(Rotation: Quaternion, Translation: Vector3): Transform
global ScriptCanvas_TransformFunctions_FromRotationScaleAndTranslation: function(Rotation: Quaternion, Scale: number, Translation: Vector3): Transform
global ScriptCanvas_TransformFunctions_FromScale: function(Scale: number): Transform
global ScriptCanvas_TransformFunctions_FromTranslation: function(Translation: Vector3): Transform
global ScriptCanvas_TransformFunctions_GetForward: function(Source: Transform, Scale: number): Vector3
global ScriptCanvas_TransformFunctions_GetRight: function(Source: Transform, Scale: number): Vector3
global ScriptCanvas_TransformFunctions_GetTranslation: function(Source: Transform): Vector3
global ScriptCanvas_TransformFunctions_GetUp: function(Source: Transform, Scale: number): Vector3
global ScriptCanvas_TransformFunctions_IsClose: function(A: Transform, B: Transform, Tolerance: number): boolean
global ScriptCanvas_TransformFunctions_IsFinite: function(Source: Transform): boolean
global ScriptCanvas_TransformFunctions_IsOrthogonal: function(Source: Transform, Tolerance: number): boolean
global ScriptCanvas_TransformFunctions_MultiplyByUniformScale: function(Source: Transform, Scale: number): Transform
global ScriptCanvas_TransformFunctions_MultiplyByVector3: function(Source: Transform, Multiplier: Vector3): Vector3
global ScriptCanvas_TransformFunctions_MultiplyByVector4: function(Source: Transform, Multiplier: Vector4): Vector4
global ScriptCanvas_TransformFunctions_Orthogonalize: function(Source: Transform): Transform
global ScriptCanvas_TransformFunctions_RotationXDegrees: function(Degrees: number): Transform
global ScriptCanvas_TransformFunctions_RotationYDegrees: function(Degrees: number): Transform
global ScriptCanvas_TransformFunctions_RotationZDegrees: function(Degrees: number): Transform
global ScriptCanvas_TransformFunctions_ToScale: function(Source: Transform): number
global ScriptCanvas_Vector2Functions_Absolute: function(Source: Vector2): Vector2
global ScriptCanvas_Vector2Functions_Angle: function(Angle: number): Vector2
global ScriptCanvas_Vector2Functions_Clamp: function(Source: Vector2, Min: Vector2, Max: Vector2): Vector2
global ScriptCanvas_Vector2Functions_DirectionTo: function(From: Vector2, To: Vector2, Scale: number): tuple_Vector2_double
global ScriptCanvas_Vector2Functions_Distance: function(A: Vector2, B: Vector2): number
global ScriptCanvas_Vector2Functions_DistanceSquared: function(A: Vector2, B: Vector2): number
global ScriptCanvas_Vector2Functions_Dot: function(A: Vector2, B: Vector2): number
global ScriptCanvas_Vector2Functions_FromValues: function(X: number, Y: number): Vector2
global ScriptCanvas_Vector2Functions_GetElement: function(Source: Vector2, Index: number): number
global ScriptCanvas_Vector2Functions_IsClose: function(A: Vector2, B: Vector2, Tolerance: number): boolean
global ScriptCanvas_Vector2Functions_IsFinite: function(Source: Vector2): boolean
global ScriptCanvas_Vector2Functions_IsNormalized: function(Source: Vector2, Tolerance: number): boolean
global ScriptCanvas_Vector2Functions_IsZero: function(Source: Vector2, Tolerance: number): boolean
global ScriptCanvas_Vector2Functions_Length: function(Source: Vector2): number
global ScriptCanvas_Vector2Functions_LengthSquared: function(Source: Vector2): number
global ScriptCanvas_Vector2Functions_Lerp: function(From: Vector2, To: Vector2, T: number): Vector2
global ScriptCanvas_Vector2Functions_Max: function(A: Vector2, B: Vector2): Vector2
global ScriptCanvas_Vector2Functions_Min: function(A: Vector2, B: Vector2): Vector2
global ScriptCanvas_Vector2Functions_MultiplyByNumber: function(Source: Vector2, Multiplier: number): Vector2
global ScriptCanvas_Vector2Functions_Negate: function(Source: Vector2): Vector2
global ScriptCanvas_Vector2Functions_Normalize: function(Source: Vector2): Vector2
global ScriptCanvas_Vector2Functions_Project: function(A: Vector2, B: Vector2): Vector2
global ScriptCanvas_Vector2Functions_SetX: function(Source: Vector2, X: number): Vector2
global ScriptCanvas_Vector2Functions_SetY: function(Source: Vector2, Y: number): Vector2
global ScriptCanvas_Vector2Functions_Slerp: function(From: Vector2, To: Vector2, T: number): Vector2
global ScriptCanvas_Vector2Functions_ToPerpendicular: function(Source: Vector2): Vector2
global ScriptCanvas_Vector3Functions_Absolute: function(Source: Vector3): Vector3
global ScriptCanvas_Vector3Functions_BuildTangentBasis: function(Normal: Vector3): tuple_Vector3_Vector3
global ScriptCanvas_Vector3Functions_Clamp: function(Source: Vector3, Min: Vector3, Max: Vector3): Vector3
global ScriptCanvas_Vector3Functions_Cross: function(A: Vector3, B: Vector3): Vector3
global ScriptCanvas_Vector3Functions_DirectionTo: function(From: Vector3, To: Vector3, Scale: number): tuple_Vector3_double
global ScriptCanvas_Vector3Functions_Distance: function(A: Vector3, B: Vector3): number
global ScriptCanvas_Vector3Functions_DistanceSquared: function(A: Vector3, B: Vector3): number
global ScriptCanvas_Vector3Functions_Dot: function(A: Vector3, B: Vector3): number
global ScriptCanvas_Vector3Functions_FromValues: function(X: number, Y: number, Z: number): Vector3
global ScriptCanvas_Vector3Functions_GetElement: function(Source: Vector3, Index: number): number
global ScriptCanvas_Vector3Functions_IsClose: function(A: Vector3, B: Vector3, Tolerance: number): boolean
global ScriptCanvas_Vector3Functions_IsFinite: function(Source: Vector3): boolean
global ScriptCanvas_Vector3Functions_IsNormalized: function(Source: Vector3, Tolerance: number): boolean
global ScriptCanvas_Vector3Functions_IsPerpendicular: function(A: Vector3, B: Vector3, Tolerance: number): boolean
global ScriptCanvas_Vector3Functions_IsZero: function(Source: Vector3, Tolerance: number): boolean
global ScriptCanvas_Vector3Functions_Length: function(Source: Vector3): number
global ScriptCanvas_Vector3Functions_LengthReciprocal: function(Source: Vector3): number
global ScriptCanvas_Vector3Functions_LengthSquared: function(Source: Vector3): number
global ScriptCanvas_Vector3Functions_Lerp: function(From: Vector3, To: Vector3, T: number): Vector3
global ScriptCanvas_Vector3Functions_Max: function(A: Vector3, B: Vector3): Vector3
global ScriptCanvas_Vector3Functions_Min: function(A: Vector3, B: Vector3): Vector3
global ScriptCanvas_Vector3Functions_MultiplyByNumber: function(Source: Vector3, Multiplier: number): Vector3
global ScriptCanvas_Vector3Functions_Negate: function(Source: Vector3): Vector3
global ScriptCanvas_Vector3Functions_Normalize: function(Source: Vector3): Vector3
global ScriptCanvas_Vector3Functions_Project: function(A: Vector3, B: Vector3): Vector3
global ScriptCanvas_Vector3Functions_Reciprocal: function(Source: Vector3): Vector3
global ScriptCanvas_Vector3Functions_SetX: function(Source: Vector3, X: number): Vector3
global ScriptCanvas_Vector3Functions_SetY: function(Source: Vector3, Y: number): Vector3
global ScriptCanvas_Vector3Functions_SetZ: function(Source: Vector3, Z: number): Vector3
global ScriptCanvas_Vector3Functions_Slerp: function(From: Vector3, To: Vector3, T: number): Vector3
global ScriptCanvas_Vector4Functions_Absolute: function(Source: Vector4): Vector4
global ScriptCanvas_Vector4Functions_DirectionTo: function(From: Vector4, To: Vector4, Scale: number): tuple_Vector4_double
global ScriptCanvas_Vector4Functions_Dot: function(A: Vector4, B: Vector4): number
global ScriptCanvas_Vector4Functions_FromValues: function(X: number, Y: number, Z: number, W: number): Vector4
global ScriptCanvas_Vector4Functions_GetElement: function(Source: Vector4, Index: number): number
global ScriptCanvas_Vector4Functions_IsClose: function(A: Vector4, B: Vector4, Tolerance: number): boolean
global ScriptCanvas_Vector4Functions_IsFinite: function(Source: Vector4): boolean
global ScriptCanvas_Vector4Functions_IsNormalized: function(Source: Vector4, Tolerance: number): boolean
global ScriptCanvas_Vector4Functions_IsZero: function(Source: Vector4, Tolerance: number): boolean
global ScriptCanvas_Vector4Functions_Length: function(Source: Vector4): number
global ScriptCanvas_Vector4Functions_LengthReciprocal: function(Source: Vector4): number
global ScriptCanvas_Vector4Functions_LengthSquared: function(Source: Vector4): number
global ScriptCanvas_Vector4Functions_MultiplyByNumber: function(Source: Vector4, Multiplier: number): Vector4
global ScriptCanvas_Vector4Functions_Negate: function(Source: Vector4): Vector4
global ScriptCanvas_Vector4Functions_Normalize: function(Source: Vector4): Vector4
global ScriptCanvas_Vector4Functions_Reciprocal: function(Source: Vector4): Vector4
global ScriptCanvas_Vector4Functions_SetW: function(Source: Vector4, W: number): Vector4
global ScriptCanvas_Vector4Functions_SetX: function(Source: Vector4, X: number): Vector4
global ScriptCanvas_Vector4Functions_SetY: function(Source: Vector4, Y: number): Vector4
global ScriptCanvas_Vector4Functions_SetZ: function(Source: Vector4, Z: number): Vector4
global ScriptCanvas_VectorNFunctions_Absolute: function(Source: VectorN): VectorN
global ScriptCanvas_VectorNFunctions_Dot: function(A: VectorN, B: VectorN): number
global ScriptCanvas_VectorNFunctions_GetClamp: function(Source: VectorN, Min: VectorN, Max: VectorN): VectorN
global ScriptCanvas_VectorNFunctions_GetDimensionality: function(Source: VectorN): number
global ScriptCanvas_VectorNFunctions_GetElement: function(Source: VectorN, Index: number): number
global ScriptCanvas_VectorNFunctions_GetMax: function(A: VectorN, B: VectorN): VectorN
global ScriptCanvas_VectorNFunctions_GetMin: function(A: VectorN, B: VectorN): VectorN
global ScriptCanvas_VectorNFunctions_IsClose: function(A: VectorN, B: VectorN, Tolerance: number): boolean
global ScriptCanvas_VectorNFunctions_IsZero: function(Source: VectorN, Tolerance: number): boolean
global ScriptCanvas_VectorNFunctions_Length: function(Source: VectorN): number
global ScriptCanvas_VectorNFunctions_LengthSquared: function(Source: VectorN): number
global ScriptCanvas_VectorNFunctions_Normalize: function(Source: VectorN): VectorN
global ScriptCanvas_VectorNFunctions_One: function(Size: number): VectorN
global ScriptCanvas_VectorNFunctions_Random: function(Size: number): VectorN
global ScriptCanvas_VectorNFunctions_Square: function(Source: VectorN): VectorN
global ScriptCanvas_VectorNFunctions_Zero: function(Size: number): VectorN
global SettingsRegistry: function(): SettingsRegistryScriptProxy
global SourceHandleFromPath: function(basic_string_view_char_char_traits_char): SourceHandle
global Terminate: function(integer): any
global Warning: function(string): any
--- Adds a layer node from the current layer to the current sequence.
global add_layer_node: function(): any
global add_node: function(string, string): any
--- Adds an entity node(s) from viewport selection to the current sequence.
global add_selected_entities: function(): any
global add_track: function(string, string, string): any
global attach_debugger: function(): boolean
global bind_viewport: function(string): any
global close_pane: function(string): any
global combo_box: function(string, vector_basic_string_char_char_traits_char, integer): string
--- Crashes the application, useful for testing crash reporting and other automation tools.
global crash: function(): any
global create_level: function(string, string, integer, integer, boolean): integer
global create_level_no_prompt: function(string, string, integer, integer, integer, boolean): integer
global delete_node: function(basic_string_view_char_char_traits_char, basic_string_view_char_char_traits_char): any
global delete_sequence: function(string): any
global delete_track: function(string, integer, string, string): any
global draw_label: function(integer, integer, number, number, number, number, number, string): any
global dump_exposed_classes: function(): string
global edit_box: function(basic_string_view_char_char_traits_char): string
global edit_box_check_data_type: function(string): any
global enable_for_all: function(boolean): boolean
--- Enters the editor game mode.
global enter_game_mode: function(): any
--- Enters the editor game mode in fullscreen.
global enter_game_mode_fullscreen: function(): any
--- Enters the editor AI/Physics simulation mode.
global enter_simulation_mode: function(): any
global execute_command: function(string): any
--- Exits the editor.
global exit: function(): any
--- Exits the editor game mode.
global exit_game_mode: function(): any
--- Exits the editor without prompting to save first.
global exit_no_prompt: function(): any
--- Exits the editor AI/Physics simulation mode.
global exit_simulation_mode: function(): any
global find_editor_entity: function(string): EntityId
global find_game_entity: function(string): EntityId
global get_active_viewport: function(): integer
global get_axis_constraint: function(): string
global get_build_folder: function(): string
global get_config_platform: function(): integer
global get_current_level_name: function(): string
global get_current_level_path: function(): string
global get_current_view_position: function(): Vector3
global get_current_view_rotation: function(): Vector3
global get_cvar: function(string): string
global get_file_alias: function(string): string
global get_game_folder: function(): string
global get_interpolated_value: function(string, integer, number, string, string): any
global get_key_value: function(string, integer, integer, string, string): any
global get_misc_editor_settings: function(): integer
global get_node_name: function(integer, basic_string_view_char_char_traits_char): string
global get_num_nodes: function(basic_string_view_char_char_traits_char): integer
global get_num_sequences: function(): integer
global get_num_track_keys: function(string, integer, string, string): integer
global get_pak_from_file: function(string): string
global get_pane_class_names: function(): vector_basic_string_char_char_traits_char
global get_sequence_name: function(integer): string
global get_sequence_time_range: function(string): Range
global get_view_pane_layout: function(): integer
global get_viewport_count: function(): integer
global get_viewport_expansion_policy: function(): string
global get_viewport_size: function(): Vector2
global idle_enable: function(boolean): any
global idle_is_enabled: function(): boolean
global idle_wait: function(number): any
global idle_wait_frames: function(integer): any
global is_helpers_shown: function(): boolean
global is_icons_shown: function(): boolean
global is_idle_enabled: function(): boolean
global is_in_game_mode: function(): boolean
global is_in_simulation_mode: function(): boolean
global is_pane_visible: function(string): boolean
global launch_lua_editor: function(string): any
--- Loads all available plugins.
global load_all_plugins: function(): any
global log: function(string): any
global message_box: function(string): boolean
global message_box_ok: function(string): boolean
global message_box_yes_no: function(string): boolean
global new_sequence: function(string, integer): any
global open_file_box: function(): string
global open_level: function(string): boolean
global open_level_no_prompt: function(string): boolean
global open_pane: function(string): any
--- Plays the current sequence in TrackView.
global play_sequence: function(): any
--- Redoes the last undone operation.
global redo: function(): any
global reload_current_level: function(): boolean
global resize_viewport: function(integer, integer): any
global run_console: function(string): any
global run_file: function(string): any
global run_file_parameters: function(string, string): any
global save_level: function(): boolean
global set_active_viewport: function(integer): any
global set_axis_constraint: function(basic_string_view_char_char_traits_char): any
global set_current_sequence: function(string): any
global set_current_view_position: function(number, number, number): any
global set_current_view_rotation: function(number, number, number): any
global set_cvar: function(string, any): any
global set_cvar_float: function(string, number): any
global set_cvar_integer: function(string, integer): any
global set_cvar_string: function(string, string): any
global set_misc_editor_settings: function(integer): any
global set_recording: function(boolean): any
--- Sets the result of a script execution to failure. Used only for Sandbox AutoTests.
global set_result_to_failure: function(): any
--- Sets the result of a script execution to success. Used only for Sandbox AutoTests.
global set_result_to_success: function(): any
global set_sequence_time_range: function(string, number, number): any
global set_time: function(number): any
global set_view_pane_layout: function(integer): any
global set_viewport_expansion_policy: function(string): any
global set_viewport_size: function(integer, integer): any
--- Stops any sequence currently playing in TrackView.
global stop_sequence: function(): any
global test_output: function(string): any
--- Toggles the display of helpers.
global toggle_helpers: function(): any
--- Toggles the display of icons.
global toggle_icons: function(): any
--- Undoes the last operation.
global undo: function(): any
--- Update all visible SDK viewports.
global update_viewport: function(): any
global wait_for_debugger: function(number): boolean


--[[ ========  Ebus List ========== ]]
global record ActorComponentNotificationBus
	is BusThatHasAHandler<ActorComponentNotificationBus>

	interface Notification
		OnActorInstanceCreated: function(self, EMotionFX__ActorInstance): any
		OnActorInstanceDestroyed: function(self, EMotionFX__ActorInstance): any
	end
end


global record ActorComponentRequestBus
	record Event
		AttachToEntity: function(EntityId, EntityId): any
		DetachFromEntity: function(EntityId): any
		EnableInstanceUpdate: function(EntityId, boolean): any
		GetJointIndexByName: function(EntityId, string): any
		GetJointTransform: function(EntityId, integer, EMotionFX__Integration__Space): any
		GetRenderActorVisible: function(EntityId): any
		GetRenderCharacter: function(EntityId): any
		SetRayTracingEnabled: function(EntityId, boolean): any
		SetRenderCharacter: function(EntityId, boolean): any
	end

	record Broadcast
		AttachToEntity: function(EntityId): any
		DetachFromEntity: function(): any
		EnableInstanceUpdate: function(boolean): any
		GetJointIndexByName: function(string): any
		GetJointTransform: function(integer, EMotionFX__Integration__Space): any
		GetRenderActorVisible: function(): any
		GetRenderCharacter: function(): any
		SetRayTracingEnabled: function(boolean): any
		SetRenderCharacter: function(boolean): any
	end
end


global record ActorNotificationBus
	is BusThatHasAHandler<ActorNotificationBus>

	record Event
		OnMotionEvent: function(EntityId, MotionEvent): any
		OnMotionLoop: function(EntityId, string): any
		OnStateEntered: function(EntityId, string): any
		OnStateEntering: function(EntityId, string): any
		OnStateExited: function(EntityId, string): any
		OnStateExiting: function(EntityId, string): any
		OnStateTransitionEnd: function(EntityId, string, string): any
		OnStateTransitionStart: function(EntityId, string, string): any
	end

	record Broadcast
		OnMotionEvent: function(MotionEvent): any
		OnMotionLoop: function(string): any
		OnStateEntered: function(string): any
		OnStateEntering: function(string): any
		OnStateExited: function(string): any
		OnStateExiting: function(string): any
		OnStateTransitionEnd: function(string, string): any
		OnStateTransitionStart: function(string, string): any
	end
	interface Notification
		OnMotionEvent: function(self, MotionEvent): any
		OnMotionLoop: function(self, string): any
		OnStateEntered: function(self, string): any
		OnStateEntering: function(self, string): any
		OnStateExited: function(self, string): any
		OnStateExiting: function(self, string): any
		OnStateTransitionEnd: function(self, string, string): any
		OnStateTransitionStart: function(self, string, string): any
	end
end


global record AnimAudioComponentRequestBus
	record Event
		AddTriggerEvent: function(EntityId, AZStd__basic_string): any
		ClearTriggerEvents: function(EntityId): any
		RemoveTriggerEvent: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		AddTriggerEvent: function(AZStd__basic_string): any
		ClearTriggerEvents: function(): any
		RemoveTriggerEvent: function(AZStd__basic_string): any
	end
end


global record AnimGraphComponentNetworkRequestBus
	record Event
		CreateSnapshot: function(EntityId, boolean): any
		GetActiveStates: function(EntityId): any
		HasSnapshot: function(EntityId): any
		IsAssetReady: function(EntityId): any
		SetActiveStates: function(EntityId, AZStd__vector): any
	end

	record Broadcast
		CreateSnapshot: function(boolean): any
		GetActiveStates: function(): any
		HasSnapshot: function(): any
		IsAssetReady: function(): any
		SetActiveStates: function(AZStd__vector): any
	end
end


global record AnimGraphComponentNotificationBus
	is BusThatHasAHandler<AnimGraphComponentNotificationBus>

	interface Notification
		OnAnimGraphBoolParameterChanged: function(self, AnimGraphInstance, integer, boolean, boolean): any
		OnAnimGraphFloatParameterChanged: function(self, AnimGraphInstance, integer, number, number): any
		OnAnimGraphInstanceCreated: function(self, AnimGraphInstance): any
		OnAnimGraphInstanceDestroyed: function(self, AnimGraphInstance): any
		OnAnimGraphRotationParameterChanged: function(self, AnimGraphInstance, integer, Quaternion, Quaternion): any
		OnAnimGraphStringParameterChanged: function(self, AnimGraphInstance, integer, string, string): any
		OnAnimGraphVector2ParameterChanged: function(self, AnimGraphInstance, integer, Vector2, Vector2): any
		OnAnimGraphVector3ParameterChanged: function(self, AnimGraphInstance, integer, Vector3, Vector3): any
	end
end


global record AnimGraphComponentRequestBus
	record Event
		DesyncAnimGraph: function(EntityId, EntityId): any
		FindParameterIndex: function(EntityId, string): any
		FindParameterName: function(EntityId, integer): any
		GetNamedParameterBool: function(EntityId, string): any
		GetNamedParameterFloat: function(EntityId, string): any
		GetNamedParameterRotation: function(EntityId, string): any
		GetNamedParameterRotationEuler: function(EntityId, string): any
		GetNamedParameterString: function(EntityId, string): any
		GetNamedParameterVector2: function(EntityId, string): any
		GetNamedParameterVector3: function(EntityId, string): any
		GetParameterBool: function(EntityId, integer): any
		GetParameterFloat: function(EntityId, integer): any
		GetParameterRotation: function(EntityId, string): any
		GetParameterRotationEuler: function(EntityId, integer): any
		GetParameterString: function(EntityId, integer): any
		GetParameterVector2: function(EntityId, integer): any
		GetParameterVector3: function(EntityId, integer): any
		GetVisualizeEnabled: function(EntityId): any
		SetActiveMotionSet: function(EntityId, string): any
		SetNamedParameterBool: function(EntityId, string, boolean): any
		SetNamedParameterFloat: function(EntityId, string, number): any
		SetNamedParameterRotation: function(EntityId, string, Quaternion): any
		SetNamedParameterRotationEuler: function(EntityId, string, Vector3): any
		SetNamedParameterString: function(EntityId, string, string): any
		SetNamedParameterVector2: function(EntityId, string, Vector2): any
		SetNamedParameterVector3: function(EntityId, string, Vector3): any
		SetParameterBool: function(EntityId, integer, boolean): any
		SetParameterFloat: function(EntityId, integer, number): any
		SetParameterRotation: function(EntityId, string, Quaternion): any
		SetParameterRotationEuler: function(EntityId, integer, Vector3): any
		SetParameterString: function(EntityId, integer, string): any
		SetParameterVector2: function(EntityId, integer, Vector2): any
		SetParameterVector3: function(EntityId, integer, Vector3): any
		SetVisualizeEnabled: function(EntityId, boolean): any
		SyncAnimGraph: function(EntityId, EntityId): any
	end

	record Broadcast
		DesyncAnimGraph: function(EntityId): any
		FindParameterIndex: function(string): any
		FindParameterName: function(integer): any
		GetNamedParameterBool: function(string): any
		GetNamedParameterFloat: function(string): any
		GetNamedParameterRotation: function(string): any
		GetNamedParameterRotationEuler: function(string): any
		GetNamedParameterString: function(string): any
		GetNamedParameterVector2: function(string): any
		GetNamedParameterVector3: function(string): any
		GetParameterBool: function(integer): any
		GetParameterFloat: function(integer): any
		GetParameterRotation: function(string): any
		GetParameterRotationEuler: function(integer): any
		GetParameterString: function(integer): any
		GetParameterVector2: function(integer): any
		GetParameterVector3: function(integer): any
		GetVisualizeEnabled: function(): any
		SetActiveMotionSet: function(string): any
		SetNamedParameterBool: function(string, boolean): any
		SetNamedParameterFloat: function(string, number): any
		SetNamedParameterRotation: function(string, Quaternion): any
		SetNamedParameterRotationEuler: function(string, Vector3): any
		SetNamedParameterString: function(string, string): any
		SetNamedParameterVector2: function(string, Vector2): any
		SetNamedParameterVector3: function(string, Vector3): any
		SetParameterBool: function(integer, boolean): any
		SetParameterFloat: function(integer, number): any
		SetParameterRotation: function(string, Quaternion): any
		SetParameterRotationEuler: function(integer, Vector3): any
		SetParameterString: function(integer, string): any
		SetParameterVector2: function(integer, Vector2): any
		SetParameterVector3: function(integer, Vector3): any
		SetVisualizeEnabled: function(boolean): any
		SyncAnimGraph: function(EntityId): any
	end
end


global record ArcBallControllerRequestBus
	record Event
		GetCenter: function(EntityId): any
		GetDistance: function(EntityId): any
		GetHeading: function(EntityId): any
		GetMaxDistance: function(EntityId): any
		GetMinDistance: function(EntityId): any
		GetPan: function(EntityId): any
		GetPanningSensitivity: function(EntityId): any
		GetPitch: function(EntityId): any
		GetZoomingSensitivity: function(EntityId): any
		SetCenter: function(EntityId, Vector3): any
		SetDistance: function(EntityId, number): any
		SetHeading: function(EntityId, number): any
		SetMaxDistance: function(EntityId, number): any
		SetMinDistance: function(EntityId, number): any
		SetPan: function(EntityId, Vector3): any
		SetPanningSensitivity: function(EntityId, number): any
		SetPitch: function(EntityId, number): any
		SetZoomingSensitivity: function(EntityId, number): any
	end

	record Broadcast
		GetCenter: function(): any
		GetDistance: function(): any
		GetHeading: function(): any
		GetMaxDistance: function(): any
		GetMinDistance: function(): any
		GetPan: function(): any
		GetPanningSensitivity: function(): any
		GetPitch: function(): any
		GetZoomingSensitivity: function(): any
		SetCenter: function(Vector3): any
		SetDistance: function(number): any
		SetHeading: function(number): any
		SetMaxDistance: function(number): any
		SetMinDistance: function(number): any
		SetPan: function(Vector3): any
		SetPanningSensitivity: function(number): any
		SetPitch: function(number): any
		SetZoomingSensitivity: function(number): any
	end
end


global record AreaLightRequestBus
	record Event
		ConvertToIntensityMode: function(EntityId): any
		GetAffectsGI: function(EntityId): any
		GetAffectsGIFactor: function(EntityId): any
		GetAttenuationRadius: function(EntityId): any
		GetColor: function(EntityId): any
		GetEmitsLightBothDirections: function(EntityId): any
		GetEnableShadow: function(EntityId): any
		GetEnableShutters: function(EntityId): any
		GetEsmExponent: function(EntityId): any
		GetFilteringSampleCount: function(EntityId): any
		GetInnerShutterAngle: function(EntityId): any
		GetIntensity: function(EntityId): any
		GetIntensityMode: function(EntityId): any
		GetLightingChannelMask: function(EntityId): any
		GetNormalShadowBias: function(EntityId): any
		GetOuterShutterAngle: function(EntityId): any
		GetShadowBias: function(EntityId): any
		GetShadowCachingMode: function(EntityId): any
		GetShadowFilterMethod: function(EntityId): any
		GetShadowmapMaxSize: function(EntityId): any
		GetUseFastApproximation: function(EntityId): any
		SetAffectsGI: function(EntityId, boolean): any
		SetAffectsGIFactor: function(EntityId, number): any
		SetAttenuationRadius: function(EntityId, number): any
		SetAttenuationRadiusMode: function(EntityId): any
		SetColor: function(EntityId, Color): any
		SetEmitsLightBothDirections: function(EntityId, boolean): any
		SetEnableShadow: function(EntityId, boolean): any
		SetEnableShutters: function(EntityId, boolean): any
		SetEsmExponent: function(EntityId, number): any
		SetFilteringSampleCount: function(EntityId, integer): any
		SetInnerShutterAngle: function(EntityId, number): any
		SetIntensity: function(EntityId, number): any
		SetIntensityAndMode: function(EntityId, number): any
		SetLightingChannelMask: function(EntityId, integer): any
		SetNormalShadowBias: function(EntityId, number): any
		SetOuterShutterAngle: function(EntityId, number): any
		SetShadowBias: function(EntityId, number): any
		SetShadowCachingMode: function(EntityId): any
		SetShadowFilterMethod: function(EntityId): any
		SetShadowmapMaxSize: function(EntityId, Render__ShadowmapSize): any
		SetUseFastApproximation: function(EntityId, boolean): any
	end

	record Broadcast
		ConvertToIntensityMode: function(): any
		GetAffectsGI: function(): any
		GetAffectsGIFactor: function(): any
		GetAttenuationRadius: function(): any
		GetColor: function(): any
		GetEmitsLightBothDirections: function(): any
		GetEnableShadow: function(): any
		GetEnableShutters: function(): any
		GetEsmExponent: function(): any
		GetFilteringSampleCount: function(): any
		GetInnerShutterAngle: function(): any
		GetIntensity: function(): any
		GetIntensityMode: function(): any
		GetLightingChannelMask: function(): any
		GetNormalShadowBias: function(): any
		GetOuterShutterAngle: function(): any
		GetShadowBias: function(): any
		GetShadowCachingMode: function(): any
		GetShadowFilterMethod: function(): any
		GetShadowmapMaxSize: function(): any
		GetUseFastApproximation: function(): any
		SetAffectsGI: function(boolean): any
		SetAffectsGIFactor: function(number): any
		SetAttenuationRadius: function(number): any
		SetAttenuationRadiusMode: function(): any
		SetColor: function(Color): any
		SetEmitsLightBothDirections: function(boolean): any
		SetEnableShadow: function(boolean): any
		SetEnableShutters: function(boolean): any
		SetEsmExponent: function(number): any
		SetFilteringSampleCount: function(integer): any
		SetInnerShutterAngle: function(number): any
		SetIntensity: function(number): any
		SetIntensityAndMode: function(number): any
		SetLightingChannelMask: function(integer): any
		SetNormalShadowBias: function(number): any
		SetOuterShutterAngle: function(number): any
		SetShadowBias: function(number): any
		SetShadowCachingMode: function(): any
		SetShadowFilterMethod: function(): any
		SetShadowmapMaxSize: function(Render__ShadowmapSize): any
		SetUseFastApproximation: function(boolean): any
	end
end


global record AssetCatalogRequestBus
	record Broadcast
		GetAssetIdByPath: function(string, AZ__Uuid, boolean): any
		GetAssetInfoById: function(AssetId): any
		GetAssetPathById: function(AssetId): any
		GetAssetTypeByDisplayName: function(AZStd__basic_string_view): any
	end
end


global record AtomToolsAnyDocumentRequestBus
	record Event
		GetContent: function(AZ__Uuid): any
	end

	record Broadcast
		GetContent: function(): any
	end
end


global record AtomToolsDocumentRequestBus
	record Event
		BeginEdit: function(AZ__Uuid): any
		CanRedo: function(AZ__Uuid): any
		CanSaveAsChild: function(AZ__Uuid): any
		CanUndo: function(AZ__Uuid): any
		Close: function(AZ__Uuid): any
		EndEdit: function(AZ__Uuid): any
		GetAbsolutePath: function(AZ__Uuid): any
		IsModified: function(AZ__Uuid): any
		IsOpen: function(AZ__Uuid): any
		Open: function(AZ__Uuid, AZStd__basic_string): any
		Redo: function(AZ__Uuid): any
		Reopen: function(AZ__Uuid): any
		Save: function(AZ__Uuid): any
		SaveAsChild: function(AZ__Uuid, AZStd__basic_string): any
		SaveAsCopy: function(AZ__Uuid, AZStd__basic_string): any
		Undo: function(AZ__Uuid): any
	end

	record Broadcast
		BeginEdit: function(): any
		CanRedo: function(): any
		CanSaveAsChild: function(): any
		CanUndo: function(): any
		Close: function(): any
		EndEdit: function(): any
		GetAbsolutePath: function(): any
		IsModified: function(): any
		IsOpen: function(): any
		Open: function(AZStd__basic_string): any
		Redo: function(): any
		Reopen: function(): any
		Save: function(): any
		SaveAsChild: function(AZStd__basic_string): any
		SaveAsCopy: function(AZStd__basic_string): any
		Undo: function(): any
	end
end


global record AtomToolsDocumentSystemRequestBus
	record Event
		AddRecentFilePath: function(Crc32, AZStd__basic_string): any
		ClearRecentFilePaths: function(Crc32): any
		CloseAllDocuments: function(Crc32): any
		CloseAllDocumentsExcept: function(Crc32, AZ__Uuid): any
		CloseDocument: function(Crc32, AZ__Uuid): any
		CreateDocumentFromFilePath: function(Crc32, AZStd__basic_string): any
		CreateDocumentFromFileType: function(Crc32, AZStd__basic_string): any
		CreateDocumentFromTypeName: function(Crc32, AZStd__basic_string): any
		DestroyDocument: function(Crc32, AZ__Uuid): any
		GetDocumentCount: function(Crc32): any
		GetRecentFilePaths: function(Crc32): any
		IsDocumentOpen: function(Crc32, AZ__Uuid): any
		OpenDocument: function(Crc32, AZStd__basic_string): any
		QueueReopenModifiedDocuments: function(Crc32): any
		ReopenModifiedDocuments: function(Crc32): any
		SaveAllDocuments: function(Crc32): any
		SaveAllModifiedDocuments: function(Crc32): any
		SaveDocument: function(Crc32, AZ__Uuid): any
		SaveDocumentAsChild: function(Crc32, AZ__Uuid, AZStd__basic_string): any
		SaveDocumentAsCopy: function(Crc32, AZ__Uuid, AZStd__basic_string): any
		SetRecentFilePaths: function(Crc32, AZStd__vector): any
	end

	record Broadcast
		AddRecentFilePath: function(AZStd__basic_string): any
		ClearRecentFilePaths: function(): any
		CloseAllDocuments: function(): any
		CloseAllDocumentsExcept: function(AZ__Uuid): any
		CloseDocument: function(AZ__Uuid): any
		CreateDocumentFromFilePath: function(AZStd__basic_string): any
		CreateDocumentFromFileType: function(AZStd__basic_string): any
		CreateDocumentFromTypeName: function(AZStd__basic_string): any
		DestroyDocument: function(AZ__Uuid): any
		GetDocumentCount: function(): any
		GetRecentFilePaths: function(): any
		IsDocumentOpen: function(AZ__Uuid): any
		OpenDocument: function(AZStd__basic_string): any
		QueueReopenModifiedDocuments: function(): any
		ReopenModifiedDocuments: function(): any
		SaveAllDocuments: function(): any
		SaveAllModifiedDocuments: function(): any
		SaveDocument: function(AZ__Uuid): any
		SaveDocumentAsChild: function(AZ__Uuid, AZStd__basic_string): any
		SaveDocumentAsCopy: function(AZ__Uuid, AZStd__basic_string): any
		SetRecentFilePaths: function(AZStd__vector): any
	end
end


global record AtomToolsMainWindowRequestBus
	record Event
		ActivateWindow: function(Crc32): any
		GetDockWidgetNames: function(Crc32): any
		IsDockWidgetVisible: function(Crc32, AZStd__basic_string): any
		LockViewportRenderTargetSize: function(Crc32, integer, integer): any
		QueueUpdateMenus: function(Crc32, boolean): any
		ResizeViewportRenderTarget: function(Crc32, integer, integer): any
		SetDockWidgetVisible: function(Crc32, AZStd__basic_string): any
		SetStatusError: function(Crc32, AZStd__basic_string): any
		SetStatusMessage: function(Crc32, AZStd__basic_string): any
		SetStatusWarning: function(Crc32, AZStd__basic_string): any
		UnlockViewportRenderTargetSize: function(Crc32): any
	end

	record Broadcast
		ActivateWindow: function(): any
		GetDockWidgetNames: function(): any
		IsDockWidgetVisible: function(AZStd__basic_string): any
		LockViewportRenderTargetSize: function(integer, integer): any
		QueueUpdateMenus: function(boolean): any
		ResizeViewportRenderTarget: function(integer, integer): any
		SetDockWidgetVisible: function(AZStd__basic_string): any
		SetStatusError: function(AZStd__basic_string): any
		SetStatusMessage: function(AZStd__basic_string): any
		SetStatusWarning: function(AZStd__basic_string): any
		UnlockViewportRenderTargetSize: function(): any
	end
end


global record AttachmentComponentNotificationBus
	is BusThatHasAHandler<AttachmentComponentNotificationBus>

	interface Notification
		OnAttached: function(self, EntityId): any
		OnDetached: function(self, EntityId): any
	end
end


global record AttachmentComponentRequestBus
	record Event
		Attach: function(EntityId, EntityId, string, Transform): any
		Detach: function(EntityId): any
		GetJointName: function(EntityId): any
		GetOffset: function(EntityId): any
		GetTargetEntityId: function(EntityId): any
		SetAttachmentOffset: function(EntityId, Transform): any
	end

	record Broadcast
		Attach: function(EntityId, string, Transform): any
		Detach: function(): any
		GetJointName: function(): any
		GetOffset: function(): any
		GetTargetEntityId: function(): any
		SetAttachmentOffset: function(Transform): any
	end
end


global record AudioEnvironmentComponentRequestBus
	record Event
		SetAmount: function(EntityId, number): any
		SetEnvironmentAmount: function(EntityId, string, number): any
	end

	record Broadcast
		SetAmount: function(number): any
		SetEnvironmentAmount: function(string, number): any
	end
end


global record AudioListenerComponentRequestBus
	record Event
		SetFullTransformEntity: function(EntityId, EntityId): any
		SetListenerEnabled: function(EntityId, boolean): any
		SetPositionEntity: function(EntityId, EntityId): any
		SetRotationEntity: function(EntityId, EntityId): any
	end

	record Broadcast
		SetFullTransformEntity: function(EntityId): any
		SetListenerEnabled: function(boolean): any
		SetPositionEntity: function(EntityId): any
		SetRotationEntity: function(EntityId): any
	end
end


global record AudioPreloadComponentRequestBus
	record Event
		IsLoaded: function(EntityId, string): any
		Load: function(EntityId): any
		LoadPreload: function(EntityId, string): any
		Unload: function(EntityId): any
		UnloadPreload: function(EntityId, string): any
	end

	record Broadcast
		IsLoaded: function(string): any
		Load: function(): any
		LoadPreload: function(string): any
		Unload: function(): any
		UnloadPreload: function(string): any
	end
end


global record AudioRtpcComponentRequestBus
	record Event
		SetRtpcValue: function(EntityId, string, number): any
		SetValue: function(EntityId, number): any
	end

	record Broadcast
		SetRtpcValue: function(string, number): any
		SetValue: function(number): any
	end
end


global record AudioSwitchComponentRequestBus
	record Event
		SetState: function(EntityId, string): any
		SetSwitchState: function(EntityId, string, string): any
	end

	record Broadcast
		SetState: function(string): any
		SetSwitchState: function(string, string): any
	end
end


global record AudioSystemComponentRequestBus
	record Broadcast
		GlobalExecuteAudioTrigger: function(string, EntityId): any
		GlobalKillAudioTrigger: function(string, EntityId): any
		GlobalMuteAudio: function(): any
		GlobalRefreshAudio: function(AZStd__basic_string_view): any
		GlobalResetAudioRtpcs: function(): any
		GlobalSetAudioRtpc: function(string, number): any
		GlobalSetAudioSwitchState: function(string, string): any
		GlobalStopAllSounds: function(): any
		GlobalUnmuteAudio: function(): any
		LevelLoadAudio: function(AZStd__basic_string_view): any
		LevelUnloadAudio: function(): any
	end
end


global record AudioTriggerComponentRequestBus
	record Event
		ExecuteTrigger: function(EntityId, string): any
		KillAllTriggers: function(EntityId): any
		KillTrigger: function(EntityId, string): any
		Play: function(EntityId): any
		SetMovesWithEntity: function(EntityId, boolean): any
		SetObstructionType: function(EntityId, Audio__ObstructionType): any
		Stop: function(EntityId): any
	end

	record Broadcast
		ExecuteTrigger: function(string): any
		KillAllTriggers: function(): any
		KillTrigger: function(string): any
		Play: function(): any
		SetMovesWithEntity: function(boolean): any
		SetObstructionType: function(Audio__ObstructionType): any
		Stop: function(): any
	end
end


global record AudioTriggerNotificationBus
	is BusThatHasAHandler<AudioTriggerNotificationBus>

	interface Notification
		ReportTriggerFinished: function(self, AZ__u64): any
		ReportTriggerStarted: function(self, AZ__u64): any
	end
end


global record BloomRequestBus
	record Event
		GetBicubicEnabled: function(EntityId): any
		GetBicubicEnabledOverride: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetIntensity: function(EntityId): any
		GetIntensityOverride: function(EntityId): any
		GetKernelSizeScale: function(EntityId): any
		GetKernelSizeScaleOverride: function(EntityId): any
		GetKernelSizeStage0: function(EntityId): any
		GetKernelSizeStage0Override: function(EntityId): any
		GetKernelSizeStage1: function(EntityId): any
		GetKernelSizeStage1Override: function(EntityId): any
		GetKernelSizeStage2: function(EntityId): any
		GetKernelSizeStage2Override: function(EntityId): any
		GetKernelSizeStage3: function(EntityId): any
		GetKernelSizeStage3Override: function(EntityId): any
		GetKernelSizeStage4: function(EntityId): any
		GetKernelSizeStage4Override: function(EntityId): any
		GetKnee: function(EntityId): any
		GetKneeOverride: function(EntityId): any
		GetThreshold: function(EntityId): any
		GetThresholdOverride: function(EntityId): any
		GetTintStage0: function(EntityId): any
		GetTintStage0Override: function(EntityId): any
		GetTintStage1: function(EntityId): any
		GetTintStage1Override: function(EntityId): any
		GetTintStage2: function(EntityId): any
		GetTintStage2Override: function(EntityId): any
		GetTintStage3: function(EntityId): any
		GetTintStage3Override: function(EntityId): any
		GetTintStage4: function(EntityId): any
		GetTintStage4Override: function(EntityId): any
		SetBicubicEnabled: function(EntityId, boolean): any
		SetBicubicEnabledOverride: function(EntityId, boolean): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetIntensity: function(EntityId, number): any
		SetIntensityOverride: function(EntityId, number): any
		SetKernelSizeScale: function(EntityId, number): any
		SetKernelSizeScaleOverride: function(EntityId, number): any
		SetKernelSizeStage0: function(EntityId, number): any
		SetKernelSizeStage0Override: function(EntityId, number): any
		SetKernelSizeStage1: function(EntityId, number): any
		SetKernelSizeStage1Override: function(EntityId, number): any
		SetKernelSizeStage2: function(EntityId, number): any
		SetKernelSizeStage2Override: function(EntityId, number): any
		SetKernelSizeStage3: function(EntityId, number): any
		SetKernelSizeStage3Override: function(EntityId, number): any
		SetKernelSizeStage4: function(EntityId, number): any
		SetKernelSizeStage4Override: function(EntityId, number): any
		SetKnee: function(EntityId, number): any
		SetKneeOverride: function(EntityId, number): any
		SetThreshold: function(EntityId, number): any
		SetThresholdOverride: function(EntityId, number): any
		SetTintStage0: function(EntityId, Vector3): any
		SetTintStage0Override: function(EntityId, number): any
		SetTintStage1: function(EntityId, Vector3): any
		SetTintStage1Override: function(EntityId, number): any
		SetTintStage2: function(EntityId, Vector3): any
		SetTintStage2Override: function(EntityId, number): any
		SetTintStage3: function(EntityId, Vector3): any
		SetTintStage3Override: function(EntityId, number): any
		SetTintStage4: function(EntityId, Vector3): any
		SetTintStage4Override: function(EntityId, number): any
	end

	record Broadcast
		GetBicubicEnabled: function(): any
		GetBicubicEnabledOverride: function(): any
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetIntensity: function(): any
		GetIntensityOverride: function(): any
		GetKernelSizeScale: function(): any
		GetKernelSizeScaleOverride: function(): any
		GetKernelSizeStage0: function(): any
		GetKernelSizeStage0Override: function(): any
		GetKernelSizeStage1: function(): any
		GetKernelSizeStage1Override: function(): any
		GetKernelSizeStage2: function(): any
		GetKernelSizeStage2Override: function(): any
		GetKernelSizeStage3: function(): any
		GetKernelSizeStage3Override: function(): any
		GetKernelSizeStage4: function(): any
		GetKernelSizeStage4Override: function(): any
		GetKnee: function(): any
		GetKneeOverride: function(): any
		GetThreshold: function(): any
		GetThresholdOverride: function(): any
		GetTintStage0: function(): any
		GetTintStage0Override: function(): any
		GetTintStage1: function(): any
		GetTintStage1Override: function(): any
		GetTintStage2: function(): any
		GetTintStage2Override: function(): any
		GetTintStage3: function(): any
		GetTintStage3Override: function(): any
		GetTintStage4: function(): any
		GetTintStage4Override: function(): any
		SetBicubicEnabled: function(boolean): any
		SetBicubicEnabledOverride: function(boolean): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetIntensity: function(number): any
		SetIntensityOverride: function(number): any
		SetKernelSizeScale: function(number): any
		SetKernelSizeScaleOverride: function(number): any
		SetKernelSizeStage0: function(number): any
		SetKernelSizeStage0Override: function(number): any
		SetKernelSizeStage1: function(number): any
		SetKernelSizeStage1Override: function(number): any
		SetKernelSizeStage2: function(number): any
		SetKernelSizeStage2Override: function(number): any
		SetKernelSizeStage3: function(number): any
		SetKernelSizeStage3Override: function(number): any
		SetKernelSizeStage4: function(number): any
		SetKernelSizeStage4Override: function(number): any
		SetKnee: function(number): any
		SetKneeOverride: function(number): any
		SetThreshold: function(number): any
		SetThresholdOverride: function(number): any
		SetTintStage0: function(Vector3): any
		SetTintStage0Override: function(number): any
		SetTintStage1: function(Vector3): any
		SetTintStage1Override: function(number): any
		SetTintStage2: function(Vector3): any
		SetTintStage2Override: function(number): any
		SetTintStage3: function(Vector3): any
		SetTintStage3Override: function(number): any
		SetTintStage4: function(Vector3): any
		SetTintStage4Override: function(number): any
	end
end


global record BoundsRequestBus
	record Event
		GetLocalBounds: function(EntityId): any
		GetWorldBounds: function(EntityId): any
	end

	record Broadcast
		GetLocalBounds: function(): any
		GetWorldBounds: function(): any
	end
end


global record BoxShapeComponentRequestsBus
	record Event
		GetBoxConfiguration: function(EntityId): any
		GetBoxDimensions: function(EntityId): any
		SetBoxDimensions: function(EntityId, Vector3): any
	end

	record Broadcast
		GetBoxConfiguration: function(): any
		GetBoxDimensions: function(): any
		SetBoxDimensions: function(Vector3): any
	end
end


global record CameraNotificationBus
	is BusThatHasAHandler<CameraNotificationBus>

	interface Notification
		OnActiveViewChanged: function(self, EntityId): any
		OnCameraAdded: function(self, EntityId): any
		OnCameraRemoved: function(self, EntityId): any
	end
end


global record CameraRequestBus
	record Event
		GetFarClipDistance: function(EntityId): number
		GetFov: function(EntityId): number
		GetFovDegrees: function(EntityId): number
		GetFovRadians: function(EntityId): number
		GetNearClipDistance: function(EntityId): number
		GetOrthographicHalfWidth: function(EntityId): number
		IsActiveView: function(EntityId): boolean
		IsOrthographic: function(EntityId): boolean
		MakeActiveView: function(EntityId)
		ScreenNdcToWorld: function(EntityId, Vector2, number): Vector3
		ScreenToWorld: function(EntityId, Vector2, number): Vector3
		SetFarClipDistance: function(EntityId, number)
		SetFov: function(EntityId, number)
		SetFovDegrees: function(EntityId, number)
		SetFovRadians: function(EntityId, number)
		SetNearClipDistance: function(EntityId, number)
		SetOrthographic: function(EntityId, boolean)
		SetOrthographicHalfWidth: function(EntityId, number)
		SetXRViewQuaternion: function(EntityId, Quaternion, integer)
		WorldToScreen: function(EntityId, Vector3): Vector2
		WorldToScreenNdc: function(EntityId, Vector3): Vector2
	end

	record Broadcast
		GetFarClipDistance: function(): any
		GetFov: function(): any
		GetFovDegrees: function(): any
		GetFovRadians: function(): any
		GetNearClipDistance: function(): any
		GetOrthographicHalfWidth: function(): any
		IsActiveView: function(): any
		IsOrthographic: function(): any
		MakeActiveView: function(): any
		ScreenNdcToWorld: function(Vector2, number): any
		ScreenToWorld: function(Vector2, number): any
		SetFarClipDistance: function(number): any
		SetFov: function(number): any
		SetFovDegrees: function(number): any
		SetFovRadians: function(number): any
		SetNearClipDistance: function(number): any
		SetOrthographic: function(boolean): any
		SetOrthographicHalfWidth: function(number): any
		SetXRViewQuaternion: function(Quaternion, integer): any
		WorldToScreen: function(Vector3): any
		WorldToScreenNdc: function(Vector3): any
	end
end


global record CameraSystemRequestBus
	record Broadcast
		GetActiveCamera: function(): EntityId
	end
end


global record CapsuleShapeComponentRequestsBus
	record Event
		GetCapsuleConfiguration: function(EntityId): any
		SetHeight: function(EntityId, number): any
		SetRadius: function(EntityId, number): any
	end

	record Broadcast
		GetCapsuleConfiguration: function(): any
		SetHeight: function(number): any
		SetRadius: function(number): any
	end
end


global record CharacterControllerRequestBus
	record Event
		AddVelocity: function(EntityId, Vector3)
		AddVelocityForPhysicsTimestep: function(EntityId, Vector3)
		AddVelocityForTick: function(EntityId, Vector3)
		GetBasePosition: function(EntityId): Vector3
		GetCenterPosition: function(EntityId): Vector3
		GetMaximumSpeed: function(EntityId): number
		GetSlopeLimitDegrees: function(EntityId): number
		GetStepHeight: function(EntityId): number
		GetUpDirection: function(EntityId): Vector3
		GetVelocity: function(EntityId): Vector3
		SetBasePosition: function(EntityId, Vector3)
		SetMaximumSpeed: function(EntityId, number)
		SetSlopeLimitDegrees: function(EntityId, number)
		SetStepHeight: function(EntityId, number)
	end

	record Broadcast
		AddVelocity: function(Vector3): any
		AddVelocityForPhysicsTimestep: function(Vector3): any
		AddVelocityForTick: function(Vector3): any
		GetBasePosition: function(): any
		GetCenterPosition: function(): any
		GetMaximumSpeed: function(): any
		GetSlopeLimitDegrees: function(): any
		GetStepHeight: function(): any
		GetUpDirection: function(): any
		GetVelocity: function(): any
		SetBasePosition: function(Vector3): any
		SetMaximumSpeed: function(number): any
		SetSlopeLimitDegrees: function(number): any
		SetStepHeight: function(number): any
	end
end


global record CharacterGameplayRequestBus
	record Event
		GetFallingVelocity: function(EntityId): any
		GetFallingVelocity: function(EntityId): any
		GetGravityMultiplier: function(EntityId): any
		GetGravityMultiplier: function(EntityId): any
		GetGroundDetectionBoxHeight: function(EntityId): any
		GetGroundDetectionBoxHeight: function(EntityId): any
		IsOnGround: function(EntityId): any
		IsOnGround: function(EntityId): any
		SetFallingVelocity: function(EntityId, Vector3): any
		SetFallingVelocity: function(EntityId, Vector3): any
		SetGravityMultiplier: function(EntityId, number): any
		SetGravityMultiplier: function(EntityId, number): any
		SetGroundDetectionBoxHeight: function(EntityId, number): any
		SetGroundDetectionBoxHeight: function(EntityId, number): any
	end

	record Broadcast
		GetFallingVelocity: function(): any
		GetFallingVelocity: function(): any
		GetGravityMultiplier: function(): any
		GetGravityMultiplier: function(): any
		GetGroundDetectionBoxHeight: function(): any
		GetGroundDetectionBoxHeight: function(): any
		IsOnGround: function(): any
		IsOnGround: function(): any
		SetFallingVelocity: function(Vector3): any
		SetFallingVelocity: function(Vector3): any
		SetGravityMultiplier: function(number): any
		SetGravityMultiplier: function(number): any
		SetGroundDetectionBoxHeight: function(number): any
		SetGroundDetectionBoxHeight: function(number): any
	end
end


global record ChromaticAberrationRequestBus
	record Event
		GetBlend: function(EntityId): any
		GetBlendOverride: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetStrength: function(EntityId): any
		GetStrengthOverride: function(EntityId): any
		SetBlend: function(EntityId, number): any
		SetBlendOverride: function(EntityId, number): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetStrength: function(EntityId, number): any
		SetStrengthOverride: function(EntityId, number): any
	end

	record Broadcast
		GetBlend: function(): any
		GetBlendOverride: function(): any
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetStrength: function(): any
		GetStrengthOverride: function(): any
		SetBlend: function(number): any
		SetBlendOverride: function(number): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetStrength: function(number): any
		SetStrengthOverride: function(number): any
	end
end


global record CollisionFilteringBus
	record Event
		GetCollisionGroupName: function(EntityId): any
		GetCollisionLayerName: function(EntityId): any
		SetCollisionGroup: function(EntityId, AZStd__basic_string): any
		SetCollisionLayer: function(EntityId, AZStd__basic_string): any
		ToggleCollisionLayer: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetCollisionGroupName: function(): any
		GetCollisionLayerName: function(): any
		SetCollisionGroup: function(AZStd__basic_string): any
		SetCollisionLayer: function(AZStd__basic_string): any
		ToggleCollisionLayer: function(AZStd__basic_string): any
	end
end


global record ComponentApplicationBus
	record Broadcast
		GetEntityName: function(EntityId): any
		SetEntityName: function(EntityId, AZStd__basic_string_view): any
	end
end


global record ConsoleNotificationBus
	is BusThatHasAHandler<ConsoleNotificationBus>

	interface Notification
		OnConsoleCommandExecuted: function(self, string): any
	end
end


global record ConsoleRequestBus
	record Broadcast
		ExecuteConsoleCommand: function(string): any
	end
end


global record ConstantGradientRequestBus
	record Event
		GetConstantValue: function(EntityId): any
		SetConstantValue: function(EntityId, number): any
	end

	record Broadcast
		GetConstantValue: function(): any
		SetConstantValue: function(number): any
	end
end


global record CylinderShapeComponentRequestsBus
	record Event
		GetCylinderConfiguration: function(EntityId): any
		SetHeight: function(EntityId, number): any
		SetRadius: function(EntityId, number): any
	end

	record Broadcast
		GetCylinderConfiguration: function(): any
		SetHeight: function(number): any
		SetRadius: function(number): any
	end
end


global record DebugDrawRequestBus
	record Broadcast
		DrawAabb: function(Aabb, Color, number): any
		DrawAabbOnEntity: function(EntityId, Aabb, Color, number): any
		DrawLineEntityToEntity: function(EntityId, EntityId, Color, number): any
		DrawLineEntityToLocation: function(EntityId, Vector3, Color, number): any
		DrawLineLocationToLocation: function(Vector3, Vector3, Color, number): any
		DrawObb: function(Obb, Color, number): any
		DrawObbOnEntity: function(EntityId, Obb, Color, boolean, number): any
		DrawRayEntityToDirection: function(EntityId, Vector3, Color, number): any
		DrawRayEntityToEntity: function(EntityId, EntityId, Color, number): any
		DrawRayLocationToDirection: function(Vector3, Vector3, Color, number): any
		DrawSphereAtLocation: function(Vector3, number, Color, number): any
		DrawSphereOnEntity: function(EntityId, number, Color, boolean, number): any
		DrawTextAtLocation: function(Vector3, AZStd__basic_string): any
		DrawTextOnEntity: function(EntityId, AZStd__basic_string): any
		DrawTextOnScreen: function(AZStd__basic_string): any
	end
end


global record DecalRequestBus
	record Event
		GetAttenuationAngle: function(EntityId): any
		GetDecalColor: function(EntityId): any
		GetDecalColorFactor: function(EntityId): any
		GetMaterial: function(EntityId): any
		GetNormalMapOpacity: function(EntityId): any
		GetOpacity: function(EntityId): any
		GetSortKey: function(EntityId): any
		SetAttenuationAngle: function(EntityId, number): any
		SetDecalColor: function(EntityId, Vector3): any
		SetDecalColorFactor: function(EntityId, number): any
		SetMaterial: function(EntityId, AssetId): any
		SetNormalMapOpacity: function(EntityId, number): any
		SetOpacity: function(EntityId, number): any
		SetSortKey: function(EntityId, integer): any
	end

	record Broadcast
		GetAttenuationAngle: function(): any
		GetDecalColor: function(): any
		GetDecalColorFactor: function(): any
		GetMaterial: function(): any
		GetNormalMapOpacity: function(): any
		GetOpacity: function(): any
		GetSortKey: function(): any
		SetAttenuationAngle: function(number): any
		SetDecalColor: function(Vector3): any
		SetDecalColorFactor: function(number): any
		SetMaterial: function(AssetId): any
		SetNormalMapOpacity: function(number): any
		SetOpacity: function(number): any
		SetSortKey: function(integer): any
	end
end


global record DeferredFogRequestsBus
	record Event
		GetEnableFogLayerShaderOption: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetFogColor: function(EntityId): any
		GetFogDensity: function(EntityId): any
		GetFogDensityClamp: function(EntityId): any
		GetFogEndDistance: function(EntityId): any
		GetFogMaxHeight: function(EntityId): any
		GetFogMinHeight: function(EntityId): any
		GetFogMode: function(EntityId): any
		GetFogStartDistance: function(EntityId): any
		GetNoiseTexCoord2Scale: function(EntityId): any
		GetNoiseTexCoord2Velocity: function(EntityId): any
		GetNoiseTexCoordScale: function(EntityId): any
		GetNoiseTexCoordVelocity: function(EntityId): any
		GetNoiseTexture: function(EntityId): any
		GetOctavesBlendFactor: function(EntityId): any
		GetUseNoiseTextureShaderOption: function(EntityId): any
		SetEnableFogLayerShaderOption: function(EntityId, boolean): any
		SetEnabled: function(EntityId, boolean): any
		SetFogColor: function(EntityId, Vector3): any
		SetFogDensity: function(EntityId, number): any
		SetFogDensityClamp: function(EntityId, number): any
		SetFogEndDistance: function(EntityId, number): any
		SetFogMaxHeight: function(EntityId, number): any
		SetFogMinHeight: function(EntityId, number): any
		SetFogMode: function(EntityId, FogMode): any
		SetFogStartDistance: function(EntityId, number): any
		SetNoiseTexCoord2Scale: function(EntityId, Vector2): any
		SetNoiseTexCoord2Velocity: function(EntityId, Vector2): any
		SetNoiseTexCoordScale: function(EntityId, Vector2): any
		SetNoiseTexCoordVelocity: function(EntityId, Vector2): any
		SetNoiseTexture: function(EntityId, AZStd__basic_string): any
		SetOctavesBlendFactor: function(EntityId, number): any
		SetUseNoiseTextureShaderOption: function(EntityId, boolean): any
	end

	record Broadcast
		GetEnableFogLayerShaderOption: function(): any
		GetEnabled: function(): any
		GetFogColor: function(): any
		GetFogDensity: function(): any
		GetFogDensityClamp: function(): any
		GetFogEndDistance: function(): any
		GetFogMaxHeight: function(): any
		GetFogMinHeight: function(): any
		GetFogMode: function(): any
		GetFogStartDistance: function(): any
		GetNoiseTexCoord2Scale: function(): any
		GetNoiseTexCoord2Velocity: function(): any
		GetNoiseTexCoordScale: function(): any
		GetNoiseTexCoordVelocity: function(): any
		GetNoiseTexture: function(): any
		GetOctavesBlendFactor: function(): any
		GetUseNoiseTextureShaderOption: function(): any
		SetEnableFogLayerShaderOption: function(boolean): any
		SetEnabled: function(boolean): any
		SetFogColor: function(Vector3): any
		SetFogDensity: function(number): any
		SetFogDensityClamp: function(number): any
		SetFogEndDistance: function(number): any
		SetFogMaxHeight: function(number): any
		SetFogMinHeight: function(number): any
		SetFogMode: function(FogMode): any
		SetFogStartDistance: function(number): any
		SetNoiseTexCoord2Scale: function(Vector2): any
		SetNoiseTexCoord2Velocity: function(Vector2): any
		SetNoiseTexCoordScale: function(Vector2): any
		SetNoiseTexCoordVelocity: function(Vector2): any
		SetNoiseTexture: function(AZStd__basic_string): any
		SetOctavesBlendFactor: function(number): any
		SetUseNoiseTextureShaderOption: function(boolean): any
	end
end


global record DepthOfFieldRequestBus
	record Event
		GetApertureF: function(EntityId): any
		GetApertureFOverride: function(EntityId): any
		GetAutoFocusDelay: function(EntityId): any
		GetAutoFocusDelayOverride: function(EntityId): any
		GetAutoFocusScreenPosition: function(EntityId): any
		GetAutoFocusScreenPositionOverride: function(EntityId): any
		GetAutoFocusSensitivity: function(EntityId): any
		GetAutoFocusSensitivityOverride: function(EntityId): any
		GetAutoFocusSpeed: function(EntityId): any
		GetAutoFocusSpeedOverride: function(EntityId): any
		GetCameraEntityId: function(EntityId): any
		GetCameraEntityIdOverride: function(EntityId): any
		GetEnableAutoFocus: function(EntityId): any
		GetEnableAutoFocusOverride: function(EntityId): any
		GetEnableDebugColoring: function(EntityId): any
		GetEnableDebugColoringOverride: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetFNumber: function(EntityId): any
		GetFocusDistance: function(EntityId): any
		GetFocusDistanceOverride: function(EntityId): any
		GetFocusedEntityId: function(EntityId): any
		GetFocusedEntityIdOverride: function(EntityId): any
		GetQualityLevel: function(EntityId): any
		GetQualityLevelOverride: function(EntityId): any
		SetApertureF: function(EntityId, number): any
		SetApertureFOverride: function(EntityId, number): any
		SetAutoFocusDelay: function(EntityId, number): any
		SetAutoFocusDelayOverride: function(EntityId, number): any
		SetAutoFocusScreenPosition: function(EntityId, Vector2): any
		SetAutoFocusScreenPositionOverride: function(EntityId, number): any
		SetAutoFocusSensitivity: function(EntityId, number): any
		SetAutoFocusSensitivityOverride: function(EntityId, number): any
		SetAutoFocusSpeed: function(EntityId, number): any
		SetAutoFocusSpeedOverride: function(EntityId, number): any
		SetCameraEntityId: function(EntityId, EntityId): any
		SetCameraEntityIdOverride: function(EntityId, boolean): any
		SetEnableAutoFocus: function(EntityId, boolean): any
		SetEnableAutoFocusOverride: function(EntityId, boolean): any
		SetEnableDebugColoring: function(EntityId, boolean): any
		SetEnableDebugColoringOverride: function(EntityId, boolean): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetFNumber: function(EntityId, number): any
		SetFocusDistance: function(EntityId, number): any
		SetFocusDistanceOverride: function(EntityId, number): any
		SetFocusedEntityId: function(EntityId, EntityId): any
		SetFocusedEntityIdOverride: function(EntityId, boolean): any
		SetQualityLevel: function(EntityId, integer): any
		SetQualityLevelOverride: function(EntityId, boolean): any
	end

	record Broadcast
		GetApertureF: function(): any
		GetApertureFOverride: function(): any
		GetAutoFocusDelay: function(): any
		GetAutoFocusDelayOverride: function(): any
		GetAutoFocusScreenPosition: function(): any
		GetAutoFocusScreenPositionOverride: function(): any
		GetAutoFocusSensitivity: function(): any
		GetAutoFocusSensitivityOverride: function(): any
		GetAutoFocusSpeed: function(): any
		GetAutoFocusSpeedOverride: function(): any
		GetCameraEntityId: function(): any
		GetCameraEntityIdOverride: function(): any
		GetEnableAutoFocus: function(): any
		GetEnableAutoFocusOverride: function(): any
		GetEnableDebugColoring: function(): any
		GetEnableDebugColoringOverride: function(): any
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetFNumber: function(): any
		GetFocusDistance: function(): any
		GetFocusDistanceOverride: function(): any
		GetFocusedEntityId: function(): any
		GetFocusedEntityIdOverride: function(): any
		GetQualityLevel: function(): any
		GetQualityLevelOverride: function(): any
		SetApertureF: function(number): any
		SetApertureFOverride: function(number): any
		SetAutoFocusDelay: function(number): any
		SetAutoFocusDelayOverride: function(number): any
		SetAutoFocusScreenPosition: function(Vector2): any
		SetAutoFocusScreenPositionOverride: function(number): any
		SetAutoFocusSensitivity: function(number): any
		SetAutoFocusSensitivityOverride: function(number): any
		SetAutoFocusSpeed: function(number): any
		SetAutoFocusSpeedOverride: function(number): any
		SetCameraEntityId: function(EntityId): any
		SetCameraEntityIdOverride: function(boolean): any
		SetEnableAutoFocus: function(boolean): any
		SetEnableAutoFocusOverride: function(boolean): any
		SetEnableDebugColoring: function(boolean): any
		SetEnableDebugColoringOverride: function(boolean): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetFNumber: function(number): any
		SetFocusDistance: function(number): any
		SetFocusDistanceOverride: function(number): any
		SetFocusedEntityId: function(EntityId): any
		SetFocusedEntityIdOverride: function(boolean): any
		SetQualityLevel: function(integer): any
		SetQualityLevelOverride: function(boolean): any
	end
end


global record DirectionalLightRequestBus
	record Event
		GetAffectsGI: function(EntityId): any
		GetAffectsGIFactor: function(EntityId): any
		GetAngularDiameter: function(EntityId): any
		GetCameraEntityId: function(EntityId): any
		GetCascadeBlendingEnabled: function(EntityId): any
		GetCascadeCount: function(EntityId): any
		GetCascadeFarDepth: function(EntityId): any
		GetColor: function(EntityId): any
		GetDebugColoringEnabled: function(EntityId): any
		GetFilteringSampleCount: function(EntityId): any
		GetGroundHeight: function(EntityId): any
		GetIntensity: function(EntityId): any
		GetIntensityMode: function(EntityId): any
		GetLightingChannelMask: function(EntityId): any
		GetNormalShadowBias: function(EntityId): any
		GetShadowBias: function(EntityId): any
		GetShadowFarClipDistance: function(EntityId): any
		GetShadowFilterMethod: function(EntityId): any
		GetShadowReceiverPlaneBiasEnabled: function(EntityId): any
		GetShadowmapSize: function(EntityId): any
		GetSplitAutomatic: function(EntityId): any
		GetSplitRatio: function(EntityId): any
		GetViewFrustumCorrectionEnabled: function(EntityId): any
		SetAffectsGI: function(EntityId, boolean): any
		SetAffectsGIFactor: function(EntityId, number): any
		SetAngularDiameter: function(EntityId, number): any
		SetCameraEntityId: function(EntityId, EntityId): any
		SetCascadeBlendingEnabled: function(EntityId, boolean): any
		SetCascadeCount: function(EntityId, integer): any
		SetCascadeFarDepth: function(EntityId, Vector4): any
		SetColor: function(EntityId, Color): any
		SetDebugColoringEnabled: function(EntityId, boolean): any
		SetFilteringSampleCount: function(EntityId, integer): any
		SetGroundHeight: function(EntityId, number): any
		SetIntensity: function(EntityId, number): any
		SetIntensityMode: function(EntityId): any
		SetLightingChannelMask: function(EntityId, integer): any
		SetNormalShadowBias: function(EntityId, number): any
		SetShadowBias: function(EntityId, number): any
		SetShadowFarClipDistance: function(EntityId, number): any
		SetShadowFilterMethod: function(EntityId): any
		SetShadowReceiverPlaneBiasEnabled: function(EntityId, boolean): any
		SetShadowmapSize: function(EntityId, Render__ShadowmapSize): any
		SetSplitAutomatic: function(EntityId, boolean): any
		SetSplitRatio: function(EntityId, number): any
		SetViewFrustumCorrectionEnabled: function(EntityId, boolean): any
	end

	record Broadcast
		GetAffectsGI: function(): any
		GetAffectsGIFactor: function(): any
		GetAngularDiameter: function(): any
		GetCameraEntityId: function(): any
		GetCascadeBlendingEnabled: function(): any
		GetCascadeCount: function(): any
		GetCascadeFarDepth: function(): any
		GetColor: function(): any
		GetDebugColoringEnabled: function(): any
		GetFilteringSampleCount: function(): any
		GetGroundHeight: function(): any
		GetIntensity: function(): any
		GetIntensityMode: function(): any
		GetLightingChannelMask: function(): any
		GetNormalShadowBias: function(): any
		GetShadowBias: function(): any
		GetShadowFarClipDistance: function(): any
		GetShadowFilterMethod: function(): any
		GetShadowReceiverPlaneBiasEnabled: function(): any
		GetShadowmapSize: function(): any
		GetSplitAutomatic: function(): any
		GetSplitRatio: function(): any
		GetViewFrustumCorrectionEnabled: function(): any
		SetAffectsGI: function(boolean): any
		SetAffectsGIFactor: function(number): any
		SetAngularDiameter: function(number): any
		SetCameraEntityId: function(EntityId): any
		SetCascadeBlendingEnabled: function(boolean): any
		SetCascadeCount: function(integer): any
		SetCascadeFarDepth: function(Vector4): any
		SetColor: function(Color): any
		SetDebugColoringEnabled: function(boolean): any
		SetFilteringSampleCount: function(integer): any
		SetGroundHeight: function(number): any
		SetIntensity: function(number): any
		SetIntensityMode: function(): any
		SetLightingChannelMask: function(integer): any
		SetNormalShadowBias: function(number): any
		SetShadowBias: function(number): any
		SetShadowFarClipDistance: function(number): any
		SetShadowFilterMethod: function(): any
		SetShadowReceiverPlaneBiasEnabled: function(boolean): any
		SetShadowmapSize: function(Render__ShadowmapSize): any
		SetSplitAutomatic: function(boolean): any
		SetSplitRatio: function(number): any
		SetViewFrustumCorrectionEnabled: function(boolean): any
	end
end


global record DiskShapeComponentRequestsBus
	record Event
		GetDiskConfiguration: function(EntityId): any
		GetRadius: function(EntityId): any
		SetRadius: function(EntityId, number): any
	end

	record Broadcast
		GetDiskConfiguration: function(): any
		GetRadius: function(): any
		SetRadius: function(number): any
	end
end


global record DisplayMapperComponentRequestBus
	record Event
		GetAcesParameterOverrides: function(EntityId): any
		GetAlterSurround: function(EntityId): any
		GetApplyCATD60toD65: function(EntityId): any
		GetApplyDesaturation: function(EntityId): any
		GetCinemaLimitsBlack: function(EntityId): any
		GetCinemaLimitsWhite: function(EntityId): any
		GetDisplayMapperOperationType: function(EntityId): any
		GetGamma: function(EntityId): any
		GetMaxPoint: function(EntityId): any
		GetMidPoint: function(EntityId): any
		GetMinPoint: function(EntityId): any
		GetOverrideAcesParameters: function(EntityId): any
		GetSurroundGamma: function(EntityId): any
		LoadPreset: function(EntityId, Render__OutputDeviceTransformType): any
		SetAcesParameterOverrides: function(EntityId, AcesParameterOverrides): any
		SetAlterSurround: function(EntityId, boolean): any
		SetApplyCATD60toD65: function(EntityId, boolean): any
		SetApplyDesaturation: function(EntityId, boolean): any
		SetCinemaLimitsBlack: function(EntityId, number): any
		SetCinemaLimitsWhite: function(EntityId, number): any
		SetDisplayMapperOperationType: function(EntityId, Render__DisplayMapperOperationType): any
		SetGamma: function(EntityId, number): any
		SetMaxPoint: function(EntityId, number): any
		SetMidPoint: function(EntityId, number): any
		SetMinPoint: function(EntityId, number): any
		SetOverrideAcesParameters: function(EntityId, boolean): any
		SetSurroundGamma: function(EntityId, number): any
	end

	record Broadcast
		GetAcesParameterOverrides: function(): any
		GetAlterSurround: function(): any
		GetApplyCATD60toD65: function(): any
		GetApplyDesaturation: function(): any
		GetCinemaLimitsBlack: function(): any
		GetCinemaLimitsWhite: function(): any
		GetDisplayMapperOperationType: function(): any
		GetGamma: function(): any
		GetMaxPoint: function(): any
		GetMidPoint: function(): any
		GetMinPoint: function(): any
		GetOverrideAcesParameters: function(): any
		GetSurroundGamma: function(): any
		LoadPreset: function(Render__OutputDeviceTransformType): any
		SetAcesParameterOverrides: function(AcesParameterOverrides): any
		SetAlterSurround: function(boolean): any
		SetApplyCATD60toD65: function(boolean): any
		SetApplyDesaturation: function(boolean): any
		SetCinemaLimitsBlack: function(number): any
		SetCinemaLimitsWhite: function(number): any
		SetDisplayMapperOperationType: function(Render__DisplayMapperOperationType): any
		SetGamma: function(number): any
		SetMaxPoint: function(number): any
		SetMidPoint: function(number): any
		SetMinPoint: function(number): any
		SetOverrideAcesParameters: function(boolean): any
		SetSurroundGamma: function(number): any
	end
end


global record DitherGradientRequestBus
	record Event
		GetGradientSampler: function(EntityId): any
		GetPatternOffset: function(EntityId): any
		GetPatternType: function(EntityId): any
		GetPointsPerUnit: function(EntityId): any
		GetUseSystemPointsPerUnit: function(EntityId): any
		SetPatternOffset: function(EntityId, Vector3): any
		SetPatternType: function(EntityId, integer): any
		SetPointsPerUnit: function(EntityId, number): any
		SetUseSystemPointsPerUnit: function(EntityId, boolean): any
	end

	record Broadcast
		GetGradientSampler: function(): any
		GetPatternOffset: function(): any
		GetPatternType: function(): any
		GetPointsPerUnit: function(): any
		GetUseSystemPointsPerUnit: function(): any
		SetPatternOffset: function(Vector3): any
		SetPatternType: function(integer): any
		SetPointsPerUnit: function(number): any
		SetUseSystemPointsPerUnit: function(boolean): any
	end
end


global record DynamicNodeManagerRequestBus
	record Event
		Clear: function(Crc32): any
		CreateNodeById: function(Crc32, AZStd__shared_ptr): any
		CreateNodeByName: function(Crc32, AZStd__shared_ptr): any
		GetConfigById: function(Crc32, AZ__Uuid): any
		LoadConfigFiles: function(Crc32, AZStd__basic_string): any
		RegisterConfig: function(Crc32, DynamicNodeConfig): any
	end

	record Broadcast
		Clear: function(): any
		CreateNodeById: function(AZStd__shared_ptr): any
		CreateNodeByName: function(AZStd__shared_ptr): any
		GetConfigById: function(AZ__Uuid): any
		LoadConfigFiles: function(AZStd__basic_string): any
		RegisterConfig: function(DynamicNodeConfig): any
	end
end


global record EBus
	is BusThatHasAHandler<EBus>

	record Broadcast
		CStyleToCStyle: function(string): any
		CStyleToString: function(string): any
		CStyleToStringView: function(string): any
		IntOne: function(integer): any
		IntThree: function(integer): any
		IntTwo: function(integer): any
	end
	interface Notification
		CStyleToCStyle: function(string, any, string): any
		CStyleToString: function(AZStd__basic_string): any
		CStyleToStringView: function(AZStd__basic_string_view): any
		IntOne: function(integer, any, integer): any
		IntThree: function(integer, any, integer): any
		IntTwo: function(integer, any, integer): any
	end
end


global record EditorCameraRequestBus
	record Broadcast
		GetActiveCameraPosition: function(Vector3): any
		GetCurrentViewEntityId: function(): any
		SetViewFromEntityPerspective: function(EntityId): any
	end
end


global record EditorCubeMapCaptureBus
	record Event
		CaptureCubeMap: function(EntityId): any
	end

	record Broadcast
		CaptureCubeMap: function(): any
	end
end


global record EditorReflectionProbeBus
	record Event
		BakeReflectionProbe: function(EntityId): any
	end

	record Broadcast
		BakeReflectionProbe: function(): any
	end
end


global record EditorSimpleMotionComponentRequestBus
	record Event
		GetAssetDuration: function(EntityId, AssetId): any
		GetPreviewInEditor: function(EntityId): any
		SetPreviewInEditor: function(EntityId, boolean): any
	end

	record Broadcast
		GetAssetDuration: function(AssetId): any
		GetPreviewInEditor: function(): any
		SetPreviewInEditor: function(boolean): any
	end
end


global record EditorTransformComponentSelectionRequestBus
	record Event
		CopyOrientationToSelectedEntitiesGroup: function(AZ__Uuid, Quaternion): any
		CopyOrientationToSelectedEntitiesIndividual: function(AZ__Uuid, Quaternion): any
		CopyScaleToSelectedEntitiesIndividualLocal: function(AZ__Uuid, number): any
		CopyScaleToSelectedEntitiesIndividualWorld: function(AZ__Uuid, number): any
		CopyTranslationToSelectedEntitiesGroup: function(AZ__Uuid, Vector3): any
		CopyTranslationToSelectedEntitiesIndividual: function(AZ__Uuid, Vector3): any
		GetTransformMode: function(AZ__Uuid): any
		OverrideManipulatorOrientation: function(AZ__Uuid, Quaternion): any
		OverrideManipulatorTranslation: function(AZ__Uuid, Vector3): any
		RefreshManipulators: function(AZ__Uuid): any
		ResetOrientationForSelectedEntitiesLocal: function(AZ__Uuid): any
		ResetTranslationForSelectedEntitiesLocal: function(AZ__Uuid): any
		SetTransformMode: function(AZ__Uuid): any
	end

	record Broadcast
		CopyOrientationToSelectedEntitiesGroup: function(Quaternion): any
		CopyOrientationToSelectedEntitiesIndividual: function(Quaternion): any
		CopyScaleToSelectedEntitiesIndividualLocal: function(number): any
		CopyScaleToSelectedEntitiesIndividualWorld: function(number): any
		CopyTranslationToSelectedEntitiesGroup: function(Vector3): any
		CopyTranslationToSelectedEntitiesIndividual: function(Vector3): any
		GetTransformMode: function(): any
		OverrideManipulatorOrientation: function(Quaternion): any
		OverrideManipulatorTranslation: function(Vector3): any
		RefreshManipulators: function(): any
		ResetOrientationForSelectedEntitiesLocal: function(): any
		ResetTranslationForSelectedEntitiesLocal: function(): any
		SetTransformMode: function(): any
	end
end


global record EntityBus
	is BusThatHasAHandler<EntityBus>

	interface Notification
		OnEntityActivated: function(self, EntityId): any
		OnEntityDeactivated: function(self, EntityId): any
	end
end


global record EntityPreviewViewportSettingsNotificationBus
	record Event
		OnViewportSettingsChanged: function(Crc32): any
	end

	record Broadcast
		OnViewportSettingsChanged: function(): any
	end
end


global record EntityPreviewViewportSettingsRequestBus
	record Event
		GetAlternateSkyboxEnabled: function(Crc32): any
		GetFieldOfView: function(Crc32): any
		GetGridEnabled: function(Crc32): any
		GetLastLightingPresetPath: function(Crc32): any
		GetLastLightingPresetPathWithoutAlias: function(Crc32): any
		GetLastModelPresetPath: function(Crc32): any
		GetLastModelPresetPathWithoutAlias: function(Crc32): any
		GetLastRenderPipelinePath: function(Crc32): any
		GetLastRenderPipelinePathWithoutAlias: function(Crc32): any
		GetLightingPreset: function(Crc32): any
		GetModelPreset: function(Crc32): any
		GetRegisteredLightingPresetPaths: function(Crc32): any
		GetRegisteredModelPresetPaths: function(Crc32): any
		GetRegisteredRenderPipelinePaths: function(Crc32): any
		GetShadowCatcherEnabled: function(Crc32): any
		LoadLightingPreset: function(Crc32, AZStd__basic_string): any
		LoadLightingPresetByAssetId: function(Crc32, AssetId): any
		LoadModelPreset: function(Crc32, AZStd__basic_string): any
		LoadModelPresetByAssetId: function(Crc32, AssetId): any
		LoadRenderPipeline: function(Crc32, AZStd__basic_string): any
		LoadRenderPipelineByAssetId: function(Crc32, AssetId): any
		RegisterLightingPresetPath: function(Crc32, AZStd__basic_string): any
		RegisterModelPresetPath: function(Crc32, AZStd__basic_string): any
		RegisterRenderPipelinePath: function(Crc32, AZStd__basic_string): any
		SaveLightingPreset: function(Crc32, AZStd__basic_string): any
		SaveModelPreset: function(Crc32, AZStd__basic_string): any
		SetAlternateSkyboxEnabled: function(Crc32, boolean): any
		SetFieldOfView: function(Crc32, number): any
		SetGridEnabled: function(Crc32, boolean): any
		SetLightingPreset: function(Crc32, AZ__Render__LightingPreset): any
		SetModelPreset: function(Crc32, AZ__Render__ModelPreset): any
		SetShadowCatcherEnabled: function(Crc32, boolean): any
		UnregisterLightingPresetPath: function(Crc32, AZStd__basic_string): any
		UnregisterModelPresetPath: function(Crc32, AZStd__basic_string): any
		UnregisterRenderPipelinePath: function(Crc32, AZStd__basic_string): any
	end

	record Broadcast
		GetAlternateSkyboxEnabled: function(): any
		GetFieldOfView: function(): any
		GetGridEnabled: function(): any
		GetLastLightingPresetPath: function(): any
		GetLastLightingPresetPathWithoutAlias: function(): any
		GetLastModelPresetPath: function(): any
		GetLastModelPresetPathWithoutAlias: function(): any
		GetLastRenderPipelinePath: function(): any
		GetLastRenderPipelinePathWithoutAlias: function(): any
		GetLightingPreset: function(): any
		GetModelPreset: function(): any
		GetRegisteredLightingPresetPaths: function(): any
		GetRegisteredModelPresetPaths: function(): any
		GetRegisteredRenderPipelinePaths: function(): any
		GetShadowCatcherEnabled: function(): any
		LoadLightingPreset: function(AZStd__basic_string): any
		LoadLightingPresetByAssetId: function(AssetId): any
		LoadModelPreset: function(AZStd__basic_string): any
		LoadModelPresetByAssetId: function(AssetId): any
		LoadRenderPipeline: function(AZStd__basic_string): any
		LoadRenderPipelineByAssetId: function(AssetId): any
		RegisterLightingPresetPath: function(AZStd__basic_string): any
		RegisterModelPresetPath: function(AZStd__basic_string): any
		RegisterRenderPipelinePath: function(AZStd__basic_string): any
		SaveLightingPreset: function(AZStd__basic_string): any
		SaveModelPreset: function(AZStd__basic_string): any
		SetAlternateSkyboxEnabled: function(boolean): any
		SetFieldOfView: function(number): any
		SetGridEnabled: function(boolean): any
		SetLightingPreset: function(AZ__Render__LightingPreset): any
		SetModelPreset: function(AZ__Render__ModelPreset): any
		SetShadowCatcherEnabled: function(boolean): any
		UnregisterLightingPresetPath: function(AZStd__basic_string): any
		UnregisterModelPresetPath: function(AZStd__basic_string): any
		UnregisterRenderPipelinePath: function(AZStd__basic_string): any
	end
end


global record EntityReferenceRequestBus
	record Event
		GetEntityReferences: function(EntityId): any
	end

	record Broadcast
		GetEntityReferences: function(): any
	end
end


global record EntityUtilityBus
	record Broadcast
		CreateEditorReadyEntity: function(AZStd__basic_string): any
		FindMatchingComponents: function(AZStd__basic_string): any
		GetComponentDefaultJson: function(AZStd__basic_string): any
		GetOrAddComponentByTypeName: function(EntityId, AZStd__basic_string): any
		UpdateComponentForEntity: function(EntityId, BehaviorComponentId, AZStd__basic_string): any
	end
end


global record ExposureControlRequestBus
	record Event
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetExposureControlType: function(EntityId): any
		GetExposureControlTypeOverride: function(EntityId): any
		GetEyeAdaptationExposureMax: function(EntityId): any
		GetEyeAdaptationExposureMaxOverride: function(EntityId): any
		GetEyeAdaptationExposureMin: function(EntityId): any
		GetEyeAdaptationExposureMinOverride: function(EntityId): any
		GetEyeAdaptationSpeedDown: function(EntityId): any
		GetEyeAdaptationSpeedDownOverride: function(EntityId): any
		GetEyeAdaptationSpeedUp: function(EntityId): any
		GetEyeAdaptationSpeedUpOverride: function(EntityId): any
		GetHeatmapEnabled: function(EntityId): any
		GetHeatmapEnabledOverride: function(EntityId): any
		GetManualCompensation: function(EntityId): any
		GetManualCompensationOverride: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetExposureControlType: function(EntityId): any
		SetExposureControlTypeOverride: function(EntityId, boolean): any
		SetEyeAdaptationExposureMax: function(EntityId, number): any
		SetEyeAdaptationExposureMaxOverride: function(EntityId, number): any
		SetEyeAdaptationExposureMin: function(EntityId, number): any
		SetEyeAdaptationExposureMinOverride: function(EntityId, number): any
		SetEyeAdaptationSpeedDown: function(EntityId, number): any
		SetEyeAdaptationSpeedDownOverride: function(EntityId, number): any
		SetEyeAdaptationSpeedUp: function(EntityId, number): any
		SetEyeAdaptationSpeedUpOverride: function(EntityId, number): any
		SetHeatmapEnabled: function(EntityId, boolean): any
		SetHeatmapEnabledOverride: function(EntityId, boolean): any
		SetManualCompensation: function(EntityId, number): any
		SetManualCompensationOverride: function(EntityId, number): any
	end

	record Broadcast
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetExposureControlType: function(): any
		GetExposureControlTypeOverride: function(): any
		GetEyeAdaptationExposureMax: function(): any
		GetEyeAdaptationExposureMaxOverride: function(): any
		GetEyeAdaptationExposureMin: function(): any
		GetEyeAdaptationExposureMinOverride: function(): any
		GetEyeAdaptationSpeedDown: function(): any
		GetEyeAdaptationSpeedDownOverride: function(): any
		GetEyeAdaptationSpeedUp: function(): any
		GetEyeAdaptationSpeedUpOverride: function(): any
		GetHeatmapEnabled: function(): any
		GetHeatmapEnabledOverride: function(): any
		GetManualCompensation: function(): any
		GetManualCompensationOverride: function(): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetExposureControlType: function(): any
		SetExposureControlTypeOverride: function(boolean): any
		SetEyeAdaptationExposureMax: function(number): any
		SetEyeAdaptationExposureMaxOverride: function(number): any
		SetEyeAdaptationExposureMin: function(number): any
		SetEyeAdaptationExposureMinOverride: function(number): any
		SetEyeAdaptationSpeedDown: function(number): any
		SetEyeAdaptationSpeedDownOverride: function(number): any
		SetEyeAdaptationSpeedUp: function(number): any
		SetEyeAdaptationSpeedUpOverride: function(number): any
		SetHeatmapEnabled: function(boolean): any
		SetHeatmapEnabledOverride: function(boolean): any
		SetManualCompensation: function(number): any
		SetManualCompensationOverride: function(number): any
	end
end


global record FilmGrainRequestBus
	record Event
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetGrainPath: function(EntityId): any
		GetIntensity: function(EntityId): any
		GetIntensityOverride: function(EntityId): any
		GetLuminanceDampening: function(EntityId): any
		GetLuminanceDampeningOverride: function(EntityId): any
		GetTilingScale: function(EntityId): any
		GetTilingScaleOverride: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetGrainPath: function(EntityId, AZStd__basic_string): any
		SetIntensity: function(EntityId, number): any
		SetIntensityOverride: function(EntityId, number): any
		SetLuminanceDampening: function(EntityId, number): any
		SetLuminanceDampeningOverride: function(EntityId, number): any
		SetTilingScale: function(EntityId, number): any
		SetTilingScaleOverride: function(EntityId, number): any
	end

	record Broadcast
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetGrainPath: function(): any
		GetIntensity: function(): any
		GetIntensityOverride: function(): any
		GetLuminanceDampening: function(): any
		GetLuminanceDampeningOverride: function(): any
		GetTilingScale: function(): any
		GetTilingScaleOverride: function(): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetGrainPath: function(AZStd__basic_string): any
		SetIntensity: function(number): any
		SetIntensityOverride: function(number): any
		SetLuminanceDampening: function(number): any
		SetLuminanceDampeningOverride: function(number): any
		SetTilingScale: function(number): any
		SetTilingScaleOverride: function(number): any
	end
end


global record FlyCameraInputBus
	record Event
		GetIsEnabled: function(EntityId): any
		SetIsEnabled: function(EntityId, boolean): any
	end

	record Broadcast
		GetIsEnabled: function(): any
		SetIsEnabled: function(boolean): any
	end
end


global record ForceLinearDampingRequestBus
	record Event
		GetDamping: function(EntityId): any
		SetDamping: function(EntityId, number): any
	end

	record Broadcast
		GetDamping: function(): any
		SetDamping: function(number): any
	end
end


global record ForceLocalSpaceRequestBus
	record Event
		GetDirection: function(EntityId): any
		GetMagnitude: function(EntityId): any
		SetDirection: function(EntityId, Vector3): any
		SetMagnitude: function(EntityId, number): any
	end

	record Broadcast
		GetDirection: function(): any
		GetMagnitude: function(): any
		SetDirection: function(Vector3): any
		SetMagnitude: function(number): any
	end
end


global record ForcePointRequestBus
	record Event
		GetMagnitude: function(EntityId): any
		SetMagnitude: function(EntityId, number): any
	end

	record Broadcast
		GetMagnitude: function(): any
		SetMagnitude: function(number): any
	end
end


global record ForceRegionNotificationBus
	is BusThatHasAHandler<ForceRegionNotificationBus>

	interface Notification
		OnCalculateNetForce: function(self, EntityId, EntityId, Vector3, number): any
	end
end


global record ForceSimpleDragRequestBus
	record Event
		GetDensity: function(EntityId): any
		SetDensity: function(EntityId, number): any
	end

	record Broadcast
		GetDensity: function(): any
		SetDensity: function(number): any
	end
end


global record ForceSplineFollowRequestBus
	record Event
		GetDampingRatio: function(EntityId): any
		GetFrequency: function(EntityId): any
		GetLookAhead: function(EntityId): any
		GetTargetSpeed: function(EntityId): any
		SetDampingRatio: function(EntityId, number): any
		SetFrequency: function(EntityId, number): any
		SetLookAhead: function(EntityId, number): any
		SetTargetSpeed: function(EntityId, number): any
	end

	record Broadcast
		GetDampingRatio: function(): any
		GetFrequency: function(): any
		GetLookAhead: function(): any
		GetTargetSpeed: function(): any
		SetDampingRatio: function(number): any
		SetFrequency: function(number): any
		SetLookAhead: function(number): any
		SetTargetSpeed: function(number): any
	end
end


global record ForceWorldSpaceRequestBus
	record Event
		GetDirection: function(EntityId): any
		GetMagnitude: function(EntityId): any
		SetDirection: function(EntityId, Vector3): any
		SetMagnitude: function(EntityId, number): any
	end

	record Broadcast
		GetDirection: function(): any
		GetMagnitude: function(): any
		SetDirection: function(Vector3): any
		SetMagnitude: function(number): any
	end
end


global record GameEntityContextEventBus
	record Broadcast
		OnGameEntitiesReset: function(): any
		OnGameEntitiesStarted: function(): any
		OnPreGameEntitiesStarted: function(): any
	end
end


global record GameEntityContextRequestBus
	record Broadcast
		ActivateGameEntity: function(EntityId): any
		CreateGameEntity: function(string): any
		DeactivateGameEntity: function(EntityId): any
		DestroyGameEntity: function(EntityId): any
		DestroyGameEntityAndDescendants: function(EntityId): any
		GetEntityName: function(EntityId): any
	end
end


global record GameplayNotificationBus
	is BusThatHasAHandler<GameplayNotificationBus>

	record Event
		OnEventBegin: function(GameplayNotificationId, AZStd__any): any
		OnEventEnd: function(GameplayNotificationId, AZStd__any): any
		OnEventUpdating: function(GameplayNotificationId, AZStd__any): any
	end

	record Broadcast
		OnEventBegin: function(AZStd__any): any
		OnEventEnd: function(AZStd__any): any
		OnEventUpdating: function(AZStd__any): any
	end
	interface Notification
		OnEventBegin: function(self, AZStd__any): any
		OnEventEnd: function(self, AZStd__any): any
		OnEventUpdating: function(self, AZStd__any): any
	end
end


global record GradientRequestBus
	record Event
		GetValue: function(EntityId, GradientSampleParams): any
	end

	record Broadcast
		GetValue: function(GradientSampleParams): any
	end
end


global record GradientTransformModifierRequestBus
	record Event
		GetAllowReference: function(EntityId): any
		GetBounds: function(EntityId): any
		GetCenter: function(EntityId): any
		GetFrequencyZoom: function(EntityId): any
		GetIs3D: function(EntityId): any
		GetOverrideBounds: function(EntityId): any
		GetOverrideRotate: function(EntityId): any
		GetOverrideScale: function(EntityId): any
		GetOverrideTranslate: function(EntityId): any
		GetRotate: function(EntityId): any
		GetScale: function(EntityId): any
		GetShapeReference: function(EntityId): any
		GetTransformType: function(EntityId): any
		GetTranslate: function(EntityId): any
		GetWrappingType: function(EntityId): any
		SetAllowReference: function(EntityId, boolean): any
		SetBounds: function(EntityId, Vector3): any
		SetCenter: function(EntityId, Vector3): any
		SetFrequencyZoom: function(EntityId, number): any
		SetIs3D: function(EntityId, boolean): any
		SetOverrideBounds: function(EntityId, boolean): any
		SetOverrideRotate: function(EntityId, boolean): any
		SetOverrideScale: function(EntityId, boolean): any
		SetOverrideTranslate: function(EntityId, boolean): any
		SetRotate: function(EntityId, Vector3): any
		SetScale: function(EntityId, Vector3): any
		SetShapeReference: function(EntityId, EntityId): any
		SetTransformType: function(EntityId): any
		SetTranslate: function(EntityId, Vector3): any
		SetWrappingType: function(EntityId): any
	end

	record Broadcast
		GetAllowReference: function(): any
		GetBounds: function(): any
		GetCenter: function(): any
		GetFrequencyZoom: function(): any
		GetIs3D: function(): any
		GetOverrideBounds: function(): any
		GetOverrideRotate: function(): any
		GetOverrideScale: function(): any
		GetOverrideTranslate: function(): any
		GetRotate: function(): any
		GetScale: function(): any
		GetShapeReference: function(): any
		GetTransformType: function(): any
		GetTranslate: function(): any
		GetWrappingType: function(): any
		SetAllowReference: function(boolean): any
		SetBounds: function(Vector3): any
		SetCenter: function(Vector3): any
		SetFrequencyZoom: function(number): any
		SetIs3D: function(boolean): any
		SetOverrideBounds: function(boolean): any
		SetOverrideRotate: function(boolean): any
		SetOverrideScale: function(boolean): any
		SetOverrideTranslate: function(boolean): any
		SetRotate: function(Vector3): any
		SetScale: function(Vector3): any
		SetShapeReference: function(EntityId): any
		SetTransformType: function(): any
		SetTranslate: function(Vector3): any
		SetWrappingType: function(): any
	end
end


global record GraphDocumentRequestBus
	record Event
		CompileGraph: function(AZ__Uuid): any
		GetGeneratedFilePaths: function(AZ__Uuid): any
		GetGraph: function(AZ__Uuid): any
		GetGraphId: function(AZ__Uuid): any
		GetGraphName: function(AZ__Uuid): any
		IsCompileGraphQueued: function(AZ__Uuid): any
		QueueCompileGraph: function(AZ__Uuid): any
		SetGeneratedFilePaths: function(AZ__Uuid, AZStd__vector): any
	end

	record Broadcast
		CompileGraph: function(): any
		GetGeneratedFilePaths: function(): any
		GetGraph: function(): any
		GetGraphId: function(): any
		GetGraphName: function(): any
		IsCompileGraphQueued: function(): any
		QueueCompileGraph: function(): any
		SetGeneratedFilePaths: function(AZStd__vector): any
	end
end


global record GraphicsProfilerBus
	record Broadcast
		EndCapture: function(any): any
		StartCapture: function(any): any
		TriggerCapture: function(): any
	end
end


global record GridComponentRequestBus
	record Event
		GetAxisColor: function(EntityId): any
		GetPrimaryColor: function(EntityId): any
		GetPrimarySpacing: function(EntityId): any
		GetSecondaryColor: function(EntityId): any
		GetSecondarySpacing: function(EntityId): any
		GetSize: function(EntityId): any
		SetAxisColor: function(EntityId, Color): any
		SetPrimaryColor: function(EntityId, Color): any
		SetPrimarySpacing: function(EntityId, number): any
		SetSecondaryColor: function(EntityId, Color): any
		SetSecondarySpacing: function(EntityId, number): any
		SetSize: function(EntityId, number): any
	end

	record Broadcast
		GetAxisColor: function(): any
		GetPrimaryColor: function(): any
		GetPrimarySpacing: function(): any
		GetSecondaryColor: function(): any
		GetSecondarySpacing: function(): any
		GetSize: function(): any
		SetAxisColor: function(Color): any
		SetPrimaryColor: function(Color): any
		SetPrimarySpacing: function(number): any
		SetSecondaryColor: function(Color): any
		SetSecondarySpacing: function(number): any
		SetSize: function(number): any
	end
end


global record HDRColorGradingRequestBus
	record Event
		GetChannelMixingBlue: function(EntityId): any
		GetChannelMixingGreen: function(EntityId): any
		GetChannelMixingRed: function(EntityId): any
		GetColorAdjustmentWeight: function(EntityId): any
		GetColorFilterSwatch: function(EntityId): any
		GetColorGradingContrast: function(EntityId): any
		GetColorGradingExposure: function(EntityId): any
		GetColorGradingFilterIntensity: function(EntityId): any
		GetColorGradingFilterMultiply: function(EntityId): any
		GetColorGradingHueShift: function(EntityId): any
		GetColorGradingPostSaturation: function(EntityId): any
		GetColorGradingPreSaturation: function(EntityId): any
		GetCustomMaxExposure: function(EntityId): any
		GetCustomMinExposure: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetFinalAdjustmentWeight: function(EntityId): any
		GetGenerateLut: function(EntityId): any
		GetLutResolution: function(EntityId): any
		GetShaperPresetType: function(EntityId): any
		GetSmhHighlightsColor: function(EntityId): any
		GetSmhHighlightsEnd: function(EntityId): any
		GetSmhHighlightsStart: function(EntityId): any
		GetSmhMidtonesColor: function(EntityId): any
		GetSmhShadowsColor: function(EntityId): any
		GetSmhShadowsEnd: function(EntityId): any
		GetSmhShadowsStart: function(EntityId): any
		GetSmhWeight: function(EntityId): any
		GetSplitToneBalance: function(EntityId): any
		GetSplitToneHighlightsColor: function(EntityId): any
		GetSplitToneShadowsColor: function(EntityId): any
		GetSplitToneWeight: function(EntityId): any
		GetWhiteBalanceKelvin: function(EntityId): any
		GetWhiteBalanceLuminancePreservation: function(EntityId): any
		GetWhiteBalanceTint: function(EntityId): any
		GetWhiteBalanceWeight: function(EntityId): any
		SetChannelMixingBlue: function(EntityId, Vector3): any
		SetChannelMixingGreen: function(EntityId, Vector3): any
		SetChannelMixingRed: function(EntityId, Vector3): any
		SetColorAdjustmentWeight: function(EntityId, number): any
		SetColorFilterSwatch: function(EntityId, Vector3): any
		SetColorGradingContrast: function(EntityId, number): any
		SetColorGradingExposure: function(EntityId, number): any
		SetColorGradingFilterIntensity: function(EntityId, number): any
		SetColorGradingFilterMultiply: function(EntityId, number): any
		SetColorGradingHueShift: function(EntityId, number): any
		SetColorGradingPostSaturation: function(EntityId, number): any
		SetColorGradingPreSaturation: function(EntityId, number): any
		SetCustomMaxExposure: function(EntityId, number): any
		SetCustomMinExposure: function(EntityId, number): any
		SetEnabled: function(EntityId, boolean): any
		SetFinalAdjustmentWeight: function(EntityId, number): any
		SetGenerateLut: function(EntityId, boolean): any
		SetLutResolution: function(EntityId): any
		SetShaperPresetType: function(EntityId): any
		SetSmhHighlightsColor: function(EntityId, Vector3): any
		SetSmhHighlightsEnd: function(EntityId, number): any
		SetSmhHighlightsStart: function(EntityId, number): any
		SetSmhMidtonesColor: function(EntityId, Vector3): any
		SetSmhShadowsColor: function(EntityId, Vector3): any
		SetSmhShadowsEnd: function(EntityId, number): any
		SetSmhShadowsStart: function(EntityId, number): any
		SetSmhWeight: function(EntityId, number): any
		SetSplitToneBalance: function(EntityId, number): any
		SetSplitToneHighlightsColor: function(EntityId, Vector3): any
		SetSplitToneShadowsColor: function(EntityId, Vector3): any
		SetSplitToneWeight: function(EntityId, number): any
		SetWhiteBalanceKelvin: function(EntityId, number): any
		SetWhiteBalanceLuminancePreservation: function(EntityId, number): any
		SetWhiteBalanceTint: function(EntityId, number): any
		SetWhiteBalanceWeight: function(EntityId, number): any
	end

	record Broadcast
		GetChannelMixingBlue: function(): any
		GetChannelMixingGreen: function(): any
		GetChannelMixingRed: function(): any
		GetColorAdjustmentWeight: function(): any
		GetColorFilterSwatch: function(): any
		GetColorGradingContrast: function(): any
		GetColorGradingExposure: function(): any
		GetColorGradingFilterIntensity: function(): any
		GetColorGradingFilterMultiply: function(): any
		GetColorGradingHueShift: function(): any
		GetColorGradingPostSaturation: function(): any
		GetColorGradingPreSaturation: function(): any
		GetCustomMaxExposure: function(): any
		GetCustomMinExposure: function(): any
		GetEnabled: function(): any
		GetFinalAdjustmentWeight: function(): any
		GetGenerateLut: function(): any
		GetLutResolution: function(): any
		GetShaperPresetType: function(): any
		GetSmhHighlightsColor: function(): any
		GetSmhHighlightsEnd: function(): any
		GetSmhHighlightsStart: function(): any
		GetSmhMidtonesColor: function(): any
		GetSmhShadowsColor: function(): any
		GetSmhShadowsEnd: function(): any
		GetSmhShadowsStart: function(): any
		GetSmhWeight: function(): any
		GetSplitToneBalance: function(): any
		GetSplitToneHighlightsColor: function(): any
		GetSplitToneShadowsColor: function(): any
		GetSplitToneWeight: function(): any
		GetWhiteBalanceKelvin: function(): any
		GetWhiteBalanceLuminancePreservation: function(): any
		GetWhiteBalanceTint: function(): any
		GetWhiteBalanceWeight: function(): any
		SetChannelMixingBlue: function(Vector3): any
		SetChannelMixingGreen: function(Vector3): any
		SetChannelMixingRed: function(Vector3): any
		SetColorAdjustmentWeight: function(number): any
		SetColorFilterSwatch: function(Vector3): any
		SetColorGradingContrast: function(number): any
		SetColorGradingExposure: function(number): any
		SetColorGradingFilterIntensity: function(number): any
		SetColorGradingFilterMultiply: function(number): any
		SetColorGradingHueShift: function(number): any
		SetColorGradingPostSaturation: function(number): any
		SetColorGradingPreSaturation: function(number): any
		SetCustomMaxExposure: function(number): any
		SetCustomMinExposure: function(number): any
		SetEnabled: function(boolean): any
		SetFinalAdjustmentWeight: function(number): any
		SetGenerateLut: function(boolean): any
		SetLutResolution: function(): any
		SetShaperPresetType: function(): any
		SetSmhHighlightsColor: function(Vector3): any
		SetSmhHighlightsEnd: function(number): any
		SetSmhHighlightsStart: function(number): any
		SetSmhMidtonesColor: function(Vector3): any
		SetSmhShadowsColor: function(Vector3): any
		SetSmhShadowsEnd: function(number): any
		SetSmhShadowsStart: function(number): any
		SetSmhWeight: function(number): any
		SetSplitToneBalance: function(number): any
		SetSplitToneHighlightsColor: function(Vector3): any
		SetSplitToneShadowsColor: function(Vector3): any
		SetSplitToneWeight: function(number): any
		SetWhiteBalanceKelvin: function(number): any
		SetWhiteBalanceLuminancePreservation: function(number): any
		SetWhiteBalanceTint: function(number): any
		SetWhiteBalanceWeight: function(number): any
	end
end


global record HDRiSkyboxRequestBus
	record Event
		GetCubemapAssetId: function(EntityId): any
		GetCubemapAssetPath: function(EntityId): any
		GetExposure: function(EntityId): any
		SetCubemapAssetId: function(EntityId, AssetId): any
		SetCubemapAssetPath: function(EntityId, AZStd__basic_string): any
		SetExposure: function(EntityId, number): any
	end

	record Broadcast
		GetCubemapAssetId: function(): any
		GetCubemapAssetPath: function(): any
		GetExposure: function(): any
		SetCubemapAssetId: function(AssetId): any
		SetCubemapAssetPath: function(AZStd__basic_string): any
		SetExposure: function(number): any
	end
end


global record HeightfieldProviderRequestsBus
	record Event
		GetHeightfieldAabb: function(EntityId): any
		GetHeightfieldGridColumns: function(EntityId): any
		GetHeightfieldGridRows: function(EntityId): any
		GetHeightfieldGridSpacing: function(EntityId): any
		GetHeightfieldMaxHeight: function(EntityId): any
		GetHeightfieldMinHeight: function(EntityId): any
		GetHeightfieldTransform: function(EntityId): any
		GetHeights: function(EntityId): any
		GetHeightsAndMaterials: function(EntityId): any
		GetMaterialList: function(EntityId): any
	end

	record Broadcast
		GetHeightfieldAabb: function(): any
		GetHeightfieldGridColumns: function(): any
		GetHeightfieldGridRows: function(): any
		GetHeightfieldGridSpacing: function(): any
		GetHeightfieldMaxHeight: function(): any
		GetHeightfieldMinHeight: function(): any
		GetHeightfieldTransform: function(): any
		GetHeights: function(): any
		GetHeightsAndMaterials: function(): any
		GetMaterialList: function(): any
	end
end


global record ImageBasedLightComponentRequestBus
	record Event
		GetDiffuseImageAssetId: function(EntityId): any
		GetDiffuseImageAssetPath: function(EntityId): any
		GetSpecularImageAssetId: function(EntityId): any
		GetSpecularImageAssetPath: function(EntityId): any
		SetDiffuseImageAssetId: function(EntityId, AssetId): any
		SetDiffuseImageAssetPath: function(EntityId, AZStd__basic_string): any
		SetSpecularImageAssetId: function(EntityId, AssetId): any
		SetSpecularImageAssetPath: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetDiffuseImageAssetId: function(): any
		GetDiffuseImageAssetPath: function(): any
		GetSpecularImageAssetId: function(): any
		GetSpecularImageAssetPath: function(): any
		SetDiffuseImageAssetId: function(AssetId): any
		SetDiffuseImageAssetPath: function(AZStd__basic_string): any
		SetSpecularImageAssetId: function(AssetId): any
		SetSpecularImageAssetPath: function(AZStd__basic_string): any
	end
end


global record InputChannelNotificationBus
	is BusThatHasAHandler<InputChannelNotificationBus>

	interface Notification
		OnInputChannelEvent: function(self, InputChannel, boolean): any
	end
end


global record InputChannelRequestBus
	record Event
		GetInputChannel: function(BusIdType): any
		SimulateRawInput: function(BusIdType, number): any
		SimulateRawInput2D: function(BusIdType, number, number): any
		SimulateRawInput3D: function(BusIdType, number, number, number): any
		SimulateRawInputWithPosition2D: function(BusIdType, number, number, number): any
	end

	record Broadcast
		GetInputChannel: function(): any
		SimulateRawInput: function(number): any
		SimulateRawInput2D: function(number, number): any
		SimulateRawInput3D: function(number, number, number): any
		SimulateRawInputWithPosition2D: function(number, number, number): any
	end
end


global record InputDeviceNotificationBus
	is BusThatHasAHandler<InputDeviceNotificationBus>

	interface Notification
		OnInputDeviceConnectedEvent: function(self, InputDevice): any
		OnInputDeviceDisconnectedEvent: function(self, InputDevice): any
	end
end


global record InputDeviceRequestBus
	record Event
		GetInputDevice: function(InputDeviceId): any
	end

	record Broadcast
		GetInputDevice: function(): any
	end
end


global record InputEventNotificationBus
	is BusThatHasAHandler<InputEventNotificationBus>

	record Event
		OnHeld: function(InputEventNotificationId, number): any
		OnPressed: function(InputEventNotificationId, number): any
		OnReleased: function(InputEventNotificationId, number): any
	end

	record Broadcast
		OnHeld: function(number): any
		OnPressed: function(number): any
		OnReleased: function(number): any
	end
	interface Notification
		OnHeld: function(self, number): any
		OnPressed: function(self, number): any
		OnReleased: function(self, number): any
	end
end


global record InputSystemNotificationBus
	is BusThatHasAHandler<InputSystemNotificationBus>

	interface Notification
		OnPostInputUpdate: function(self): any
		OnPreInputUpdate: function(self): any
	end
end


global record InputSystemRequestBus
	record Broadcast
		RecreateEnabledInputDevices: function(): any
	end
end


global record InspectorRequestBus
	record Event
		AddGroupsBegin: function(AZ__Uuid): any
		AddGroupsEnd: function(AZ__Uuid): any
		ClearHeading: function(AZ__Uuid): any
		CollapseAll: function(AZ__Uuid): any
		CollapseGroup: function(AZ__Uuid, AZStd__basic_string): any
		ExpandAll: function(AZ__Uuid): any
		ExpandGroup: function(AZ__Uuid, AZStd__basic_string): any
		IsGroupExpanded: function(AZ__Uuid, AZStd__basic_string): any
		IsGroupHidden: function(AZ__Uuid, AZStd__basic_string): any
		IsGroupVisible: function(AZ__Uuid, AZStd__basic_string): any
		RebuildAll: function(AZ__Uuid): any
		RebuildGroup: function(AZ__Uuid, AZStd__basic_string): any
		RefreshAll: function(AZ__Uuid): any
		RefreshGroup: function(AZ__Uuid, AZStd__basic_string): any
		Reset: function(AZ__Uuid): any
		SetGroupVisible: function(AZ__Uuid, AZStd__basic_string): any
	end

	record Broadcast
		AddGroupsBegin: function(): any
		AddGroupsEnd: function(): any
		ClearHeading: function(): any
		CollapseAll: function(): any
		CollapseGroup: function(AZStd__basic_string): any
		ExpandAll: function(): any
		ExpandGroup: function(AZStd__basic_string): any
		IsGroupExpanded: function(AZStd__basic_string): any
		IsGroupHidden: function(AZStd__basic_string): any
		IsGroupVisible: function(AZStd__basic_string): any
		RebuildAll: function(): any
		RebuildGroup: function(AZStd__basic_string): any
		RefreshAll: function(): any
		RefreshGroup: function(AZStd__basic_string): any
		Reset: function(): any
		SetGroupVisible: function(AZStd__basic_string): any
	end
end


global record InvertGradientRequestBus
	record Event
		GetGradientSampler: function(EntityId): any
	end

	record Broadcast
		GetGradientSampler: function(): any
	end
end


global record LevelsGradientRequestBus
	record Event
		GetGradientSampler: function(EntityId): any
		GetInputMax: function(EntityId): any
		GetInputMid: function(EntityId): any
		GetInputMin: function(EntityId): any
		GetOutputMax: function(EntityId): any
		GetOutputMin: function(EntityId): any
		SetInputMax: function(EntityId, number): any
		SetInputMid: function(EntityId, number): any
		SetInputMin: function(EntityId, number): any
		SetOutputMax: function(EntityId, number): any
		SetOutputMin: function(EntityId, number): any
	end

	record Broadcast
		GetGradientSampler: function(): any
		GetInputMax: function(): any
		GetInputMid: function(): any
		GetInputMin: function(): any
		GetOutputMax: function(): any
		GetOutputMin: function(): any
		SetInputMax: function(number): any
		SetInputMid: function(number): any
		SetInputMin: function(number): any
		SetOutputMax: function(number): any
		SetOutputMin: function(number): any
	end
end


global record LookAt
	record Event
		SetAxis: function(EntityId): any
		SetAxis: function(EntityId): any
		SetTarget: function(EntityId, EntityId): any
		SetTarget: function(EntityId, EntityId): any
		SetTargetPosition: function(EntityId, Vector3): any
		SetTargetPosition: function(EntityId, Vector3): any
	end

	record Broadcast
		SetAxis: function(): any
		SetAxis: function(): any
		SetTarget: function(EntityId): any
		SetTarget: function(EntityId): any
		SetTargetPosition: function(Vector3): any
		SetTargetPosition: function(Vector3): any
	end
end


global record LookAtNotification
	is BusThatHasAHandler<LookAtNotification>

	interface Notification
		OnTargetChanged: function(self, EntityId): any
		OnTargetChanged: function(self, EntityId): any
	end
end


global record LookModificationRequestBus
	record Event
		GetColorGradingLut: function(EntityId): any
		GetColorGradingLutIntensity: function(EntityId): any
		GetColorGradingLutOverride: function(EntityId): any
		GetCustomMaxExposure: function(EntityId): any
		GetCustomMinExposure: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetShaperPresetType: function(EntityId): any
		SetColorGradingLut: function(EntityId, Asset): any
		SetColorGradingLutIntensity: function(EntityId, number): any
		SetColorGradingLutOverride: function(EntityId, number): any
		SetCustomMaxExposure: function(EntityId, number): any
		SetCustomMinExposure: function(EntityId, number): any
		SetEnabled: function(EntityId, boolean): any
		SetShaperPresetType: function(EntityId): any
	end

	record Broadcast
		GetColorGradingLut: function(): any
		GetColorGradingLutIntensity: function(): any
		GetColorGradingLutOverride: function(): any
		GetCustomMaxExposure: function(): any
		GetCustomMinExposure: function(): any
		GetEnabled: function(): any
		GetShaperPresetType: function(): any
		SetColorGradingLut: function(Asset): any
		SetColorGradingLutIntensity: function(number): any
		SetColorGradingLutOverride: function(number): any
		SetCustomMaxExposure: function(number): any
		SetCustomMinExposure: function(number): any
		SetEnabled: function(boolean): any
		SetShaperPresetType: function(): any
	end
end


global record MaterialComponentRequestBus
	record Event
		ClearAllPropertyValues: function(EntityId): any
		ClearMaterialAssetId: function(EntityId, AZ__Render__MaterialAssignmentId): any
		ClearMaterialAssetIdOnDefaultSlot: function(EntityId): any
		ClearMaterialMap: function(EntityId): any
		ClearMaterialsOnInvalidSlots: function(EntityId): any
		ClearMaterialsOnLodSlots: function(EntityId): any
		ClearMaterialsOnModelSlots: function(EntityId): any
		ClearMaterialsWithMissingAssets: function(EntityId): any
		ClearPropertyValue: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		ClearPropertyValues: function(EntityId, AZ__Render__MaterialAssignmentId): any
		FindMaterialAssignmentId: function(EntityId, AZ__u64, AZStd__basic_string): any
		GetActiveMaterialAssetId: function(EntityId, AZ__Render__MaterialAssignmentId): any
		GetDefaultMaterialAssetId: function(EntityId, AZ__Render__MaterialAssignmentId): any
		GetDefaultMaterialMap: function(EntityId): any
		GetMaterialAssetId: function(EntityId, AZ__Render__MaterialAssignmentId): any
		GetMaterialAssetIdOnDefaultSlot: function(EntityId): any
		GetMaterialLabel: function(EntityId, AZ__Render__MaterialAssignmentId): any
		GetMaterialMap: function(EntityId): any
		GetMaterialMapCopy: function(EntityId): any
		GetPropertyValue: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueBool: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueColor: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueEnum: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueFloat: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueImage: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueInt32: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueString: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueUInt32: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueVector2: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueVector3: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueVector4: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValues: function(EntityId, AZ__Render__MaterialAssignmentId): any
		HasPropertiesOverridden: function(EntityId, AZ__Render__MaterialAssignmentId): any
		IsDefaultMaterialAssetReady: function(EntityId, AZ__Render__MaterialAssignmentId): any
		IsMaterialAssetIdOverridden: function(EntityId, AZ__Render__MaterialAssignmentId): any
		IsMaterialAssetReady: function(EntityId, AZ__Render__MaterialAssignmentId): any
		RepairMaterialsWithMissingAssets: function(EntityId): any
		RepairMaterialsWithRenamedProperties: function(EntityId): any
		SetMaterialAssetId: function(EntityId, AZ__Render__MaterialAssignmentId, AssetId): any
		SetMaterialAssetIdOnDefaultSlot: function(EntityId, AssetId): any
		SetMaterialMap: function(EntityId, AZStd__unordered_map): any
		SetPropertyValue: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueBool: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueColor: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueEnum: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueFloat: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueImage: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueInt32: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueString: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueUInt32: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueVector2: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueVector3: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueVector4: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValues: function(EntityId, AZ__Render__MaterialAssignmentId, AZStd__unordered_map): any
	end

	record Broadcast
		ClearAllPropertyValues: function(): any
		ClearMaterialAssetId: function(AZ__Render__MaterialAssignmentId): any
		ClearMaterialAssetIdOnDefaultSlot: function(): any
		ClearMaterialMap: function(): any
		ClearMaterialsOnInvalidSlots: function(): any
		ClearMaterialsOnLodSlots: function(): any
		ClearMaterialsOnModelSlots: function(): any
		ClearMaterialsWithMissingAssets: function(): any
		ClearPropertyValue: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		ClearPropertyValues: function(AZ__Render__MaterialAssignmentId): any
		FindMaterialAssignmentId: function(AZ__u64, AZStd__basic_string): any
		GetActiveMaterialAssetId: function(AZ__Render__MaterialAssignmentId): any
		GetDefaultMaterialAssetId: function(AZ__Render__MaterialAssignmentId): any
		GetDefaultMaterialMap: function(): any
		GetMaterialAssetId: function(AZ__Render__MaterialAssignmentId): any
		GetMaterialAssetIdOnDefaultSlot: function(): any
		GetMaterialLabel: function(AZ__Render__MaterialAssignmentId): any
		GetMaterialMap: function(): any
		GetMaterialMapCopy: function(): any
		GetPropertyValue: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueBool: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueColor: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueEnum: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueFloat: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueImage: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueInt32: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueString: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueUInt32: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueVector2: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueVector3: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValueVector4: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		GetPropertyValues: function(AZ__Render__MaterialAssignmentId): any
		HasPropertiesOverridden: function(AZ__Render__MaterialAssignmentId): any
		IsDefaultMaterialAssetReady: function(AZ__Render__MaterialAssignmentId): any
		IsMaterialAssetIdOverridden: function(AZ__Render__MaterialAssignmentId): any
		IsMaterialAssetReady: function(AZ__Render__MaterialAssignmentId): any
		RepairMaterialsWithMissingAssets: function(): any
		RepairMaterialsWithRenamedProperties: function(): any
		SetMaterialAssetId: function(AZ__Render__MaterialAssignmentId, AssetId): any
		SetMaterialAssetIdOnDefaultSlot: function(AssetId): any
		SetMaterialMap: function(AZStd__unordered_map): any
		SetPropertyValue: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueBool: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueColor: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueEnum: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueFloat: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueImage: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueInt32: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueString: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueUInt32: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueVector2: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueVector3: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValueVector4: function(AZ__Render__MaterialAssignmentId, AZStd__basic_string): any
		SetPropertyValues: function(AZ__Render__MaterialAssignmentId, AZStd__unordered_map): any
	end
end


global record MeshComponentNotificationBus
	is BusThatHasAHandler<MeshComponentNotificationBus>

	interface Notification
		OnModelReady: function(self, Asset): any
	end
end


global record MiniAudioListenerRequestBus
	record Event
		GetChannelCount: function(EntityId): any
		GetGlobalVolumeDecibels: function(EntityId): any
		GetGlobalVolumePercentage: function(EntityId): any
		GetInnerConeAngleInDegrees: function(EntityId): any
		GetInnerConeAngleInRadians: function(EntityId): any
		GetOuterConeAngleInDegrees: function(EntityId): any
		GetOuterConeAngleInRadians: function(EntityId): any
		GetOuterVolumeDecibels: function(EntityId): any
		GetOuterVolumePercentage: function(EntityId): any
		SetFollowEntity: function(EntityId, EntityId): any
		SetGlobalVolumeDecibels: function(EntityId, number): any
		SetGlobalVolumePercentage: function(EntityId, number): any
		SetInnerConeAngleInDegrees: function(EntityId, number): any
		SetInnerConeAngleInRadians: function(EntityId, number): any
		SetOuterConeAngleInDegrees: function(EntityId, number): any
		SetOuterConeAngleInRadians: function(EntityId, number): any
		SetOuterVolumeDecibels: function(EntityId, number): any
		SetOuterVolumePercentage: function(EntityId, number): any
		SetPosition: function(EntityId, Vector3): any
	end

	record Broadcast
		GetChannelCount: function(): any
		GetGlobalVolumeDecibels: function(): any
		GetGlobalVolumePercentage: function(): any
		GetInnerConeAngleInDegrees: function(): any
		GetInnerConeAngleInRadians: function(): any
		GetOuterConeAngleInDegrees: function(): any
		GetOuterConeAngleInRadians: function(): any
		GetOuterVolumeDecibels: function(): any
		GetOuterVolumePercentage: function(): any
		SetFollowEntity: function(EntityId): any
		SetGlobalVolumeDecibels: function(number): any
		SetGlobalVolumePercentage: function(number): any
		SetInnerConeAngleInDegrees: function(number): any
		SetInnerConeAngleInRadians: function(number): any
		SetOuterConeAngleInDegrees: function(number): any
		SetOuterConeAngleInRadians: function(number): any
		SetOuterVolumeDecibels: function(number): any
		SetOuterVolumePercentage: function(number): any
		SetPosition: function(Vector3): any
	end
end


global record MiniAudioPlaybackRequestBus
	record Event
		GetDirection: function(EntityId): any
		GetDirectionalAttenuationFactor: function(EntityId): any
		GetFixedDirection: function(EntityId): any
		GetInnerConeAngleInDegrees: function(EntityId): any
		GetInnerConeAngleInRadians: function(EntityId): any
		GetOuterConeAngleInDegrees: function(EntityId): any
		GetOuterConeAngleInRadians: function(EntityId): any
		GetOuterVolumeDecibels: function(EntityId): any
		GetOuterVolumePercentage: function(EntityId): any
		GetSoundAsset: function(EntityId): any
		GetVolumeDecibels: function(EntityId): any
		GetVolumePercentage: function(EntityId): any
		IsLooping: function(EntityId): any
		Pause: function(EntityId): any
		Play: function(EntityId): any
		SetDirection: function(EntityId, Vector3): any
		SetDirectionalAttenuationFactor: function(EntityId, number): any
		SetFixedDirection: function(EntityId, boolean): any
		SetInnerConeAngleInDegrees: function(EntityId, number): any
		SetInnerConeAngleInRadians: function(EntityId, number): any
		SetLooping: function(EntityId, boolean): any
		SetOuterConeAngleInDegrees: function(EntityId, number): any
		SetOuterConeAngleInRadians: function(EntityId, number): any
		SetOuterVolumeDecibels: function(EntityId, number): any
		SetOuterVolumePercentage: function(EntityId, number): any
		SetSoundAsset: function(EntityId, SoundAssetRef): any
		SetVolumeDecibels: function(EntityId, number): any
		SetVolumePercentage: function(EntityId, number): any
		Stop: function(EntityId): any
	end

	record Broadcast
		GetDirection: function(): any
		GetDirectionalAttenuationFactor: function(): any
		GetFixedDirection: function(): any
		GetInnerConeAngleInDegrees: function(): any
		GetInnerConeAngleInRadians: function(): any
		GetOuterConeAngleInDegrees: function(): any
		GetOuterConeAngleInRadians: function(): any
		GetOuterVolumeDecibels: function(): any
		GetOuterVolumePercentage: function(): any
		GetSoundAsset: function(): any
		GetVolumeDecibels: function(): any
		GetVolumePercentage: function(): any
		IsLooping: function(): any
		Pause: function(): any
		Play: function(): any
		SetDirection: function(Vector3): any
		SetDirectionalAttenuationFactor: function(number): any
		SetFixedDirection: function(boolean): any
		SetInnerConeAngleInDegrees: function(number): any
		SetInnerConeAngleInRadians: function(number): any
		SetLooping: function(boolean): any
		SetOuterConeAngleInDegrees: function(number): any
		SetOuterConeAngleInRadians: function(number): any
		SetOuterVolumeDecibels: function(number): any
		SetOuterVolumePercentage: function(number): any
		SetSoundAsset: function(SoundAssetRef): any
		SetVolumeDecibels: function(number): any
		SetVolumePercentage: function(number): any
		Stop: function(): any
	end
end


global record MixedGradientRequestBus
	record Event
		AddLayer: function(EntityId): any
		GetLayer: function(EntityId, integer): any
		GetNumLayers: function(EntityId): any
		RemoveLayer: function(EntityId, integer): any
	end

	record Broadcast
		AddLayer: function(): any
		GetLayer: function(integer): any
		GetNumLayers: function(): any
		RemoveLayer: function(integer): any
	end
end


global record MotionBlurRequestBus
	record Event
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetSampleNumber: function(EntityId): any
		GetSampleNumberOverride: function(EntityId): any
		GetStrength: function(EntityId): any
		GetStrengthOverride: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetSampleNumber: function(EntityId, integer): any
		SetSampleNumberOverride: function(EntityId, number): any
		SetStrength: function(EntityId, number): any
		SetStrengthOverride: function(EntityId, number): any
	end

	record Broadcast
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetSampleNumber: function(): any
		GetSampleNumberOverride: function(): any
		GetStrength: function(): any
		GetStrengthOverride: function(): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetSampleNumber: function(integer): any
		SetSampleNumberOverride: function(number): any
		SetStrength: function(number): any
		SetStrengthOverride: function(number): any
	end
end


global record NonUniformScaleRequestBus
	record Event
		GetScale: function(EntityId): any
		SetScale: function(EntityId, Vector3): any
	end

	record Broadcast
		GetScale: function(): any
		SetScale: function(Vector3): any
	end
end


global record PaintBrushSessionBus
	record Broadcast
		BeginBrushStroke: function(AZ__Uuid, PaintBrushSettings): any
		EndBrushStroke: function(AZ__Uuid): any
		EndPaintSession: function(AZ__Uuid): any
		IsInBrushStroke: function(AZ__Uuid): any
		PaintToLocation: function(AZ__Uuid, Vector3, PaintBrushSettings): any
		ResetBrushStrokeTracking: function(AZ__Uuid): any
		SmoothToLocation: function(AZ__Uuid, Vector3, PaintBrushSettings): any
		StartPaintSession: function(EntityId): any
	end
end


global record PaniniProjectionRequestBus
	record Event
		GetDepth: function(EntityId): any
		GetDepthOverride: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		SetDepth: function(EntityId, number): any
		SetDepthOverride: function(EntityId, number): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
	end

	record Broadcast
		GetDepth: function(): any
		GetDepthOverride: function(): any
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		SetDepth: function(number): any
		SetDepthOverride: function(number): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
	end
end


global record PerlinGradientRequestBus
	record Event
		GetAmplitude: function(EntityId): any
		GetFrequency: function(EntityId): any
		GetOctaves: function(EntityId): any
		GetRandomSeed: function(EntityId): any
		SetAmplitude: function(EntityId, number): any
		SetFrequency: function(EntityId, number): any
		SetOctaves: function(EntityId, integer): any
		SetRandomSeed: function(EntityId, integer): any
	end

	record Broadcast
		GetAmplitude: function(): any
		GetFrequency: function(): any
		GetOctaves: function(): any
		GetRandomSeed: function(): any
		SetAmplitude: function(number): any
		SetFrequency: function(number): any
		SetOctaves: function(integer): any
		SetRandomSeed: function(integer): any
	end
end


global record PhysXCharacterControllerRequestBus
	record Event
		GetHalfForwardExtent: function(EntityId): any
		GetHalfForwardExtent: function(EntityId): any
		GetHalfSideExtent: function(EntityId): any
		GetHalfSideExtent: function(EntityId): any
		GetHeight: function(EntityId): any
		GetHeight: function(EntityId): any
		GetRadius: function(EntityId): any
		GetRadius: function(EntityId): any
		Resize: function(EntityId, number): any
		Resize: function(EntityId, number): any
		SetHalfForwardExtent: function(EntityId, number): any
		SetHalfForwardExtent: function(EntityId, number): any
		SetHalfSideExtent: function(EntityId, number): any
		SetHalfSideExtent: function(EntityId, number): any
		SetHeight: function(EntityId, number): any
		SetHeight: function(EntityId, number): any
		SetRadius: function(EntityId, number): any
		SetRadius: function(EntityId, number): any
	end

	record Broadcast
		GetHalfForwardExtent: function(): any
		GetHalfForwardExtent: function(): any
		GetHalfSideExtent: function(): any
		GetHalfSideExtent: function(): any
		GetHeight: function(): any
		GetHeight: function(): any
		GetRadius: function(): any
		GetRadius: function(): any
		Resize: function(number): any
		Resize: function(number): any
		SetHalfForwardExtent: function(number): any
		SetHalfForwardExtent: function(number): any
		SetHalfSideExtent: function(number): any
		SetHalfSideExtent: function(number): any
		SetHeight: function(number): any
		SetHeight: function(number): any
		SetRadius: function(number): any
		SetRadius: function(number): any
	end
end


global record PhysicalSkyRequestBus
	record Event
		GetSkyIntensity: function(EntityId): any
		GetSunIntensity: function(EntityId): any
		GetSunRadiusFactor: function(EntityId): any
		GetTurbidity: function(EntityId): any
		SetSkyIntensity: function(EntityId, number): any
		SetSunIntensity: function(EntityId, number): any
		SetSunRadiusFactor: function(EntityId, number): any
		SetTurbidity: function(EntityId, integer): any
	end

	record Broadcast
		GetSkyIntensity: function(): any
		GetSunIntensity: function(): any
		GetSunRadiusFactor: function(): any
		GetTurbidity: function(): any
		SetSkyIntensity: function(number): any
		SetSunIntensity: function(number): any
		SetSunRadiusFactor: function(number): any
		SetTurbidity: function(integer): any
	end
end


global record PolygonPrismShapeComponentRequestBus
	record Event
		AddVertex: function(EntityId, Vector2): any
		ClearVertices: function(EntityId): any
		GetPolygonPrism: function(EntityId): any
		InsertVertex: function(EntityId, integer, Vector2): any
		RemoveVertex: function(EntityId, integer): any
		SetHeight: function(EntityId, number): any
		UpdateVertex: function(EntityId, integer, Vector2): any
	end

	record Broadcast
		AddVertex: function(Vector2): any
		ClearVertices: function(): any
		GetPolygonPrism: function(): any
		InsertVertex: function(integer, Vector2): any
		RemoveVertex: function(integer): any
		SetHeight: function(number): any
		UpdateVertex: function(integer, Vector2): any
	end
end


global record PostFxLayerRequestBus
	record Event
		GetOverrideFactor: function(EntityId): any
		GetPriority: function(EntityId): any
		SetOverrideFactor: function(EntityId, number): any
		SetPriority: function(EntityId, integer): any
	end

	record Broadcast
		GetOverrideFactor: function(): any
		GetPriority: function(): any
		SetOverrideFactor: function(number): any
		SetPriority: function(integer): any
	end
end


global record PostFxWeightRequestBus
end


global record PosterizeGradientRequestBus
	record Event
		GetBands: function(EntityId): any
		GetGradientSampler: function(EntityId): any
		GetModeType: function(EntityId): any
		SetBands: function(EntityId, integer): any
		SetModeType: function(EntityId, integer): any
	end

	record Broadcast
		GetBands: function(): any
		GetGradientSampler: function(): any
		GetModeType: function(): any
		SetBands: function(integer): any
		SetModeType: function(integer): any
	end
end


global record PrefabLoaderScriptingBus
	record Broadcast
		SaveTemplateToString: function(AZ__u64): any
	end
end


global record PrefabSystemScriptingBus
	record Broadcast
		CreatePrefab: function(AZStd__vector): any
	end
end


global record ProfilingCaptureNotificationBus
	is BusThatHasAHandler<ProfilingCaptureNotificationBus>

	interface Notification
		OnCaptureBenchmarkMetadataFinished: function(self, boolean, AZStd__basic_string): any
		OnCaptureCpuFrameTimeFinished: function(self, boolean, AZStd__basic_string): any
		OnCaptureQueryPipelineStatisticsFinished: function(self, boolean, AZStd__basic_string): any
		OnCaptureQueryTimestampFinished: function(self, boolean, AZStd__basic_string): any
	end
end


global record ProfilingCaptureRequestBus
	record Broadcast
		CaptureBenchmarkMetadata: function(AZStd__basic_string): any
		CaptureCpuFrameTime: function(AZStd__basic_string): any
		CapturePassPipelineStatistics: function(AZStd__basic_string): any
		CapturePassTimestamp: function(AZStd__basic_string): any
	end
end


global record QuadShapeComponentRequestsBus
	record Event
		GetQuadConfiguration: function(EntityId): any
		GetQuadHeight: function(EntityId): any
		GetQuadOrientation: function(EntityId): any
		GetQuadWidth: function(EntityId): any
		SetQuadHeight: function(EntityId, number): any
		SetQuadWidth: function(EntityId, number): any
	end

	record Broadcast
		GetQuadConfiguration: function(): any
		GetQuadHeight: function(): any
		GetQuadOrientation: function(): any
		GetQuadWidth: function(): any
		SetQuadHeight: function(number): any
		SetQuadWidth: function(number): any
	end
end


global record RPIPerformaceCollectionNotificationBus
	is BusThatHasAHandler<RPIPerformaceCollectionNotificationBus>

	interface Notification
		OnPerformanceCollectionJobFinished: function(self, AZStd__basic_string): any
	end
end


global record RandomGradientRequestBus
	record Event
		GetRandomSeed: function(EntityId): any
		SetRandomSeed: function(EntityId, integer): any
	end

	record Broadcast
		GetRandomSeed: function(): any
		SetRandomSeed: function(integer): any
	end
end


global record RayTracingDebugRequestBus
	record Event
		GetDebugViewMode: function(EntityId): any
		GetEnabled: function(EntityId): any
		SetDebugViewMode: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
	end

	record Broadcast
		GetDebugViewMode: function(): any
		GetEnabled: function(): any
		SetDebugViewMode: function(): any
		SetEnabled: function(boolean): any
	end
end


global record ReferenceGradientRequestBus
	record Event
		GetGradientSampler: function(EntityId): any
	end

	record Broadcast
		GetGradientSampler: function(): any
	end
end


global record ReferenceShapeRequestBus
	record Event
		GetShapeEntityId: function(EntityId): any
		SetShapeEntityId: function(EntityId, EntityId): any
	end

	record Broadcast
		GetShapeEntityId: function(): any
		SetShapeEntityId: function(EntityId): any
	end
end


global record RenderDebugRequestBus
	record Event
		GetCustomDebugFloat01: function(EntityId): any
		GetCustomDebugFloat02: function(EntityId): any
		GetCustomDebugFloat03: function(EntityId): any
		GetCustomDebugFloat04: function(EntityId): any
		GetCustomDebugFloat05: function(EntityId): any
		GetCustomDebugFloat06: function(EntityId): any
		GetCustomDebugFloat07: function(EntityId): any
		GetCustomDebugFloat08: function(EntityId): any
		GetCustomDebugFloat09: function(EntityId): any
		GetCustomDebugOption01: function(EntityId): any
		GetCustomDebugOption02: function(EntityId): any
		GetCustomDebugOption03: function(EntityId): any
		GetCustomDebugOption04: function(EntityId): any
		GetDebugLightingAzimuth: function(EntityId): any
		GetDebugLightingColor: function(EntityId): any
		GetDebugLightingElevation: function(EntityId): any
		GetDebugLightingIntensity: function(EntityId): any
		GetEnableDetailNormalMaps: function(EntityId): any
		GetEnableNormalMaps: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetMaterialBaseColorOverride: function(EntityId): any
		GetMaterialMetallicOverride: function(EntityId): any
		GetMaterialRoughnessOverride: function(EntityId): any
		GetOverrideBaseColor: function(EntityId): any
		GetOverrideMetallic: function(EntityId): any
		GetOverrideRoughness: function(EntityId): any
		GetRenderDebugLightingSource: function(EntityId): any
		GetRenderDebugLightingType: function(EntityId): any
		GetRenderDebugViewMode: function(EntityId): any
		SetCustomDebugFloat01: function(EntityId, number): any
		SetCustomDebugFloat02: function(EntityId, number): any
		SetCustomDebugFloat03: function(EntityId, number): any
		SetCustomDebugFloat04: function(EntityId, number): any
		SetCustomDebugFloat05: function(EntityId, number): any
		SetCustomDebugFloat06: function(EntityId, number): any
		SetCustomDebugFloat07: function(EntityId, number): any
		SetCustomDebugFloat08: function(EntityId, number): any
		SetCustomDebugFloat09: function(EntityId, number): any
		SetCustomDebugOption01: function(EntityId, boolean): any
		SetCustomDebugOption02: function(EntityId, boolean): any
		SetCustomDebugOption03: function(EntityId, boolean): any
		SetCustomDebugOption04: function(EntityId, boolean): any
		SetDebugLightingAzimuth: function(EntityId, number): any
		SetDebugLightingColor: function(EntityId, Vector3): any
		SetDebugLightingElevation: function(EntityId, number): any
		SetDebugLightingIntensity: function(EntityId, number): any
		SetEnableDetailNormalMaps: function(EntityId, boolean): any
		SetEnableNormalMaps: function(EntityId, boolean): any
		SetEnabled: function(EntityId, boolean): any
		SetMaterialBaseColorOverride: function(EntityId, Vector3): any
		SetMaterialMetallicOverride: function(EntityId, number): any
		SetMaterialRoughnessOverride: function(EntityId, number): any
		SetOverrideBaseColor: function(EntityId, boolean): any
		SetOverrideMetallic: function(EntityId, boolean): any
		SetOverrideRoughness: function(EntityId, boolean): any
		SetRenderDebugLightingSource: function(EntityId): any
		SetRenderDebugLightingType: function(EntityId): any
		SetRenderDebugViewMode: function(EntityId): any
	end

	record Broadcast
		GetCustomDebugFloat01: function(): any
		GetCustomDebugFloat02: function(): any
		GetCustomDebugFloat03: function(): any
		GetCustomDebugFloat04: function(): any
		GetCustomDebugFloat05: function(): any
		GetCustomDebugFloat06: function(): any
		GetCustomDebugFloat07: function(): any
		GetCustomDebugFloat08: function(): any
		GetCustomDebugFloat09: function(): any
		GetCustomDebugOption01: function(): any
		GetCustomDebugOption02: function(): any
		GetCustomDebugOption03: function(): any
		GetCustomDebugOption04: function(): any
		GetDebugLightingAzimuth: function(): any
		GetDebugLightingColor: function(): any
		GetDebugLightingElevation: function(): any
		GetDebugLightingIntensity: function(): any
		GetEnableDetailNormalMaps: function(): any
		GetEnableNormalMaps: function(): any
		GetEnabled: function(): any
		GetMaterialBaseColorOverride: function(): any
		GetMaterialMetallicOverride: function(): any
		GetMaterialRoughnessOverride: function(): any
		GetOverrideBaseColor: function(): any
		GetOverrideMetallic: function(): any
		GetOverrideRoughness: function(): any
		GetRenderDebugLightingSource: function(): any
		GetRenderDebugLightingType: function(): any
		GetRenderDebugViewMode: function(): any
		SetCustomDebugFloat01: function(number): any
		SetCustomDebugFloat02: function(number): any
		SetCustomDebugFloat03: function(number): any
		SetCustomDebugFloat04: function(number): any
		SetCustomDebugFloat05: function(number): any
		SetCustomDebugFloat06: function(number): any
		SetCustomDebugFloat07: function(number): any
		SetCustomDebugFloat08: function(number): any
		SetCustomDebugFloat09: function(number): any
		SetCustomDebugOption01: function(boolean): any
		SetCustomDebugOption02: function(boolean): any
		SetCustomDebugOption03: function(boolean): any
		SetCustomDebugOption04: function(boolean): any
		SetDebugLightingAzimuth: function(number): any
		SetDebugLightingColor: function(Vector3): any
		SetDebugLightingElevation: function(number): any
		SetDebugLightingIntensity: function(number): any
		SetEnableDetailNormalMaps: function(boolean): any
		SetEnableNormalMaps: function(boolean): any
		SetEnabled: function(boolean): any
		SetMaterialBaseColorOverride: function(Vector3): any
		SetMaterialMetallicOverride: function(number): any
		SetMaterialRoughnessOverride: function(number): any
		SetOverrideBaseColor: function(boolean): any
		SetOverrideMetallic: function(boolean): any
		SetOverrideRoughness: function(boolean): any
		SetRenderDebugLightingSource: function(): any
		SetRenderDebugLightingType: function(): any
		SetRenderDebugViewMode: function(): any
	end
end


global record RenderMeshComponentRequestBus
	record Event
		GetExcludeFromReflectionCubeMaps: function(EntityId): any
		GetIsAlwaysDynamic: function(EntityId): any
		GetLodOverride: function(EntityId): any
		GetLodType: function(EntityId): any
		GetMinimumScreenCoverage: function(EntityId): any
		GetModelAssetId: function(EntityId): any
		GetModelAssetPath: function(EntityId): any
		GetQualityDecayRate: function(EntityId): any
		GetRayTracingEnabled: function(EntityId): any
		GetSortKey: function(EntityId): any
		GetVisibility: function(EntityId): any
		SetExcludeFromReflectionCubeMaps: function(EntityId, boolean): any
		SetIsAlwaysDynamic: function(EntityId, boolean): any
		SetLodOverride: function(EntityId, integer): any
		SetLodType: function(EntityId): any
		SetMinimumScreenCoverage: function(EntityId, number): any
		SetModelAssetId: function(EntityId, AssetId): any
		SetModelAssetPath: function(EntityId, AZStd__basic_string): any
		SetQualityDecayRate: function(EntityId, number): any
		SetRayTracingEnabled: function(EntityId, boolean): any
		SetSortKey: function(EntityId, AZ__s64): any
		SetVisibility: function(EntityId, boolean): any
	end

	record Broadcast
		GetExcludeFromReflectionCubeMaps: function(): any
		GetIsAlwaysDynamic: function(): any
		GetLodOverride: function(): any
		GetLodType: function(): any
		GetMinimumScreenCoverage: function(): any
		GetModelAssetId: function(): any
		GetModelAssetPath: function(): any
		GetQualityDecayRate: function(): any
		GetRayTracingEnabled: function(): any
		GetSortKey: function(): any
		GetVisibility: function(): any
		SetExcludeFromReflectionCubeMaps: function(boolean): any
		SetIsAlwaysDynamic: function(boolean): any
		SetLodOverride: function(integer): any
		SetLodType: function(): any
		SetMinimumScreenCoverage: function(number): any
		SetModelAssetId: function(AssetId): any
		SetModelAssetPath: function(AZStd__basic_string): any
		SetQualityDecayRate: function(number): any
		SetRayTracingEnabled: function(boolean): any
		SetSortKey: function(AZ__s64): any
		SetVisibility: function(boolean): any
	end
end


global record RigidBodyNotificationBus
	is BusThatHasAHandler<RigidBodyNotificationBus>

	interface Notification
		OnPhysicsDisabled: function(self, EntityId)
		OnPhysicsEnabled: function(self, EntityId)
	end
end


global record RigidBodyRequestBus
	record Event
		ApplyAngularImpulse: function(EntityId, Vector3): any
		ApplyLinearImpulse: function(EntityId, Vector3): any
		ApplyLinearImpulseAtWorldPoint: function(EntityId, Vector3, Vector3): any
		DisablePhysics: function(EntityId): any
		EnablePhysics: function(EntityId): any
		ForceAsleep: function(EntityId): any
		ForceAwake: function(EntityId): any
		GetAabb: function(EntityId): any
		GetAngularDamping: function(EntityId): any
		GetAngularVelocity: function(EntityId): any
		GetCenterOfMassLocal: function(EntityId): any
		GetCenterOfMassWorld: function(EntityId): any
		GetInverseMass: function(EntityId): any
		GetLinearDamping: function(EntityId): any
		GetLinearVelocity: function(EntityId): any
		GetLinearVelocityAtWorldPoint: function(EntityId, Vector3): any
		GetMass: function(EntityId): any
		GetSleepThreshold: function(EntityId): any
		IsAwake: function(EntityId): any
		IsGravityEnabled: function(EntityId): any
		IsKinematic: function(EntityId): any
		IsPhysicsEnabled: function(EntityId): any
		SetAngularDamping: function(EntityId, number): any
		SetAngularVelocity: function(EntityId, Vector3): any
		SetCenterOfMassOffset: function(EntityId, Vector3): any
		SetGravityEnabled: function(EntityId, boolean): any
		SetKinematic: function(EntityId, boolean): any
		SetKinematicTarget: function(EntityId, Transform): any
		SetLinearDamping: function(EntityId, number): any
		SetLinearVelocity: function(EntityId, Vector3): any
		SetMass: function(EntityId, number): any
		SetSimulationEnabled: function(EntityId, boolean): any
		SetSleepThreshold: function(EntityId, number): any
	end

	record Broadcast
		ApplyAngularImpulse: function(Vector3): any
		ApplyLinearImpulse: function(Vector3): any
		ApplyLinearImpulseAtWorldPoint: function(Vector3, Vector3): any
		DisablePhysics: function(): any
		EnablePhysics: function(): any
		ForceAsleep: function(): any
		ForceAwake: function(): any
		GetAabb: function(): any
		GetAngularDamping: function(): any
		GetAngularVelocity: function(): any
		GetCenterOfMassLocal: function(): any
		GetCenterOfMassWorld: function(): any
		GetInverseMass: function(): any
		GetLinearDamping: function(): any
		GetLinearVelocity: function(): any
		GetLinearVelocityAtWorldPoint: function(Vector3): any
		GetMass: function(): any
		GetSleepThreshold: function(): any
		IsAwake: function(): any
		IsGravityEnabled: function(): any
		IsKinematic: function(): any
		IsPhysicsEnabled: function(): any
		SetAngularDamping: function(number): any
		SetAngularVelocity: function(Vector3): any
		SetCenterOfMassOffset: function(Vector3): any
		SetGravityEnabled: function(boolean): any
		SetKinematic: function(boolean): any
		SetKinematicTarget: function(Transform): any
		SetLinearDamping: function(number): any
		SetLinearVelocity: function(Vector3): any
		SetMass: function(number): any
		SetSimulationEnabled: function(boolean): any
		SetSleepThreshold: function(number): any
	end
end


global record SequenceComponentNotificationBus
	is BusThatHasAHandler<SequenceComponentNotificationBus>

	interface Notification
		OnAbort: function(self, number): any
		OnPause: function(self): any
		OnResume: function(self): any
		OnStart: function(self, number): any
		OnStop: function(self, number): any
		OnTrackEventTriggered: function(self, string, string): any
		OnUpdate: function(self, number): any
	end
end


global record SequenceComponentRequestBus
	record Event
		GetCurrentPlayTime: function(EntityId): any
		GetPlaySpeed: function(EntityId): any
		JumpToBeginning: function(EntityId): any
		JumpToEnd: function(EntityId): any
		JumpToTime: function(EntityId, number): any
		Pause: function(EntityId): any
		Play: function(EntityId): any
		PlayBetweenTimes: function(EntityId, number, number): any
		Resume: function(EntityId): any
		SetPlaySpeed: function(EntityId, number): any
		Stop: function(EntityId): any
	end

	record Broadcast
		GetCurrentPlayTime: function(): any
		GetPlaySpeed: function(): any
		JumpToBeginning: function(): any
		JumpToEnd: function(): any
		JumpToTime: function(number): any
		Pause: function(): any
		Play: function(): any
		PlayBetweenTimes: function(number, number): any
		Resume: function(): any
		SetPlaySpeed: function(number): any
		Stop: function(): any
	end
end


global record ShapeAreaFalloffGradientRequestBus
	record Event
		Get3dFalloff: function(EntityId): any
		GetFalloffType: function(EntityId): any
		GetFalloffWidth: function(EntityId): any
		GetShapeEntityId: function(EntityId): any
		Set3dFalloff: function(EntityId, boolean): any
		SetFalloffType: function(EntityId): any
		SetFalloffWidth: function(EntityId, number): any
		SetShapeEntityId: function(EntityId, EntityId): any
	end

	record Broadcast
		Get3dFalloff: function(): any
		GetFalloffType: function(): any
		GetFalloffWidth: function(): any
		GetShapeEntityId: function(): any
		Set3dFalloff: function(boolean): any
		SetFalloffType: function(): any
		SetFalloffWidth: function(number): any
		SetShapeEntityId: function(EntityId): any
	end
end


global record ShapeComponentNotificationsBus
	is BusThatHasAHandler<ShapeComponentNotificationsBus>

	interface Notification
		OnShapeChanged: function(self): any
	end
end


global record ShapeComponentRequestsBus
	record Event
		DistanceFromPoint: function(EntityId, Vector3): any
		DistanceSquaredFromPoint: function(EntityId, Vector3): any
		GenerateRandomPointInside: function(EntityId): any
		GetEncompassingAabb: function(EntityId): any
		GetShapeType: function(EntityId): any
		IsPointInside: function(EntityId, Vector3): any
	end

	record Broadcast
		DistanceFromPoint: function(Vector3): any
		DistanceSquaredFromPoint: function(Vector3): any
		GenerateRandomPointInside: function(): any
		GetEncompassingAabb: function(): any
		GetShapeType: function(): any
		IsPointInside: function(Vector3): any
	end
end


global record SimpleMotionComponentRequestBus
	record Event
		BlendInTime: function(EntityId, number): any
		BlendOutTime: function(EntityId, number): any
		GetBlendInTime: function(EntityId): any
		GetBlendOutTime: function(EntityId): any
		GetDuration: function(EntityId): any
		GetLoopMotion: function(EntityId): any
		GetMotion: function(EntityId): any
		GetPlaySpeed: function(EntityId): any
		GetPlayTime: function(EntityId): any
		LoopMotion: function(EntityId, boolean): any
		MirrorMotion: function(EntityId, boolean): any
		Motion: function(EntityId, AssetId): any
		PlayMotion: function(EntityId): any
		PlayTime: function(EntityId, number): any
		RetargetMotion: function(EntityId, boolean): any
		ReverseMotion: function(EntityId, boolean): any
		SetPlaySpeed: function(EntityId, number): any
	end

	record Broadcast
		BlendInTime: function(number): any
		BlendOutTime: function(number): any
		GetBlendInTime: function(): any
		GetBlendOutTime: function(): any
		GetDuration: function(): any
		GetLoopMotion: function(): any
		GetMotion: function(): any
		GetPlaySpeed: function(): any
		GetPlayTime: function(): any
		LoopMotion: function(boolean): any
		MirrorMotion: function(boolean): any
		Motion: function(AssetId): any
		PlayMotion: function(): any
		PlayTime: function(number): any
		RetargetMotion: function(boolean): any
		ReverseMotion: function(boolean): any
		SetPlaySpeed: function(number): any
	end
end


global record SimpleStateComponentNotificationBus
	is BusThatHasAHandler<SimpleStateComponentNotificationBus>

	interface Notification
		OnStateChanged: function(self, string, string): any
	end
end


global record SimpleStateComponentRequestBus
	record Event
		GetCurrentState: function(EntityId): any
		GetNumStates: function(EntityId): any
		SetState: function(EntityId, string): any
		SetStateByIndex: function(EntityId, integer): any
		SetToFirstState: function(EntityId): any
		SetToLastState: function(EntityId): any
		SetToNextState: function(EntityId): any
		SetToPreviousState: function(EntityId): any
	end

	record Broadcast
		GetCurrentState: function(): any
		GetNumStates: function(): any
		SetState: function(string): any
		SetStateByIndex: function(integer): any
		SetToFirstState: function(): any
		SetToLastState: function(): any
		SetToNextState: function(): any
		SetToPreviousState: function(): any
	end
end


global record SimulatedBodyComponentRequestBus
	record Event
		DisablePhysics: function(EntityId): any
		EnablePhysics: function(EntityId): any
		GetAabb: function(EntityId): any
		IsPhysicsEnabled: function(EntityId): any
		RayCast: function(EntityId, RayCastRequest): any
	end

	record Broadcast
		DisablePhysics: function(): any
		EnablePhysics: function(): any
		GetAabb: function(): any
		IsPhysicsEnabled: function(): any
		RayCast: function(RayCastRequest): any
	end
end


global record SkyAtmosphereRequestBus
	record Event
		GetAerialDepthFactor: function(EntityId): any
		GetAerialPerspectiveEnabled: function(EntityId): any
		GetAtmosphereHeight: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetFastAerialPerspectiveEnabled: function(EntityId): any
		GetFastSkyEnabled: function(EntityId): any
		GetGroundAlbedo: function(EntityId): any
		GetLuminanceFactor: function(EntityId): any
		GetMaxSamples: function(EntityId): any
		GetMieAbsorption: function(EntityId): any
		GetMieExpDistribution: function(EntityId): any
		GetMieScattering: function(EntityId): any
		GetMinSamples: function(EntityId): any
		GetNearClip: function(EntityId): any
		GetNearFadeDistance: function(EntityId): any
		GetPlanetOriginMode: function(EntityId): any
		GetPlanetRadius: function(EntityId): any
		GetRayleighExpDistribution: function(EntityId): any
		GetRayleighScattering: function(EntityId): any
		GetShadowsEnabled: function(EntityId): any
		GetSunColor: function(EntityId): any
		GetSunDirection: function(EntityId): any
		GetSunEnabled: function(EntityId): any
		GetSunEntityId: function(EntityId): any
		GetSunFalloffFactor: function(EntityId): any
		GetSunLimbColor: function(EntityId): any
		GetSunLuminanceFactor: function(EntityId): any
		GetSunRadiusFactor: function(EntityId): any
		SetAerialDepthFactor: function(EntityId, number): any
		SetAerialPerspectiveEnabled: function(EntityId, boolean): any
		SetAtmosphereHeight: function(EntityId, number): any
		SetEnabled: function(EntityId, boolean): any
		SetFastAerialPerspectiveEnabled: function(EntityId, boolean): any
		SetFastSkyEnabled: function(EntityId, boolean): any
		SetGroundAlbedo: function(EntityId, Vector3): any
		SetLuminanceFactor: function(EntityId, Vector3): any
		SetMaxSamples: function(EntityId, integer): any
		SetMieAbsorption: function(EntityId, Vector3): any
		SetMieExpDistribution: function(EntityId, number): any
		SetMieScattering: function(EntityId, Vector3): any
		SetMinSamples: function(EntityId, integer): any
		SetNearClip: function(EntityId, number): any
		SetNearFadeDistance: function(EntityId, number): any
		SetPlanetOriginMode: function(EntityId): any
		SetPlanetRadius: function(EntityId, number): any
		SetRayleighExpDistribution: function(EntityId, number): any
		SetRayleighScattering: function(EntityId, Vector3): any
		SetShadowsEnabled: function(EntityId, boolean): any
		SetSunColor: function(EntityId, Color): any
		SetSunDirection: function(EntityId, Vector3): any
		SetSunEnabled: function(EntityId, boolean): any
		SetSunEntityId: function(EntityId, EntityId): any
		SetSunFalloffFactor: function(EntityId, number): any
		SetSunLimbColor: function(EntityId, Color): any
		SetSunLuminanceFactor: function(EntityId, number): any
		SetSunRadiusFactor: function(EntityId, number): any
	end

	record Broadcast
		GetAerialDepthFactor: function(): any
		GetAerialPerspectiveEnabled: function(): any
		GetAtmosphereHeight: function(): any
		GetEnabled: function(): any
		GetFastAerialPerspectiveEnabled: function(): any
		GetFastSkyEnabled: function(): any
		GetGroundAlbedo: function(): any
		GetLuminanceFactor: function(): any
		GetMaxSamples: function(): any
		GetMieAbsorption: function(): any
		GetMieExpDistribution: function(): any
		GetMieScattering: function(): any
		GetMinSamples: function(): any
		GetNearClip: function(): any
		GetNearFadeDistance: function(): any
		GetPlanetOriginMode: function(): any
		GetPlanetRadius: function(): any
		GetRayleighExpDistribution: function(): any
		GetRayleighScattering: function(): any
		GetShadowsEnabled: function(): any
		GetSunColor: function(): any
		GetSunDirection: function(): any
		GetSunEnabled: function(): any
		GetSunEntityId: function(): any
		GetSunFalloffFactor: function(): any
		GetSunLimbColor: function(): any
		GetSunLuminanceFactor: function(): any
		GetSunRadiusFactor: function(): any
		SetAerialDepthFactor: function(number): any
		SetAerialPerspectiveEnabled: function(boolean): any
		SetAtmosphereHeight: function(number): any
		SetEnabled: function(boolean): any
		SetFastAerialPerspectiveEnabled: function(boolean): any
		SetFastSkyEnabled: function(boolean): any
		SetGroundAlbedo: function(Vector3): any
		SetLuminanceFactor: function(Vector3): any
		SetMaxSamples: function(integer): any
		SetMieAbsorption: function(Vector3): any
		SetMieExpDistribution: function(number): any
		SetMieScattering: function(Vector3): any
		SetMinSamples: function(integer): any
		SetNearClip: function(number): any
		SetNearFadeDistance: function(number): any
		SetPlanetOriginMode: function(): any
		SetPlanetRadius: function(number): any
		SetRayleighExpDistribution: function(number): any
		SetRayleighScattering: function(Vector3): any
		SetShadowsEnabled: function(boolean): any
		SetSunColor: function(Color): any
		SetSunDirection: function(Vector3): any
		SetSunEnabled: function(boolean): any
		SetSunEntityId: function(EntityId): any
		SetSunFalloffFactor: function(number): any
		SetSunLimbColor: function(Color): any
		SetSunLuminanceFactor: function(number): any
		SetSunRadiusFactor: function(number): any
	end
end


global record SkyBoxFogRequestBus
	record Event
		GetBottomHeight: function(EntityId): any
		GetColor: function(EntityId): any
		GetTopHeight: function(EntityId): any
		IsEnabled: function(EntityId): any
		SetBottomHeight: function(EntityId, number): any
		SetColor: function(EntityId, Color): any
		SetEnabled: function(EntityId, boolean): any
		SetTopHeight: function(EntityId, number): any
	end

	record Broadcast
		GetBottomHeight: function(): any
		GetColor: function(): any
		GetTopHeight: function(): any
		IsEnabled: function(): any
		SetBottomHeight: function(number): any
		SetColor: function(Color): any
		SetEnabled: function(boolean): any
		SetTopHeight: function(number): any
	end
end


global record SmoothStepGradientRequestBus
	record Event
		GetGradientSampler: function(EntityId): any
	end

	record Broadcast
		GetGradientSampler: function(): any
	end
end


global record SmoothStepRequestBus
	record Event
		GetFallOffMidpoint: function(EntityId): any
		GetFallOffRange: function(EntityId): any
		GetFallOffStrength: function(EntityId): any
		SetFallOffMidpoint: function(EntityId, number): any
		SetFallOffRange: function(EntityId, number): any
		SetFallOffStrength: function(EntityId, number): any
	end

	record Broadcast
		GetFallOffMidpoint: function(): any
		GetFallOffRange: function(): any
		GetFallOffStrength: function(): any
		SetFallOffMidpoint: function(number): any
		SetFallOffRange: function(number): any
		SetFallOffStrength: function(number): any
	end
end


global record SpawnableScriptNotificationsBus
	is BusThatHasAHandler<SpawnableScriptNotificationsBus>

	interface Notification
		OnDespawn: function(self, AzFramework__EntitySpawnTicket): any
		OnSpawn: function(self, AzFramework__EntitySpawnTicket, AZStd__vector): any
	end
end


global record SphereShapeComponentRequestsBus
	record Event
		GetSphereConfiguration: function(EntityId): any
		SetRadius: function(EntityId, number): any
	end

	record Broadcast
		GetSphereConfiguration: function(): any
		SetRadius: function(number): any
	end
end


global record SplineComponentNotificationBus
	is BusThatHasAHandler<SplineComponentNotificationBus>

	interface Notification
		OnSplineChanged: function(self): any
	end
end


global record SplineComponentRequestBus
	record Event
		AddVertex: function(EntityId, Vector3): any
		ClearVertices: function(EntityId): any
		GetSpline: function(EntityId): any
		GetVertex: function(EntityId, integer): any
		GetVertexCount: function(EntityId): any
		InsertVertex: function(EntityId, integer, Vector3): any
		RemoveVertex: function(EntityId, integer): any
		SetClosed: function(EntityId, boolean): any
		UpdateVertex: function(EntityId, integer, Vector3): any
	end

	record Broadcast
		AddVertex: function(Vector3): any
		ClearVertices: function(): any
		GetSpline: function(): any
		GetVertex: function(integer): any
		GetVertexCount: function(): any
		InsertVertex: function(integer, Vector3): any
		RemoveVertex: function(integer): any
		SetClosed: function(boolean): any
		UpdateVertex: function(integer, Vector3): any
	end
end


global record SsaoRequestBus
	record Event
		GetBlurConstFalloff: function(EntityId): any
		GetBlurConstFalloffOverride: function(EntityId): any
		GetBlurDepthFalloffStrength: function(EntityId): any
		GetBlurDepthFalloffStrengthOverride: function(EntityId): any
		GetBlurDepthFalloffThreshold: function(EntityId): any
		GetBlurDepthFalloffThresholdOverride: function(EntityId): any
		GetEnableBlur: function(EntityId): any
		GetEnableBlurOverride: function(EntityId): any
		GetEnableDownsample: function(EntityId): any
		GetEnableDownsampleOverride: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetSamplingRadius: function(EntityId): any
		GetSamplingRadiusOverride: function(EntityId): any
		GetStrength: function(EntityId): any
		GetStrengthOverride: function(EntityId): any
		SetBlurConstFalloff: function(EntityId, number): any
		SetBlurConstFalloffOverride: function(EntityId, number): any
		SetBlurDepthFalloffStrength: function(EntityId, number): any
		SetBlurDepthFalloffStrengthOverride: function(EntityId, number): any
		SetBlurDepthFalloffThreshold: function(EntityId, number): any
		SetBlurDepthFalloffThresholdOverride: function(EntityId, number): any
		SetEnableBlur: function(EntityId, boolean): any
		SetEnableBlurOverride: function(EntityId, boolean): any
		SetEnableDownsample: function(EntityId, boolean): any
		SetEnableDownsampleOverride: function(EntityId, boolean): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetSamplingRadius: function(EntityId, number): any
		SetSamplingRadiusOverride: function(EntityId, number): any
		SetStrength: function(EntityId, number): any
		SetStrengthOverride: function(EntityId, number): any
	end

	record Broadcast
		GetBlurConstFalloff: function(): any
		GetBlurConstFalloffOverride: function(): any
		GetBlurDepthFalloffStrength: function(): any
		GetBlurDepthFalloffStrengthOverride: function(): any
		GetBlurDepthFalloffThreshold: function(): any
		GetBlurDepthFalloffThresholdOverride: function(): any
		GetEnableBlur: function(): any
		GetEnableBlurOverride: function(): any
		GetEnableDownsample: function(): any
		GetEnableDownsampleOverride: function(): any
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetSamplingRadius: function(): any
		GetSamplingRadiusOverride: function(): any
		GetStrength: function(): any
		GetStrengthOverride: function(): any
		SetBlurConstFalloff: function(number): any
		SetBlurConstFalloffOverride: function(number): any
		SetBlurDepthFalloffStrength: function(number): any
		SetBlurDepthFalloffStrengthOverride: function(number): any
		SetBlurDepthFalloffThreshold: function(number): any
		SetBlurDepthFalloffThresholdOverride: function(number): any
		SetEnableBlur: function(boolean): any
		SetEnableBlurOverride: function(boolean): any
		SetEnableDownsample: function(boolean): any
		SetEnableDownsampleOverride: function(boolean): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetSamplingRadius: function(number): any
		SetSamplingRadiusOverride: function(number): any
		SetStrength: function(number): any
		SetStrengthOverride: function(number): any
	end
end


global record StreamingInstallChunkNotificationBus
	is BusThatHasAHandler<StreamingInstallChunkNotificationBus>

	interface Notification
		OnChunkDownloadComplete: function(self, AZStd__basic_string): any
		OnChunkProgressChanged: function(self, AZStd__basic_string): any
		OnQueryChunkInstalled: function(self, AZStd__basic_string): any
	end
end


global record StreamingInstallPackageNotificationBus
	is BusThatHasAHandler<StreamingInstallPackageNotificationBus>

	interface Notification
		OnPackageProgressChanged: function(self, number): any
	end
end


global record StreamingInstallRequestBus
	record Broadcast
		BroadcastChunkProgress: function(string): any
		BroadcastOverallProgress: function(): any
		ChangeChunkPriority: function(AZStd__vector): any
		IsChunkInstalled: function(string): any
	end
end


global record SurfaceAltitudeGradientRequestBus
	record Event
		AddTag: function(EntityId, AZStd__basic_string): any
		GetAltitudeMax: function(EntityId): any
		GetAltitudeMin: function(EntityId): any
		GetNumTags: function(EntityId): any
		GetShapeEntityId: function(EntityId): any
		GetTag: function(EntityId, integer): any
		RemoveTag: function(EntityId, integer): any
		SetAltitudeMax: function(EntityId, number): any
		SetAltitudeMin: function(EntityId, number): any
		SetShapeEntityId: function(EntityId, EntityId): any
	end

	record Broadcast
		AddTag: function(AZStd__basic_string): any
		GetAltitudeMax: function(): any
		GetAltitudeMin: function(): any
		GetNumTags: function(): any
		GetShapeEntityId: function(): any
		GetTag: function(integer): any
		RemoveTag: function(integer): any
		SetAltitudeMax: function(number): any
		SetAltitudeMin: function(number): any
		SetShapeEntityId: function(EntityId): any
	end
end


global record SurfaceDataSystemNotificationBus
	record Broadcast
		OnSurfaceChanged: function(EntityId, Aabb, Aabb, AZStd__unordered_set): any
	end
end


global record SurfaceDataSystemRequestBus
	record Broadcast
		GetSurfaceDataModifierHandle: function(EntityId): any
		GetSurfaceDataProviderHandle: function(EntityId): any
		GetSurfacePoints: function(Vector3, AZStd__vector): any
		RefreshSurfaceData: function(integer, Aabb): any
	end
end


global record SurfaceMaskGradientRequestBus
	record Event
		AddTag: function(EntityId, AZStd__basic_string): any
		GetNumTags: function(EntityId): any
		GetTag: function(EntityId, integer): any
		RemoveTag: function(EntityId, integer): any
	end

	record Broadcast
		AddTag: function(AZStd__basic_string): any
		GetNumTags: function(): any
		GetTag: function(integer): any
		RemoveTag: function(integer): any
	end
end


global record SurfaceSlopeGradientRequestBus
	record Event
		AddTag: function(EntityId, AZStd__basic_string): any
		GetNumTags: function(EntityId): any
		GetRampType: function(EntityId): any
		GetSlopeMax: function(EntityId): any
		GetSlopeMin: function(EntityId): any
		GetTag: function(EntityId, integer): any
		RemoveTag: function(EntityId, integer): any
		SetRampType: function(EntityId, integer): any
		SetSlopeMax: function(EntityId, number): any
		SetSlopeMin: function(EntityId, number): any
	end

	record Broadcast
		AddTag: function(AZStd__basic_string): any
		GetNumTags: function(): any
		GetRampType: function(): any
		GetSlopeMax: function(): any
		GetSlopeMin: function(): any
		GetTag: function(integer): any
		RemoveTag: function(integer): any
		SetRampType: function(integer): any
		SetSlopeMax: function(number): any
		SetSlopeMin: function(number): any
	end
end


global record SystemNotificationBus
end


global record SystemRequestBus
end


global record TagComponentNotificationsBus
	is BusThatHasAHandler<TagComponentNotificationsBus>

	interface Notification
		OnTagAdded: function(self, Crc32): any
		OnTagRemoved: function(self, Crc32): any
	end
end


global record TagComponentRequestBus
	record Event
		AddTag: function(EntityId, Crc32): any
		HasTag: function(EntityId, Crc32): any
		RemoveTag: function(EntityId, Crc32): any
	end

	record Broadcast
		AddTag: function(Crc32): any
		HasTag: function(Crc32): any
		RemoveTag: function(Crc32): any
	end
end


global record TagGlobalNotificationBus
	is BusThatHasAHandler<TagGlobalNotificationBus>

	interface Notification
		OnEntityTagAdded: function(self, EntityId): any
		OnEntityTagRemoved: function(self, EntityId): any
	end
end


global record TagGlobalRequestBus
	record Event
		GetEntityByTag: function(Crc32): any
	end

	record Broadcast
		GetEntityByTag: function(): any
	end
end


global record TerrainDataNotificationBus
	is BusThatHasAHandler<TerrainDataNotificationBus>

	interface Notification
		OnTerrainDataChanged: function(self, Aabb): any
		OnTerrainDataCreateBegin: function(self): any
		OnTerrainDataCreateEnd: function(self): any
		OnTerrainDataDestroyBegin: function(self): any
		OnTerrainDataDestroyEnd: function(self): any
	end
end


global record TerrainDataRequestBus
	record Broadcast
		GetClosestIntersection: function(Vector3, Vector3): any
		GetHeight: function(Vector3, AzFramework__Terrain__TerrainDataRequests__Sampler): any
		GetIsHole: function(Vector3, AzFramework__Terrain__TerrainDataRequests__Sampler): any
		GetMaxSurfaceWeight: function(Vector3, AzFramework__Terrain__TerrainDataRequests__Sampler): any
		GetNormal: function(Vector3, AzFramework__Terrain__TerrainDataRequests__Sampler): any
		GetSurfacePoint: function(Vector3, AzFramework__Terrain__TerrainDataRequests__Sampler): any
		GetSurfaceWeights: function(Vector3, AzFramework__Terrain__TerrainDataRequests__Sampler): any
		GetTerrainAabb: function(): any
		GetTerrainHeightBounds: function(): any
		GetTerrainHeightQueryResolution: function(): any
		GetTerrainSurfaceDataQueryResolution: function(): any
		SetTerrainHeightQueryResolution: function(number): any
		SetTerrainSurfaceDataQueryResolution: function(number): any
	end
end


global record ThresholdGradientRequestBus
	record Event
		GetGradientSampler: function(EntityId): any
		GetThreshold: function(EntityId): any
		SetThreshold: function(EntityId, number): any
	end

	record Broadcast
		GetGradientSampler: function(): any
		GetThreshold: function(): any
		SetThreshold: function(number): any
	end
end


global record TickBus
	is BusThatHasAHandler<TickBus>

	interface Notification
		GetTickOrder: function(integer, any)
		OnTick: function(self, number, ScriptTimePoint)
	end
end


global record TickRequestBus
	record Broadcast
		GetTickDeltaTime: function(): any
		GetTimeAtCurrentTick: function(): any
	end
end


-- TODO not completed
global record TransformBus
	record Event
		GetAllDescendants: function(EntityId): vector_EntityId
		GetChildren: function(EntityId): vector_EntityId
		GetEntityAndAllDescendants: function(EntityId): vector_EntityId
		GetLocalAndWorld: function(EntityId, Transform, Transform): any
		GetLocalRotation: function(EntityId): any
		GetLocalRotationQuaternion: function(EntityId): any
		GetLocalScale: function(EntityId): any
		GetLocalTM: function(EntityId): Transform
		GetLocalTranslation: function(EntityId): Vector3
		GetLocalUniformScale: function(EntityId): any
		GetLocalX: function(EntityId): any
		GetLocalY: function(EntityId): any
		GetLocalZ: function(EntityId): any
		GetParentId: function(EntityId): EntityId
		GetWorldRotation: function(EntityId): any
		GetWorldRotationQuaternion: function(EntityId): any
		GetWorldTM: function(EntityId): Transform
		GetWorldTranslation: function(EntityId): any
		GetWorldUniformScale: function(EntityId): any
		GetWorldX: function(EntityId): any
		GetWorldY: function(EntityId): any
		GetWorldZ: function(EntityId): any
		IsStaticTransform: function(EntityId): any
		MoveEntity: function(EntityId, Vector3): any
		RotateAroundLocalX: function(EntityId, number): any
		RotateAroundLocalY: function(EntityId, number): any
		RotateAroundLocalZ: function(EntityId, number): any
		SetLocalRotation: function(EntityId, Vector3): any
		SetLocalRotationQuaternion: function(EntityId, Quaternion): any
		SetLocalTM: function(EntityId, Transform): any
		SetLocalTranslation: function(EntityId, Vector3): any
		SetLocalUniformScale: function(EntityId, number): any
		SetLocalX: function(EntityId, number): any
		SetLocalY: function(EntityId, number): any
		SetLocalZ: function(EntityId, number): any
		SetOnParentChangedBehavior: function(EntityId): any
		SetParent: function(EntityId, EntityId): any
		SetParentRelative: function(EntityId, EntityId): any
		SetWorldRotation: function(EntityId, Vector3): any
		SetWorldRotationQuaternion: function(EntityId, Quaternion): any
		SetWorldTM: function(EntityId, Transform): any
		SetWorldTranslation: function(EntityId, Vector3): any
		SetWorldX: function(EntityId, number): any
		SetWorldY: function(EntityId, number): any
		SetWorldZ: function(EntityId, number): any
	end

	record Broadcast
		GetAllDescendants: function(): any
		GetChildren: function(): any
		GetEntityAndAllDescendants: function(): any
		GetLocalAndWorld: function(Transform, Transform): any
		GetLocalRotation: function(): any
		GetLocalRotationQuaternion: function(): any
		GetLocalScale: function(): any
		GetLocalTM: function(): any
		GetLocalTranslation: function(): any
		GetLocalUniformScale: function(): any
		GetLocalX: function(): any
		GetLocalY: function(): any
		GetLocalZ: function(): any
		GetParentId: function(): any
		GetWorldRotation: function(): any
		GetWorldRotationQuaternion: function(): any
		GetWorldTM: function(): any
		GetWorldTranslation: function(): any
		GetWorldUniformScale: function(): any
		GetWorldX: function(): any
		GetWorldY: function(): any
		GetWorldZ: function(): any
		IsStaticTransform: function(): any
		MoveEntity: function(Vector3): any
		RotateAroundLocalX: function(number): any
		RotateAroundLocalY: function(number): any
		RotateAroundLocalZ: function(number): any
		SetLocalRotation: function(Vector3): any
		SetLocalRotationQuaternion: function(Quaternion): any
		SetLocalTM: function(Transform): any
		SetLocalTranslation: function(Vector3): any
		SetLocalUniformScale: function(number): any
		SetLocalX: function(number): any
		SetLocalY: function(number): any
		SetLocalZ: function(number): any
		SetOnParentChangedBehavior: function(): any
		SetParent: function(EntityId): any
		SetParentRelative: function(EntityId): any
		SetWorldRotation: function(Vector3): any
		SetWorldRotationQuaternion: function(Quaternion): any
		SetWorldTM: function(Transform): any
		SetWorldTranslation: function(Vector3): any
		SetWorldX: function(number): any
		SetWorldY: function(number): any
		SetWorldZ: function(number): any
	end
end


global record TransformNotificationBus
	is BusThatHasAHandler<TransformNotificationBus>

	interface Notification
		OnChildAdded: function(self, EntityId): any
		OnChildRemoved: function(self, EntityId): any
		OnParentChanged: function(self, EntityId, EntityId): any
		OnTransformChanged: function(self, Transform, Transform): any
	end
end


global record TubeShapeComponentRequestsBus
	record Event
		GetRadius: function(EntityId): any
		GetTotalRadius: function(EntityId, SplineAddress): any
		GetVariableRadius: function(EntityId, integer): any
		SetRadius: function(EntityId, number): any
		SetVariableRadius: function(EntityId, integer, number): any
	end

	record Broadcast
		GetRadius: function(): any
		GetTotalRadius: function(SplineAddress): any
		GetVariableRadius: function(integer): any
		SetRadius: function(number): any
		SetVariableRadius: function(integer, number): any
	end
end


global record UiAnimationBus
	record Event
		AbortSequence: function(EntityId, AZStd__basic_string): any
		GetSequenceLength: function(EntityId, AZStd__basic_string): any
		GetSequencePlayingSpeed: function(EntityId, AZStd__basic_string): any
		GetSequencePlayingTime: function(EntityId, AZStd__basic_string): any
		IsSequencePlaying: function(EntityId, AZStd__basic_string): any
		PauseSequence: function(EntityId, AZStd__basic_string): any
		PlaySequenceRange: function(EntityId, AZStd__basic_string): any
		ResetSequence: function(EntityId, AZStd__basic_string): any
		ResumeSequence: function(EntityId, AZStd__basic_string): any
		SetSequencePlayingSpeed: function(EntityId, AZStd__basic_string): any
		SetSequenceStopBehavior: function(EntityId): any
		StartSequence: function(EntityId, AZStd__basic_string): any
		StopSequence: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		AbortSequence: function(AZStd__basic_string): any
		GetSequenceLength: function(AZStd__basic_string): any
		GetSequencePlayingSpeed: function(AZStd__basic_string): any
		GetSequencePlayingTime: function(AZStd__basic_string): any
		IsSequencePlaying: function(AZStd__basic_string): any
		PauseSequence: function(AZStd__basic_string): any
		PlaySequenceRange: function(AZStd__basic_string): any
		ResetSequence: function(AZStd__basic_string): any
		ResumeSequence: function(AZStd__basic_string): any
		SetSequencePlayingSpeed: function(AZStd__basic_string): any
		SetSequenceStopBehavior: function(): any
		StartSequence: function(AZStd__basic_string): any
		StopSequence: function(AZStd__basic_string): any
	end
end


global record UiAnimationNotificationBus
	is BusThatHasAHandler<UiAnimationNotificationBus>

	interface Notification
		OnUiAnimationEvent: function(self): any
		OnUiTrackEvent: function(self, AZStd__basic_string): any
	end
end


global record UiButtonBus
	record Event
		GetOnClickActionName: function(EntityId): any
		SetOnClickActionName: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetOnClickActionName: function(): any
		SetOnClickActionName: function(AZStd__basic_string): any
	end
end


global record UiButtonNotificationBus
	is BusThatHasAHandler<UiButtonNotificationBus>

	interface Notification
		OnButtonClick: function(self): any
	end
end


global record UiCanvasAssetRefBus
	record Event
		LoadCanvas: function(EntityId): any
		UnloadCanvas: function(EntityId): any
	end

	record Broadcast
		LoadCanvas: function(): any
		UnloadCanvas: function(): any
	end
end


global record UiCanvasAssetRefNotificationBus
	is BusThatHasAHandler<UiCanvasAssetRefNotificationBus>

	interface Notification
		OnCanvasLoadedIntoEntity: function(self, EntityId): any
	end
end


global record UiCanvasBus
	record Event
		CloneElement: function(EntityId, EntityId, EntityId, EntityId): any
		FindElementByName: function(EntityId, AZStd__basic_string): any
		ForceEnterInputEventOnInteractable: function(EntityId, EntityId): any
		ForceHoverInteractable: function(EntityId, EntityId): any
		GetAttachmentImageAsset: function(EntityId): any
		GetAuthoredCanvasSize: function(EntityId): any
		GetCanvasSize: function(EntityId): any
		GetChildElement: function(EntityId, integer): any
		GetChildElements: function(EntityId): any
		GetDrawOrder: function(EntityId): any
		GetEnabled: function(EntityId): any
		GetHoverInteractable: function(EntityId): any
		GetIsConsumingAllInputEvents: function(EntityId): any
		GetIsMultiTouchSupported: function(EntityId): any
		GetIsNavigationSupported: function(EntityId): any
		GetIsPixelAligned: function(EntityId): any
		GetIsPositionalInputSupported: function(EntityId): any
		GetIsRenderToTexture: function(EntityId): any
		GetIsTextPixelAligned: function(EntityId): any
		GetKeepLoadedOnLevelUnload: function(EntityId): any
		GetMousePosition: function(EntityId): any
		GetNavigationRepeatDelay: function(EntityId): any
		GetNavigationRepeatPeriod: function(EntityId): any
		GetNavigationThreshold: function(EntityId): any
		GetNumChildElements: function(EntityId): any
		GetTooltipDisplayElement: function(EntityId): any
		RecomputeChangedLayouts: function(EntityId): any
		SetAttachmentImageAsset: function(EntityId, Asset): any
		SetDrawOrder: function(EntityId, integer): any
		SetEnabled: function(EntityId, boolean): any
		SetIsConsumingAllInputEvents: function(EntityId, boolean): any
		SetIsMultiTouchSupported: function(EntityId, boolean): any
		SetIsNavigationSupported: function(EntityId, boolean): any
		SetIsPixelAligned: function(EntityId, boolean): any
		SetIsPositionalInputSupported: function(EntityId, boolean): any
		SetIsRenderToTexture: function(EntityId, boolean): any
		SetIsTextPixelAligned: function(EntityId, boolean): any
		SetKeepLoadedOnLevelUnload: function(EntityId, boolean): any
		SetNavigationRepeatDelay: function(EntityId, AZ__u64): any
		SetNavigationRepeatPeriod: function(EntityId, AZ__u64): any
		SetNavigationThreshold: function(EntityId, number): any
		SetTooltipDisplayElement: function(EntityId, EntityId): any
	end

	record Broadcast
		CloneElement: function(EntityId, EntityId, EntityId): any
		FindElementByName: function(AZStd__basic_string): any
		ForceEnterInputEventOnInteractable: function(EntityId): any
		ForceHoverInteractable: function(EntityId): any
		GetAttachmentImageAsset: function(): any
		GetAuthoredCanvasSize: function(): any
		GetCanvasSize: function(): any
		GetChildElement: function(integer): any
		GetChildElements: function(): any
		GetDrawOrder: function(): any
		GetEnabled: function(): any
		GetHoverInteractable: function(): any
		GetIsConsumingAllInputEvents: function(): any
		GetIsMultiTouchSupported: function(): any
		GetIsNavigationSupported: function(): any
		GetIsPixelAligned: function(): any
		GetIsPositionalInputSupported: function(): any
		GetIsRenderToTexture: function(): any
		GetIsTextPixelAligned: function(): any
		GetKeepLoadedOnLevelUnload: function(): any
		GetMousePosition: function(): any
		GetNavigationRepeatDelay: function(): any
		GetNavigationRepeatPeriod: function(): any
		GetNavigationThreshold: function(): any
		GetNumChildElements: function(): any
		GetTooltipDisplayElement: function(): any
		RecomputeChangedLayouts: function(): any
		SetAttachmentImageAsset: function(Asset): any
		SetDrawOrder: function(integer): any
		SetEnabled: function(boolean): any
		SetIsConsumingAllInputEvents: function(boolean): any
		SetIsMultiTouchSupported: function(boolean): any
		SetIsNavigationSupported: function(boolean): any
		SetIsPixelAligned: function(boolean): any
		SetIsPositionalInputSupported: function(boolean): any
		SetIsRenderToTexture: function(boolean): any
		SetIsTextPixelAligned: function(boolean): any
		SetKeepLoadedOnLevelUnload: function(boolean): any
		SetNavigationRepeatDelay: function(AZ__u64): any
		SetNavigationRepeatPeriod: function(AZ__u64): any
		SetNavigationThreshold: function(number): any
		SetTooltipDisplayElement: function(EntityId): any
	end
end


global record UiCanvasEnabledStateNotificationBus
	is BusThatHasAHandler<UiCanvasEnabledStateNotificationBus>

	interface Notification
		OnCanvasEnabledStateChanged: function(self, EntityId, boolean): any
	end
end


global record UiCanvasInputNotificationBus
	is BusThatHasAHandler<UiCanvasInputNotificationBus>

	interface Notification
		OnCanvasEnterPressed: function(self, EntityId): any
		OnCanvasEnterReleased: function(self, EntityId): any
		OnCanvasHoverEnd: function(self, EntityId): any
		OnCanvasHoverStart: function(self, EntityId): any
		OnCanvasMultiTouchPressed: function(self, EntityId, integer): any
		OnCanvasMultiTouchReleased: function(self, EntityId, integer): any
		OnCanvasPrimaryPressed: function(self, EntityId): any
		OnCanvasPrimaryReleased: function(self, EntityId): any
	end
end


global record UiCanvasLuaBus
	record Event
		FindElementById: function(EntityId, integer): any
		FindElementByName: function(EntityId, AZStd__basic_string): any
		GetEnabled: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
	end

	record Broadcast
		FindElementById: function(integer): any
		FindElementByName: function(AZStd__basic_string): any
		GetEnabled: function(): any
		SetEnabled: function(boolean): any
	end
end


global record UiCanvasManagerBus
	record Broadcast
		CreateCanvas: function(): any
		FindLoadedCanvasByPathName: function(AZStd__basic_string): any
		LoadCanvas: function(AZStd__basic_string): any
		UnloadCanvas: function(EntityId): any
	end
end


global record UiCanvasNotificationBus
	is BusThatHasAHandler<UiCanvasNotificationBus>

	interface Notification
		OnAction: function(self, EntityId, AZStd__basic_string): any
		OnActionMultitouch: function(self, EntityId, AZStd__basic_string): any
		OnEnableStateChanged: function(self, EntityId, boolean): any
	end
end


global record UiCanvasNotificationLuaBus
	is BusThatHasAHandler<UiCanvasNotificationLuaBus>

	interface Notification
		OnAction: function(self, EntityId, string): any
	end
end


global record UiCanvasProxyRefBus
	record Event
		SetCanvasRefEntity: function(EntityId, EntityId): any
	end

	record Broadcast
		SetCanvasRefEntity: function(EntityId): any
	end
end


global record UiCanvasRefBus
	record Event
		GetCanvas: function(EntityId): any
	end

	record Broadcast
		GetCanvas: function(): any
	end
end


global record UiCanvasRefNotificationBus
	is BusThatHasAHandler<UiCanvasRefNotificationBus>

	interface Notification
		OnCanvasRefChanged: function(self, EntityId, EntityId): any
	end
end


global record UiCheckboxBus
	record Event
		GetChangedActionName: function(EntityId): any
		GetCheckedEntity: function(EntityId): any
		GetState: function(EntityId): any
		GetTurnOffActionName: function(EntityId): any
		GetTurnOnActionName: function(EntityId): any
		GetUncheckedEntity: function(EntityId): any
		SetChangedActionName: function(EntityId, AZStd__basic_string): any
		SetCheckedEntity: function(EntityId, EntityId): any
		SetState: function(EntityId, boolean): any
		SetTurnOffActionName: function(EntityId, AZStd__basic_string): any
		SetTurnOnActionName: function(EntityId, AZStd__basic_string): any
		SetUncheckedEntity: function(EntityId, EntityId): any
		ToggleState: function(EntityId): any
	end

	record Broadcast
		GetChangedActionName: function(): any
		GetCheckedEntity: function(): any
		GetState: function(): any
		GetTurnOffActionName: function(): any
		GetTurnOnActionName: function(): any
		GetUncheckedEntity: function(): any
		SetChangedActionName: function(AZStd__basic_string): any
		SetCheckedEntity: function(EntityId): any
		SetState: function(boolean): any
		SetTurnOffActionName: function(AZStd__basic_string): any
		SetTurnOnActionName: function(AZStd__basic_string): any
		SetUncheckedEntity: function(EntityId): any
		ToggleState: function(): any
	end
end


global record UiCheckboxNotificationBus
	is BusThatHasAHandler<UiCheckboxNotificationBus>

	interface Notification
		OnCheckboxStateChange: function(self, boolean): any
	end
end


global record UiClickableTextBus
	record Event
		SetClickableTextColor: function(EntityId, integer, Color): any
	end

	record Broadcast
		SetClickableTextColor: function(integer, Color): any
	end
end


global record UiCursorBus
	record Broadcast
		DecrementVisibleCounter: function()
		GetUiCursorPosition: function(): Vector2
		IncrementVisibleCounter: function()
		IsUiCursorVisible: function(): boolean
		SetUiCursor: function(string)
		SetUiCursorPosition: function(Vector2)
	end
end


global record UiDraggableBus
	record Event
		GetCanDropOnAnyCanvas: function(EntityId): any
		GetDragState: function(EntityId): any
		GetOriginalFromProxy: function(EntityId): any
		IsProxy: function(EntityId): any
		ProxyDragEnd: function(EntityId, Vector2): any
		RedoDrag: function(EntityId, Vector2): any
		SetAsProxy: function(EntityId, EntityId, Vector2): any
		SetCanDropOnAnyCanvas: function(EntityId, boolean): any
		SetDragState: function(EntityId): any
	end

	record Broadcast
		GetCanDropOnAnyCanvas: function(): any
		GetDragState: function(): any
		GetOriginalFromProxy: function(): any
		IsProxy: function(): any
		ProxyDragEnd: function(Vector2): any
		RedoDrag: function(Vector2): any
		SetAsProxy: function(EntityId, Vector2): any
		SetCanDropOnAnyCanvas: function(boolean): any
		SetDragState: function(): any
	end
end


global record UiDraggableNotificationBus
	is BusThatHasAHandler<UiDraggableNotificationBus>

	interface Notification
		OnDrag: function(self, Vector2): any
		OnDragEnd: function(self, Vector2): any
		OnDragStart: function(self, Vector2): any
	end
end


global record UiDropTargetBus
	record Event
		GetDropState: function(EntityId): any
		GetOnDropActionName: function(EntityId): any
		SetDropState: function(EntityId, integer): any
		SetOnDropActionName: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetDropState: function(): any
		GetOnDropActionName: function(): any
		SetDropState: function(integer): any
		SetOnDropActionName: function(AZStd__basic_string): any
	end
end


global record UiDropTargetNotificationBus
	is BusThatHasAHandler<UiDropTargetNotificationBus>

	interface Notification
		OnDrop: function(self, EntityId): any
		OnDropHoverEnd: function(self, EntityId): any
		OnDropHoverStart: function(self, EntityId): any
	end
end


global record UiDropdownBus
	record Event
		Collapse: function(EntityId): any
		Expand: function(EntityId): any
		GetCollapseOnOutsideClick: function(EntityId): any
		GetCollapsedActionName: function(EntityId): any
		GetContent: function(EntityId): any
		GetExpandOnHover: function(EntityId): any
		GetExpandedActionName: function(EntityId): any
		GetExpandedParentId: function(EntityId): any
		GetIconElement: function(EntityId): any
		GetOptionSelectedActionName: function(EntityId): any
		GetTextElement: function(EntityId): any
		GetValue: function(EntityId): any
		GetWaitTime: function(EntityId): any
		SetCollapseOnOutsideClick: function(EntityId, boolean): any
		SetCollapsedActionName: function(EntityId, AZStd__basic_string): any
		SetContent: function(EntityId, EntityId): any
		SetExpandOnHover: function(EntityId, boolean): any
		SetExpandedActionName: function(EntityId, AZStd__basic_string): any
		SetExpandedParentId: function(EntityId, EntityId): any
		SetIconElement: function(EntityId, EntityId): any
		SetOptionSelectedActionName: function(EntityId, AZStd__basic_string): any
		SetTextElement: function(EntityId, EntityId): any
		SetValue: function(EntityId, EntityId): any
		SetWaitTime: function(EntityId, number): any
	end

	record Broadcast
		Collapse: function(): any
		Expand: function(): any
		GetCollapseOnOutsideClick: function(): any
		GetCollapsedActionName: function(): any
		GetContent: function(): any
		GetExpandOnHover: function(): any
		GetExpandedActionName: function(): any
		GetExpandedParentId: function(): any
		GetIconElement: function(): any
		GetOptionSelectedActionName: function(): any
		GetTextElement: function(): any
		GetValue: function(): any
		GetWaitTime: function(): any
		SetCollapseOnOutsideClick: function(boolean): any
		SetCollapsedActionName: function(AZStd__basic_string): any
		SetContent: function(EntityId): any
		SetExpandOnHover: function(boolean): any
		SetExpandedActionName: function(AZStd__basic_string): any
		SetExpandedParentId: function(EntityId): any
		SetIconElement: function(EntityId): any
		SetOptionSelectedActionName: function(AZStd__basic_string): any
		SetTextElement: function(EntityId): any
		SetValue: function(EntityId): any
		SetWaitTime: function(number): any
	end
end


global record UiDropdownNotificationBus
	is BusThatHasAHandler<UiDropdownNotificationBus>

	interface Notification
		OnDropdownCollapsed: function(self): any
		OnDropdownExpanded: function(self): any
		OnDropdownValueChanged: function(self, EntityId): any
	end
end


global record UiDropdownOptionBus
	record Event
		GetIconElement: function(EntityId): any
		GetOwningDropdown: function(EntityId): any
		GetTextElement: function(EntityId): any
		SetIconElement: function(EntityId, EntityId): any
		SetOwningDropdown: function(EntityId, EntityId): any
		SetTextElement: function(EntityId, EntityId): any
	end

	record Broadcast
		GetIconElement: function(): any
		GetOwningDropdown: function(): any
		GetTextElement: function(): any
		SetIconElement: function(EntityId): any
		SetOwningDropdown: function(EntityId): any
		SetTextElement: function(EntityId): any
	end
end


global record UiDropdownOptionNotificationBus
	is BusThatHasAHandler<UiDropdownOptionNotificationBus>

	interface Notification
		OnDropdownOptionSelected: function(self): any
	end
end


global record UiDynamicLayoutBus
	record Event
		SetNumChildElements: function(EntityId, integer): any
	end

	record Broadcast
		SetNumChildElements: function(integer): any
	end
end


global record UiDynamicScrollBoxBus
	record Event
		AddElementsToEnd: function(EntityId, integer, boolean): any
		GetAutoCalculateVariableElementSize: function(EntityId): any
		GetAutoCalculateVariableHeaderSize: function(EntityId): any
		GetAutoRefreshOnPostActivate: function(EntityId): any
		GetChildAtElementIndex: function(EntityId, integer): any
		GetChildAtSectionAndElementIndex: function(EntityId, integer, integer): any
		GetElementIndexOfChild: function(EntityId, EntityId): any
		GetElementsVaryInSize: function(EntityId): any
		GetEstimatedVariableElementSize: function(EntityId): any
		GetEstimatedVariableHeaderSize: function(EntityId): any
		GetHeadersSticky: function(EntityId): any
		GetHeadersVaryInSize: function(EntityId): any
		GetPrototypeElement: function(EntityId): any
		GetPrototypeHeader: function(EntityId): any
		GetSectionIndexOfChild: function(EntityId, EntityId): any
		GetSectionsEnabled: function(EntityId): any
		RefreshContent: function(EntityId): any
		RemoveElementsFromFront: function(EntityId, integer): any
		ScrollToEnd: function(EntityId): any
		SetAutoCalculateVariableElementSize: function(EntityId, boolean): any
		SetAutoCalculateVariableHeaderSize: function(EntityId, boolean): any
		SetAutoRefreshOnPostActivate: function(EntityId, boolean): any
		SetElementsVaryInSize: function(EntityId, boolean): any
		SetEstimatedVariableElementSize: function(EntityId, number): any
		SetEstimatedVariableHeaderSize: function(EntityId, number): any
		SetHeadersSticky: function(EntityId, boolean): any
		SetHeadersVaryInSize: function(EntityId, boolean): any
		SetPrototypeElement: function(EntityId, EntityId): any
		SetPrototypeHeader: function(EntityId, EntityId): any
		SetSectionsEnabled: function(EntityId, boolean): any
	end

	record Broadcast
		AddElementsToEnd: function(integer, boolean): any
		GetAutoCalculateVariableElementSize: function(): any
		GetAutoCalculateVariableHeaderSize: function(): any
		GetAutoRefreshOnPostActivate: function(): any
		GetChildAtElementIndex: function(integer): any
		GetChildAtSectionAndElementIndex: function(integer, integer): any
		GetElementIndexOfChild: function(EntityId): any
		GetElementsVaryInSize: function(): any
		GetEstimatedVariableElementSize: function(): any
		GetEstimatedVariableHeaderSize: function(): any
		GetHeadersSticky: function(): any
		GetHeadersVaryInSize: function(): any
		GetPrototypeElement: function(): any
		GetPrototypeHeader: function(): any
		GetSectionIndexOfChild: function(EntityId): any
		GetSectionsEnabled: function(): any
		RefreshContent: function(): any
		RemoveElementsFromFront: function(integer): any
		ScrollToEnd: function(): any
		SetAutoCalculateVariableElementSize: function(boolean): any
		SetAutoCalculateVariableHeaderSize: function(boolean): any
		SetAutoRefreshOnPostActivate: function(boolean): any
		SetElementsVaryInSize: function(boolean): any
		SetEstimatedVariableElementSize: function(number): any
		SetEstimatedVariableHeaderSize: function(number): any
		SetHeadersSticky: function(boolean): any
		SetHeadersVaryInSize: function(boolean): any
		SetPrototypeElement: function(EntityId): any
		SetPrototypeHeader: function(EntityId): any
		SetSectionsEnabled: function(boolean): any
	end
end


global record UiDynamicScrollBoxDataBus
	is BusThatHasAHandler<UiDynamicScrollBoxDataBus>

	interface Notification
		GetElementHeight: function(number, any, integer): any
		GetElementInSectionHeight: function(number, any, integer, integer): any
		GetElementInSectionWidth: function(number, any, integer, integer): any
		GetElementWidth: function(number, any, integer): any
		GetNumElements: function(integer, any): any
		GetNumElementsInSection: function(integer, any, integer): any
		GetNumSections: function(integer, any): any
		GetSectionHeaderHeight: function(number, any, integer): any
		GetSectionHeaderWidth: function(number, any, integer): any
	end
end


global record UiDynamicScrollBoxElementNotificationBus
	is BusThatHasAHandler<UiDynamicScrollBoxElementNotificationBus>

	interface Notification
		OnElementBecomingVisible: function(self, EntityId, integer): any
		OnElementInSectionBecomingVisible: function(self, EntityId, integer, integer): any
		OnPrepareElementForSizeCalculation: function(self, EntityId, integer): any
		OnPrepareElementInSectionForSizeCalculation: function(self, EntityId, integer, integer): any
		OnPrepareSectionHeaderForSizeCalculation: function(self, EntityId, integer): any
		OnSectionHeaderBecomingVisible: function(self, EntityId, integer): any
	end
end


global record UiElementBus
	record Event
		DestroyElement: function(EntityId): any
		FindChildByName: function(EntityId, AZStd__basic_string): any
		FindDescendantByName: function(EntityId, AZStd__basic_string): any
		GetCanvas: function(EntityId): any
		GetChild: function(EntityId, integer): any
		GetChildren: function(EntityId): any
		GetIndexOfChildByEntityId: function(EntityId, EntityId): any
		GetName: function(EntityId): any
		GetNumChildElements: function(EntityId): any
		GetParent: function(EntityId): any
		IsAncestor: function(EntityId, EntityId): any
		IsEnabled: function(EntityId): any
		Reparent: function(EntityId, EntityId, EntityId): any
		SetIsEnabled: function(EntityId, boolean): any
	end

	record Broadcast
		DestroyElement: function(): any
		FindChildByName: function(AZStd__basic_string): any
		FindDescendantByName: function(AZStd__basic_string): any
		GetCanvas: function(): any
		GetChild: function(integer): any
		GetChildren: function(): any
		GetIndexOfChildByEntityId: function(EntityId): any
		GetName: function(): any
		GetNumChildElements: function(): any
		GetParent: function(): any
		IsAncestor: function(EntityId): any
		IsEnabled: function(): any
		Reparent: function(EntityId, EntityId): any
		SetIsEnabled: function(boolean): any
	end
end


global record UiFaderBus
	record Event
		Fade: function(EntityId, number, number): any
		GetFadeValue: function(EntityId): any
		GetUseRenderToTexture: function(EntityId): any
		IsFading: function(EntityId): any
		SetFadeValue: function(EntityId, number): any
		SetUseRenderToTexture: function(EntityId, boolean): any
	end

	record Broadcast
		Fade: function(number, number): any
		GetFadeValue: function(): any
		GetUseRenderToTexture: function(): any
		IsFading: function(): any
		SetFadeValue: function(number): any
		SetUseRenderToTexture: function(boolean): any
	end
end


global record UiFaderNotificationBus
	is BusThatHasAHandler<UiFaderNotificationBus>

	interface Notification
		OnFadeComplete: function(self): any
		OnFadeInterrupted: function(self): any
		OnFaderDestroyed: function(self): any
	end
end


global record UiFlipbookAnimationBus
	record Event
		GetCurrentFrame: function(EntityId): any
		GetEndFrame: function(EntityId): any
		GetFramerate: function(EntityId): any
		GetFramerateUnit: function(EntityId): any
		GetIsAutoPlay: function(EntityId): any
		GetLoopDelay: function(EntityId): any
		GetLoopStartFrame: function(EntityId): any
		GetLoopType: function(EntityId): any
		GetReverseDelay: function(EntityId): any
		GetStartDelay: function(EntityId): any
		GetStartFrame: function(EntityId): any
		IsPlaying: function(EntityId): any
		SetCurrentFrame: function(EntityId, integer): any
		SetEndFrame: function(EntityId, integer): any
		SetFramerate: function(EntityId, number): any
		SetFramerateUnit: function(EntityId): any
		SetIsAutoPlay: function(EntityId, boolean): any
		SetLoopDelay: function(EntityId, number): any
		SetLoopStartFrame: function(EntityId, integer): any
		SetLoopType: function(EntityId): any
		SetReverseDelay: function(EntityId, number): any
		SetStartDelay: function(EntityId, number): any
		SetStartFrame: function(EntityId, integer): any
		Start: function(EntityId): any
		Stop: function(EntityId): any
	end

	record Broadcast
		GetCurrentFrame: function(): any
		GetEndFrame: function(): any
		GetFramerate: function(): any
		GetFramerateUnit: function(): any
		GetIsAutoPlay: function(): any
		GetLoopDelay: function(): any
		GetLoopStartFrame: function(): any
		GetLoopType: function(): any
		GetReverseDelay: function(): any
		GetStartDelay: function(): any
		GetStartFrame: function(): any
		IsPlaying: function(): any
		SetCurrentFrame: function(integer): any
		SetEndFrame: function(integer): any
		SetFramerate: function(number): any
		SetFramerateUnit: function(): any
		SetIsAutoPlay: function(boolean): any
		SetLoopDelay: function(number): any
		SetLoopStartFrame: function(integer): any
		SetLoopType: function(): any
		SetReverseDelay: function(number): any
		SetStartDelay: function(number): any
		SetStartFrame: function(integer): any
		Start: function(): any
		Stop: function(): any
	end
end


global record UiFlipbookAnimationNotificationsBus
	is BusThatHasAHandler<UiFlipbookAnimationNotificationsBus>

	interface Notification
		OnAnimationStarted: function(self): any
		OnAnimationStopped: function(self): any
		OnLoopSequenceCompleted: function(self): any
	end
end


global record UiHierarchyInteractivityToggleBus
	record Event
		GetInteractiveState: function(EntityId): any
		SetInteractiveState: function(EntityId, boolean): any
	end

	record Broadcast
		GetInteractiveState: function(): any
		SetInteractiveState: function(boolean): any
	end
end


global record UiImageBus
	record Event
		GetAlpha: function(EntityId): any
		GetAttachmentImageAsset: function(EntityId): any
		GetColor: function(EntityId): any
		GetCornerFillOrigin: function(EntityId): any
		GetEdgeFillOrigin: function(EntityId): any
		GetFillAmount: function(EntityId): any
		GetFillCenter: function(EntityId): any
		GetFillClockwise: function(EntityId): any
		GetFillType: function(EntityId): any
		GetImageType: function(EntityId): any
		GetIsRenderTargetSRGB: function(EntityId): any
		GetRadialFillStartAngle: function(EntityId): any
		GetSpritePathname: function(EntityId): any
		GetSpriteType: function(EntityId): any
		SetAlpha: function(EntityId, number): any
		SetAttachmentImageAsset: function(EntityId, Asset): any
		SetColor: function(EntityId, Color): any
		SetCornerFillOrigin: function(EntityId): any
		SetEdgeFillOrigin: function(EntityId): any
		SetFillAmount: function(EntityId, number): any
		SetFillCenter: function(EntityId, boolean): any
		SetFillClockwise: function(EntityId, boolean): any
		SetFillType: function(EntityId): any
		SetImageType: function(EntityId): any
		SetIsRenderTargetSRGB: function(EntityId, boolean): any
		SetRadialFillStartAngle: function(EntityId, number): any
		SetSpritePathname: function(EntityId, AZStd__basic_string): any
		SetSpritePathnameIfExists: function(EntityId, AZStd__basic_string): any
		SetSpriteType: function(EntityId): any
	end

	record Broadcast
		GetAlpha: function(): any
		GetAttachmentImageAsset: function(): any
		GetColor: function(): any
		GetCornerFillOrigin: function(): any
		GetEdgeFillOrigin: function(): any
		GetFillAmount: function(): any
		GetFillCenter: function(): any
		GetFillClockwise: function(): any
		GetFillType: function(): any
		GetImageType: function(): any
		GetIsRenderTargetSRGB: function(): any
		GetRadialFillStartAngle: function(): any
		GetSpritePathname: function(): any
		GetSpriteType: function(): any
		SetAlpha: function(number): any
		SetAttachmentImageAsset: function(Asset): any
		SetColor: function(Color): any
		SetCornerFillOrigin: function(): any
		SetEdgeFillOrigin: function(): any
		SetFillAmount: function(number): any
		SetFillCenter: function(boolean): any
		SetFillClockwise: function(boolean): any
		SetFillType: function(): any
		SetImageType: function(): any
		SetIsRenderTargetSRGB: function(boolean): any
		SetRadialFillStartAngle: function(number): any
		SetSpritePathname: function(AZStd__basic_string): any
		SetSpritePathnameIfExists: function(AZStd__basic_string): any
		SetSpriteType: function(): any
	end
end


global record UiImageSequenceBus
	record Event
		GetImageType: function(EntityId): any
		SetImageType: function(EntityId): any
	end

	record Broadcast
		GetImageType: function(): any
		SetImageType: function(): any
	end
end


global record UiIndexableImageBus
	record Event
		GetImageIndex: function(EntityId): any
		GetImageIndexAlias: function(EntityId, integer): any
		GetImageIndexCount: function(EntityId): any
		GetImageIndexFromAlias: function(EntityId, AZStd__basic_string): any
		SetImageIndex: function(EntityId, integer): any
		SetImageIndexAlias: function(EntityId, integer, AZStd__basic_string): any
	end

	record Broadcast
		GetImageIndex: function(): any
		GetImageIndexAlias: function(integer): any
		GetImageIndexCount: function(): any
		GetImageIndexFromAlias: function(AZStd__basic_string): any
		SetImageIndex: function(integer): any
		SetImageIndexAlias: function(integer, AZStd__basic_string): any
	end
end


global record UiInitializationBus
	is BusThatHasAHandler<UiInitializationBus>

	interface Notification
		InGamePostActivate: function(self): any
	end
end


global record UiInteractableActionsBus
	record Event
		GetHoverEndActionName: function(EntityId): any
		GetHoverStartActionName: function(EntityId): any
		GetPressedActionName: function(EntityId): any
		GetReleasedActionName: function(EntityId): any
		SetHoverEndActionName: function(EntityId, AZStd__basic_string): any
		SetHoverStartActionName: function(EntityId, AZStd__basic_string): any
		SetPressedActionName: function(EntityId, AZStd__basic_string): any
		SetReleasedActionName: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetHoverEndActionName: function(): any
		GetHoverStartActionName: function(): any
		GetPressedActionName: function(): any
		GetReleasedActionName: function(): any
		SetHoverEndActionName: function(AZStd__basic_string): any
		SetHoverStartActionName: function(AZStd__basic_string): any
		SetPressedActionName: function(AZStd__basic_string): any
		SetReleasedActionName: function(AZStd__basic_string): any
	end
end


global record UiInteractableBus
	record Event
		GetIsAutoActivationEnabled: function(EntityId): any
		IsHandlingEvents: function(EntityId): any
		IsHandlingMultiTouchEvents: function(EntityId): any
		LostActiveStatus: function(EntityId): any
		SetIsAutoActivationEnabled: function(EntityId, boolean): any
		SetIsHandlingEvents: function(EntityId, boolean): any
		SetIsHandlingMultiTouchEvents: function(EntityId, boolean): any
	end

	record Broadcast
		GetIsAutoActivationEnabled: function(): any
		IsHandlingEvents: function(): any
		IsHandlingMultiTouchEvents: function(): any
		LostActiveStatus: function(): any
		SetIsAutoActivationEnabled: function(boolean): any
		SetIsHandlingEvents: function(boolean): any
		SetIsHandlingMultiTouchEvents: function(boolean): any
	end
end


global record UiInteractableNotificationBus
	is BusThatHasAHandler<UiInteractableNotificationBus>

	interface Notification
		OnHoverEnd: function(self): any
		OnHoverStart: function(self): any
		OnPressed: function(self): any
		OnReceivedHoverByNavigatingFromDescendant: function(self, EntityId): any
		OnReleased: function(self): any
	end
end


global record UiInteractableStatesBus
	record Event
		GetStateAlpha: function(EntityId, integer, EntityId): any
		GetStateColor: function(EntityId, integer, EntityId): any
		GetStateFontEffectIndex: function(EntityId, integer, EntityId): any
		GetStateFontPathname: function(EntityId, integer, EntityId): any
		GetStateSpritePathname: function(EntityId, integer, EntityId): any
		HasStateAlpha: function(EntityId, integer, EntityId): any
		HasStateColor: function(EntityId, integer, EntityId): any
		HasStateFont: function(EntityId, integer, EntityId): any
		HasStateSprite: function(EntityId, integer, EntityId): any
		SetStateAlpha: function(EntityId, integer, EntityId, number): any
		SetStateColor: function(EntityId, integer, EntityId, Color): any
		SetStateFont: function(EntityId, integer, EntityId, AZStd__basic_string): any
		SetStateSpritePathname: function(EntityId, integer, EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetStateAlpha: function(integer, EntityId): any
		GetStateColor: function(integer, EntityId): any
		GetStateFontEffectIndex: function(integer, EntityId): any
		GetStateFontPathname: function(integer, EntityId): any
		GetStateSpritePathname: function(integer, EntityId): any
		HasStateAlpha: function(integer, EntityId): any
		HasStateColor: function(integer, EntityId): any
		HasStateFont: function(integer, EntityId): any
		HasStateSprite: function(integer, EntityId): any
		SetStateAlpha: function(integer, EntityId, number): any
		SetStateColor: function(integer, EntityId, Color): any
		SetStateFont: function(integer, EntityId, AZStd__basic_string): any
		SetStateSpritePathname: function(integer, EntityId, AZStd__basic_string): any
	end
end


global record UiLayoutBus
	record Event
		GetHorizontalChildAlignment: function(EntityId): any
		GetIgnoreDefaultLayoutCells: function(EntityId): any
		GetVerticalChildAlignment: function(EntityId): any
		SetHorizontalChildAlignment: function(EntityId): any
		SetIgnoreDefaultLayoutCells: function(EntityId, boolean): any
		SetVerticalChildAlignment: function(EntityId): any
	end

	record Broadcast
		GetHorizontalChildAlignment: function(): any
		GetIgnoreDefaultLayoutCells: function(): any
		GetVerticalChildAlignment: function(): any
		SetHorizontalChildAlignment: function(): any
		SetIgnoreDefaultLayoutCells: function(boolean): any
		SetVerticalChildAlignment: function(): any
	end
end


global record UiLayoutCellBus
	record Event
		GetExtraHeightRatio: function(EntityId): any
		GetExtraWidthRatio: function(EntityId): any
		GetMaxHeight: function(EntityId): any
		GetMaxWidth: function(EntityId): any
		GetMinHeight: function(EntityId): any
		GetMinWidth: function(EntityId): any
		GetTargetHeight: function(EntityId): any
		GetTargetWidth: function(EntityId): any
		SetExtraHeightRatio: function(EntityId, number): any
		SetExtraWidthRatio: function(EntityId, number): any
		SetMaxHeight: function(EntityId, number): any
		SetMaxWidth: function(EntityId, number): any
		SetMinHeight: function(EntityId, number): any
		SetMinWidth: function(EntityId, number): any
		SetTargetHeight: function(EntityId, number): any
		SetTargetWidth: function(EntityId, number): any
	end

	record Broadcast
		GetExtraHeightRatio: function(): any
		GetExtraWidthRatio: function(): any
		GetMaxHeight: function(): any
		GetMaxWidth: function(): any
		GetMinHeight: function(): any
		GetMinWidth: function(): any
		GetTargetHeight: function(): any
		GetTargetWidth: function(): any
		SetExtraHeightRatio: function(number): any
		SetExtraWidthRatio: function(number): any
		SetMaxHeight: function(number): any
		SetMaxWidth: function(number): any
		SetMinHeight: function(number): any
		SetMinWidth: function(number): any
		SetTargetHeight: function(number): any
		SetTargetWidth: function(number): any
	end
end


global record UiLayoutColumnBus
	record Event
		GetOrder: function(EntityId): any
		GetPadding: function(EntityId): any
		GetSpacing: function(EntityId): any
		SetOrder: function(EntityId): any
		SetPadding: function(EntityId, Padding): any
		SetSpacing: function(EntityId, number): any
	end

	record Broadcast
		GetOrder: function(): any
		GetPadding: function(): any
		GetSpacing: function(): any
		SetOrder: function(): any
		SetPadding: function(Padding): any
		SetSpacing: function(number): any
	end
end


global record UiLayoutFitterBus
	record Event
		GetHorizontalFit: function(EntityId): any
		GetVerticalFit: function(EntityId): any
		SetHorizontalFit: function(EntityId, boolean): any
		SetVerticalFit: function(EntityId, boolean): any
	end

	record Broadcast
		GetHorizontalFit: function(): any
		GetVerticalFit: function(): any
		SetHorizontalFit: function(boolean): any
		SetVerticalFit: function(boolean): any
	end
end


global record UiLayoutGridBus
	record Event
		GetCellSize: function(EntityId): any
		GetHorizontalOrder: function(EntityId): any
		GetPadding: function(EntityId): any
		GetSpacing: function(EntityId): any
		GetStartingDirection: function(EntityId): any
		GetVerticalOrder: function(EntityId): any
		SetCellSize: function(EntityId, Vector2): any
		SetHorizontalOrder: function(EntityId): any
		SetPadding: function(EntityId, Padding): any
		SetSpacing: function(EntityId, Vector2): any
		SetStartingDirection: function(EntityId): any
		SetVerticalOrder: function(EntityId): any
	end

	record Broadcast
		GetCellSize: function(): any
		GetHorizontalOrder: function(): any
		GetPadding: function(): any
		GetSpacing: function(): any
		GetStartingDirection: function(): any
		GetVerticalOrder: function(): any
		SetCellSize: function(Vector2): any
		SetHorizontalOrder: function(): any
		SetPadding: function(Padding): any
		SetSpacing: function(Vector2): any
		SetStartingDirection: function(): any
		SetVerticalOrder: function(): any
	end
end


global record UiLayoutRowBus
	record Event
		GetOrder: function(EntityId): any
		GetPadding: function(EntityId): any
		GetSpacing: function(EntityId): any
		SetOrder: function(EntityId): any
		SetPadding: function(EntityId, Padding): any
		SetSpacing: function(EntityId, number): any
	end

	record Broadcast
		GetOrder: function(): any
		GetPadding: function(): any
		GetSpacing: function(): any
		SetOrder: function(): any
		SetPadding: function(Padding): any
		SetSpacing: function(number): any
	end
end


global record UiMarkupButtonBus
	record Event
		GetLinkColor: function(EntityId): any
		GetLinkHoverColor: function(EntityId): any
		SetLinkColor: function(EntityId, Color): any
		SetLinkHoverColor: function(EntityId, Color): any
	end

	record Broadcast
		GetLinkColor: function(): any
		GetLinkHoverColor: function(): any
		SetLinkColor: function(Color): any
		SetLinkHoverColor: function(Color): any
	end
end


global record UiMarkupButtonNotificationsBus
	is BusThatHasAHandler<UiMarkupButtonNotificationsBus>

	interface Notification
		OnClick: function(self, integer, AZStd__basic_string): any
		OnHoverEnd: function(self, integer, AZStd__basic_string): any
		OnHoverStart: function(self, integer, AZStd__basic_string): any
		OnPressed: function(self, integer, AZStd__basic_string): any
		OnReleased: function(self, integer, AZStd__basic_string): any
	end
end


global record UiMaskBus
	record Event
		GetDrawBehind: function(EntityId): any
		GetDrawInFront: function(EntityId): any
		GetIsInteractionMaskingEnabled: function(EntityId): any
		GetIsMaskingEnabled: function(EntityId): any
		GetUseAlphaTest: function(EntityId): any
		GetUseRenderToTexture: function(EntityId): any
		SetDrawBehind: function(EntityId, boolean): any
		SetDrawInFront: function(EntityId, boolean): any
		SetIsInteractionMaskingEnabled: function(EntityId, boolean): any
		SetIsMaskingEnabled: function(EntityId, boolean): any
		SetUseAlphaTest: function(EntityId, boolean): any
		SetUseRenderToTexture: function(EntityId, boolean): any
	end

	record Broadcast
		GetDrawBehind: function(): any
		GetDrawInFront: function(): any
		GetIsInteractionMaskingEnabled: function(): any
		GetIsMaskingEnabled: function(): any
		GetUseAlphaTest: function(): any
		GetUseRenderToTexture: function(): any
		SetDrawBehind: function(boolean): any
		SetDrawInFront: function(boolean): any
		SetIsInteractionMaskingEnabled: function(boolean): any
		SetIsMaskingEnabled: function(boolean): any
		SetUseAlphaTest: function(boolean): any
		SetUseRenderToTexture: function(boolean): any
	end
end


global record UiNavigationBus
	record Event
		GetNavigationMode: function(EntityId): any
		GetOnDownEntity: function(EntityId): any
		GetOnLeftEntity: function(EntityId): any
		GetOnRightEntity: function(EntityId): any
		GetOnUpEntity: function(EntityId): any
		SetNavigationMode: function(EntityId): any
		SetOnDownEntity: function(EntityId, EntityId): any
		SetOnLeftEntity: function(EntityId, EntityId): any
		SetOnRightEntity: function(EntityId, EntityId): any
		SetOnUpEntity: function(EntityId, EntityId): any
	end

	record Broadcast
		GetNavigationMode: function(): any
		GetOnDownEntity: function(): any
		GetOnLeftEntity: function(): any
		GetOnRightEntity: function(): any
		GetOnUpEntity: function(): any
		SetNavigationMode: function(): any
		SetOnDownEntity: function(EntityId): any
		SetOnLeftEntity: function(EntityId): any
		SetOnRightEntity: function(EntityId): any
		SetOnUpEntity: function(EntityId): any
	end
end


global record UiParticleEmitterBus
	record Event
		GetEmitAngle: function(EntityId): any
		GetEmitAngleVariation: function(EntityId): any
		GetEmitterLifetime: function(EntityId): any
		GetEmitterShape: function(EntityId): any
		GetInsideEmitDistance: function(EntityId): any
		GetIsEmitOnActivate: function(EntityId): any
		GetIsEmitOnEdge: function(EntityId): any
		GetIsEmitterLifetimeInfinite: function(EntityId): any
		GetIsEmitting: function(EntityId): any
		GetIsHitParticleCountOnActivate: function(EntityId): any
		GetIsParticleAspectRatioLocked: function(EntityId): any
		GetIsParticleCountLimited: function(EntityId): any
		GetIsParticleInitialRotationFromInitialVelocity: function(EntityId): any
		GetIsParticleLifetimeInfinite: function(EntityId): any
		GetIsParticlePositionRelativeToEmitter: function(EntityId): any
		GetIsParticleRotationFromVelocity: function(EntityId): any
		GetIsRandomSeedFixed: function(EntityId): any
		GetIsSpriteSheetAnimated: function(EntityId): any
		GetIsSpriteSheetAnimationLooped: function(EntityId): any
		GetIsSpriteSheetIndexRandom: function(EntityId): any
		GetMaxParticles: function(EntityId): any
		GetOutsideEmitDistance: function(EntityId): any
		GetParticleAcceleration: function(EntityId): any
		GetParticleAccelerationMovementSpace: function(EntityId): any
		GetParticleAlpha: function(EntityId): any
		GetParticleColor: function(EntityId): any
		GetParticleColorBrightnessVariation: function(EntityId): any
		GetParticleColorTintVariation: function(EntityId): any
		GetParticleEmitRate: function(EntityId): any
		GetParticleHeight: function(EntityId): any
		GetParticleHeightVariation: function(EntityId): any
		GetParticleInitialDirectionType: function(EntityId): any
		GetParticleInitialRotation: function(EntityId): any
		GetParticleInitialRotationVariation: function(EntityId): any
		GetParticleInitialVelocity: function(EntityId): any
		GetParticleLifetime: function(EntityId): any
		GetParticleLifetimeVariation: function(EntityId): any
		GetParticleMovementCoordinateType: function(EntityId): any
		GetParticlePivot: function(EntityId): any
		GetParticleRotationSpeed: function(EntityId): any
		GetParticleRotationSpeedVariation: function(EntityId): any
		GetParticleSize: function(EntityId): any
		GetParticleSpeed: function(EntityId): any
		GetParticleSpeedVariation: function(EntityId): any
		GetParticleWidth: function(EntityId): any
		GetParticleWidthVariation: function(EntityId): any
		GetRandomSeed: function(EntityId): any
		GetSpritePathname: function(EntityId): any
		GetSpriteSheetCellEndIndex: function(EntityId): any
		GetSpriteSheetCellIndex: function(EntityId): any
		GetSpriteSheetFrameDelay: function(EntityId): any
		SetEmitAngle: function(EntityId, number): any
		SetEmitAngleVariation: function(EntityId, number): any
		SetEmitterLifetime: function(EntityId, number): any
		SetEmitterShape: function(EntityId): any
		SetInsideEmitDistance: function(EntityId, number): any
		SetIsEmitOnActivate: function(EntityId, boolean): any
		SetIsEmitOnEdge: function(EntityId, boolean): any
		SetIsEmitterLifetimeInfinite: function(EntityId, boolean): any
		SetIsEmitting: function(EntityId, boolean): any
		SetIsHitParticleCountOnActivate: function(EntityId, boolean): any
		SetIsParticleAspectRatioLocked: function(EntityId, boolean): any
		SetIsParticleCountLimited: function(EntityId, boolean): any
		SetIsParticleInitialRotationFromInitialVelocity: function(EntityId, boolean): any
		SetIsParticleLifetimeInfinite: function(EntityId, boolean): any
		SetIsParticlePositionRelativeToEmitter: function(EntityId, boolean): any
		SetIsParticleRotationFromVelocity: function(EntityId, boolean): any
		SetIsRandomSeedFixed: function(EntityId, boolean): any
		SetIsSpriteSheetAnimated: function(EntityId, boolean): any
		SetIsSpriteSheetAnimationLooped: function(EntityId, boolean): any
		SetIsSpriteSheetIndexRandom: function(EntityId, boolean): any
		SetMaxParticles: function(EntityId, integer): any
		SetOutsideEmitDistance: function(EntityId, number): any
		SetParticleAcceleration: function(EntityId, Vector2): any
		SetParticleAccelerationMovementSpace: function(EntityId): any
		SetParticleAlpha: function(EntityId, number): any
		SetParticleColor: function(EntityId, Color): any
		SetParticleColorBrightnessVariation: function(EntityId, number): any
		SetParticleColorTintVariation: function(EntityId, number): any
		SetParticleEmitRate: function(EntityId, number): any
		SetParticleHeight: function(EntityId, number): any
		SetParticleHeightVariation: function(EntityId, number): any
		SetParticleInitialDirectionType: function(EntityId): any
		SetParticleInitialRotation: function(EntityId, number): any
		SetParticleInitialRotationVariation: function(EntityId, number): any
		SetParticleInitialVelocity: function(EntityId, Vector2): any
		SetParticleLifetime: function(EntityId, number): any
		SetParticleLifetimeVariation: function(EntityId, number): any
		SetParticleMovementCoordinateType: function(EntityId): any
		SetParticlePivot: function(EntityId, Vector2): any
		SetParticleRotationSpeed: function(EntityId, number): any
		SetParticleRotationSpeedVariation: function(EntityId, number): any
		SetParticleSize: function(EntityId, Vector2): any
		SetParticleSpeed: function(EntityId, number): any
		SetParticleSpeedVariation: function(EntityId, number): any
		SetParticleWidth: function(EntityId, number): any
		SetParticleWidthVariation: function(EntityId, number): any
		SetRandomSeed: function(EntityId, integer): any
		SetSpritePathname: function(EntityId, AZStd__basic_string): any
		SetSpriteSheetCellEndIndex: function(EntityId, integer): any
		SetSpriteSheetCellIndex: function(EntityId, integer): any
		SetSpriteSheetFrameDelay: function(EntityId, number): any
	end

	record Broadcast
		GetEmitAngle: function(): any
		GetEmitAngleVariation: function(): any
		GetEmitterLifetime: function(): any
		GetEmitterShape: function(): any
		GetInsideEmitDistance: function(): any
		GetIsEmitOnActivate: function(): any
		GetIsEmitOnEdge: function(): any
		GetIsEmitterLifetimeInfinite: function(): any
		GetIsEmitting: function(): any
		GetIsHitParticleCountOnActivate: function(): any
		GetIsParticleAspectRatioLocked: function(): any
		GetIsParticleCountLimited: function(): any
		GetIsParticleInitialRotationFromInitialVelocity: function(): any
		GetIsParticleLifetimeInfinite: function(): any
		GetIsParticlePositionRelativeToEmitter: function(): any
		GetIsParticleRotationFromVelocity: function(): any
		GetIsRandomSeedFixed: function(): any
		GetIsSpriteSheetAnimated: function(): any
		GetIsSpriteSheetAnimationLooped: function(): any
		GetIsSpriteSheetIndexRandom: function(): any
		GetMaxParticles: function(): any
		GetOutsideEmitDistance: function(): any
		GetParticleAcceleration: function(): any
		GetParticleAccelerationMovementSpace: function(): any
		GetParticleAlpha: function(): any
		GetParticleColor: function(): any
		GetParticleColorBrightnessVariation: function(): any
		GetParticleColorTintVariation: function(): any
		GetParticleEmitRate: function(): any
		GetParticleHeight: function(): any
		GetParticleHeightVariation: function(): any
		GetParticleInitialDirectionType: function(): any
		GetParticleInitialRotation: function(): any
		GetParticleInitialRotationVariation: function(): any
		GetParticleInitialVelocity: function(): any
		GetParticleLifetime: function(): any
		GetParticleLifetimeVariation: function(): any
		GetParticleMovementCoordinateType: function(): any
		GetParticlePivot: function(): any
		GetParticleRotationSpeed: function(): any
		GetParticleRotationSpeedVariation: function(): any
		GetParticleSize: function(): any
		GetParticleSpeed: function(): any
		GetParticleSpeedVariation: function(): any
		GetParticleWidth: function(): any
		GetParticleWidthVariation: function(): any
		GetRandomSeed: function(): any
		GetSpritePathname: function(): any
		GetSpriteSheetCellEndIndex: function(): any
		GetSpriteSheetCellIndex: function(): any
		GetSpriteSheetFrameDelay: function(): any
		SetEmitAngle: function(number): any
		SetEmitAngleVariation: function(number): any
		SetEmitterLifetime: function(number): any
		SetEmitterShape: function(): any
		SetInsideEmitDistance: function(number): any
		SetIsEmitOnActivate: function(boolean): any
		SetIsEmitOnEdge: function(boolean): any
		SetIsEmitterLifetimeInfinite: function(boolean): any
		SetIsEmitting: function(boolean): any
		SetIsHitParticleCountOnActivate: function(boolean): any
		SetIsParticleAspectRatioLocked: function(boolean): any
		SetIsParticleCountLimited: function(boolean): any
		SetIsParticleInitialRotationFromInitialVelocity: function(boolean): any
		SetIsParticleLifetimeInfinite: function(boolean): any
		SetIsParticlePositionRelativeToEmitter: function(boolean): any
		SetIsParticleRotationFromVelocity: function(boolean): any
		SetIsRandomSeedFixed: function(boolean): any
		SetIsSpriteSheetAnimated: function(boolean): any
		SetIsSpriteSheetAnimationLooped: function(boolean): any
		SetIsSpriteSheetIndexRandom: function(boolean): any
		SetMaxParticles: function(integer): any
		SetOutsideEmitDistance: function(number): any
		SetParticleAcceleration: function(Vector2): any
		SetParticleAccelerationMovementSpace: function(): any
		SetParticleAlpha: function(number): any
		SetParticleColor: function(Color): any
		SetParticleColorBrightnessVariation: function(number): any
		SetParticleColorTintVariation: function(number): any
		SetParticleEmitRate: function(number): any
		SetParticleHeight: function(number): any
		SetParticleHeightVariation: function(number): any
		SetParticleInitialDirectionType: function(): any
		SetParticleInitialRotation: function(number): any
		SetParticleInitialRotationVariation: function(number): any
		SetParticleInitialVelocity: function(Vector2): any
		SetParticleLifetime: function(number): any
		SetParticleLifetimeVariation: function(number): any
		SetParticleMovementCoordinateType: function(): any
		SetParticlePivot: function(Vector2): any
		SetParticleRotationSpeed: function(number): any
		SetParticleRotationSpeedVariation: function(number): any
		SetParticleSize: function(Vector2): any
		SetParticleSpeed: function(number): any
		SetParticleSpeedVariation: function(number): any
		SetParticleWidth: function(number): any
		SetParticleWidthVariation: function(number): any
		SetRandomSeed: function(integer): any
		SetSpritePathname: function(AZStd__basic_string): any
		SetSpriteSheetCellEndIndex: function(integer): any
		SetSpriteSheetCellIndex: function(integer): any
		SetSpriteSheetFrameDelay: function(number): any
	end
end


global record UiRadioButtonBus
	record Event
		GetChangedActionName: function(EntityId): any
		GetCheckedEntity: function(EntityId): any
		GetGroup: function(EntityId): any
		GetState: function(EntityId): any
		GetTurnOffActionName: function(EntityId): any
		GetTurnOnActionName: function(EntityId): any
		GetUncheckedEntity: function(EntityId): any
		SetChangedActionName: function(EntityId, AZStd__basic_string): any
		SetCheckedEntity: function(EntityId, EntityId): any
		SetTurnOffActionName: function(EntityId, AZStd__basic_string): any
		SetTurnOnActionName: function(EntityId, AZStd__basic_string): any
		SetUncheckedEntity: function(EntityId, EntityId): any
	end

	record Broadcast
		GetChangedActionName: function(): any
		GetCheckedEntity: function(): any
		GetGroup: function(): any
		GetState: function(): any
		GetTurnOffActionName: function(): any
		GetTurnOnActionName: function(): any
		GetUncheckedEntity: function(): any
		SetChangedActionName: function(AZStd__basic_string): any
		SetCheckedEntity: function(EntityId): any
		SetTurnOffActionName: function(AZStd__basic_string): any
		SetTurnOnActionName: function(AZStd__basic_string): any
		SetUncheckedEntity: function(EntityId): any
	end
end


global record UiRadioButtonGroupBus
	record Event
		AddRadioButton: function(EntityId, EntityId): any
		ContainsRadioButton: function(EntityId, EntityId): any
		GetAllowUncheck: function(EntityId): any
		GetChangedActionName: function(EntityId): any
		GetState: function(EntityId): any
		RemoveRadioButton: function(EntityId, EntityId): any
		SetAllowUncheck: function(EntityId, boolean): any
		SetChangedActionName: function(EntityId, AZStd__basic_string): any
		SetState: function(EntityId, EntityId, boolean): any
	end

	record Broadcast
		AddRadioButton: function(EntityId): any
		ContainsRadioButton: function(EntityId): any
		GetAllowUncheck: function(): any
		GetChangedActionName: function(): any
		GetState: function(): any
		RemoveRadioButton: function(EntityId): any
		SetAllowUncheck: function(boolean): any
		SetChangedActionName: function(AZStd__basic_string): any
		SetState: function(EntityId, boolean): any
	end
end


global record UiRadioButtonGroupNotificationBus
	is BusThatHasAHandler<UiRadioButtonGroupNotificationBus>

	interface Notification
		OnRadioButtonGroupStateChange: function(self, EntityId): any
	end
end


global record UiRadioButtonNotificationBus
	is BusThatHasAHandler<UiRadioButtonNotificationBus>

	interface Notification
		OnRadioButtonStateChange: function(self, boolean): any
	end
end


global record UiScrollBarBus
	record Event
		GetAutoFadeDelay: function(EntityId): any
		GetAutoFadeSpeed: function(EntityId): any
		GetHandleEntity: function(EntityId): any
		GetHandleSize: function(EntityId): any
		GetMinHandlePixelSize: function(EntityId): any
		IsAutoFadeEnabled: function(EntityId): any
		SetAutoFadeDelay: function(EntityId, number): any
		SetAutoFadeEnabled: function(EntityId, boolean): any
		SetAutoFadeSpeed: function(EntityId, number): any
		SetHandleEntity: function(EntityId, EntityId): any
		SetHandleSize: function(EntityId, number): any
		SetMinHandlePixelSize: function(EntityId, number): any
	end

	record Broadcast
		GetAutoFadeDelay: function(): any
		GetAutoFadeSpeed: function(): any
		GetHandleEntity: function(): any
		GetHandleSize: function(): any
		GetMinHandlePixelSize: function(): any
		IsAutoFadeEnabled: function(): any
		SetAutoFadeDelay: function(number): any
		SetAutoFadeEnabled: function(boolean): any
		SetAutoFadeSpeed: function(number): any
		SetHandleEntity: function(EntityId): any
		SetHandleSize: function(number): any
		SetMinHandlePixelSize: function(number): any
	end
end


global record UiScrollBoxBus
	record Event
		FindClosestContentChildElement: function(EntityId): any
		GetContentEntity: function(EntityId): any
		GetHorizontalScrollBarEntity: function(EntityId): any
		GetHorizontalScrollBarVisibility: function(EntityId): any
		GetIsHorizontalScrollingEnabled: function(EntityId): any
		GetIsScrollingConstrained: function(EntityId): any
		GetIsVerticalScrollingEnabled: function(EntityId): any
		GetMomentumDuration: function(EntityId): any
		GetNormalizedScrollValue: function(EntityId): any
		GetScrollOffset: function(EntityId): any
		GetScrollOffsetChangedActionName: function(EntityId): any
		GetScrollOffsetChangingActionName: function(EntityId): any
		GetScrollSensitivity: function(EntityId): any
		GetSnapGrid: function(EntityId): any
		GetSnapMode: function(EntityId): any
		GetVerticalScrollBarEntity: function(EntityId): any
		GetVerticalScrollBarVisibility: function(EntityId): any
		HasHorizontalContentToScroll: function(EntityId): any
		HasVerticalContentToScroll: function(EntityId): any
		SetContentEntity: function(EntityId, EntityId): any
		SetHorizontalScrollBarEntity: function(EntityId, EntityId): any
		SetHorizontalScrollBarVisibility: function(EntityId): any
		SetIsHorizontalScrollingEnabled: function(EntityId, boolean): any
		SetIsScrollingConstrained: function(EntityId, boolean): any
		SetIsVerticalScrollingEnabled: function(EntityId, boolean): any
		SetMomentumActive: function(EntityId, boolean): any
		SetMomentumDuration: function(EntityId, number): any
		SetScrollOffset: function(EntityId, Vector2): any
		SetScrollOffsetChangedActionName: function(EntityId, AZStd__basic_string): any
		SetScrollOffsetChangingActionName: function(EntityId, AZStd__basic_string): any
		SetScrollSensitivity: function(EntityId, Vector2): any
		SetSnapGrid: function(EntityId, Vector2): any
		SetSnapMode: function(EntityId): any
		SetVerticalScrollBarEntity: function(EntityId, EntityId): any
		SetVerticalScrollBarVisibility: function(EntityId): any
		StopMomentum: function(EntityId): any
	end

	record Broadcast
		FindClosestContentChildElement: function(): any
		GetContentEntity: function(): any
		GetHorizontalScrollBarEntity: function(): any
		GetHorizontalScrollBarVisibility: function(): any
		GetIsHorizontalScrollingEnabled: function(): any
		GetIsScrollingConstrained: function(): any
		GetIsVerticalScrollingEnabled: function(): any
		GetMomentumDuration: function(): any
		GetNormalizedScrollValue: function(): any
		GetScrollOffset: function(): any
		GetScrollOffsetChangedActionName: function(): any
		GetScrollOffsetChangingActionName: function(): any
		GetScrollSensitivity: function(): any
		GetSnapGrid: function(): any
		GetSnapMode: function(): any
		GetVerticalScrollBarEntity: function(): any
		GetVerticalScrollBarVisibility: function(): any
		HasHorizontalContentToScroll: function(): any
		HasVerticalContentToScroll: function(): any
		SetContentEntity: function(EntityId): any
		SetHorizontalScrollBarEntity: function(EntityId): any
		SetHorizontalScrollBarVisibility: function(): any
		SetIsHorizontalScrollingEnabled: function(boolean): any
		SetIsScrollingConstrained: function(boolean): any
		SetIsVerticalScrollingEnabled: function(boolean): any
		SetMomentumActive: function(boolean): any
		SetMomentumDuration: function(number): any
		SetScrollOffset: function(Vector2): any
		SetScrollOffsetChangedActionName: function(AZStd__basic_string): any
		SetScrollOffsetChangingActionName: function(AZStd__basic_string): any
		SetScrollSensitivity: function(Vector2): any
		SetSnapGrid: function(Vector2): any
		SetSnapMode: function(): any
		SetVerticalScrollBarEntity: function(EntityId): any
		SetVerticalScrollBarVisibility: function(): any
		StopMomentum: function(): any
	end
end


global record UiScrollBoxNotificationBus
	is BusThatHasAHandler<UiScrollBoxNotificationBus>

	interface Notification
		OnScrollOffsetChanged: function(self, Vector2): any
		OnScrollOffsetChanging: function(self, Vector2): any
	end
end


global record UiScrollableNotificationBus
	is BusThatHasAHandler<UiScrollableNotificationBus>

	interface Notification
		OnScrollableValueChanged: function(self, Vector2): any
		OnScrollableValueChanging: function(self, Vector2): any
	end
end


global record UiScrollerBus
	record Event
		GetOrientation: function(EntityId): any
		GetValue: function(EntityId): any
		GetValueChangedActionName: function(EntityId): any
		GetValueChangingActionName: function(EntityId): any
		SetOrientation: function(EntityId): any
		SetValue: function(EntityId, number): any
		SetValueChangedActionName: function(EntityId, AZStd__basic_string): any
		SetValueChangingActionName: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetOrientation: function(): any
		GetValue: function(): any
		GetValueChangedActionName: function(): any
		GetValueChangingActionName: function(): any
		SetOrientation: function(): any
		SetValue: function(number): any
		SetValueChangedActionName: function(AZStd__basic_string): any
		SetValueChangingActionName: function(AZStd__basic_string): any
	end
end


global record UiScrollerNotificationBus
	is BusThatHasAHandler<UiScrollerNotificationBus>

	interface Notification
		OnScrollerValueChanged: function(self, number): any
		OnScrollerValueChanging: function(self, number): any
	end
end


global record UiSliderBus
	record Event
		GetFillEntity: function(EntityId): any
		GetManipulatorEntity: function(EntityId): any
		GetMaxValue: function(EntityId): any
		GetMinValue: function(EntityId): any
		GetStepValue: function(EntityId): any
		GetTrackEntity: function(EntityId): any
		GetValue: function(EntityId): any
		GetValueChangedActionName: function(EntityId): any
		GetValueChangingActionName: function(EntityId): any
		SetFillEntity: function(EntityId, EntityId): any
		SetManipulatorEntity: function(EntityId, EntityId): any
		SetMaxValue: function(EntityId, number): any
		SetMinValue: function(EntityId, number): any
		SetStepValue: function(EntityId, number): any
		SetTrackEntity: function(EntityId, EntityId): any
		SetValue: function(EntityId, number): any
		SetValueChangedActionName: function(EntityId, AZStd__basic_string): any
		SetValueChangingActionName: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetFillEntity: function(): any
		GetManipulatorEntity: function(): any
		GetMaxValue: function(): any
		GetMinValue: function(): any
		GetStepValue: function(): any
		GetTrackEntity: function(): any
		GetValue: function(): any
		GetValueChangedActionName: function(): any
		GetValueChangingActionName: function(): any
		SetFillEntity: function(EntityId): any
		SetManipulatorEntity: function(EntityId): any
		SetMaxValue: function(number): any
		SetMinValue: function(number): any
		SetStepValue: function(number): any
		SetTrackEntity: function(EntityId): any
		SetValue: function(number): any
		SetValueChangedActionName: function(AZStd__basic_string): any
		SetValueChangingActionName: function(AZStd__basic_string): any
	end
end


global record UiSliderNotificationBus
	is BusThatHasAHandler<UiSliderNotificationBus>

	interface Notification
		OnSliderValueChanged: function(self, number): any
		OnSliderValueChanging: function(self, number): any
	end
end


global record UiSpawnerBus
	record Event
		Spawn: function(EntityId): any
		SpawnAbsolute: function(EntityId, Vector2): any
		SpawnRelative: function(EntityId, Vector2): any
	end

	record Broadcast
		Spawn: function(): any
		SpawnAbsolute: function(Vector2): any
		SpawnRelative: function(Vector2): any
	end
end


global record UiSpawnerNotificationBus
	is BusThatHasAHandler<UiSpawnerNotificationBus>

	interface Notification
		OnEntitiesSpawned: function(self, SliceInstantiationTicket, AZStd__vector): any
		OnEntitySpawned: function(self, SliceInstantiationTicket, EntityId): any
		OnSpawnBegin: function(self, SliceInstantiationTicket): any
		OnSpawnEnd: function(self, SliceInstantiationTicket): any
		OnSpawnFailed: function(self, SliceInstantiationTicket): any
		OnTopLevelEntitiesSpawned: function(self, SliceInstantiationTicket, AZStd__vector): any
	end
end


global record UiTextBus
	record Event
		GetCharacterSpacing: function(EntityId): any
		GetColor: function(EntityId): any
		GetFont: function(EntityId): any
		GetFontEffect: function(EntityId): any
		GetFontEffectName: function(EntityId, integer): any
		GetFontSize: function(EntityId): any
		GetHorizontalTextAlignment: function(EntityId): any
		GetIsMarkupEnabled: function(EntityId): any
		GetLineSpacing: function(EntityId): any
		GetOverflowMode: function(EntityId): any
		GetShrinkToFit: function(EntityId): any
		GetText: function(EntityId): any
		GetTextHeight: function(EntityId): any
		GetTextSize: function(EntityId): any
		GetTextWidth: function(EntityId): any
		GetVerticalTextAlignment: function(EntityId): any
		GetWrapText: function(EntityId): any
		SetCharacterSpacing: function(EntityId, number): any
		SetColor: function(EntityId, Color): any
		SetFont: function(EntityId, AZStd__basic_string): any
		SetFontEffect: function(EntityId, integer): any
		SetFontEffectByName: function(EntityId, AZStd__basic_string): any
		SetFontSize: function(EntityId, number): any
		SetHorizontalTextAlignment: function(EntityId): any
		SetIsMarkupEnabled: function(EntityId, boolean): any
		SetLineSpacing: function(EntityId, number): any
		SetOverflowMode: function(EntityId): any
		SetShrinkToFit: function(EntityId): any
		SetText: function(EntityId, AZStd__basic_string): any
		SetVerticalTextAlignment: function(EntityId): any
		SetWrapText: function(EntityId): any
	end

	record Broadcast
		GetCharacterSpacing: function(): any
		GetColor: function(): any
		GetFont: function(): any
		GetFontEffect: function(): any
		GetFontEffectName: function(integer): any
		GetFontSize: function(): any
		GetHorizontalTextAlignment: function(): any
		GetIsMarkupEnabled: function(): any
		GetLineSpacing: function(): any
		GetOverflowMode: function(): any
		GetShrinkToFit: function(): any
		GetText: function(): any
		GetTextHeight: function(): any
		GetTextSize: function(): any
		GetTextWidth: function(): any
		GetVerticalTextAlignment: function(): any
		GetWrapText: function(): any
		SetCharacterSpacing: function(number): any
		SetColor: function(Color): any
		SetFont: function(AZStd__basic_string): any
		SetFontEffect: function(integer): any
		SetFontEffectByName: function(AZStd__basic_string): any
		SetFontSize: function(number): any
		SetHorizontalTextAlignment: function(): any
		SetIsMarkupEnabled: function(boolean): any
		SetLineSpacing: function(number): any
		SetOverflowMode: function(): any
		SetShrinkToFit: function(): any
		SetText: function(AZStd__basic_string): any
		SetVerticalTextAlignment: function(): any
		SetWrapText: function(): any
	end
end


global record UiTextInputBus
	record Event
		GetChangeAction: function(EntityId): any
		GetCursorBlinkInterval: function(EntityId): any
		GetEndEditAction: function(EntityId): any
		GetEnterAction: function(EntityId): any
		GetIsClipboardEnabled: function(EntityId): any
		GetIsPasswordField: function(EntityId): any
		GetMaxStringLength: function(EntityId): any
		GetPlaceHolderTextEntity: function(EntityId): any
		GetReplacementCharacter: function(EntityId): any
		GetText: function(EntityId): any
		GetTextCursorColor: function(EntityId): any
		GetTextEntity: function(EntityId): any
		GetTextSelectionColor: function(EntityId): any
		SetChangeAction: function(EntityId, AZStd__basic_string): any
		SetCursorBlinkInterval: function(EntityId, number): any
		SetEndEditAction: function(EntityId, AZStd__basic_string): any
		SetEnterAction: function(EntityId, AZStd__basic_string): any
		SetIsClipboardEnabled: function(EntityId, boolean): any
		SetIsPasswordField: function(EntityId, boolean): any
		SetMaxStringLength: function(EntityId, integer): any
		SetPlaceHolderTextEntity: function(EntityId, EntityId): any
		SetReplacementCharacter: function(EntityId, integer): any
		SetText: function(EntityId, AZStd__basic_string): any
		SetTextCursorColor: function(EntityId, Color): any
		SetTextEntity: function(EntityId, EntityId): any
		SetTextSelectionColor: function(EntityId, Color): any
	end

	record Broadcast
		GetChangeAction: function(): any
		GetCursorBlinkInterval: function(): any
		GetEndEditAction: function(): any
		GetEnterAction: function(): any
		GetIsClipboardEnabled: function(): any
		GetIsPasswordField: function(): any
		GetMaxStringLength: function(): any
		GetPlaceHolderTextEntity: function(): any
		GetReplacementCharacter: function(): any
		GetText: function(): any
		GetTextCursorColor: function(): any
		GetTextEntity: function(): any
		GetTextSelectionColor: function(): any
		SetChangeAction: function(AZStd__basic_string): any
		SetCursorBlinkInterval: function(number): any
		SetEndEditAction: function(AZStd__basic_string): any
		SetEnterAction: function(AZStd__basic_string): any
		SetIsClipboardEnabled: function(boolean): any
		SetIsPasswordField: function(boolean): any
		SetMaxStringLength: function(integer): any
		SetPlaceHolderTextEntity: function(EntityId): any
		SetReplacementCharacter: function(integer): any
		SetText: function(AZStd__basic_string): any
		SetTextCursorColor: function(Color): any
		SetTextEntity: function(EntityId): any
		SetTextSelectionColor: function(Color): any
	end
end


global record UiTextInputNotificationBus
	is BusThatHasAHandler<UiTextInputNotificationBus>

	interface Notification
		OnTextInputChange: function(self, AZStd__basic_string): any
		OnTextInputEndEdit: function(self, AZStd__basic_string): any
		OnTextInputEnter: function(self, AZStd__basic_string): any
	end
end


global record UiTextNotificationsBus
	is BusThatHasAHandler<UiTextNotificationsBus>

	interface Notification
		OnLayoutInvalidated: function(self): any
	end
end


global record UiTooltipBus
	record Event
		GetText: function(EntityId): any
		SetText: function(EntityId, AZStd__basic_string): any
	end

	record Broadcast
		GetText: function(): any
		SetText: function(AZStd__basic_string): any
	end
end


global record UiTooltipDisplayBus
	record Event
		GetAutoPosition: function(EntityId): any
		GetAutoPositionMode: function(EntityId): any
		GetAutoSize: function(EntityId): any
		GetDelayTime: function(EntityId): any
		GetDisplayTime: function(EntityId): any
		GetOffset: function(EntityId): any
		GetTextEntity: function(EntityId): any
		GetTriggerMode: function(EntityId): any
		SetAutoPosition: function(EntityId, boolean): any
		SetAutoPositionMode: function(EntityId): any
		SetAutoSize: function(EntityId, boolean): any
		SetDelayTime: function(EntityId, number): any
		SetDisplayTime: function(EntityId, number): any
		SetOffset: function(EntityId, Vector2): any
		SetTextEntity: function(EntityId, EntityId): any
		SetTriggerMode: function(EntityId): any
	end

	record Broadcast
		GetAutoPosition: function(): any
		GetAutoPositionMode: function(): any
		GetAutoSize: function(): any
		GetDelayTime: function(): any
		GetDisplayTime: function(): any
		GetOffset: function(): any
		GetTextEntity: function(): any
		GetTriggerMode: function(): any
		SetAutoPosition: function(boolean): any
		SetAutoPositionMode: function(): any
		SetAutoSize: function(boolean): any
		SetDelayTime: function(number): any
		SetDisplayTime: function(number): any
		SetOffset: function(Vector2): any
		SetTextEntity: function(EntityId): any
		SetTriggerMode: function(): any
	end
end


global record UiTransform2dBus
	record Event
		GetAnchors: function(EntityId): any
		GetLocalHeight: function(EntityId): any
		GetLocalWidth: function(EntityId): any
		GetOffsets: function(EntityId): any
		SetAnchors: function(EntityId, Anchors, boolean, boolean): any
		SetLocalHeight: function(EntityId, number): any
		SetLocalWidth: function(EntityId, number): any
		SetOffsets: function(EntityId, Offsets): any
		SetPivotAndAdjustOffsets: function(EntityId, Vector2): any
	end

	record Broadcast
		GetAnchors: function(): any
		GetLocalHeight: function(): any
		GetLocalWidth: function(): any
		GetOffsets: function(): any
		SetAnchors: function(Anchors, boolean, boolean): any
		SetLocalHeight: function(number): any
		SetLocalWidth: function(number): any
		SetOffsets: function(Offsets): any
		SetPivotAndAdjustOffsets: function(Vector2): any
	end
end


global record UiTransformBus
	record Event
		GetCanvasPosition: function(EntityId): any
		GetLocalPosition: function(EntityId): any
		GetLocalPositionX: function(EntityId): any
		GetLocalPositionY: function(EntityId): any
		GetPivot: function(EntityId): any
		GetPivotX: function(EntityId): any
		GetPivotY: function(EntityId): any
		GetScale: function(EntityId): any
		GetScaleToDeviceMode: function(EntityId): any
		GetScaleX: function(EntityId): any
		GetScaleY: function(EntityId): any
		GetViewportPosition: function(EntityId): any
		GetZRotation: function(EntityId): any
		MoveCanvasPositionBy: function(EntityId, Vector2): any
		MoveLocalPositionBy: function(EntityId, Vector2): any
		MoveViewportPositionBy: function(EntityId, Vector2): any
		SetCanvasPosition: function(EntityId, Vector2): any
		SetLocalPosition: function(EntityId, Vector2): any
		SetLocalPositionX: function(EntityId, number): any
		SetLocalPositionY: function(EntityId, number): any
		SetPivot: function(EntityId, Vector2): any
		SetPivotX: function(EntityId, number): any
		SetPivotY: function(EntityId, number): any
		SetScale: function(EntityId, Vector2): any
		SetScaleToDeviceMode: function(EntityId): any
		SetScaleX: function(EntityId, number): any
		SetScaleY: function(EntityId, number): any
		SetViewportPosition: function(EntityId, Vector2): any
		SetZRotation: function(EntityId, number): any
	end

	record Broadcast
		GetCanvasPosition: function(): any
		GetLocalPosition: function(): any
		GetLocalPositionX: function(): any
		GetLocalPositionY: function(): any
		GetPivot: function(): any
		GetPivotX: function(): any
		GetPivotY: function(): any
		GetScale: function(): any
		GetScaleToDeviceMode: function(): any
		GetScaleX: function(): any
		GetScaleY: function(): any
		GetViewportPosition: function(): any
		GetZRotation: function(): any
		MoveCanvasPositionBy: function(Vector2): any
		MoveLocalPositionBy: function(Vector2): any
		MoveViewportPositionBy: function(Vector2): any
		SetCanvasPosition: function(Vector2): any
		SetLocalPosition: function(Vector2): any
		SetLocalPositionX: function(number): any
		SetLocalPositionY: function(number): any
		SetPivot: function(Vector2): any
		SetPivotX: function(number): any
		SetPivotY: function(number): any
		SetScale: function(Vector2): any
		SetScaleToDeviceMode: function(): any
		SetScaleX: function(number): any
		SetScaleY: function(number): any
		SetViewportPosition: function(Vector2): any
		SetZRotation: function(number): any
	end
end


global record VariableNotification
	is BusThatHasAHandler<VariableNotification>

	interface Notification
		OnVariableValueChanged: function(self): any
		OnVariableValueChanged: function(self): any
	end
end


global record ViewportRequestBus
	record Event
		GetCameraProjectionMatrix: function(integer): any
		GetCameraTransform: function(integer): any
		GetCameraViewMatrix: function(integer): any
		SetCameraProjectionMatrix: function(integer, Matrix4x4): any
		SetCameraTransform: function(integer, Transform): any
		SetCameraViewMatrix: function(integer, Matrix4x4): any
	end

	record Broadcast
		GetCameraProjectionMatrix: function(): any
		GetCameraTransform: function(): any
		GetCameraViewMatrix: function(): any
		SetCameraProjectionMatrix: function(Matrix4x4): any
		SetCameraTransform: function(Transform): any
		SetCameraViewMatrix: function(Matrix4x4): any
	end
end


global record VignetteRequestBus
	record Event
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetIntensity: function(EntityId): any
		GetIntensityOverride: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetIntensity: function(EntityId, number): any
		SetIntensityOverride: function(EntityId, number): any
	end

	record Broadcast
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetIntensity: function(): any
		GetIntensityOverride: function(): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetIntensity: function(number): any
		SetIntensityOverride: function(number): any
	end
end


global record VisibleGeometryRequestBus
	record Event
		BuildVisibleGeometry: function(EntityId, Aabb, AZStd__vector): any
	end

	record Broadcast
		BuildVisibleGeometry: function(Aabb, AZStd__vector): any
	end
end


global record WhiteBalanceRequestBus
	record Event
		GetEnabled: function(EntityId): any
		GetEnabledOverride: function(EntityId): any
		GetTemperature: function(EntityId): any
		GetTemperatureOverride: function(EntityId): any
		GetTint: function(EntityId): any
		GetTintOverride: function(EntityId): any
		SetEnabled: function(EntityId, boolean): any
		SetEnabledOverride: function(EntityId, boolean): any
		SetTemperature: function(EntityId, number): any
		SetTemperatureOverride: function(EntityId, number): any
		SetTint: function(EntityId, number): any
		SetTintOverride: function(EntityId, number): any
	end

	record Broadcast
		GetEnabled: function(): any
		GetEnabledOverride: function(): any
		GetTemperature: function(): any
		GetTemperatureOverride: function(): any
		GetTint: function(): any
		GetTintOverride: function(): any
		SetEnabled: function(boolean): any
		SetEnabledOverride: function(boolean): any
		SetTemperature: function(number): any
		SetTemperatureOverride: function(number): any
		SetTint: function(number): any
		SetTintOverride: function(number): any
	end
end


global record WindRequestsBus
	record Broadcast
		GetGlobalWind: function(): any
		GetWindAtPosition: function(Vector3): any
		GetWindInsideAabb: function(Aabb): any
	end
end




