// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Visual Engine/Impostors/Octa Standard Lit (Lite)"
{
	Properties
	{
		[HideInInspector]_IsVersion("_IsVersion", Float) = 2020
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsShared("_IsShared", Float) = 0
		[HideInInspector]_IsIdentifier("_IsIdentifier", Float) = 0
		[HideInInspector]_IsCollected("_IsCollected", Float) = 0
		[HideInInspector]_IsConverted("_IsConverted", Float) = 0
		[HideInInspector]_IsCustomShader("_IsCustomShader", Float) = 0
		[HideInInspector]_HasDefaultTextures("_HasDefaultTextures", Float) = 0
		[HideInInspector]_IsInitialized("_IsInitialized", Float) = 0
		[StyledCategory(Render Settings, true, 0, 10)]_CategoryRender("[ Category Render ]", Float) = 1
		[Enum(Off,0,On,1)]_RenderSSR("Render SSR", Float) = 0
		[Enum(Off,0,On,1)]_RenderDecals("Render Decals", Float) = 0
		[Enum(Auto,0,Off,1,On,2)]_RenderMotion("Render Motion", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Render Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderShadow("Render Shadows", Float) = 1
		[StyledSpace(10)]_EndRender("[ End Render ]", Float) = 1
		[StyledCategory(Noise Settings, true, 0, 10)]_NoiseCategory("[ Noise Category ]", Float) = 1
		[NoScaleOffset][StyledTextureSingleLine]_NoiseTex3D("Noise Mask 3D", 3D) = "white" {}
		[StyledSpace(10)]_NoiseEnd("[ Noise End ]", Float) = 1
		[StyledCategory(Global Settings, true, 0, 10)]_GlobalCategory("[ Global Category ]", Float) = 1
		[StyledMessage(Warning, Global Elements and Layers are only available with The Visual Engine Core package., 0, 0)]_GlobalLiteInfo("# Global Lite Info", Float) = 0
		[StyledSpace(10)]_GlobalEnd("[ Global End ]", Float) = 1
		[StyledCategory(Impostor Settings, true, 0, 10)]_ImpostorCategory("[ Impostor Category ]", Float) = 1
		_Albedo("Impostor Albedo & Alpha", 2D) = "white" {}
		_Normals("Impostor Normal & Depth", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MasksA("Impostor MasksA", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MasksB("Impostor MasksB", 2D) = "white" {}
		_AI_Parallax("Impostor Parallax", Range( 0 , 1)) = 1
		[HideInInspector]_AI_SizeOffset("Impostor Size Offset", Vector) = (0,0,0,0)
		_AI_ShadowView("Impostor Shadow View", Range( 0 , 1)) = 1
		_AI_ShadowBias("Impostor Shadow Bias", Range( 0 , 2)) = 0.25
		[HideInInspector]_AI_DepthSize("Impostor Depth Size", Float) = 0
		_AI_TextureBias("Impostor Texture Bias", Float) = -1
		[HideInInspector]_AI_Offset("Impostor Offset", Vector) = (0,0,0,0)
		[HideInInspector]_AI_ImpostorSize("Impostor Size", Float) = 0
		[HideInInspector]_AI_FramesY("Impostor Frames Y", Float) = 0
		[HideInInspector]_AI_FramesX("Impostor Frames X", Float) = 0
		[HideInInspector]_AI_Frames("Impostor Frames", Float) = 0
		_AI_Clip("Impostor Clip", Range( 0 , 1)) = 0.5
		[Enum(Constant,0,Dual Colors,1)][Space(10)]_ImpostorColorMode("Impostor Color", Float) = 0
		[HDR]_ImpostorColor("Impostor Color", Color) = (1,1,1,1)
		[HDR]_ImpostorColorTwo("Impostor ColorB", Color) = (1,1,1,1)
		_ImpostorAlphaClipValue("Impostor Alpha", Range( 0 , 1)) = 0.5
		_ImpostorMetallicValue("Impostor Metallic", Range( 0 , 1)) = 0
		_ImpostorSmoothnessValue("Impostor Smoothness", Range( 0 , 1)) = 1
		[StyledSpace(10)]_ImpostorEnd("[ Impostor End ]", Float) = 1
		[StyledCategory(Variation Settings, true, 0, 10)]_VariationCategory("[ Variation Category ]", Float) = 1
		[StyledMessage(Warning, The Variation feature is only available with The Visual Engine Core package., 0, 10)]_VariationLiteInfo("# Variation Lite Info", Float) = 0
		[StyledColoring]_VariationColoring("# Variation Coloring", Color) = (1,1,1,0.6)
		_VariationIntensityValue("Variation Intensity", Range( 0 , 1)) = 0
		[HDR]_VariationColorOne("Variation ColorA", Color) = (0.4573758,0.6226415,0.2144001,1)
		[HDR]_VariationColorTwo("Variation ColorB", Color) = (0.7450981,0.5238863,0.1098039,1)
		[Space(10)]_VariationMultiValue("Variation Multi Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_VariationNoiseRemap("Variation Noise Mask", Vector) = (0,1,0,0)
		_VariationNoiseTillingValue("Variation Noise Tilling", Range( 0 , 40)) = 1
		_VariationNoisePivotsValue1("Variation Noise Pivots", Range( 0 , 1)) = 0
		[StyledSpace(10)]_VariationEnd("[ Variation End ]", Float) = 1
		[StyledCategory(Tinting Settings, true, 0, 10)]_TintingCategory("[ Tinting Category ]", Float) = 1
		[StyledMessage(Warning, The Tinting feature is only available with The Visual Engine Core package., 0, 10)]_TintingLiteInfo("# Tinting Lite Info", Float) = 0
		[StyledColoring]_TintingColoring("# Tinting Coloring", Color) = (1,1,1,0.6)
		_TintingIntensityValue("Tinting Intensity", Range( 0 , 1)) = 0
		_TintingGrayValue("Tinting Gray", Range( 0 , 1)) = 1
		[HDR][Gamma]_TintingColor("Tinting Color", Color) = (1,1,1,1)
		[StyledSpace(10)]_TintingSpace("[ Tinting Space ]", Float) = 1
		_TintingMultiValue("Tinting Multi Mask", Range( 0 , 1)) = 1
		_TintingLumaValue("Tinting Luma Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_TintingLumaRemap("Tinting Luma Mask", Vector) = (0,1,0,0)
		[Space(10)][StyledToggle]_TintingElementMode("Use Paint Globals / Elements", Float) = 1
		[StyledSpace(10)]_TintingEnd("[ Tinting End]", Float) = 1
		[StyledCategory(Dryness Settings, true, 0, 10)]_DrynessCategory("[ Dryness Category ]", Float) = 1
		[StyledMessage(Warning, The Dryness feature is only available with The Visual Engine Core package., 0, 10)]_DrynessLiteInfo("# Dryness Lite Info", Float) = 0
		[StyledColoring]_DrynessColoring("# Dryness Coloring", Color) = (1,1,1,0.6)
		_DrynessIntensityValue("Dryness Intensity", Range( 0 , 1)) = 0
		_DrynessGrayValue("Dryness Gray", Range( 0 , 1)) = 1
		_DrynessShiftValue("Dryness Shift", Range( 0 , 1)) = 0
		[HDR][Gamma]_DrynessColor("Dryness Color", Color) = (1,0.7083712,0.495283,1)
		_DrynessSubsurfaceValue("Dryness Subsurface", Range( 0 , 1)) = 0.5
		_DrynessSmoothnessValue("Dryness Smoothness", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_DrynessSpace("[ Dryness Space ]", Float) = 1
		_DrynessMultiValue("Dryness Multi Mask", Range( 0 , 1)) = 1
		_DrynessLumaValue("Dryness Luma Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_DrynessLumaRemap("Dryness Luma Mask", Vector) = (0,1,0,0)
		[Space(10)][StyledToggle]_DrynessElementMode("Use Atmo Globals / Elements", Float) = 1
		[StyledSpace(10)]_DrynessEnd("[ Dryness End ]", Float) = 1
		[StyledCategory(Overlay Settings, true, 0, 10)]_OverlayCategory("[ Overlay Category ]", Float) = 1
		[StyledMessage(Warning, The Overlay Glitter feature is only available with The Visual Engine Core package., 0, 10)]_OverlayLiteInfo("# Overlay Lite Info", Float) = 0
		[StyledMessage(Info, The current settings are pre baked to the impostor., 0, 10)]_OverlayBakeInfo("Overlay Baking Info", Float) = 0
		_OverlayIntensityValue("Overlay Intensity", Range( 0 , 1)) = 0
		[HDR]_OverlayColor("Overlay Color", Color) = (0.2815503,0.4009458,0.5377358,1)
		_OverlayNormalValue("Overlay Normal", Range( -8 , 8)) = 1
		_OverlaySubsurfaceValue("Overlay Subsurface", Range( 0 , 1)) = 0.5
		_OverlaySmoothnessValue("Overlay Smoothness", Range( 0 , 1)) = 0.5
		[StyledColoring]_OverlayColoringOn("# Overlay Coloring On", Color) = (1,1,1,0.6)
		[Space(10)][StyledTextureSingleLine]_OverlayGlitterTex("Overlay Glitter", 2D) = "black" {}
		[Space(10)]_OverlayGlitterIntensityValue("Overlay Glitter Intensity", Range( 0 , 1)) = 1
		[HDR]_OverlayGlitterColor("Overlay Glitter Color", Color) = (0.7215686,1.913725,2.996078,1)
		_OverlayGlitterTillingValue("Overlay Glitter Tilling", Range( 0 , 10)) = 2
		_OverlayGlitterDistValue("Overlay Glitter Fade", Range( 0 , 200)) = 100
		[StyledColoring]_OverlayColoringOff("# Overlay Coloring Off", Color) = (1,1,1,1)
		[StyledSpace(10)]_OverlaySpace("[ Overlay Space ]", Float) = 1
		_OverlayLumaValue("Overlay Luma Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_OverlayLumaRemap("Overlay Luma Mask", Vector) = (0,1,0,0)
		_OverlayProjValue("Overlay ProjY Mask", Range( 0 , 1)) = 0.5
		[StyledRemapSlider]_OverlayProjRemap("Overlay ProjY Mask", Vector) = (0,1,0,0)
		[StyledRemapSlider]_OverlayBlendRemap1("Overlay Blend Mask", Vector) = (0.1,0.2,0,0)
		[Space(10)][StyledToggle]_OverlayElementMode("Use Atmo Globals / Elements", Float) = 1
		[StyledSpace(10)]_OverlayEnd("[ Overlay End ]", Float) = 1
		[StyledCategory(Wetness Settings, true, 0, 10)]_WetnessCategory("[ Wetness Category ]", Float) = 1
		[StyledMessage(Warning, The Wetness feature is only available with The Visual Engine Core package., 0, 10)]_WetnessLiteInfo("# Wetness Lite Info", Float) = 0
		[StyledColoring]_WetnessColoring("# Wetness Coloring", Color) = (1,1,1,0.6)
		_WetnessIntensityValue("Wetness Intensity", Range( 0 , 1)) = 0
		_WetnessContrastValue("Wetness Contrast", Range( 0 , 1)) = 0.2
		_WetnessSmoothnessValue("Wetness Smoothness", Range( 0 , 1)) = 0.8
		[Space(10)][StyledToggle]_WetnessElementMode("Use Atmo Globals / Elements", Float) = 1
		[StyledSpace(10)]_WetnessEnd("[ Wetness End ]", Float) = 1
		[StyledCategory(Cutout Settings, true, 0, 10)]_CutoutCategory("[ Cutout Category ]", Float) = 1
		[StyledMessage(Warning, The Cutout feature is only available with The Visual Engine Core package., 0, 10)]_CutoutLiteInfo("# Cutout Lite Info", Float) = 0
		[StyledColoring]_CutoutColoring("# Cutout Coloring", Color) = (1,1,1,0.6)
		_CutoutIntensityValue("Cutout Intensity", Range( 0 , 1)) = 0
		[StyledSpace(10)]_CutoutSpace("[ Cutout Space ]", Float) = 1
		_CutoutMultiValue("Cutout Multi Mask", Range( 0 , 1)) = 1
		_CutoutAlphaValue("Cutout Alpha Mask", Range( 0 , 1)) = 0
		_CutoutNoiseValue("Cutout Noise Mask", Range( 0 , 1)) = 1
		_CutoutNoiseTillingValue("Cutout Noise Tilling", Range( 0 , 40)) = 1
		[Space(10)][StyledToggle]_CutoutElementMode("Use Atmo Globals / Elements", Float) = 1
		[StyledSpace(10)]_CutoutEnd("[ Cutout End ]", Float) = 1
		[StyledCategory(Dither Settings, true, 0, 10)]_DitherCategory("[ Dither Category ]", Float) = 1
		[StyledMessage(Warning, The Dither feature is only available with The Visual Engine Core package., 0, 10)]_DitherLiteInfo("# Dither Lite Info", Float) = 0
		[StyledColoring]_DitherColoring("# Dither Coloring", Color) = (1,1,1,0.6)
		_DitherConstantValue("Dither Constant", Range( 0 , 1)) = 0
		_DitherDistanceValue("Dither Distance", Range( 0 , 1)) = 0
		_DitherDistanceMinValue("Dither Distance Start", Range( 0 , 1000)) = 0
		_DitherDistanceMaxValue("Dither Distance Limit", Range( 0 , 1000)) = 0
		[Space(10)]_DitherMultiValue("Dither Multi Mask", Range( 0 , 1)) = 1
		_DitherNoiseTillingValue("Dither Noise Tilling", Range( 0 , 40)) = 1
		[StyledSpace(10)]_DitherEnd("[ Dither End ]", Float) = 1
		[StyledCategory(Emissive Settings, true, 0, 10)]_EmissiveCategory("[ Emissive Category ]", Float) = 1
		_EmissiveIntensityValue("Emissive Intensity", Range( 0 , 1)) = 0
		[HDR]_EmissiveColor("Emissive Color", Color) = (1,1,1,1)
		[Enum(Nits,0,EV100,1)]_EmissivePowerMode("Emissive Power", Float) = 0
		_EmissivePowerValue("Emissive Power", Float) = 1
		[Space(10)][StyledToggle]_EmissiveElementMode("Use Glow Globals / Elements", Float) = 0
		[StyledSpace(10)]_EmissiveEnd("[ Emissive End ]", Float) = 1
		[HideInInspector]_emissive_power_value("_emissive_power_value", Float) = 1
		[StyledCategory(Subsurface Settings, true, 0, 10)]_SubsurfaceCategory("[ Subsurface Category ]", Float) = 1
		[StyledMessage(Info, When using Standard Lit shaders__ the Subsurface feature is an approximation effect designed to work in deferred rendering path., 0, 10)]_SubsurfaceAproxInfo("# Subsurface Aprox Info", Float) = 0
		[DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[StyledSpace(10)]_SubsurfaceSpace("# SubsurfaceSpace", Float) = 0
		_SubsurfaceIntensityValue("Subsurface Intensity", Range( 0 , 1)) = 0
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (1,1,1,1)
		_SubsurfaceScatteringValue("Subsurface Power", Range( 0 , 16)) = 2
		_SubsurfaceAngleValue("Subsurface Angle", Range( 1 , 16)) = 8
		_SubsurfaceDirectValue("Subsurface Direct", Range( 0 , 1)) = 1
		_SubsurfaceNormalValue("Subsurface Normal", Range( 0 , 1)) = 0
		_SubsurfaceAmbientValue("Subsurface Ambient", Range( 0 , 1)) = 0.2
		_SubsurfaceShadowValue("Subsurface Shadow", Range( 0 , 1)) = 1
		[Space(10)]_SubsurfaceMultiValue("Subsurface Multi Mask", Range( 0 , 1)) = 1
		[Space(10)][StyledToggle]_SubsurfaceElementMode("Use Glow Globals / Elements", Float) = 0
		[StyledSpace(10)]_SubsurfaceEnd("[ Subsurface End ]", Float) = 1
		[StyledCategory(Size Fade Settings, true, 0, 10)]_SizeFadeCategory("[ Size Fade Category ]", Float) = 1
		[StyledMessage(Warning, The Size Fade feature is only available with The Visual Engine Core package., 0, 10)]_SizeFadeLiteInfo("# SizeFade Lite Info", Float) = 0
		[StyledColoring]_SizeFadeColoring("# SizeFade Coloring", Color) = (1,1,1,0.6)
		_SizeFadeIntensityValue("Size Fade Intensity", Range( 0 , 1)) = 0
		[Enum(All Axis,0,Y Axis,1)]_SizeFadeScaleMode("Size Fade Mode", Float) = 0
		_SizeFadeScaleValue("Size Fade Scale", Range( 0 , 1)) = 1
		_SizeFadeDistMinValue("Size Fade Start", Range( 0 , 1000)) = 0
		_SizeFadeDistMaxValue("Size Fade Limit", Range( 0 , 1000)) = 0
		[Space(10)][StyledToggle]_SizeFadeElementMode("Use Form Globals / Elements", Float) = 0
		[StyledSpace(10)]_SizeFadeEnd("[ Size Fade End ]", Float) = 1
		[StyledCategory(Motion Settings, true, 0, 10)]_MotionWindCategory("[ Motion Wind Category ]", Float) = 1
		[NoScaleOffset][StyledTextureSingleLine]_MotionNoiseTex("Motion Texture", 2D) = "white" {}
		[Space(10)]_MotionBaseIntensityValue("Motion 01 Intensity", Range( 0 , 8)) = 0.2
		_MotionBasePivotValue("Motion 01 Pivots", Range( 0 , 1)) = 0.5
		[Space(10)]_MotionIntensityValue("Motion Wind Intensity", Range( 0 , 1)) = 1
		_MotionNoiseValue("Motion Wind Noise", Range( 0 , 1)) = 0
		_MotionTillingValue("Motion Wind Tilling", Range( 0 , 40)) = 5
		_MotionSpeedValue("Motion Wind Speed", Range( 0 , 40)) = 5
		[Space(10)][StyledToggle]_MotionWindElementMode("Use Wind Elements", Float) = 0
		[StyledSpace(10)]_MotionWindEnd("[ Motion Wind End ]", Float) = 1
		[StyledCategory(Interaction Settings, true, 0, 10)]_MotionInteractionCategory("[ Motion Interaction Category ]", Float) = 1
		[StyledMessage(Warning, The Interaction feature is only available with The Visual Engine Core package., 0, 10)]_InteractionLiteInfo("# Interaction Lite Info", Float) = 0
		[StyledColoring]_InteractionColoring("# Interaction Coloring", Color) = (1,1,1,0.6)
		_MotionPushIntensityValue("Interaction Intensity", Range( 0 , 8)) = 0
		_MotionPushPivotValue("Interaction Pivots", Range( 0 , 1)) = 1
		_MotionPushMaskValue("Interaction Bend Mask", Range( 0 , 1)) = 0
		[Space(10)][StyledToggle]_MotionPushElementMode("Use Push Globals / Elements", Float) = 1
		[StyledSpace(10)]_MotionInteractionEnd("[ Motion Interaction End ]", Float) = 1
		[HideInInspector]_AI_Offset("_AI_Offset", Vector) = (0,0,0,0)
		[HideInInspector]_global_wind_layer_value("_global_wind_layer_value", Float) = 0
		[HideInInspector]_IsImpostorShader("_IsImpostorShader", Float) = 1
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
		[HideInInspector]_IsLiteShader("_IsLiteShader", Float) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
	}

	SubShader
	{
		LOD 0

		
		CGINCLUDE
		#pragma target 4.5
		#define UNITY_SAMPLE_FULL_SH_PER_PIXEL 1
		ENDCG
		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="True" "ImpostorType"="Octahedron" }
		Cull Back
		AlphaToMask [_RenderCoverage]

		Pass
		{
			
			ZWrite On
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#pragma shader_feature_local_fragment _ _SPECULARHIGHLIGHTS_OFF
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_fwdbase

			#pragma multi_compile_fog
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardUtils.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local_fragment TVE_PIPELINE_STANDARD TVE_PIPELINE_UNIVERSAL TVE_PIPELINE_HD
			#pragma shader_feature_local_vertex TVE_MOTION_BASE_BENDING
			#pragma shader_feature_local_vertex TVE_MOTION_WIND_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE
			#pragma shader_feature_local_fragment TVE_OVERLAY
			#pragma shader_feature_local_fragment TVE_OVERLAY_ELEMENT
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#pragma shader_feature_local_fragment TVE_EMISSIVE_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE_ELEMENT
			  
			struct TVEVisualData
			{  
				half Dummy;  
				half3 Albedo;
				half2 NormalTS;
				half3 NormalWS; 
				half4 Shader;
				half4 Emissive;
				half AlphaClip;
				half AlphaFade;
				half MultiMask;
				half Grayscale;
				half Luminosity;
				half3 Translucency;
				half Transmission;
				half Thickness;
				float Diffusion;
			};  
			    
			struct TVEModelData
			{    
				half Dummy;    
				half3 PositionOS;
				half3 PositionWS;
				half3 PositionWO;
				half3 PositionRawOS;
				half3 PositionAddOS;
				half3 PivotOS;
				half3 PivotWS;
				half3 PivotWO;
				half3 NormalOS;
				half3 NormalWS;
				half3 NormalRawOS;
				half3 NormalRawWS;
				half4 TangentOS;
				half3 ViewDirWS;
				half4 VertexData;
				half4 MotionData;
				half4 BoundsData;
				half4 RotationData;
			};    
			      
			struct TVEGlobalData
			{      
				half Dummy;      
				half4 CoatParams;
				half4 PaintParams;
				half4 GlowParams;
				half4 AtmoParams;
				half4 FadeParams;
				half4 FormParams;
				half4 LandParams;
				half4 WindParams;
				half4 PushParams;
			};      
			        
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//#pragma editor_sync_compilation
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			


			uniform half _ImpostorAlphaClipValue;
			uniform half4 _OverlayColoringOn;
			uniform half4 _OverlayColoringOff;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayGlitterTex);
			SamplerState sampler_OverlayGlitterTex;
			uniform half _OverlayGlitterTillingValue;
			uniform half _OverlayGlitterIntensityValue;
			uniform half _OverlayLiteInfo;
			uniform half4 _OverlayGlitterColor;
			uniform half _SubsurfaceScatteringValue;
			uniform half _SubsurfaceAngleValue;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform half _SubsurfaceSpace;
			uniform half _IsVersion;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _CategoryRender;
			uniform half _EndRender;
			uniform half _NoiseCategory;
			uniform half _NoiseEnd;
			UNITY_DECLARE_TEX3D_NOSAMPLER(_NoiseTex3D);
			SamplerState sampler_NoiseTex3D;
			uniform half _IsInitialized;
			uniform half _IsTVEShader;
			uniform half _IsCustomShader;
			uniform half _IsShared;
			uniform half _HasDefaultTextures;
			uniform half _IsCollected;
			uniform half _IsConverted;
			uniform half _IsIdentifier;
			uniform half _RenderMotion;
			uniform half _RenderShadow;
			uniform half _IsLiteShader;
			uniform half _IsStandardShader;
			uniform half _IsImpostorShader;
			uniform half _ImpostorCategory;
			uniform half _ImpostorEnd;
			uniform half _MotionWindCategory;
			uniform half _MotionWindEnd;
			uniform half _MotionWindElementMode;
			uniform half _MotionInteractionCategory;
			uniform half _MotionInteractionEnd;
			uniform half _InteractionLiteInfo;
			uniform half4 _InteractionColoring;
			uniform half _MotionPushIntensityValue;
			uniform half _MotionPushPivotValue;
			uniform half _MotionPushMaskValue;
			uniform half _MotionPushElementMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionBaseIntensityValue;
			uniform half4 TVE_MotionParams;
			uniform half TVE_IsEnabled;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MotionNoiseTex);
			uniform half _MotionBasePivotValue;
			uniform half _MotionTillingValue;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeedValue;
			SamplerState sampler_Linear_Repeat;
			uniform half _MotionNoiseValue;
			uniform half _MotionIntensityValue;
			uniform half _global_wind_layer_value;
			uniform float TVE_WindLayers[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindBaseTex);
			uniform half4 TVE_RenderBaseCoords;
			SamplerState sampler_Linear_Clamp;
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindNearTex);
			uniform half4 TVE_RenderNearCoords;
			uniform float4 TVE_RenderNearPositionR;
			uniform half TVE_RenderNearFadeValue;
			uniform half4 TVE_WindParams;
			uniform half _DisableSRPBatcher;
			uniform half _VariationLiteInfo;
			uniform half4 _VariationColoring;
			uniform half _VariationCategory;
			uniform half _VariationEnd;
			uniform half _VariationIntensityValue;
			uniform half4 _VariationColorTwo;
			uniform half4 _VariationColorOne;
			uniform half _VariationMultiValue;
			uniform half4 _VariationNoiseRemap;
			uniform half _VariationNoisePivotsValue1;
			uniform half _VariationNoiseTillingValue;
			uniform half _TintingLiteInfo;
			uniform half4 _TintingColoring;
			uniform half _TintingCategory;
			uniform half _TintingEnd;
			uniform half _TintingSpace;
			uniform half _TintingElementMode;
			uniform half _TintingIntensityValue;
			uniform float4 _TintingColor;
			uniform half _TintingGrayValue;
			uniform half _TintingMultiValue;
			uniform half _TintingLumaValue;
			uniform half4 _TintingLumaRemap;
			uniform half _DrynessLiteInfo;
			uniform half4 _DrynessColoring;
			uniform half _DrynessCategory;
			uniform half _DrynessEnd;
			uniform half _DrynessSpace;
			uniform half _DrynessElementMode;
			uniform half _DrynessIntensityValue;
			uniform float4 _DrynessColor;
			uniform half _DrynessGrayValue;
			uniform half _DrynessShiftValue;
			uniform half _DrynessSmoothnessValue;
			uniform half _DrynessSubsurfaceValue;
			uniform half _DrynessMultiValue;
			uniform half _DrynessLumaValue;
			uniform half4 _DrynessLumaRemap;
			uniform half _WetnessLiteInfo;
			uniform half4 _WetnessColoring;
			uniform half _WetnessCategory;
			uniform half _WetnessEnd;
			uniform half _WetnessElementMode;
			uniform half _WetnessIntensityValue;
			uniform half _WetnessContrastValue;
			uniform half _WetnessSmoothnessValue;
			uniform half _CutoutLiteInfo;
			uniform half4 _CutoutColoring;
			uniform half _CutoutCategory;
			uniform half _CutoutEnd;
			uniform half _CutoutSpace;
			uniform half _CutoutElementMode;
			uniform half _CutoutIntensityValue;
			uniform half _CutoutMultiValue;
			uniform half _CutoutAlphaValue;
			uniform half _CutoutNoiseValue;
			uniform half _CutoutNoiseTillingValue;
			uniform half _DitherLiteInfo;
			uniform half4 _DitherColoring;
			uniform half _DitherCategory;
			uniform half _DitherEnd;
			uniform half _DitherConstantValue;
			uniform half _DitherDistanceValue;
			uniform half _DitherDistanceMaxValue;
			uniform half _DitherDistanceMinValue;
			uniform half _DitherMultiValue;
			uniform half _DitherNoiseTillingValue;
			uniform half _SizeFadeLiteInfo;
			uniform half4 _SizeFadeColoring;
			uniform half _SizeFadeCategory;
			uniform half _SizeFadeEnd;
			uniform half _SizeFadeElementMode;
			uniform half _SizeFadeIntensityValue;
			uniform half _SizeFadeScaleMode;
			uniform half _SizeFadeScaleValue;
			uniform half _SizeFadeDistMinValue;
			uniform half _SizeFadeDistMaxValue;
			uniform half _SubsurfaceCategory;
			uniform half _SubsurfaceEnd;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceElementMode;
			uniform half _EmissiveCategory;
			uniform half _EmissiveEnd;
			uniform half _EmissivePowerMode;
			uniform half _EmissivePowerValue;
			uniform half _EmissiveElementMode;
			uniform half _OverlayCategory;
			uniform half _OverlayEnd;
			uniform half _OverlaySpace;
			uniform half _OverlayElementMode;
			uniform half _OverlayBakeInfo;
			uniform float4 _OverlayGlitterTex_ST;
			uniform half _OverlayGlitterDistValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksA);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksB);
			SamplerState sampler_MasksA;
			SamplerState sampler_MasksB;
			uniform half4 _ImpostorColorTwo;
			uniform half4 _ImpostorColor;
			uniform half _ImpostorColorMode;
			uniform half _ImpostorMetallicValue;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _OverlayColor;
			uniform half _OverlayIntensityValue;
			uniform half4 _OverlayProjRemap;
			uniform half _OverlayProjValue;
			uniform half4 _OverlayLumaRemap;
			uniform half _OverlayLumaValue;
			uniform half _GlobalLiteInfo;
			uniform half _GlobalCategory;
			uniform half _GlobalEnd;
			uniform half4 TVE_CoatParams;
			uniform half4 TVE_PaintParams;
			uniform half4 TVE_GlowParams;
			uniform half4 TVE_AtmoParams;
			uniform half4 TVE_FormParams;
			uniform half4 TVE_PushParams;
			uniform half4 _OverlayBlendRemap1;
			uniform half _OverlayNormalValue;
			uniform half _OverlaySmoothnessValue;
			uniform half _OverlaySubsurfaceValue;
			uniform half _EmissiveIntensityValue;
			uniform half4 _EmissiveColor;
			uniform float _emissive_power_value;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceIntensityValue;
			uniform half _SubsurfaceMultiValue;
			uniform half3 TVE_MainLightDirection;
			uniform half _SubsurfaceAproxInfo;
			uniform half _RenderSpecular;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normalOS, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normalOS ); 
				float p0l0DotN = dot( -rayPosition, normalOS );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normalOS ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normalOS );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normalOS );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 positionOS, inout float3 normalOS, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldCameraPos;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				#else
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				worldCameraPos = ai_ObjectToWorld._m03_m13_m23 + UNITY_MATRIX_I_V._m02_m12_m22 * 5000;
				}
				else
				{
				worldCameraPos = _WorldSpaceCameraPos;
				}
				#endif
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = positionOS.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				objectCameraDirection = trunc( objectCameraDirection * 65536.0 ) / 65536.0;
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				positionOS.xyz = billboard + _AI_Offset.xyz;
				normalOS.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( positionOS.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 positionCS, out float3 positionWS, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				positionWS = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				positionCS = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				positionCS = UnityApplyLinearShadowBias( positionCS );
				#endif
				positionCS.xyz /= positionCS.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				positionCS = positionCS * 0.5 + 0.5;
			}
			


			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif

			struct appdata
			{
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f_surf
			{
				UNITY_POSITION(pos);
				#if defined(LIGHTMAP_ON) || (!defined(LIGHTMAP_ON) && SHADER_TARGET >= 30)
					float4 lmap : TEXCOORD0;
				#endif
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
					half3 sh : TEXCOORD1;
				#endif
				#if UNITY_VERSION >= 201810
					UNITY_LIGHTING_COORDS(2,3)
				#else
					UNITY_SHADOW_COORDS(2)
				#endif
				UNITY_FOG_COORDS(4)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame122_g156801 : TEXCOORD5;
				float4 UVsFrame222_g156801 : TEXCOORD6;
				float4 UVsFrame322_g156801 : TEXCOORD7;
				float4 octaframe22_g156801 : TEXCOORD8;
				float4 viewPos22_g156801 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
			};

			v2f_surf vert_surf (appdata v )
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				TVEModelData Data16_g158299 = (TVEModelData)0;
				float In_Dummy16_g158299 = 0.0;
				TVEModelData Data16_g158265 = (TVEModelData)0;
				half4 Dummy181_g158262 = ( ( _MotionWindCategory + _MotionWindEnd ) + _MotionWindElementMode + ( _MotionInteractionCategory + _MotionInteractionEnd ) + ( _InteractionLiteInfo + _InteractionColoring + _MotionPushIntensityValue + _MotionPushPivotValue + _MotionPushMaskValue + _MotionPushElementMode ) );
				float In_Dummy16_g158265 = Dummy181_g158262.r;
				TVEModelData Data16_g156809 = (TVEModelData)0;
				float In_Dummy16_g156809 = 0.0;
				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame122_g156801, o.UVsFrame222_g156801, o.UVsFrame322_g156801, o.octaframe22_g156801, o.viewPos22_g156801 );
				float3 worldPosOut22_g156801 = mul( UNITY_MATRIX_I_V, float4( o.viewPos22_g156801.xyz, 1.0 ) ).xyz;
				half3 Input_PositionWS218_g156802 = worldPosOut22_g156801;
				float3 worldToObj278_g156802 = mul( unity_WorldToObject, float4( Input_PositionWS218_g156802, 1 ) ).xyz;
				half3 Model_PositionOS131_g156802 = worldToObj278_g156802;
				float3 In_PositionOS16_g156809 = Model_PositionOS131_g156802;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156809 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156809 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156809 = Model_PositionOS131_g156802;
				float3 In_PositionAddOS16_g156809 = float3( 0,0,0 );
				float3 In_PivotOS16_g156809 = float3( 0,0,0 );
				float4x4 break19_g156804 = unity_ObjectToWorld;
				float3 appendResult20_g156804 = (float3(break19_g156804[ 0 ][ 3 ] , break19_g156804[ 1 ][ 3 ] , break19_g156804[ 2 ][ 3 ]));
				half3 ObjectData20_g156806 = appendResult20_g156804;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g156806 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g156806 = WorldData19_g156806;
				#else
				float3 staticSwitch14_g156806 = ObjectData20_g156806;
				#endif
				float3 temp_output_124_0_g156804 = staticSwitch14_g156806;
				float3 vertexToFrag281_g156802 = temp_output_124_0_g156804;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156809 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156809 = Model_PivotWO133_g156802;
				half3 Model_NormalOS134_g156802 = v.normal;
				float3 In_NormalOS16_g156809 = Model_NormalOS134_g156802;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156809 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156809 = Model_NormalOS134_g156802;
				float3 In_NormalRawWS16_g156809 = Model_Normal_WS95_g156802;
				float4 In_TangentOS16_g156809 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156809 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156809 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156809 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156809 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156809 = float4( 0,0,0,0 );
				{
				Data16_g156809.Dummy = In_Dummy16_g156809;
				Data16_g156809.PositionOS = In_PositionOS16_g156809;
				Data16_g156809.PositionWS = In_PositionWS16_g156809;
				Data16_g156809.PositionWO = In_PositionWO16_g156809;
				Data16_g156809.PositionRawOS = In_PositionRawOS16_g156809;
				Data16_g156809.PositionAddOS = In_PositionAddOS16_g156809;
				Data16_g156809.PivotOS = In_PivotOS16_g156809;
				Data16_g156809.PivotWS = In_PivotWS16_g156809;
				Data16_g156809.PivotWO = In_PivotWO16_g156809;
				Data16_g156809.NormalOS = In_NormalOS16_g156809;
				Data16_g156809.NormalWS = In_NormalWS16_g156809;
				Data16_g156809.NormalRawOS = In_NormalRawOS16_g156809;
				Data16_g156809.NormalRawWS = In_NormalRawWS16_g156809;
				Data16_g156809.TangentOS = In_TangentOS16_g156809;
				Data16_g156809.ViewDirWS = In_ViewDirWS16_g156809;
				Data16_g156809.VertexData = In_VertexData16_g156809;
				Data16_g156809.MotionData = In_MotionData16_g156809;
				Data16_g156809.BoundsData = In_BoundsData16_g156809;
				Data16_g156809.RotationData = In_RotationData16_g156809;
				}
				TVEModelData Data15_g158264 = Data16_g156809;
				float Out_Dummy15_g158264 = 0;
				float3 Out_PositionOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158264 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158264 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158264 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158264 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158264 = float3( 0,0,0 );
				float4 Out_VertexData15_g158264 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158264 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158264 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158264 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158264 = Data15_g158264.Dummy;
				Out_PositionOS15_g158264 = Data15_g158264.PositionOS;
				Out_PositionWS15_g158264 = Data15_g158264.PositionWS;
				Out_PositionWO15_g158264 = Data15_g158264.PositionWO;
				Out_PositionRawOS15_g158264 = Data15_g158264.PositionRawOS;
				Out_PositionAddOS15_g158264 = Data15_g158264.PositionAddOS;
				Out_PivotOS15_g158264 = Data15_g158264.PivotOS;
				Out_PivotWS15_g158264 = Data15_g158264.PivotWS;
				Out_PivotWO15_g158264 = Data15_g158264.PivotWO;
				Out_NormalOS15_g158264 = Data15_g158264.NormalOS;
				Out_NormalWS15_g158264 = Data15_g158264.NormalWS;
				Out_NormalRawOS15_g158264 = Data15_g158264.NormalRawOS;
				Out_NormalRawWS15_g158264 = Data15_g158264.NormalRawWS;
				Out_TangentOS15_g158264 = Data15_g158264.TangentOS;
				Out_ViewDirWS15_g158264 = Data15_g158264.ViewDirWS;
				Out_VertexData15_g158264 = Data15_g158264.VertexData;
				Out_MotionData15_g158264 = Data15_g158264.MotionData;
				Out_BoundsData15_g158264 = Data15_g158264.BoundsData;
				Out_RotationData15_g158264 = Data15_g158264.RotationData;
				}
				float3 temp_output_1567_0_g158262 = Out_PositionOS15_g158264;
				float3 In_PositionOS16_g158265 = temp_output_1567_0_g158262;
				float3 In_PositionWS16_g158265 = Out_PositionWS15_g158264;
				float3 temp_output_1567_17_g158262 = Out_PositionWO15_g158264;
				float3 In_PositionWO16_g158265 = temp_output_1567_17_g158262;
				float3 In_PositionRawOS16_g158265 = Out_PositionRawOS15_g158264;
				float3 In_PositionAddOS16_g158265 = Out_PositionAddOS15_g158264;
				float3 In_PivotOS16_g158265 = Out_PivotOS15_g158264;
				float3 In_PivotWS16_g158265 = Out_PivotWS15_g158264;
				float3 temp_output_1567_19_g158262 = Out_PivotWO15_g158264;
				float3 In_PivotWO16_g158265 = temp_output_1567_19_g158262;
				float3 In_NormalOS16_g158265 = Out_NormalOS15_g158264;
				float3 In_NormalWS16_g158265 = Out_NormalWS15_g158264;
				float3 In_NormalRawOS16_g158265 = Out_NormalRawOS15_g158264;
				float3 In_NormalRawWS16_g158265 = Out_NormalRawWS15_g158264;
				float4 In_TangentOS16_g158265 = Out_TangentOS15_g158264;
				float3 In_ViewDirWS16_g158265 = Out_ViewDirWS15_g158264;
				float4 In_VertexData16_g158265 = Out_VertexData15_g158264;
				float4 In_MotionData16_g158265 = Out_MotionData15_g158264;
				float4 In_BoundsData16_g158265 = Out_BoundsData15_g158264;
				float2 temp_cast_1 = (0.0).xx;
				half3 Model_PositionOS147_g158262 = temp_output_1567_0_g158262;
				half Base_Mask217_g158262 = saturate( ( Model_PositionOS147_g158262.y / _AI_Offset.y ) );
				float4 lerpResult627_g158267 = lerp( half4(0,1,1,0) , TVE_MotionParams , TVE_IsEnabled);
				half2 Global_WindDirection593_g158267 = (lerpResult627_g158267).xy;
				half3 Model_PositionWO162_g158262 = temp_output_1567_17_g158262;
				half3 Model_PivotWO402_g158262 = temp_output_1567_19_g158262;
				float3 lerpResult829_g158262 = lerp( Model_PositionWO162_g158262 , Model_PivotWO402_g158262 , _MotionBasePivotValue);
				half3 Base_Position1394_g158262 = lerpResult829_g158262;
				half3 Input_PositionWO419_g158267 = Base_Position1394_g158262;
				half Flow_Tillling1397_g158262 = _MotionTillingValue;
				half Input_MotionTilling321_g158267 = ( Flow_Tillling1397_g158262 + 0.2 );
				half2 Noise_Coord515_g158267 = ( -(Input_PositionWO419_g158267).xz * Input_MotionTilling321_g158267 * 0.005 );
				float2 temp_output_3_0_g158280 = Noise_Coord515_g158267;
				float2 temp_output_606_0_g158267 = (Global_WindDirection593_g158267*2.0 + -1.0);
				float2 temp_output_21_0_g158280 = temp_output_606_0_g158267;
				float lerpResult128_g158268 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Flow_Speed1398_g158262 = _MotionSpeedValue;
				half Input_MotionSpeed62_g158267 = Flow_Speed1398_g158262;
				float temp_output_505_0_g158267 = ( lerpResult128_g158268 * Input_MotionSpeed62_g158267 );
				half Noise_Speed516_g158267 = ( temp_output_505_0_g158267 * 0.02 );
				float temp_output_15_0_g158280 = Noise_Speed516_g158267;
				float temp_output_23_0_g158280 = frac( temp_output_15_0_g158280 );
				float4 lerpResult39_g158280 = lerp( SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * temp_output_23_0_g158280 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * frac( ( temp_output_15_0_g158280 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_23_0_g158280 - 0.5 ) ) / 0.5 ));
				half4 Noise_Params535_g158267 = lerpResult39_g158280;
				half Flow_Noise1600_g158262 = _MotionNoiseValue;
				half Input_MotionNoise552_g158267 = Flow_Noise1600_g158262;
				float2 lerpResult560_g158267 = lerp( Global_WindDirection593_g158267 , (Noise_Params535_g158267).rg , Input_MotionNoise552_g158267);
				half Global_WindIntensity576_g158267 = (lerpResult627_g158267).z;
				half Flow_Value1602_g158262 = _MotionIntensityValue;
				half Input_MotionValue629_g158267 = Flow_Value1602_g158262;
				float2 lerpResult574_g158267 = lerp( float2( 0.5,0.5 ) , lerpResult560_g158267 , ( Global_WindIntensity576_g158267 * Input_MotionValue629_g158267 ));
				float3 appendResult566_g158267 = (float3(lerpResult574_g158267 , (Noise_Params535_g158267).b));
				float temp_output_136_0_g158269 = _global_wind_layer_value;
				float temp_output_19_0_g158271 = TVE_WindLayers[(int)temp_output_136_0_g158269];
				half3 Input_Position180_g158272 = Input_PositionWO419_g158267;
				float2 temp_output_75_0_g158272 = ( (TVE_RenderBaseCoords).zw + ( (TVE_RenderBaseCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_82_0_g158272 = temp_output_136_0_g158269;
				float2 temp_output_119_0_g158272 = ( (TVE_RenderNearCoords).zw + ( (TVE_RenderNearCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_7_0_g158277 = 1.0;
				float temp_output_10_0_g158277 = ( TVE_RenderNearFadeValue - temp_output_7_0_g158277 );
				float4 lerpResult131_g158272 = lerp( SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindBaseTex, sampler_Linear_Clamp, float3(temp_output_75_0_g158272,temp_output_82_0_g158272), 0.0 ) , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindNearTex, sampler_Linear_Repeat, float3(temp_output_119_0_g158272,temp_output_82_0_g158272), 0.0 ) , saturate( ( ( saturate( ( distance( Input_Position180_g158272 , (TVE_RenderNearPositionR).xyz ) / (TVE_RenderNearPositionR).w ) ) - temp_output_7_0_g158277 ) / temp_output_10_0_g158277 ) ));
				float4 temp_output_17_0_g158271 = lerpResult131_g158272;
				float4 temp_output_3_0_g158271 = TVE_WindParams;
				float4 ifLocalVar18_g158271 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g158271 >= 0.5 )
				ifLocalVar18_g158271 = temp_output_17_0_g158271;
				else
				ifLocalVar18_g158271 = temp_output_3_0_g158271;
				float4 lerpResult22_g158271 = lerp( temp_output_3_0_g158271 , temp_output_17_0_g158271 , temp_output_19_0_g158271);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g158271 = lerpResult22_g158271;
				#else
				float4 staticSwitch24_g158271 = ifLocalVar18_g158271;
				#endif
				float4 temp_output_610_0_g158267 = staticSwitch24_g158271;
				float3 lerpResult623_g158267 = lerp( appendResult566_g158267 , (temp_output_610_0_g158267).rgb , (temp_output_610_0_g158267).a);
				#ifdef TVE_MOTION_WIND_ELEMENT
				float3 staticSwitch612_g158267 = lerpResult623_g158267;
				#else
				float3 staticSwitch612_g158267 = appendResult566_g158267;
				#endif
				float3 temp_output_1563_567_g158262 = staticSwitch612_g158267;
				half Base_Noise1590_g158262 = abs( (temp_output_1563_567_g158262).z );
				float2 break83_g158263 = ((temp_output_1563_567_g158262).xy*2.0 + -1.0);
				float3 appendResult79_g158263 = (float3(break83_g158263.x , 0.0 , break83_g158263.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Base_Direction893_g158262 = (( mul( unity_WorldToObject, float4( appendResult79_g158263 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float lerpResult1587_g158262 = lerp( (Base_Noise1590_g158262*2.0 + -1.0) , Base_Noise1590_g158262 , length( Base_Direction893_g158262 ));
				#ifdef TVE_MOTION_BASE_BENDING
				float2 staticSwitch1573_g158262 = ( ( _MotionBaseIntensityValue * Base_Mask217_g158262 * lerpResult1587_g158262 ) * Base_Direction893_g158262 );
				#else
				float2 staticSwitch1573_g158262 = temp_cast_1;
				#endif
				half2 Base_Motion1440_g158262 = staticSwitch1573_g158262;
				half2 Final_RoationData1570_g158262 = Base_Motion1440_g158262;
				float4 In_RotationData16_g158265 = float4( Final_RoationData1570_g158262, 0.0 , 0.0 );
				{
				Data16_g158265.Dummy = In_Dummy16_g158265;
				Data16_g158265.PositionOS = In_PositionOS16_g158265;
				Data16_g158265.PositionWS = In_PositionWS16_g158265;
				Data16_g158265.PositionWO = In_PositionWO16_g158265;
				Data16_g158265.PositionRawOS = In_PositionRawOS16_g158265;
				Data16_g158265.PositionAddOS = In_PositionAddOS16_g158265;
				Data16_g158265.PivotOS = In_PivotOS16_g158265;
				Data16_g158265.PivotWS = In_PivotWS16_g158265;
				Data16_g158265.PivotWO = In_PivotWO16_g158265;
				Data16_g158265.NormalOS = In_NormalOS16_g158265;
				Data16_g158265.NormalWS = In_NormalWS16_g158265;
				Data16_g158265.NormalRawOS = In_NormalRawOS16_g158265;
				Data16_g158265.NormalRawWS = In_NormalRawWS16_g158265;
				Data16_g158265.TangentOS = In_TangentOS16_g158265;
				Data16_g158265.ViewDirWS = In_ViewDirWS16_g158265;
				Data16_g158265.VertexData = In_VertexData16_g158265;
				Data16_g158265.MotionData = In_MotionData16_g158265;
				Data16_g158265.BoundsData = In_BoundsData16_g158265;
				Data16_g158265.RotationData = In_RotationData16_g158265;
				}
				TVEModelData Data15_g158298 = Data16_g158265;
				float Out_Dummy15_g158298 = 0;
				float3 Out_PositionOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158298 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158298 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158298 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158298 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158298 = float3( 0,0,0 );
				float4 Out_VertexData15_g158298 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158298 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158298 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158298 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158298 = Data15_g158298.Dummy;
				Out_PositionOS15_g158298 = Data15_g158298.PositionOS;
				Out_PositionWS15_g158298 = Data15_g158298.PositionWS;
				Out_PositionWO15_g158298 = Data15_g158298.PositionWO;
				Out_PositionRawOS15_g158298 = Data15_g158298.PositionRawOS;
				Out_PositionAddOS15_g158298 = Data15_g158298.PositionAddOS;
				Out_PivotOS15_g158298 = Data15_g158298.PivotOS;
				Out_PivotWS15_g158298 = Data15_g158298.PivotWS;
				Out_PivotWO15_g158298 = Data15_g158298.PivotWO;
				Out_NormalOS15_g158298 = Data15_g158298.NormalOS;
				Out_NormalWS15_g158298 = Data15_g158298.NormalWS;
				Out_NormalRawOS15_g158298 = Data15_g158298.NormalRawOS;
				Out_NormalRawWS15_g158298 = Data15_g158298.NormalRawWS;
				Out_TangentOS15_g158298 = Data15_g158298.TangentOS;
				Out_ViewDirWS15_g158298 = Data15_g158298.ViewDirWS;
				Out_VertexData15_g158298 = Data15_g158298.VertexData;
				Out_MotionData15_g158298 = Data15_g158298.MotionData;
				Out_BoundsData15_g158298 = Data15_g158298.BoundsData;
				Out_RotationData15_g158298 = Data15_g158298.RotationData;
				}
				half3 Model_PositionOS147_g158297 = Out_PositionOS15_g158298;
				half3 Input_False58_g158303 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158300 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158301 = VertexPos40_g158300;
				float3 appendResult74_g158301 = (float3(VertexPos40_g158301.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g158301 = appendResult74_g158301;
				float3 break84_g158301 = VertexPos40_g158301;
				float3 appendResult81_g158301 = (float3(0.0 , break84_g158301.y , break84_g158301.z));
				half3 VertexPosOtherAxis82_g158301 = appendResult81_g158301;
				float4 temp_output_1567_33_g158297 = Out_RotationData15_g158298;
				half4 Model_VertexBend1569_g158297 = temp_output_1567_33_g158297;
				half2 Angle44_g158300 = (Model_VertexBend1569_g158297).xy;
				half Angle44_g158301 = (Angle44_g158300).y;
				half3 VertexPos40_g158302 = ( VertexPosRotationAxis50_g158301 + ( VertexPosOtherAxis82_g158301 * cos( Angle44_g158301 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g158301 ) * sin( Angle44_g158301 ) ) );
				float3 appendResult74_g158302 = (float3(0.0 , 0.0 , VertexPos40_g158302.z));
				half3 VertexPosRotationAxis50_g158302 = appendResult74_g158302;
				float3 break84_g158302 = VertexPos40_g158302;
				float3 appendResult81_g158302 = (float3(break84_g158302.x , break84_g158302.y , 0.0));
				half3 VertexPosOtherAxis82_g158302 = appendResult81_g158302;
				half Angle44_g158302 = -(Angle44_g158300).x;
				half3 Input_True57_g158303 = ( VertexPosRotationAxis50_g158302 + ( VertexPosOtherAxis82_g158302 * cos( Angle44_g158302 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g158302 ) * sin( Angle44_g158302 ) ) );
				#ifdef TVE_MOTION_BASE_BENDING
				float3 staticSwitch65_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch65_g158303 = Input_False58_g158303;
				#endif
				#ifdef TVE_MOTION_PUSH_BENDING
				float3 staticSwitch67_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch67_g158303 = staticSwitch65_g158303;
				#endif
				#ifdef TVE_BLANKET_BENDING
				float3 staticSwitch69_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch69_g158303 = staticSwitch67_g158303;
				#endif
				float3 temp_output_1567_31_g158297 = Out_PositionAddOS15_g158298;
				half3 Model_PositionADD1568_g158297 = temp_output_1567_31_g158297;
				half3 Final_PositionOS178_g158297 = ( staticSwitch69_g158303 + Model_PositionADD1568_g158297 );
				float3 In_PositionOS16_g158299 = Final_PositionOS178_g158297;
				float3 In_PositionWS16_g158299 = Out_PositionWS15_g158298;
				float3 In_PositionWO16_g158299 = Out_PositionWO15_g158298;
				float3 In_PositionRawOS16_g158299 = Out_PositionRawOS15_g158298;
				float3 In_PositionAddOS16_g158299 = temp_output_1567_31_g158297;
				float3 In_PivotOS16_g158299 = Out_PivotOS15_g158298;
				float3 In_PivotWS16_g158299 = Out_PivotWS15_g158298;
				float3 In_PivotWO16_g158299 = Out_PivotWO15_g158298;
				float3 In_NormalOS16_g158299 = Out_NormalOS15_g158298;
				float3 In_NormalWS16_g158299 = Out_NormalWS15_g158298;
				float3 In_NormalRawOS16_g158299 = Out_NormalRawOS15_g158298;
				float3 In_NormalRawWS16_g158299 = Out_NormalRawWS15_g158298;
				float4 In_TangentOS16_g158299 = Out_TangentOS15_g158298;
				float3 In_ViewDirWS16_g158299 = Out_ViewDirWS15_g158298;
				float4 In_VertexData16_g158299 = Out_VertexData15_g158298;
				float4 In_MotionData16_g158299 = Out_MotionData15_g158298;
				float4 In_BoundsData16_g158299 = Out_BoundsData15_g158298;
				float4 In_RotationData16_g158299 = temp_output_1567_33_g158297;
				{
				Data16_g158299.Dummy = In_Dummy16_g158299;
				Data16_g158299.PositionOS = In_PositionOS16_g158299;
				Data16_g158299.PositionWS = In_PositionWS16_g158299;
				Data16_g158299.PositionWO = In_PositionWO16_g158299;
				Data16_g158299.PositionRawOS = In_PositionRawOS16_g158299;
				Data16_g158299.PositionAddOS = In_PositionAddOS16_g158299;
				Data16_g158299.PivotOS = In_PivotOS16_g158299;
				Data16_g158299.PivotWS = In_PivotWS16_g158299;
				Data16_g158299.PivotWO = In_PivotWO16_g158299;
				Data16_g158299.NormalOS = In_NormalOS16_g158299;
				Data16_g158299.NormalWS = In_NormalWS16_g158299;
				Data16_g158299.NormalRawOS = In_NormalRawOS16_g158299;
				Data16_g158299.NormalRawWS = In_NormalRawWS16_g158299;
				Data16_g158299.TangentOS = In_TangentOS16_g158299;
				Data16_g158299.ViewDirWS = In_ViewDirWS16_g158299;
				Data16_g158299.VertexData = In_VertexData16_g158299;
				Data16_g158299.MotionData = In_MotionData16_g158299;
				Data16_g158299.BoundsData = In_BoundsData16_g158299;
				Data16_g158299.RotationData = In_RotationData16_g158299;
				}
				TVEModelData Data15_g158311 = Data16_g158299;
				float Out_Dummy15_g158311 = 0;
				float3 Out_PositionOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158311 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158311 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158311 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158311 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158311 = float3( 0,0,0 );
				float4 Out_VertexData15_g158311 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158311 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158311 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158311 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158311 = Data15_g158311.Dummy;
				Out_PositionOS15_g158311 = Data15_g158311.PositionOS;
				Out_PositionWS15_g158311 = Data15_g158311.PositionWS;
				Out_PositionWO15_g158311 = Data15_g158311.PositionWO;
				Out_PositionRawOS15_g158311 = Data15_g158311.PositionRawOS;
				Out_PositionAddOS15_g158311 = Data15_g158311.PositionAddOS;
				Out_PivotOS15_g158311 = Data15_g158311.PivotOS;
				Out_PivotWS15_g158311 = Data15_g158311.PivotWS;
				Out_PivotWO15_g158311 = Data15_g158311.PivotWO;
				Out_NormalOS15_g158311 = Data15_g158311.NormalOS;
				Out_NormalWS15_g158311 = Data15_g158311.NormalWS;
				Out_NormalRawOS15_g158311 = Data15_g158311.NormalRawOS;
				Out_NormalRawWS15_g158311 = Data15_g158311.NormalRawWS;
				Out_TangentOS15_g158311 = Data15_g158311.TangentOS;
				Out_ViewDirWS15_g158311 = Data15_g158311.ViewDirWS;
				Out_VertexData15_g158311 = Data15_g158311.VertexData;
				Out_MotionData15_g158311 = Data15_g158311.MotionData;
				Out_BoundsData15_g158311 = Data15_g158311.BoundsData;
				Out_RotationData15_g158311 = Data15_g158311.RotationData;
				}
				float3 temp_output_31_0_g158304 = Out_PositionOS15_g158311;
				float3 temp_output_6_0_g158318 = ( ( temp_output_31_0_g158304 - Out_PositionRawOS15_g158311 ) + _DisableSRPBatcher );
				half4 Dummy_Data433 = ( ( ( _VariationLiteInfo + _VariationColoring ) + ( _VariationCategory + _VariationEnd ) + ( _VariationIntensityValue + _VariationColorTwo + _VariationColorOne ) + ( _VariationMultiValue + _VariationNoiseRemap + _VariationNoisePivotsValue1 + _VariationNoiseTillingValue ) ) + ( ( _TintingLiteInfo + _TintingColoring ) + ( _TintingCategory + _TintingEnd + _TintingSpace + 0.0 + _TintingElementMode ) + ( _TintingIntensityValue + _TintingColor + _TintingGrayValue ) + ( _TintingMultiValue + _TintingLumaValue + _TintingLumaRemap ) + 0.0 + 0.0 ) + ( ( _DrynessLiteInfo + _DrynessColoring ) + ( _DrynessCategory + _DrynessEnd + _DrynessSpace + _DrynessElementMode + 0.0 ) + ( _DrynessIntensityValue + _DrynessColor + _DrynessGrayValue + _DrynessShiftValue + _DrynessSmoothnessValue + _DrynessSubsurfaceValue ) + ( _DrynessMultiValue + _DrynessLumaValue + _DrynessLumaRemap ) + 0.0 + 0.0 ) + ( ( _WetnessLiteInfo + _WetnessColoring ) + ( _WetnessCategory + _WetnessEnd + _WetnessElementMode + 0.0 ) + ( _WetnessIntensityValue + _WetnessContrastValue + _WetnessSmoothnessValue ) + float4( 0,0,0,0 ) + float4( 0,0,0,0 ) ) + ( ( _CutoutLiteInfo + _CutoutColoring ) + ( _CutoutCategory + _CutoutEnd + _CutoutSpace + _CutoutElementMode + 0.0 ) + ( _CutoutIntensityValue + 0.0 ) + ( _CutoutMultiValue + _CutoutAlphaValue + _CutoutNoiseValue + _CutoutNoiseTillingValue ) + 0.0 ) + ( ( _DitherLiteInfo + _DitherColoring ) + ( _DitherCategory + _DitherEnd ) + ( _DitherConstantValue + 0.0 + 0.0 + ( _DitherDistanceValue + _DitherDistanceMaxValue + _DitherDistanceMinValue ) + 0.0 ) + ( _DitherMultiValue + _DitherNoiseTillingValue ) ) + ( ( _SizeFadeLiteInfo + _SizeFadeColoring ) + ( _SizeFadeCategory + _SizeFadeEnd + _SizeFadeElementMode ) + ( _SizeFadeIntensityValue + _SizeFadeScaleMode + _SizeFadeScaleValue + _SizeFadeDistMinValue + _SizeFadeDistMaxValue ) ) );
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g158318 = ( float4( temp_output_6_0_g158318 , 0.0 ) + ( Dummy_Data433 * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g158318 = float4( temp_output_6_0_g158318 , 0.0 );
				#endif
				
				o.ase_texcoord11.xyz = vertexToFrag281_g156802;
				o.ase_texcoord12.xyz = ase_worldNormal;
				
				o.ase_texcoord10.xy = v.texcoord.xyzw.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;

				v.vertex.xyz += staticSwitch14_g158318.rgb;

				o.pos = UnityObjectToClipPos(v.vertex);

				float3 positionWS = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 normalWS = UnityObjectToWorldNormal(v.normal);
				#ifdef DYNAMICLIGHTMAP_ON
				o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				#ifdef LIGHTMAP_ON
				o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#ifndef LIGHTMAP_ON
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						o.sh = 0;
						#ifdef VERTEXLIGHT_ON
						o.sh += Shade4PointLights (
							unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
							unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
							unity_4LightAtten0, positionWS, normalWS);
						#endif
						o.sh = ShadeSHPerVertex (normalWS, o.sh);
					#endif
				#endif

				#if UNITY_VERSION >= 201810
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#else
					UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
				#endif
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag_surf (v2f_surf IN, out float outDepth : SV_Depth ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 positionCS = 0;
				float3 positionWS = 0;

				float localBreakData4_g158307 = ( 0.0 );
				float localCompData3_g158292 = ( 0.0 );
				TVEVisualData Data3_g158292 = (TVEVisualData)0;
				half Dummy145_g158290 = ( _SubsurfaceCategory + _SubsurfaceEnd + ( _SubsurfaceDirectValue + _SubsurfaceNormalValue + _SubsurfaceAmbientValue + _SubsurfaceShadowValue ) + _SubsurfaceElementMode );
				float In_Dummy3_g158292 = Dummy145_g158290;
				float localBreakData4_g158291 = ( 0.0 );
				float localCompData3_g158259 = ( 0.0 );
				TVEVisualData Data3_g158259 = (TVEVisualData)0;
				half Dummy145_g158247 = ( _EmissiveCategory + _EmissiveEnd + ( _EmissivePowerMode + _EmissivePowerValue ) + _EmissiveElementMode + 0.0 );
				float In_Dummy3_g158259 = Dummy145_g158247;
				float localBreakData4_g158258 = ( 0.0 );
				float localCompData3_g158220 = ( 0.0 );
				TVEVisualData Data3_g158220 = (TVEVisualData)0;
				float2 uv_OverlayGlitterTex = IN.ase_texcoord10.xy * _OverlayGlitterTex_ST.xy + _OverlayGlitterTex_ST.zw;
				half4 Dummy594_g158217 = ( ( _OverlayCategory + _OverlayEnd + _OverlaySpace + _OverlayElementMode + _OverlayBakeInfo ) + ( _OverlayLiteInfo + _OverlayColoringOn + _OverlayColoringOff ) + ( SAMPLE_TEXTURE2D( _OverlayGlitterTex, sampler_OverlayGlitterTex, uv_OverlayGlitterTex ) + _OverlayGlitterTillingValue + _OverlayGlitterIntensityValue + _OverlayGlitterColor + _OverlayGlitterDistValue ) );
				float In_Dummy3_g158220 = Dummy594_g158217.r;
				float localBreakData4_g158218 = ( 0.0 );
				float localCompData3_g156877 = ( 0.0 );
				TVEVisualData Data3_g156877 = (TVEVisualData)0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, positionCS, positionWS, IN.UVsFrame122_g156801, IN.UVsFrame222_g156801, IN.UVsFrame322_g156801, IN.octaframe22_g156801, IN.viewPos22_g156801, output0, output1 );
				float In_Dummy3_g156877 = output1.r;
				float4 break227_g156876 = output0;
				half Local_MultiMask249_g156876 = break227_g156876.b;
				float lerpResult289_g156876 = lerp( 1.0 , Local_MultiMask249_g156876 , _ImpostorColorMode);
				float3 lerpResult292_g156876 = lerp( (_ImpostorColorTwo).rgb , (_ImpostorColor).rgb , lerpResult289_g156876);
				half3 Local_Albedo239_g156876 = ( o.Albedo * lerpResult292_g156876 );
				float3 In_Albedo3_g156877 = Local_Albedo239_g156876;
				float2 temp_cast_4 = (0.5).xx;
				float2 In_NormalTS3_g156877 = temp_cast_4;
				float3 In_NormalWS3_g156877 = o.Normal;
				half Local_Metallic247_g156876 = break227_g156876.r;
				half Final_Metallic238_g156876 = ( Local_Metallic247_g156876 * _ImpostorMetallicValue );
				half Local_Smoothness250_g156876 = break227_g156876.a;
				half Final_Smoothness233_g156876 = ( Local_Smoothness250_g156876 * _ImpostorSmoothnessValue );
				float4 appendResult257_g156876 = (float4(Final_Metallic238_g156876 , 1.0 , 1.0 , Final_Smoothness233_g156876));
				float4 In_Shader3_g156877 = appendResult257_g156876;
				half Local_EmissiveMask248_g156876 = break227_g156876.g;
				float4 appendResult286_g156876 = (float4(Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , 1.0));
				float4 In_Emissive3_g156877 = appendResult286_g156876;
				float3 temp_output_3_0_g156878 = Local_Albedo239_g156876;
				float dotResult20_g156878 = dot( temp_output_3_0_g156878 , float3(0.2126,0.7152,0.0722) );
				half Local_Grayscale268_g156876 = dotResult20_g156878;
				float In_Grayscale3_g156877 = Local_Grayscale268_g156876;
				float clampResult267_g156876 = clamp( saturate( ( Local_Grayscale268_g156876 * 5.0 ) ) , 0.2 , 1.0 );
				half Local_Luminosity269_g156876 = clampResult267_g156876;
				float In_Luminosity3_g156877 = Local_Luminosity269_g156876;
				float In_MultiMask3_g156877 = Local_MultiMask249_g156876;
				float In_AlphaClip3_g156877 = 0.0;
				float In_AlphaFade3_g156877 = 1.0;
				float3 temp_cast_5 = (1.0).xxx;
				float3 In_Translucency3_g156877 = temp_cast_5;
				float In_Transmission3_g156877 = 1.0;
				float In_Thickness3_g156877 = 0.0;
				float In_Diffusion3_g156877 = 0.0;
				{
				Data3_g156877.Dummy = In_Dummy3_g156877;
				Data3_g156877.Albedo = In_Albedo3_g156877;
				Data3_g156877.NormalTS = In_NormalTS3_g156877;
				Data3_g156877.NormalWS = In_NormalWS3_g156877;
				Data3_g156877.Shader = In_Shader3_g156877;
				Data3_g156877.Emissive= In_Emissive3_g156877;
				Data3_g156877.MultiMask = In_MultiMask3_g156877;
				Data3_g156877.Grayscale = In_Grayscale3_g156877;
				Data3_g156877.Luminosity = In_Luminosity3_g156877;
				Data3_g156877.AlphaClip = In_AlphaClip3_g156877;
				Data3_g156877.AlphaFade = In_AlphaFade3_g156877;
				Data3_g156877.Translucency = In_Translucency3_g156877;
				Data3_g156877.Transmission = In_Transmission3_g156877;
				Data3_g156877.Thickness = In_Thickness3_g156877;
				Data3_g156877.Diffusion = In_Diffusion3_g156877;
				}
				TVEVisualData Data4_g158218 = Data3_g156877;
				float Out_Dummy4_g158218 = 0;
				float3 Out_Albedo4_g158218 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158218 = float2( 0,0 );
				float3 Out_NormalWS4_g158218 = float3( 0,0,0 );
				float4 Out_Shader4_g158218 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158218 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158218 = 0;
				float Out_Grayscale4_g158218 = 0;
				float Out_Luminosity4_g158218 = 0;
				float Out_AlphaClip4_g158218 = 0;
				float Out_AlphaFade4_g158218 = 0;
				float3 Out_Translucency4_g158218 = float3( 0,0,0 );
				float Out_Transmission4_g158218 = 0;
				float Out_Thickness4_g158218 = 0;
				float Out_Diffusion4_g158218 = 0;
				{
				Out_Dummy4_g158218 = Data4_g158218.Dummy;
				Out_Albedo4_g158218 = Data4_g158218.Albedo;
				Out_NormalTS4_g158218 = Data4_g158218.NormalTS;
				Out_NormalWS4_g158218 = Data4_g158218.NormalWS;
				Out_Shader4_g158218 = Data4_g158218.Shader;
				Out_Emissive4_g158218= Data4_g158218.Emissive;
				Out_MultiMask4_g158218 = Data4_g158218.MultiMask;
				Out_Grayscale4_g158218 = Data4_g158218.Grayscale;
				Out_Luminosity4_g158218= Data4_g158218.Luminosity;
				Out_AlphaClip4_g158218 = Data4_g158218.AlphaClip;
				Out_AlphaFade4_g158218 = Data4_g158218.AlphaFade;
				Out_Translucency4_g158218 = Data4_g158218.Translucency;
				Out_Transmission4_g158218 = Data4_g158218.Transmission;
				Out_Thickness4_g158218 = Data4_g158218.Thickness;
				Out_Diffusion4_g158218 = Data4_g158218.Diffusion;
				}
				half3 Visual_Albedo127_g158217 = Out_Albedo4_g158218;
				float3 temp_output_622_0_g158217 = (_OverlayColor).rgb;
				half Overlay_TexMask906_g158217 = 1.0;
				float3 temp_output_739_21_g158217 = Out_NormalWS4_g158218;
				half3 Visual_NormalWS749_g158217 = temp_output_739_21_g158217;
				float clampResult17_g158237 = clamp( saturate( (Visual_NormalWS749_g158217).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g158236 = _OverlayProjRemap.x;
				float temp_output_10_0_g158236 = ( _OverlayProjRemap.y - temp_output_7_0_g158236 );
				float lerpResult842_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158237 - temp_output_7_0_g158236 ) / ( temp_output_10_0_g158236 + 0.0001 ) ) ) , _OverlayProjValue);
				half Overlay_MaskProj457_g158217 = lerpResult842_g158217;
				float temp_output_739_15_g158217 = Out_Luminosity4_g158218;
				half Visual_Luminosity654_g158217 = temp_output_739_15_g158217;
				float clampResult17_g158239 = clamp( Visual_Luminosity654_g158217 , 0.0001 , 0.9999 );
				float temp_output_7_0_g158238 = _OverlayLumaRemap.x;
				float temp_output_10_0_g158238 = ( _OverlayLumaRemap.y - temp_output_7_0_g158238 );
				float lerpResult587_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158239 - temp_output_7_0_g158238 ) / ( temp_output_10_0_g158238 + 0.0001 ) ) ) , _OverlayLumaValue);
				half Overlay_MaskLuma438_g158217 = lerpResult587_g158217;
				half Overlay_VertMask801_g158217 = 1.0;
				half Overlay_MaskNoise427_g158217 = 1.0;
				float localBuildGlobalData204_g156811 = ( 0.0 );
				TVEGlobalData Data204_g156811 = (TVEGlobalData)0;
				half Dummy211_g156811 = ( _GlobalLiteInfo + ( _GlobalCategory + _GlobalEnd ) );
				float In_Dummy204_g156811 = Dummy211_g156811;
				float4 temp_output_362_164_g156811 = TVE_CoatParams;
				half4 Coat_Params302_g156811 = temp_output_362_164_g156811;
				float4 In_CoatParams204_g156811 = Coat_Params302_g156811;
				float4 temp_output_361_164_g156811 = TVE_PaintParams;
				half4 Paint_Params71_g156811 = temp_output_361_164_g156811;
				float4 In_PaintParams204_g156811 = Paint_Params71_g156811;
				float4 temp_output_365_163_g156811 = TVE_GlowParams;
				half4 Glow_Params248_g156811 = temp_output_365_163_g156811;
				float4 In_GlowParams204_g156811 = Glow_Params248_g156811;
				float4 temp_output_363_141_g156811 = TVE_AtmoParams;
				half4 Atmo_Params80_g156811 = temp_output_363_141_g156811;
				float4 In_AtmoParams204_g156811 = Atmo_Params80_g156811;
				float4 temp_output_364_139_g156811 = TVE_FormParams;
				half4 Form_Params112_g156811 = temp_output_364_139_g156811;
				float4 In_FormParams204_g156811 = Form_Params112_g156811;
				float4 temp_output_366_145_g156811 = TVE_WindParams;
				half4 Wind_Params88_g156811 = temp_output_366_145_g156811;
				float4 In_WindParams204_g156811 = Wind_Params88_g156811;
				float4 temp_output_367_145_g156811 = TVE_PushParams;
				half4 Push_Params335_g156811 = temp_output_367_145_g156811;
				float4 In_PushParams204_g156811 = Push_Params335_g156811;
				{
				Data204_g156811.Dummy = In_Dummy204_g156811;
				Data204_g156811.CoatParams = In_CoatParams204_g156811;
				Data204_g156811.PaintParams = In_PaintParams204_g156811;
				Data204_g156811.GlowParams = In_GlowParams204_g156811;
				Data204_g156811.AtmoParams = In_AtmoParams204_g156811;
				Data204_g156811.FormParams= In_FormParams204_g156811;
				Data204_g156811.WindParams = In_WindParams204_g156811;
				Data204_g156811.PushParams = In_PushParams204_g156811;
				}
				TVEGlobalData Data15_g158219 = Data204_g156811;
				float Out_Dummy15_g158219 = 0;
				float4 Out_CoatParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158219 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158219 = Data15_g158219.Dummy;
				Out_CoatParams15_g158219 = Data15_g158219.CoatParams;
				Out_PaintParams15_g158219 = Data15_g158219.PaintParams;
				Out_GlowParams15_g158219 = Data15_g158219.GlowParams;
				Out_AtmoParams15_g158219= Data15_g158219.AtmoParams;
				Out_FadeParams15_g158219= Data15_g158219.FadeParams;
				Out_FormParams15_g158219 = Data15_g158219.FormParams;
				Out_LandParams15_g158219 = Data15_g158219.LandParams;
				Out_WindParams15_g158219 = Data15_g158219.WindParams;
				Out_PushParams15_g158219 = Data15_g158219.PushParams;
				}
				half4 Global_AtmoParams516_g158217 = Out_AtmoParams15_g158219;
				#ifdef TVE_OVERLAY_ELEMENT
				float staticSwitch705_g158217 = (Global_AtmoParams516_g158217).z;
				#else
				float staticSwitch705_g158217 = 1.0;
				#endif
				half Overlay_MaskGlobal429_g158217 = staticSwitch705_g158217;
				half Custom_Mask646_g158217 = 1.0;
				float temp_output_7_0_g158244 = _OverlayBlendRemap1.x;
				float temp_output_10_0_g158244 = ( _OverlayBlendRemap1.y - temp_output_7_0_g158244 );
				half Overlay_Mask494_g158217 = saturate( ( ( ( _OverlayIntensityValue * Overlay_TexMask906_g158217 * Overlay_MaskProj457_g158217 * Overlay_MaskLuma438_g158217 * Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 * Custom_Mask646_g158217 ) - temp_output_7_0_g158244 ) / ( temp_output_10_0_g158244 + 0.0001 ) ) );
				float3 lerpResult467_g158217 = lerp( Visual_Albedo127_g158217 , temp_output_622_0_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float3 staticSwitch577_g158217 = lerpResult467_g158217;
				#else
				float3 staticSwitch577_g158217 = Visual_Albedo127_g158217;
				#endif
				half3 Final_Albedo493_g158217 = staticSwitch577_g158217;
				float3 In_Albedo3_g158220 = Final_Albedo493_g158217;
				half2 Visual_NormalTS535_g158217 = Out_NormalTS4_g158218;
				float2 lerpResult551_g158217 = lerp( Visual_NormalTS535_g158217 , ( Visual_NormalTS535_g158217 * _OverlayNormalValue ) , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float2 staticSwitch583_g158217 = lerpResult551_g158217;
				#else
				float2 staticSwitch583_g158217 = Visual_NormalTS535_g158217;
				#endif
				half2 Final_NormalTS499_g158217 = staticSwitch583_g158217;
				float2 In_NormalTS3_g158220 = Final_NormalTS499_g158217;
				float3 In_NormalWS3_g158220 = temp_output_739_21_g158217;
				half4 Visual_Masks536_g158217 = Out_Shader4_g158218;
				float4 appendResult585_g158217 = (float4(0.0 , 1.0 , 0.0 , _OverlaySmoothnessValue));
				float4 lerpResult584_g158217 = lerp( Visual_Masks536_g158217 , appendResult585_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float4 staticSwitch586_g158217 = lerpResult584_g158217;
				#else
				float4 staticSwitch586_g158217 = Visual_Masks536_g158217;
				#endif
				half4 Final_Masks482_g158217 = staticSwitch586_g158217;
				float4 In_Shader3_g158220 = Final_Masks482_g158217;
				float4 In_Emissive3_g158220 = Out_Emissive4_g158218;
				float temp_output_739_12_g158217 = Out_Grayscale4_g158218;
				float In_Grayscale3_g158220 = temp_output_739_12_g158217;
				float In_Luminosity3_g158220 = temp_output_739_15_g158217;
				float In_MultiMask3_g158220 = Out_MultiMask4_g158218;
				float In_AlphaClip3_g158220 = Out_AlphaClip4_g158218;
				float In_AlphaFade3_g158220 = Out_AlphaFade4_g158218;
				float3 In_Translucency3_g158220 = Out_Translucency4_g158218;
				half Visual_Transmission699_g158217 = Out_Transmission4_g158218;
				float lerpResult746_g158217 = lerp( Visual_Transmission699_g158217 , ( Visual_Transmission699_g158217 * _OverlaySubsurfaceValue ) , ( Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 ));
				#ifdef TVE_OVERLAY
				float staticSwitch703_g158217 = lerpResult746_g158217;
				#else
				float staticSwitch703_g158217 = Visual_Transmission699_g158217;
				#endif
				half Final_Transmission702_g158217 = staticSwitch703_g158217;
				float In_Transmission3_g158220 = Final_Transmission702_g158217;
				float In_Thickness3_g158220 = Out_Thickness4_g158218;
				float In_Diffusion3_g158220 = Out_Diffusion4_g158218;
				{
				Data3_g158220.Dummy = In_Dummy3_g158220;
				Data3_g158220.Albedo = In_Albedo3_g158220;
				Data3_g158220.NormalTS = In_NormalTS3_g158220;
				Data3_g158220.NormalWS = In_NormalWS3_g158220;
				Data3_g158220.Shader = In_Shader3_g158220;
				Data3_g158220.Emissive= In_Emissive3_g158220;
				Data3_g158220.MultiMask = In_MultiMask3_g158220;
				Data3_g158220.Grayscale = In_Grayscale3_g158220;
				Data3_g158220.Luminosity = In_Luminosity3_g158220;
				Data3_g158220.AlphaClip = In_AlphaClip3_g158220;
				Data3_g158220.AlphaFade = In_AlphaFade3_g158220;
				Data3_g158220.Translucency = In_Translucency3_g158220;
				Data3_g158220.Transmission = In_Transmission3_g158220;
				Data3_g158220.Thickness = In_Thickness3_g158220;
				Data3_g158220.Diffusion = In_Diffusion3_g158220;
				}
				TVEVisualData Data4_g158258 = Data3_g158220;
				float Out_Dummy4_g158258 = 0;
				float3 Out_Albedo4_g158258 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158258 = float2( 0,0 );
				float3 Out_NormalWS4_g158258 = float3( 0,0,0 );
				float4 Out_Shader4_g158258 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158258 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158258 = 0;
				float Out_Grayscale4_g158258 = 0;
				float Out_Luminosity4_g158258 = 0;
				float Out_AlphaClip4_g158258 = 0;
				float Out_AlphaFade4_g158258 = 0;
				float3 Out_Translucency4_g158258 = float3( 0,0,0 );
				float Out_Transmission4_g158258 = 0;
				float Out_Thickness4_g158258 = 0;
				float Out_Diffusion4_g158258 = 0;
				{
				Out_Dummy4_g158258 = Data4_g158258.Dummy;
				Out_Albedo4_g158258 = Data4_g158258.Albedo;
				Out_NormalTS4_g158258 = Data4_g158258.NormalTS;
				Out_NormalWS4_g158258 = Data4_g158258.NormalWS;
				Out_Shader4_g158258 = Data4_g158258.Shader;
				Out_Emissive4_g158258= Data4_g158258.Emissive;
				Out_MultiMask4_g158258 = Data4_g158258.MultiMask;
				Out_Grayscale4_g158258 = Data4_g158258.Grayscale;
				Out_Luminosity4_g158258= Data4_g158258.Luminosity;
				Out_AlphaClip4_g158258 = Data4_g158258.AlphaClip;
				Out_AlphaFade4_g158258 = Data4_g158258.AlphaFade;
				Out_Translucency4_g158258 = Data4_g158258.Translucency;
				Out_Transmission4_g158258 = Data4_g158258.Transmission;
				Out_Thickness4_g158258 = Data4_g158258.Thickness;
				Out_Diffusion4_g158258 = Data4_g158258.Diffusion;
				}
				float3 temp_output_297_0_g158247 = Out_Albedo4_g158258;
				float3 In_Albedo3_g158259 = temp_output_297_0_g158247;
				float2 In_NormalTS3_g158259 = Out_NormalTS4_g158258;
				float3 In_NormalWS3_g158259 = Out_NormalWS4_g158258;
				float4 In_Shader3_g158259 = Out_Shader4_g158258;
				float4 temp_cast_6 = (0.0).xxxx;
				half4 Visual_Emissive255_g158247 = Out_Emissive4_g158258;
				half Emissive_MeshMask221_g158247 = 1.0;
				half Emissive_Mask103_g158247 = 1.0;
				float temp_output_279_0_g158247 = ( Emissive_MeshMask221_g158247 * Emissive_Mask103_g158247 );
				float3 appendResult293_g158247 = (float3(temp_output_279_0_g158247 , temp_output_279_0_g158247 , temp_output_279_0_g158247));
				half3 Local_EmissiveColor278_g158247 = appendResult293_g158247;
				float3 temp_cast_7 = (1.0).xxx;
				TVEGlobalData Data15_g158249 = Data204_g156811;
				float Out_Dummy15_g158249 = 0;
				float4 Out_CoatParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158249 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158249 = Data15_g158249.Dummy;
				Out_CoatParams15_g158249 = Data15_g158249.CoatParams;
				Out_PaintParams15_g158249 = Data15_g158249.PaintParams;
				Out_GlowParams15_g158249 = Data15_g158249.GlowParams;
				Out_AtmoParams15_g158249= Data15_g158249.AtmoParams;
				Out_FadeParams15_g158249= Data15_g158249.FadeParams;
				Out_FormParams15_g158249 = Data15_g158249.FormParams;
				Out_LandParams15_g158249 = Data15_g158249.LandParams;
				Out_WindParams15_g158249 = Data15_g158249.WindParams;
				Out_PushParams15_g158249 = Data15_g158249.PushParams;
				}
				half4 Global_GlowParams179_g158247 = Out_GlowParams15_g158249;
				float3 lerpResult299_g158247 = lerp( float3( 1,1,1 ) , (Global_GlowParams179_g158247).xyz , TVE_IsEnabled);
				#ifdef TVE_EMISSIVE_ELEMENT
				float3 staticSwitch228_g158247 = lerpResult299_g158247;
				#else
				float3 staticSwitch228_g158247 = temp_cast_7;
				#endif
				half3 Emissive_GlobalMask248_g158247 = staticSwitch228_g158247;
				half3 Local_EmissiveValue88_g158247 = ( _EmissiveIntensityValue * (_EmissiveColor).rgb * Emissive_GlobalMask248_g158247 );
				half3 Emissive_Blend260_g158247 = ( ( (Visual_Emissive255_g158247).xyz * Local_EmissiveColor278_g158247 ) * Local_EmissiveValue88_g158247 );
				float3 temp_output_3_0_g158257 = Emissive_Blend260_g158247;
				float temp_output_15_0_g158257 = _emissive_power_value;
				float3 temp_output_23_0_g158257 = ( temp_output_3_0_g158257 * temp_output_15_0_g158257 );
				float4 appendResult295_g158247 = (float4(temp_output_23_0_g158257 , Emissive_Mask103_g158247));
				#ifdef TVE_EMISSIVE
				float4 staticSwitch129_g158247 = appendResult295_g158247;
				#else
				float4 staticSwitch129_g158247 = temp_cast_6;
				#endif
				half4 Final_Emissive184_g158247 = staticSwitch129_g158247;
				float4 In_Emissive3_g158259 = Final_Emissive184_g158247;
				float In_Grayscale3_g158259 = Out_Grayscale4_g158258;
				float In_Luminosity3_g158259 = Out_Luminosity4_g158258;
				float temp_output_297_11_g158247 = Out_MultiMask4_g158258;
				float In_MultiMask3_g158259 = temp_output_297_11_g158247;
				float In_AlphaClip3_g158259 = Out_AlphaClip4_g158258;
				float In_AlphaFade3_g158259 = Out_AlphaFade4_g158258;
				float3 In_Translucency3_g158259 = Out_Translucency4_g158258;
				float In_Transmission3_g158259 = Out_Transmission4_g158258;
				float In_Thickness3_g158259 = Out_Thickness4_g158258;
				float In_Diffusion3_g158259 = Out_Diffusion4_g158258;
				{
				Data3_g158259.Dummy = In_Dummy3_g158259;
				Data3_g158259.Albedo = In_Albedo3_g158259;
				Data3_g158259.NormalTS = In_NormalTS3_g158259;
				Data3_g158259.NormalWS = In_NormalWS3_g158259;
				Data3_g158259.Shader = In_Shader3_g158259;
				Data3_g158259.Emissive= In_Emissive3_g158259;
				Data3_g158259.MultiMask = In_MultiMask3_g158259;
				Data3_g158259.Grayscale = In_Grayscale3_g158259;
				Data3_g158259.Luminosity = In_Luminosity3_g158259;
				Data3_g158259.AlphaClip = In_AlphaClip3_g158259;
				Data3_g158259.AlphaFade = In_AlphaFade3_g158259;
				Data3_g158259.Translucency = In_Translucency3_g158259;
				Data3_g158259.Transmission = In_Transmission3_g158259;
				Data3_g158259.Thickness = In_Thickness3_g158259;
				Data3_g158259.Diffusion = In_Diffusion3_g158259;
				}
				TVEVisualData Data4_g158291 = Data3_g158259;
				float Out_Dummy4_g158291 = 0;
				float3 Out_Albedo4_g158291 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158291 = float2( 0,0 );
				float3 Out_NormalWS4_g158291 = float3( 0,0,0 );
				float4 Out_Shader4_g158291 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158291 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158291 = 0;
				float Out_Grayscale4_g158291 = 0;
				float Out_Luminosity4_g158291 = 0;
				float Out_AlphaClip4_g158291 = 0;
				float Out_AlphaFade4_g158291 = 0;
				float3 Out_Translucency4_g158291 = float3( 0,0,0 );
				float Out_Transmission4_g158291 = 0;
				float Out_Thickness4_g158291 = 0;
				float Out_Diffusion4_g158291 = 0;
				{
				Out_Dummy4_g158291 = Data4_g158291.Dummy;
				Out_Albedo4_g158291 = Data4_g158291.Albedo;
				Out_NormalTS4_g158291 = Data4_g158291.NormalTS;
				Out_NormalWS4_g158291 = Data4_g158291.NormalWS;
				Out_Shader4_g158291 = Data4_g158291.Shader;
				Out_Emissive4_g158291= Data4_g158291.Emissive;
				Out_MultiMask4_g158291 = Data4_g158291.MultiMask;
				Out_Grayscale4_g158291 = Data4_g158291.Grayscale;
				Out_Luminosity4_g158291= Data4_g158291.Luminosity;
				Out_AlphaClip4_g158291 = Data4_g158291.AlphaClip;
				Out_AlphaFade4_g158291 = Data4_g158291.AlphaFade;
				Out_Translucency4_g158291 = Data4_g158291.Translucency;
				Out_Transmission4_g158291 = Data4_g158291.Transmission;
				Out_Thickness4_g158291 = Data4_g158291.Thickness;
				Out_Diffusion4_g158291 = Data4_g158291.Diffusion;
				}
				half3 Visual_Albedo199_g158290 = Out_Albedo4_g158291;
				float3 temp_cast_8 = (0.0).xxx;
				half3 Subsurface_Color264_g158290 = ( (_SubsurfaceColor).rgb * Visual_Albedo199_g158290 );
				half Visual_Transmission138_g158290 = Out_Transmission4_g158291;
				half Subsurface_Value268_g158290 = _SubsurfaceIntensityValue;
				TVEGlobalData Data15_g158294 = Data204_g156811;
				float Out_Dummy15_g158294 = 0;
				float4 Out_CoatParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158294 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158294 = Data15_g158294.Dummy;
				Out_CoatParams15_g158294 = Data15_g158294.CoatParams;
				Out_PaintParams15_g158294 = Data15_g158294.PaintParams;
				Out_GlowParams15_g158294 = Data15_g158294.GlowParams;
				Out_AtmoParams15_g158294= Data15_g158294.AtmoParams;
				Out_FadeParams15_g158294= Data15_g158294.FadeParams;
				Out_FormParams15_g158294 = Data15_g158294.FormParams;
				Out_LandParams15_g158294 = Data15_g158294.LandParams;
				Out_WindParams15_g158294 = Data15_g158294.WindParams;
				Out_PushParams15_g158294 = Data15_g158294.PushParams;
				}
				half4 Global_GlowParams373_g158290 = Out_GlowParams15_g158294;
				float lerpResult403_g158290 = lerp( 1.0 , saturate( (Global_GlowParams373_g158290).w ) , TVE_IsEnabled);
				#ifdef TVE_SUBSURFACE_ELEMENT
				float staticSwitch367_g158290 = lerpResult403_g158290;
				#else
				float staticSwitch367_g158290 = 1.0;
				#endif
				half Subsurface_GlobalMask369_g158290 = staticSwitch367_g158290;
				float temp_output_301_11_g158290 = Out_MultiMask4_g158291;
				half Visual_MultiMask292_g158290 = temp_output_301_11_g158290;
				float lerpResult293_g158290 = lerp( 1.0 , Visual_MultiMask292_g158290 , _SubsurfaceMultiValue);
				half Subsurface_MultiMask296_g158290 = lerpResult293_g158290;
				half Custom_Mask363_g158290 = 1.0;
				#ifdef TVE_SUBSURFACE
				float staticSwitch345_g158290 = ( Visual_Transmission138_g158290 * Subsurface_Value268_g158290 * Subsurface_GlobalMask369_g158290 * Subsurface_MultiMask296_g158290 * Custom_Mask363_g158290 );
				#else
				float staticSwitch345_g158290 = 0.0;
				#endif
				half Final_Transmission269_g158290 = staticSwitch345_g158290;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch348_g158290 = ( Subsurface_Color264_g158290 * Final_Transmission269_g158290 * 10.0 );
				#else
				float3 staticSwitch348_g158290 = temp_cast_8;
				#endif
				half3 Final_Translucency254_g158290 = staticSwitch348_g158290;
				TVEModelData Data16_g156810 = (TVEModelData)0;
				float In_Dummy16_g156810 = 0.0;
				float3 In_PositionOS16_g156810 = float3( 0,0,0 );
				half3 Input_PositionWS218_g156802 = positionWS;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156810 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156810 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156810 = float3( 0,0,0 );
				float3 In_PositionAddOS16_g156810 = float3( 0,0,0 );
				float3 In_PivotOS16_g156810 = float3( 0,0,0 );
				float3 vertexToFrag281_g156802 = IN.ase_texcoord11.xyz;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156810 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156810 = Model_PivotWO133_g156802;
				float3 In_NormalOS16_g156810 = float3( 0,0,0 );
				float3 ase_worldNormal = IN.ase_texcoord12.xyz;
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156810 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156810 = float3( 0,0,0 );
				float3 In_NormalRawWS16_g156810 = float3( 0,0,0 );
				float4 In_TangentOS16_g156810 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156810 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156810 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156810 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156810 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156810 = float4( 0,0,0,0 );
				{
				Data16_g156810.Dummy = In_Dummy16_g156810;
				Data16_g156810.PositionOS = In_PositionOS16_g156810;
				Data16_g156810.PositionWS = In_PositionWS16_g156810;
				Data16_g156810.PositionWO = In_PositionWO16_g156810;
				Data16_g156810.PositionRawOS = In_PositionRawOS16_g156810;
				Data16_g156810.PositionAddOS = In_PositionAddOS16_g156810;
				Data16_g156810.PivotOS = In_PivotOS16_g156810;
				Data16_g156810.PivotWS = In_PivotWS16_g156810;
				Data16_g156810.PivotWO = In_PivotWO16_g156810;
				Data16_g156810.NormalOS = In_NormalOS16_g156810;
				Data16_g156810.NormalWS = In_NormalWS16_g156810;
				Data16_g156810.NormalRawOS = In_NormalRawOS16_g156810;
				Data16_g156810.NormalRawWS = In_NormalRawWS16_g156810;
				Data16_g156810.TangentOS = In_TangentOS16_g156810;
				Data16_g156810.ViewDirWS = In_ViewDirWS16_g156810;
				Data16_g156810.VertexData = In_VertexData16_g156810;
				Data16_g156810.MotionData = In_MotionData16_g156810;
				Data16_g156810.BoundsData = In_BoundsData16_g156810;
				Data16_g156810.RotationData = In_RotationData16_g156810;
				}
				TVEModelData Data15_g158293 = Data16_g156810;
				float Out_Dummy15_g158293 = 0;
				float3 Out_PositionOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158293 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158293 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158293 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158293 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158293 = float3( 0,0,0 );
				float4 Out_VertexData15_g158293 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158293 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158293 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158293 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158293 = Data15_g158293.Dummy;
				Out_PositionOS15_g158293 = Data15_g158293.PositionOS;
				Out_PositionWS15_g158293 = Data15_g158293.PositionWS;
				Out_PositionWO15_g158293 = Data15_g158293.PositionWO;
				Out_PositionRawOS15_g158293 = Data15_g158293.PositionRawOS;
				Out_PositionAddOS15_g158293 = Data15_g158293.PositionAddOS;
				Out_PivotOS15_g158293 = Data15_g158293.PivotOS;
				Out_PivotWS15_g158293 = Data15_g158293.PivotWS;
				Out_PivotWO15_g158293 = Data15_g158293.PivotWO;
				Out_NormalOS15_g158293 = Data15_g158293.NormalOS;
				Out_NormalWS15_g158293 = Data15_g158293.NormalWS;
				Out_NormalRawOS15_g158293 = Data15_g158293.NormalRawOS;
				Out_NormalRawWS15_g158293 = Data15_g158293.NormalRawWS;
				Out_TangentOS15_g158293 = Data15_g158293.TangentOS;
				Out_ViewDirWS15_g158293 = Data15_g158293.ViewDirWS;
				Out_VertexData15_g158293 = Data15_g158293.VertexData;
				Out_MotionData15_g158293 = Data15_g158293.MotionData;
				Out_BoundsData15_g158293 = Data15_g158293.BoundsData;
				Out_RotationData15_g158293 = Data15_g158293.RotationData;
				}
				half3 Model_ViewDirWS392_g158290 = Out_ViewDirWS15_g158293;
				float dotResult324_g158290 = dot( -TVE_MainLightDirection , Model_ViewDirWS392_g158290 );
				float saferPower323_g158290 = abs( saturate( dotResult324_g158290 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch330_g158290 = 0.0;
				#else
				float staticSwitch330_g158290 = ( pow( saferPower323_g158290 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View320_g158290 = staticSwitch330_g158290;
				float3 temp_output_6_0_g158295 = ( Final_Translucency254_g158290 * Mask_Subsurface_View320_g158290 );
				#ifdef TVE_REGISTER
				float3 staticSwitch14_g158295 = ( temp_output_6_0_g158295 + ( _SubsurfaceAproxInfo * 0.0 ) );
				#else
				float3 staticSwitch14_g158295 = temp_output_6_0_g158295;
				#endif
				half3 Subsurface_Approximation333_g158290 = staticSwitch14_g158295;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch353_g158290 = ( Visual_Albedo199_g158290 + Subsurface_Approximation333_g158290 );
				#else
				float3 staticSwitch353_g158290 = Visual_Albedo199_g158290;
				#endif
				half3 Final_Albedo312_g158290 = staticSwitch353_g158290;
				float3 In_Albedo3_g158292 = Final_Albedo312_g158290;
				float2 In_NormalTS3_g158292 = Out_NormalTS4_g158291;
				float3 In_NormalWS3_g158292 = Out_NormalWS4_g158291;
				float4 In_Shader3_g158292 = Out_Shader4_g158291;
				float4 In_Emissive3_g158292 = Out_Emissive4_g158291;
				float In_Grayscale3_g158292 = Out_Grayscale4_g158291;
				float In_Luminosity3_g158292 = Out_Luminosity4_g158291;
				float In_MultiMask3_g158292 = temp_output_301_11_g158290;
				float In_AlphaClip3_g158292 = Out_AlphaClip4_g158291;
				float In_AlphaFade3_g158292 = Out_AlphaFade4_g158291;
				float3 In_Translucency3_g158292 = Final_Translucency254_g158290;
				float In_Transmission3_g158292 = Final_Transmission269_g158290;
				#ifdef TVE_SUBSURFACE
				float staticSwitch351_g158290 = 0.0;
				#else
				float staticSwitch351_g158290 = 1.0;
				#endif
				half Final_Thickness275_g158290 = staticSwitch351_g158290;
				float In_Thickness3_g158292 = Final_Thickness275_g158290;
				float Final_Diffusion340_g158290 = _SubsurfaceDiffusion;
				float In_Diffusion3_g158292 = Final_Diffusion340_g158290;
				{
				Data3_g158292.Dummy = In_Dummy3_g158292;
				Data3_g158292.Albedo = In_Albedo3_g158292;
				Data3_g158292.NormalTS = In_NormalTS3_g158292;
				Data3_g158292.NormalWS = In_NormalWS3_g158292;
				Data3_g158292.Shader = In_Shader3_g158292;
				Data3_g158292.Emissive= In_Emissive3_g158292;
				Data3_g158292.MultiMask = In_MultiMask3_g158292;
				Data3_g158292.Grayscale = In_Grayscale3_g158292;
				Data3_g158292.Luminosity = In_Luminosity3_g158292;
				Data3_g158292.AlphaClip = In_AlphaClip3_g158292;
				Data3_g158292.AlphaFade = In_AlphaFade3_g158292;
				Data3_g158292.Translucency = In_Translucency3_g158292;
				Data3_g158292.Transmission = In_Transmission3_g158292;
				Data3_g158292.Thickness = In_Thickness3_g158292;
				Data3_g158292.Diffusion = In_Diffusion3_g158292;
				}
				TVEVisualData Data4_g158307 = Data3_g158292;
				float Out_Dummy4_g158307 = 0;
				float3 Out_Albedo4_g158307 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158307 = float2( 0,0 );
				float3 Out_NormalWS4_g158307 = float3( 0,0,0 );
				float4 Out_Shader4_g158307 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158307 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158307 = 0;
				float Out_Grayscale4_g158307 = 0;
				float Out_Luminosity4_g158307 = 0;
				float Out_AlphaClip4_g158307 = 0;
				float Out_AlphaFade4_g158307 = 0;
				float3 Out_Translucency4_g158307 = float3( 0,0,0 );
				float Out_Transmission4_g158307 = 0;
				float Out_Thickness4_g158307 = 0;
				float Out_Diffusion4_g158307 = 0;
				{
				Out_Dummy4_g158307 = Data4_g158307.Dummy;
				Out_Albedo4_g158307 = Data4_g158307.Albedo;
				Out_NormalTS4_g158307 = Data4_g158307.NormalTS;
				Out_NormalWS4_g158307 = Data4_g158307.NormalWS;
				Out_Shader4_g158307 = Data4_g158307.Shader;
				Out_Emissive4_g158307= Data4_g158307.Emissive;
				Out_MultiMask4_g158307 = Data4_g158307.MultiMask;
				Out_Grayscale4_g158307 = Data4_g158307.Grayscale;
				Out_Luminosity4_g158307= Data4_g158307.Luminosity;
				Out_AlphaClip4_g158307 = Data4_g158307.AlphaClip;
				Out_AlphaFade4_g158307 = Data4_g158307.AlphaFade;
				Out_Translucency4_g158307 = Data4_g158307.Translucency;
				Out_Transmission4_g158307 = Data4_g158307.Transmission;
				Out_Thickness4_g158307 = Data4_g158307.Thickness;
				Out_Diffusion4_g158307 = Data4_g158307.Diffusion;
				}
				half3 Input_Albedo24_g158305 = Out_Albedo4_g158307;
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch22_g158305 = half4(0.2209163,0.2209163,0.2209163,0.7790837);
				#else
				float4 staticSwitch22_g158305 = half4(0.04,0.04,0.04,0.96);
				#endif
				half4 ColorSpaceDielectricSpec23_g158305 = staticSwitch22_g158305;
				float4 break24_g158304 = Out_Shader4_g158307;
				half Metallic117_g158304 = break24_g158304.x;
				half Input_Metallic25_g158305 = Metallic117_g158304;
				half OneMinusReflectivity31_g158305 = ( (ColorSpaceDielectricSpec23_g158305).w - ( (ColorSpaceDielectricSpec23_g158305).w * Input_Metallic25_g158305 ) );
				float3 lerpResult87_g158304 = lerp( half3(1,0,0) , ( Input_Albedo24_g158305 * OneMinusReflectivity31_g158305 ) , _IsInitialized);
				
				float3 lerpResult28_g158305 = lerp( (ColorSpaceDielectricSpec23_g158305).xyz , Input_Albedo24_g158305 , Input_Metallic25_g158305);
				half RenderSpec105_g158304 = _RenderSpecular;
				
				float localCustomAlphaClip19_g158312 = ( 0.0 );
				float temp_output_3_0_g158312 = Out_AlphaClip4_g158307;
				float Alpha19_g158312 = temp_output_3_0_g158312;
				float temp_output_15_0_g158312 = 0.0;
				float Treshold19_g158312 = temp_output_15_0_g158312;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_CUTOUT) || defined (TVE_DITHER)
				#if defined ( TVE_PIPELINE_HD)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#else
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#endif
				}
				

				fixed3 albedo = lerpResult87_g158304;
				fixed3 normal = Out_NormalWS4_g158307;
				half3 emission = (Out_Emissive4_g158307).xyz;
				fixed3 specular = ( lerpResult28_g158305 * RenderSpec105_g158304 );
				fixed metallic = 0;
				half smoothness = break24_g158304.w;
				half occlusion = 1;

				float3 Transmission = 1;
				float3 Translucency = 1;

				fixed alpha = Alpha19_g158312;
				fixed alphaClipThreshold = 0;
				float4 bakedGI = float4( 0, 0, 0, 0 );

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif

				IN.pos.zw = positionCS.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(positionWS));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(positionWS));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				UNITY_LIGHT_ATTENUATION(atten, IN, positionWS)
				fixed4 c = 0;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;

				UnityGIInput giInput;
				UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
				giInput.light = gi.light;
				giInput.worldPos = positionWS;
				giInput.worldViewDir = worldViewDir;
				giInput.atten = atten;
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
					giInput.lightmapUV = IN.lmap;
				#else
					giInput.lightmapUV = 0.0;
				#endif
				#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
					giInput.ambient = IN.sh;
				#else
					giInput.ambient.rgb = 0.0;
				#endif
				giInput.probeHDR[0] = unity_SpecCube0_HDR;
				giInput.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#if UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(_SPECULAR_SETUP)
					LightingStandardSpecular_GI(o, giInput, gi);
					#if defined(CUSTOM_BAKED_GI)
						gi.indirect.diffuse = DecodeLightmapRGBM( bakedGI, 1 ) * EMISSIVE_RGBM_SCALE;
					#endif
					c += LightingStandardSpecular (o, worldViewDir, gi);
				#else
					LightingStandard_GI( o, giInput, gi );
					#if defined(CUSTOM_BAKED_GI)
						gi.indirect.diffuse = DecodeLightmapRGBM( bakedGI, 1) * EMISSIVE_RGBM_SCALE;
					#endif
					c += LightingStandard( o, worldViewDir, gi );
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 transmission = max(0, -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow(saturate(dot(worldViewDir, -lightDir)), scattering);
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				c.rgb += o.Emission;
				UNITY_APPLY_FOG(IN.fogCoord, c);
				return c;
			}

			ENDCG
		}

		Pass
		{
			
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#pragma shader_feature_local_fragment _ _SPECULARHIGHLIGHTS_OFF
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_fwdadd_fullshadows

			#pragma multi_compile_fog
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma multi_compile_instancing
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardUtils.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local_fragment TVE_PIPELINE_STANDARD TVE_PIPELINE_UNIVERSAL TVE_PIPELINE_HD
			#pragma shader_feature_local_vertex TVE_MOTION_BASE_BENDING
			#pragma shader_feature_local_vertex TVE_MOTION_WIND_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE
			#pragma shader_feature_local_fragment TVE_OVERLAY
			#pragma shader_feature_local_fragment TVE_OVERLAY_ELEMENT
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#pragma shader_feature_local_fragment TVE_EMISSIVE_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE_ELEMENT
			  
			struct TVEVisualData
			{  
				half Dummy;  
				half3 Albedo;
				half2 NormalTS;
				half3 NormalWS; 
				half4 Shader;
				half4 Emissive;
				half AlphaClip;
				half AlphaFade;
				half MultiMask;
				half Grayscale;
				half Luminosity;
				half3 Translucency;
				half Transmission;
				half Thickness;
				float Diffusion;
			};  
			    
			struct TVEModelData
			{    
				half Dummy;    
				half3 PositionOS;
				half3 PositionWS;
				half3 PositionWO;
				half3 PositionRawOS;
				half3 PositionAddOS;
				half3 PivotOS;
				half3 PivotWS;
				half3 PivotWO;
				half3 NormalOS;
				half3 NormalWS;
				half3 NormalRawOS;
				half3 NormalRawWS;
				half4 TangentOS;
				half3 ViewDirWS;
				half4 VertexData;
				half4 MotionData;
				half4 BoundsData;
				half4 RotationData;
			};    
			      
			struct TVEGlobalData
			{      
				half Dummy;      
				half4 CoatParams;
				half4 PaintParams;
				half4 GlowParams;
				half4 AtmoParams;
				half4 FadeParams;
				half4 FormParams;
				half4 LandParams;
				half4 WindParams;
				half4 PushParams;
			};      
			        
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//#pragma editor_sync_compilation
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			


			uniform half _ImpostorAlphaClipValue;
			uniform half4 _OverlayColoringOn;
			uniform half4 _OverlayColoringOff;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayGlitterTex);
			SamplerState sampler_OverlayGlitterTex;
			uniform half _OverlayGlitterTillingValue;
			uniform half _OverlayGlitterIntensityValue;
			uniform half _OverlayLiteInfo;
			uniform half4 _OverlayGlitterColor;
			uniform half _SubsurfaceScatteringValue;
			uniform half _SubsurfaceAngleValue;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform half _SubsurfaceSpace;
			uniform half _IsVersion;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _CategoryRender;
			uniform half _EndRender;
			uniform half _NoiseCategory;
			uniform half _NoiseEnd;
			UNITY_DECLARE_TEX3D_NOSAMPLER(_NoiseTex3D);
			SamplerState sampler_NoiseTex3D;
			uniform half _IsInitialized;
			uniform half _IsTVEShader;
			uniform half _IsCustomShader;
			uniform half _IsShared;
			uniform half _HasDefaultTextures;
			uniform half _IsCollected;
			uniform half _IsConverted;
			uniform half _IsIdentifier;
			uniform half _RenderMotion;
			uniform half _RenderShadow;
			uniform half _IsLiteShader;
			uniform half _IsStandardShader;
			uniform half _IsImpostorShader;
			uniform half _ImpostorCategory;
			uniform half _ImpostorEnd;
			uniform half _MotionWindCategory;
			uniform half _MotionWindEnd;
			uniform half _MotionWindElementMode;
			uniform half _MotionInteractionCategory;
			uniform half _MotionInteractionEnd;
			uniform half _InteractionLiteInfo;
			uniform half4 _InteractionColoring;
			uniform half _MotionPushIntensityValue;
			uniform half _MotionPushPivotValue;
			uniform half _MotionPushMaskValue;
			uniform half _MotionPushElementMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionBaseIntensityValue;
			uniform half4 TVE_MotionParams;
			uniform half TVE_IsEnabled;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MotionNoiseTex);
			uniform half _MotionBasePivotValue;
			uniform half _MotionTillingValue;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeedValue;
			SamplerState sampler_Linear_Repeat;
			uniform half _MotionNoiseValue;
			uniform half _MotionIntensityValue;
			uniform half _global_wind_layer_value;
			uniform float TVE_WindLayers[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindBaseTex);
			uniform half4 TVE_RenderBaseCoords;
			SamplerState sampler_Linear_Clamp;
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindNearTex);
			uniform half4 TVE_RenderNearCoords;
			uniform float4 TVE_RenderNearPositionR;
			uniform half TVE_RenderNearFadeValue;
			uniform half4 TVE_WindParams;
			uniform half _DisableSRPBatcher;
			uniform half _VariationLiteInfo;
			uniform half4 _VariationColoring;
			uniform half _VariationCategory;
			uniform half _VariationEnd;
			uniform half _VariationIntensityValue;
			uniform half4 _VariationColorTwo;
			uniform half4 _VariationColorOne;
			uniform half _VariationMultiValue;
			uniform half4 _VariationNoiseRemap;
			uniform half _VariationNoisePivotsValue1;
			uniform half _VariationNoiseTillingValue;
			uniform half _TintingLiteInfo;
			uniform half4 _TintingColoring;
			uniform half _TintingCategory;
			uniform half _TintingEnd;
			uniform half _TintingSpace;
			uniform half _TintingElementMode;
			uniform half _TintingIntensityValue;
			uniform float4 _TintingColor;
			uniform half _TintingGrayValue;
			uniform half _TintingMultiValue;
			uniform half _TintingLumaValue;
			uniform half4 _TintingLumaRemap;
			uniform half _DrynessLiteInfo;
			uniform half4 _DrynessColoring;
			uniform half _DrynessCategory;
			uniform half _DrynessEnd;
			uniform half _DrynessSpace;
			uniform half _DrynessElementMode;
			uniform half _DrynessIntensityValue;
			uniform float4 _DrynessColor;
			uniform half _DrynessGrayValue;
			uniform half _DrynessShiftValue;
			uniform half _DrynessSmoothnessValue;
			uniform half _DrynessSubsurfaceValue;
			uniform half _DrynessMultiValue;
			uniform half _DrynessLumaValue;
			uniform half4 _DrynessLumaRemap;
			uniform half _WetnessLiteInfo;
			uniform half4 _WetnessColoring;
			uniform half _WetnessCategory;
			uniform half _WetnessEnd;
			uniform half _WetnessElementMode;
			uniform half _WetnessIntensityValue;
			uniform half _WetnessContrastValue;
			uniform half _WetnessSmoothnessValue;
			uniform half _CutoutLiteInfo;
			uniform half4 _CutoutColoring;
			uniform half _CutoutCategory;
			uniform half _CutoutEnd;
			uniform half _CutoutSpace;
			uniform half _CutoutElementMode;
			uniform half _CutoutIntensityValue;
			uniform half _CutoutMultiValue;
			uniform half _CutoutAlphaValue;
			uniform half _CutoutNoiseValue;
			uniform half _CutoutNoiseTillingValue;
			uniform half _DitherLiteInfo;
			uniform half4 _DitherColoring;
			uniform half _DitherCategory;
			uniform half _DitherEnd;
			uniform half _DitherConstantValue;
			uniform half _DitherDistanceValue;
			uniform half _DitherDistanceMaxValue;
			uniform half _DitherDistanceMinValue;
			uniform half _DitherMultiValue;
			uniform half _DitherNoiseTillingValue;
			uniform half _SizeFadeLiteInfo;
			uniform half4 _SizeFadeColoring;
			uniform half _SizeFadeCategory;
			uniform half _SizeFadeEnd;
			uniform half _SizeFadeElementMode;
			uniform half _SizeFadeIntensityValue;
			uniform half _SizeFadeScaleMode;
			uniform half _SizeFadeScaleValue;
			uniform half _SizeFadeDistMinValue;
			uniform half _SizeFadeDistMaxValue;
			uniform half _SubsurfaceCategory;
			uniform half _SubsurfaceEnd;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceElementMode;
			uniform half _EmissiveCategory;
			uniform half _EmissiveEnd;
			uniform half _EmissivePowerMode;
			uniform half _EmissivePowerValue;
			uniform half _EmissiveElementMode;
			uniform half _OverlayCategory;
			uniform half _OverlayEnd;
			uniform half _OverlaySpace;
			uniform half _OverlayElementMode;
			uniform half _OverlayBakeInfo;
			uniform float4 _OverlayGlitterTex_ST;
			uniform half _OverlayGlitterDistValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksA);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksB);
			SamplerState sampler_MasksA;
			SamplerState sampler_MasksB;
			uniform half4 _ImpostorColorTwo;
			uniform half4 _ImpostorColor;
			uniform half _ImpostorColorMode;
			uniform half _ImpostorMetallicValue;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _OverlayColor;
			uniform half _OverlayIntensityValue;
			uniform half4 _OverlayProjRemap;
			uniform half _OverlayProjValue;
			uniform half4 _OverlayLumaRemap;
			uniform half _OverlayLumaValue;
			uniform half _GlobalLiteInfo;
			uniform half _GlobalCategory;
			uniform half _GlobalEnd;
			uniform half4 TVE_CoatParams;
			uniform half4 TVE_PaintParams;
			uniform half4 TVE_GlowParams;
			uniform half4 TVE_AtmoParams;
			uniform half4 TVE_FormParams;
			uniform half4 TVE_PushParams;
			uniform half4 _OverlayBlendRemap1;
			uniform half _OverlayNormalValue;
			uniform half _OverlaySmoothnessValue;
			uniform half _OverlaySubsurfaceValue;
			uniform half _EmissiveIntensityValue;
			uniform half4 _EmissiveColor;
			uniform float _emissive_power_value;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceIntensityValue;
			uniform half _SubsurfaceMultiValue;
			uniform half3 TVE_MainLightDirection;
			uniform half _SubsurfaceAproxInfo;
			uniform half _RenderSpecular;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normalOS, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normalOS ); 
				float p0l0DotN = dot( -rayPosition, normalOS );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normalOS ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normalOS );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normalOS );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 positionOS, inout float3 normalOS, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldCameraPos;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				#else
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				worldCameraPos = ai_ObjectToWorld._m03_m13_m23 + UNITY_MATRIX_I_V._m02_m12_m22 * 5000;
				}
				else
				{
				worldCameraPos = _WorldSpaceCameraPos;
				}
				#endif
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = positionOS.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				objectCameraDirection = trunc( objectCameraDirection * 65536.0 ) / 65536.0;
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				positionOS.xyz = billboard + _AI_Offset.xyz;
				normalOS.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( positionOS.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 positionCS, out float3 positionWS, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				positionWS = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				positionCS = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				positionCS = UnityApplyLinearShadowBias( positionCS );
				#endif
				positionCS.xyz /= positionCS.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				positionCS = positionCS * 0.5 + 0.5;
			}
			


			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif

			struct appdata
			{
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f_surf
			{
				UNITY_POSITION(pos);
				#if UNITY_VERSION >= 201810
					UNITY_LIGHTING_COORDS(1,2)
				#else
					UNITY_SHADOW_COORDS(1)
				#endif
				UNITY_FOG_COORDS(3)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame122_g156801 : TEXCOORD5;
				float4 UVsFrame222_g156801 : TEXCOORD6;
				float4 UVsFrame322_g156801 : TEXCOORD7;
				float4 octaframe22_g156801 : TEXCOORD8;
				float4 viewPos22_g156801 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
			};

			v2f_surf vert_surf ( appdata v  )
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				TVEModelData Data16_g158299 = (TVEModelData)0;
				float In_Dummy16_g158299 = 0.0;
				TVEModelData Data16_g158265 = (TVEModelData)0;
				half4 Dummy181_g158262 = ( ( _MotionWindCategory + _MotionWindEnd ) + _MotionWindElementMode + ( _MotionInteractionCategory + _MotionInteractionEnd ) + ( _InteractionLiteInfo + _InteractionColoring + _MotionPushIntensityValue + _MotionPushPivotValue + _MotionPushMaskValue + _MotionPushElementMode ) );
				float In_Dummy16_g158265 = Dummy181_g158262.r;
				TVEModelData Data16_g156809 = (TVEModelData)0;
				float In_Dummy16_g156809 = 0.0;
				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame122_g156801, o.UVsFrame222_g156801, o.UVsFrame322_g156801, o.octaframe22_g156801, o.viewPos22_g156801 );
				float3 worldPosOut22_g156801 = mul( UNITY_MATRIX_I_V, float4( o.viewPos22_g156801.xyz, 1.0 ) ).xyz;
				half3 Input_PositionWS218_g156802 = worldPosOut22_g156801;
				float3 worldToObj278_g156802 = mul( unity_WorldToObject, float4( Input_PositionWS218_g156802, 1 ) ).xyz;
				half3 Model_PositionOS131_g156802 = worldToObj278_g156802;
				float3 In_PositionOS16_g156809 = Model_PositionOS131_g156802;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156809 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156809 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156809 = Model_PositionOS131_g156802;
				float3 In_PositionAddOS16_g156809 = float3( 0,0,0 );
				float3 In_PivotOS16_g156809 = float3( 0,0,0 );
				float4x4 break19_g156804 = unity_ObjectToWorld;
				float3 appendResult20_g156804 = (float3(break19_g156804[ 0 ][ 3 ] , break19_g156804[ 1 ][ 3 ] , break19_g156804[ 2 ][ 3 ]));
				half3 ObjectData20_g156806 = appendResult20_g156804;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g156806 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g156806 = WorldData19_g156806;
				#else
				float3 staticSwitch14_g156806 = ObjectData20_g156806;
				#endif
				float3 temp_output_124_0_g156804 = staticSwitch14_g156806;
				float3 vertexToFrag281_g156802 = temp_output_124_0_g156804;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156809 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156809 = Model_PivotWO133_g156802;
				half3 Model_NormalOS134_g156802 = v.normal;
				float3 In_NormalOS16_g156809 = Model_NormalOS134_g156802;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156809 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156809 = Model_NormalOS134_g156802;
				float3 In_NormalRawWS16_g156809 = Model_Normal_WS95_g156802;
				float4 In_TangentOS16_g156809 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156809 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156809 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156809 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156809 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156809 = float4( 0,0,0,0 );
				{
				Data16_g156809.Dummy = In_Dummy16_g156809;
				Data16_g156809.PositionOS = In_PositionOS16_g156809;
				Data16_g156809.PositionWS = In_PositionWS16_g156809;
				Data16_g156809.PositionWO = In_PositionWO16_g156809;
				Data16_g156809.PositionRawOS = In_PositionRawOS16_g156809;
				Data16_g156809.PositionAddOS = In_PositionAddOS16_g156809;
				Data16_g156809.PivotOS = In_PivotOS16_g156809;
				Data16_g156809.PivotWS = In_PivotWS16_g156809;
				Data16_g156809.PivotWO = In_PivotWO16_g156809;
				Data16_g156809.NormalOS = In_NormalOS16_g156809;
				Data16_g156809.NormalWS = In_NormalWS16_g156809;
				Data16_g156809.NormalRawOS = In_NormalRawOS16_g156809;
				Data16_g156809.NormalRawWS = In_NormalRawWS16_g156809;
				Data16_g156809.TangentOS = In_TangentOS16_g156809;
				Data16_g156809.ViewDirWS = In_ViewDirWS16_g156809;
				Data16_g156809.VertexData = In_VertexData16_g156809;
				Data16_g156809.MotionData = In_MotionData16_g156809;
				Data16_g156809.BoundsData = In_BoundsData16_g156809;
				Data16_g156809.RotationData = In_RotationData16_g156809;
				}
				TVEModelData Data15_g158264 = Data16_g156809;
				float Out_Dummy15_g158264 = 0;
				float3 Out_PositionOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158264 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158264 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158264 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158264 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158264 = float3( 0,0,0 );
				float4 Out_VertexData15_g158264 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158264 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158264 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158264 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158264 = Data15_g158264.Dummy;
				Out_PositionOS15_g158264 = Data15_g158264.PositionOS;
				Out_PositionWS15_g158264 = Data15_g158264.PositionWS;
				Out_PositionWO15_g158264 = Data15_g158264.PositionWO;
				Out_PositionRawOS15_g158264 = Data15_g158264.PositionRawOS;
				Out_PositionAddOS15_g158264 = Data15_g158264.PositionAddOS;
				Out_PivotOS15_g158264 = Data15_g158264.PivotOS;
				Out_PivotWS15_g158264 = Data15_g158264.PivotWS;
				Out_PivotWO15_g158264 = Data15_g158264.PivotWO;
				Out_NormalOS15_g158264 = Data15_g158264.NormalOS;
				Out_NormalWS15_g158264 = Data15_g158264.NormalWS;
				Out_NormalRawOS15_g158264 = Data15_g158264.NormalRawOS;
				Out_NormalRawWS15_g158264 = Data15_g158264.NormalRawWS;
				Out_TangentOS15_g158264 = Data15_g158264.TangentOS;
				Out_ViewDirWS15_g158264 = Data15_g158264.ViewDirWS;
				Out_VertexData15_g158264 = Data15_g158264.VertexData;
				Out_MotionData15_g158264 = Data15_g158264.MotionData;
				Out_BoundsData15_g158264 = Data15_g158264.BoundsData;
				Out_RotationData15_g158264 = Data15_g158264.RotationData;
				}
				float3 temp_output_1567_0_g158262 = Out_PositionOS15_g158264;
				float3 In_PositionOS16_g158265 = temp_output_1567_0_g158262;
				float3 In_PositionWS16_g158265 = Out_PositionWS15_g158264;
				float3 temp_output_1567_17_g158262 = Out_PositionWO15_g158264;
				float3 In_PositionWO16_g158265 = temp_output_1567_17_g158262;
				float3 In_PositionRawOS16_g158265 = Out_PositionRawOS15_g158264;
				float3 In_PositionAddOS16_g158265 = Out_PositionAddOS15_g158264;
				float3 In_PivotOS16_g158265 = Out_PivotOS15_g158264;
				float3 In_PivotWS16_g158265 = Out_PivotWS15_g158264;
				float3 temp_output_1567_19_g158262 = Out_PivotWO15_g158264;
				float3 In_PivotWO16_g158265 = temp_output_1567_19_g158262;
				float3 In_NormalOS16_g158265 = Out_NormalOS15_g158264;
				float3 In_NormalWS16_g158265 = Out_NormalWS15_g158264;
				float3 In_NormalRawOS16_g158265 = Out_NormalRawOS15_g158264;
				float3 In_NormalRawWS16_g158265 = Out_NormalRawWS15_g158264;
				float4 In_TangentOS16_g158265 = Out_TangentOS15_g158264;
				float3 In_ViewDirWS16_g158265 = Out_ViewDirWS15_g158264;
				float4 In_VertexData16_g158265 = Out_VertexData15_g158264;
				float4 In_MotionData16_g158265 = Out_MotionData15_g158264;
				float4 In_BoundsData16_g158265 = Out_BoundsData15_g158264;
				float2 temp_cast_1 = (0.0).xx;
				half3 Model_PositionOS147_g158262 = temp_output_1567_0_g158262;
				half Base_Mask217_g158262 = saturate( ( Model_PositionOS147_g158262.y / _AI_Offset.y ) );
				float4 lerpResult627_g158267 = lerp( half4(0,1,1,0) , TVE_MotionParams , TVE_IsEnabled);
				half2 Global_WindDirection593_g158267 = (lerpResult627_g158267).xy;
				half3 Model_PositionWO162_g158262 = temp_output_1567_17_g158262;
				half3 Model_PivotWO402_g158262 = temp_output_1567_19_g158262;
				float3 lerpResult829_g158262 = lerp( Model_PositionWO162_g158262 , Model_PivotWO402_g158262 , _MotionBasePivotValue);
				half3 Base_Position1394_g158262 = lerpResult829_g158262;
				half3 Input_PositionWO419_g158267 = Base_Position1394_g158262;
				half Flow_Tillling1397_g158262 = _MotionTillingValue;
				half Input_MotionTilling321_g158267 = ( Flow_Tillling1397_g158262 + 0.2 );
				half2 Noise_Coord515_g158267 = ( -(Input_PositionWO419_g158267).xz * Input_MotionTilling321_g158267 * 0.005 );
				float2 temp_output_3_0_g158280 = Noise_Coord515_g158267;
				float2 temp_output_606_0_g158267 = (Global_WindDirection593_g158267*2.0 + -1.0);
				float2 temp_output_21_0_g158280 = temp_output_606_0_g158267;
				float lerpResult128_g158268 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Flow_Speed1398_g158262 = _MotionSpeedValue;
				half Input_MotionSpeed62_g158267 = Flow_Speed1398_g158262;
				float temp_output_505_0_g158267 = ( lerpResult128_g158268 * Input_MotionSpeed62_g158267 );
				half Noise_Speed516_g158267 = ( temp_output_505_0_g158267 * 0.02 );
				float temp_output_15_0_g158280 = Noise_Speed516_g158267;
				float temp_output_23_0_g158280 = frac( temp_output_15_0_g158280 );
				float4 lerpResult39_g158280 = lerp( SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * temp_output_23_0_g158280 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * frac( ( temp_output_15_0_g158280 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_23_0_g158280 - 0.5 ) ) / 0.5 ));
				half4 Noise_Params535_g158267 = lerpResult39_g158280;
				half Flow_Noise1600_g158262 = _MotionNoiseValue;
				half Input_MotionNoise552_g158267 = Flow_Noise1600_g158262;
				float2 lerpResult560_g158267 = lerp( Global_WindDirection593_g158267 , (Noise_Params535_g158267).rg , Input_MotionNoise552_g158267);
				half Global_WindIntensity576_g158267 = (lerpResult627_g158267).z;
				half Flow_Value1602_g158262 = _MotionIntensityValue;
				half Input_MotionValue629_g158267 = Flow_Value1602_g158262;
				float2 lerpResult574_g158267 = lerp( float2( 0.5,0.5 ) , lerpResult560_g158267 , ( Global_WindIntensity576_g158267 * Input_MotionValue629_g158267 ));
				float3 appendResult566_g158267 = (float3(lerpResult574_g158267 , (Noise_Params535_g158267).b));
				float temp_output_136_0_g158269 = _global_wind_layer_value;
				float temp_output_19_0_g158271 = TVE_WindLayers[(int)temp_output_136_0_g158269];
				half3 Input_Position180_g158272 = Input_PositionWO419_g158267;
				float2 temp_output_75_0_g158272 = ( (TVE_RenderBaseCoords).zw + ( (TVE_RenderBaseCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_82_0_g158272 = temp_output_136_0_g158269;
				float2 temp_output_119_0_g158272 = ( (TVE_RenderNearCoords).zw + ( (TVE_RenderNearCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_7_0_g158277 = 1.0;
				float temp_output_10_0_g158277 = ( TVE_RenderNearFadeValue - temp_output_7_0_g158277 );
				float4 lerpResult131_g158272 = lerp( SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindBaseTex, sampler_Linear_Clamp, float3(temp_output_75_0_g158272,temp_output_82_0_g158272), 0.0 ) , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindNearTex, sampler_Linear_Repeat, float3(temp_output_119_0_g158272,temp_output_82_0_g158272), 0.0 ) , saturate( ( ( saturate( ( distance( Input_Position180_g158272 , (TVE_RenderNearPositionR).xyz ) / (TVE_RenderNearPositionR).w ) ) - temp_output_7_0_g158277 ) / temp_output_10_0_g158277 ) ));
				float4 temp_output_17_0_g158271 = lerpResult131_g158272;
				float4 temp_output_3_0_g158271 = TVE_WindParams;
				float4 ifLocalVar18_g158271 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g158271 >= 0.5 )
				ifLocalVar18_g158271 = temp_output_17_0_g158271;
				else
				ifLocalVar18_g158271 = temp_output_3_0_g158271;
				float4 lerpResult22_g158271 = lerp( temp_output_3_0_g158271 , temp_output_17_0_g158271 , temp_output_19_0_g158271);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g158271 = lerpResult22_g158271;
				#else
				float4 staticSwitch24_g158271 = ifLocalVar18_g158271;
				#endif
				float4 temp_output_610_0_g158267 = staticSwitch24_g158271;
				float3 lerpResult623_g158267 = lerp( appendResult566_g158267 , (temp_output_610_0_g158267).rgb , (temp_output_610_0_g158267).a);
				#ifdef TVE_MOTION_WIND_ELEMENT
				float3 staticSwitch612_g158267 = lerpResult623_g158267;
				#else
				float3 staticSwitch612_g158267 = appendResult566_g158267;
				#endif
				float3 temp_output_1563_567_g158262 = staticSwitch612_g158267;
				half Base_Noise1590_g158262 = abs( (temp_output_1563_567_g158262).z );
				float2 break83_g158263 = ((temp_output_1563_567_g158262).xy*2.0 + -1.0);
				float3 appendResult79_g158263 = (float3(break83_g158263.x , 0.0 , break83_g158263.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Base_Direction893_g158262 = (( mul( unity_WorldToObject, float4( appendResult79_g158263 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float lerpResult1587_g158262 = lerp( (Base_Noise1590_g158262*2.0 + -1.0) , Base_Noise1590_g158262 , length( Base_Direction893_g158262 ));
				#ifdef TVE_MOTION_BASE_BENDING
				float2 staticSwitch1573_g158262 = ( ( _MotionBaseIntensityValue * Base_Mask217_g158262 * lerpResult1587_g158262 ) * Base_Direction893_g158262 );
				#else
				float2 staticSwitch1573_g158262 = temp_cast_1;
				#endif
				half2 Base_Motion1440_g158262 = staticSwitch1573_g158262;
				half2 Final_RoationData1570_g158262 = Base_Motion1440_g158262;
				float4 In_RotationData16_g158265 = float4( Final_RoationData1570_g158262, 0.0 , 0.0 );
				{
				Data16_g158265.Dummy = In_Dummy16_g158265;
				Data16_g158265.PositionOS = In_PositionOS16_g158265;
				Data16_g158265.PositionWS = In_PositionWS16_g158265;
				Data16_g158265.PositionWO = In_PositionWO16_g158265;
				Data16_g158265.PositionRawOS = In_PositionRawOS16_g158265;
				Data16_g158265.PositionAddOS = In_PositionAddOS16_g158265;
				Data16_g158265.PivotOS = In_PivotOS16_g158265;
				Data16_g158265.PivotWS = In_PivotWS16_g158265;
				Data16_g158265.PivotWO = In_PivotWO16_g158265;
				Data16_g158265.NormalOS = In_NormalOS16_g158265;
				Data16_g158265.NormalWS = In_NormalWS16_g158265;
				Data16_g158265.NormalRawOS = In_NormalRawOS16_g158265;
				Data16_g158265.NormalRawWS = In_NormalRawWS16_g158265;
				Data16_g158265.TangentOS = In_TangentOS16_g158265;
				Data16_g158265.ViewDirWS = In_ViewDirWS16_g158265;
				Data16_g158265.VertexData = In_VertexData16_g158265;
				Data16_g158265.MotionData = In_MotionData16_g158265;
				Data16_g158265.BoundsData = In_BoundsData16_g158265;
				Data16_g158265.RotationData = In_RotationData16_g158265;
				}
				TVEModelData Data15_g158298 = Data16_g158265;
				float Out_Dummy15_g158298 = 0;
				float3 Out_PositionOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158298 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158298 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158298 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158298 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158298 = float3( 0,0,0 );
				float4 Out_VertexData15_g158298 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158298 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158298 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158298 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158298 = Data15_g158298.Dummy;
				Out_PositionOS15_g158298 = Data15_g158298.PositionOS;
				Out_PositionWS15_g158298 = Data15_g158298.PositionWS;
				Out_PositionWO15_g158298 = Data15_g158298.PositionWO;
				Out_PositionRawOS15_g158298 = Data15_g158298.PositionRawOS;
				Out_PositionAddOS15_g158298 = Data15_g158298.PositionAddOS;
				Out_PivotOS15_g158298 = Data15_g158298.PivotOS;
				Out_PivotWS15_g158298 = Data15_g158298.PivotWS;
				Out_PivotWO15_g158298 = Data15_g158298.PivotWO;
				Out_NormalOS15_g158298 = Data15_g158298.NormalOS;
				Out_NormalWS15_g158298 = Data15_g158298.NormalWS;
				Out_NormalRawOS15_g158298 = Data15_g158298.NormalRawOS;
				Out_NormalRawWS15_g158298 = Data15_g158298.NormalRawWS;
				Out_TangentOS15_g158298 = Data15_g158298.TangentOS;
				Out_ViewDirWS15_g158298 = Data15_g158298.ViewDirWS;
				Out_VertexData15_g158298 = Data15_g158298.VertexData;
				Out_MotionData15_g158298 = Data15_g158298.MotionData;
				Out_BoundsData15_g158298 = Data15_g158298.BoundsData;
				Out_RotationData15_g158298 = Data15_g158298.RotationData;
				}
				half3 Model_PositionOS147_g158297 = Out_PositionOS15_g158298;
				half3 Input_False58_g158303 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158300 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158301 = VertexPos40_g158300;
				float3 appendResult74_g158301 = (float3(VertexPos40_g158301.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g158301 = appendResult74_g158301;
				float3 break84_g158301 = VertexPos40_g158301;
				float3 appendResult81_g158301 = (float3(0.0 , break84_g158301.y , break84_g158301.z));
				half3 VertexPosOtherAxis82_g158301 = appendResult81_g158301;
				float4 temp_output_1567_33_g158297 = Out_RotationData15_g158298;
				half4 Model_VertexBend1569_g158297 = temp_output_1567_33_g158297;
				half2 Angle44_g158300 = (Model_VertexBend1569_g158297).xy;
				half Angle44_g158301 = (Angle44_g158300).y;
				half3 VertexPos40_g158302 = ( VertexPosRotationAxis50_g158301 + ( VertexPosOtherAxis82_g158301 * cos( Angle44_g158301 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g158301 ) * sin( Angle44_g158301 ) ) );
				float3 appendResult74_g158302 = (float3(0.0 , 0.0 , VertexPos40_g158302.z));
				half3 VertexPosRotationAxis50_g158302 = appendResult74_g158302;
				float3 break84_g158302 = VertexPos40_g158302;
				float3 appendResult81_g158302 = (float3(break84_g158302.x , break84_g158302.y , 0.0));
				half3 VertexPosOtherAxis82_g158302 = appendResult81_g158302;
				half Angle44_g158302 = -(Angle44_g158300).x;
				half3 Input_True57_g158303 = ( VertexPosRotationAxis50_g158302 + ( VertexPosOtherAxis82_g158302 * cos( Angle44_g158302 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g158302 ) * sin( Angle44_g158302 ) ) );
				#ifdef TVE_MOTION_BASE_BENDING
				float3 staticSwitch65_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch65_g158303 = Input_False58_g158303;
				#endif
				#ifdef TVE_MOTION_PUSH_BENDING
				float3 staticSwitch67_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch67_g158303 = staticSwitch65_g158303;
				#endif
				#ifdef TVE_BLANKET_BENDING
				float3 staticSwitch69_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch69_g158303 = staticSwitch67_g158303;
				#endif
				float3 temp_output_1567_31_g158297 = Out_PositionAddOS15_g158298;
				half3 Model_PositionADD1568_g158297 = temp_output_1567_31_g158297;
				half3 Final_PositionOS178_g158297 = ( staticSwitch69_g158303 + Model_PositionADD1568_g158297 );
				float3 In_PositionOS16_g158299 = Final_PositionOS178_g158297;
				float3 In_PositionWS16_g158299 = Out_PositionWS15_g158298;
				float3 In_PositionWO16_g158299 = Out_PositionWO15_g158298;
				float3 In_PositionRawOS16_g158299 = Out_PositionRawOS15_g158298;
				float3 In_PositionAddOS16_g158299 = temp_output_1567_31_g158297;
				float3 In_PivotOS16_g158299 = Out_PivotOS15_g158298;
				float3 In_PivotWS16_g158299 = Out_PivotWS15_g158298;
				float3 In_PivotWO16_g158299 = Out_PivotWO15_g158298;
				float3 In_NormalOS16_g158299 = Out_NormalOS15_g158298;
				float3 In_NormalWS16_g158299 = Out_NormalWS15_g158298;
				float3 In_NormalRawOS16_g158299 = Out_NormalRawOS15_g158298;
				float3 In_NormalRawWS16_g158299 = Out_NormalRawWS15_g158298;
				float4 In_TangentOS16_g158299 = Out_TangentOS15_g158298;
				float3 In_ViewDirWS16_g158299 = Out_ViewDirWS15_g158298;
				float4 In_VertexData16_g158299 = Out_VertexData15_g158298;
				float4 In_MotionData16_g158299 = Out_MotionData15_g158298;
				float4 In_BoundsData16_g158299 = Out_BoundsData15_g158298;
				float4 In_RotationData16_g158299 = temp_output_1567_33_g158297;
				{
				Data16_g158299.Dummy = In_Dummy16_g158299;
				Data16_g158299.PositionOS = In_PositionOS16_g158299;
				Data16_g158299.PositionWS = In_PositionWS16_g158299;
				Data16_g158299.PositionWO = In_PositionWO16_g158299;
				Data16_g158299.PositionRawOS = In_PositionRawOS16_g158299;
				Data16_g158299.PositionAddOS = In_PositionAddOS16_g158299;
				Data16_g158299.PivotOS = In_PivotOS16_g158299;
				Data16_g158299.PivotWS = In_PivotWS16_g158299;
				Data16_g158299.PivotWO = In_PivotWO16_g158299;
				Data16_g158299.NormalOS = In_NormalOS16_g158299;
				Data16_g158299.NormalWS = In_NormalWS16_g158299;
				Data16_g158299.NormalRawOS = In_NormalRawOS16_g158299;
				Data16_g158299.NormalRawWS = In_NormalRawWS16_g158299;
				Data16_g158299.TangentOS = In_TangentOS16_g158299;
				Data16_g158299.ViewDirWS = In_ViewDirWS16_g158299;
				Data16_g158299.VertexData = In_VertexData16_g158299;
				Data16_g158299.MotionData = In_MotionData16_g158299;
				Data16_g158299.BoundsData = In_BoundsData16_g158299;
				Data16_g158299.RotationData = In_RotationData16_g158299;
				}
				TVEModelData Data15_g158311 = Data16_g158299;
				float Out_Dummy15_g158311 = 0;
				float3 Out_PositionOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158311 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158311 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158311 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158311 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158311 = float3( 0,0,0 );
				float4 Out_VertexData15_g158311 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158311 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158311 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158311 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158311 = Data15_g158311.Dummy;
				Out_PositionOS15_g158311 = Data15_g158311.PositionOS;
				Out_PositionWS15_g158311 = Data15_g158311.PositionWS;
				Out_PositionWO15_g158311 = Data15_g158311.PositionWO;
				Out_PositionRawOS15_g158311 = Data15_g158311.PositionRawOS;
				Out_PositionAddOS15_g158311 = Data15_g158311.PositionAddOS;
				Out_PivotOS15_g158311 = Data15_g158311.PivotOS;
				Out_PivotWS15_g158311 = Data15_g158311.PivotWS;
				Out_PivotWO15_g158311 = Data15_g158311.PivotWO;
				Out_NormalOS15_g158311 = Data15_g158311.NormalOS;
				Out_NormalWS15_g158311 = Data15_g158311.NormalWS;
				Out_NormalRawOS15_g158311 = Data15_g158311.NormalRawOS;
				Out_NormalRawWS15_g158311 = Data15_g158311.NormalRawWS;
				Out_TangentOS15_g158311 = Data15_g158311.TangentOS;
				Out_ViewDirWS15_g158311 = Data15_g158311.ViewDirWS;
				Out_VertexData15_g158311 = Data15_g158311.VertexData;
				Out_MotionData15_g158311 = Data15_g158311.MotionData;
				Out_BoundsData15_g158311 = Data15_g158311.BoundsData;
				Out_RotationData15_g158311 = Data15_g158311.RotationData;
				}
				float3 temp_output_31_0_g158304 = Out_PositionOS15_g158311;
				float3 temp_output_6_0_g158318 = ( ( temp_output_31_0_g158304 - Out_PositionRawOS15_g158311 ) + _DisableSRPBatcher );
				half4 Dummy_Data433 = ( ( ( _VariationLiteInfo + _VariationColoring ) + ( _VariationCategory + _VariationEnd ) + ( _VariationIntensityValue + _VariationColorTwo + _VariationColorOne ) + ( _VariationMultiValue + _VariationNoiseRemap + _VariationNoisePivotsValue1 + _VariationNoiseTillingValue ) ) + ( ( _TintingLiteInfo + _TintingColoring ) + ( _TintingCategory + _TintingEnd + _TintingSpace + 0.0 + _TintingElementMode ) + ( _TintingIntensityValue + _TintingColor + _TintingGrayValue ) + ( _TintingMultiValue + _TintingLumaValue + _TintingLumaRemap ) + 0.0 + 0.0 ) + ( ( _DrynessLiteInfo + _DrynessColoring ) + ( _DrynessCategory + _DrynessEnd + _DrynessSpace + _DrynessElementMode + 0.0 ) + ( _DrynessIntensityValue + _DrynessColor + _DrynessGrayValue + _DrynessShiftValue + _DrynessSmoothnessValue + _DrynessSubsurfaceValue ) + ( _DrynessMultiValue + _DrynessLumaValue + _DrynessLumaRemap ) + 0.0 + 0.0 ) + ( ( _WetnessLiteInfo + _WetnessColoring ) + ( _WetnessCategory + _WetnessEnd + _WetnessElementMode + 0.0 ) + ( _WetnessIntensityValue + _WetnessContrastValue + _WetnessSmoothnessValue ) + float4( 0,0,0,0 ) + float4( 0,0,0,0 ) ) + ( ( _CutoutLiteInfo + _CutoutColoring ) + ( _CutoutCategory + _CutoutEnd + _CutoutSpace + _CutoutElementMode + 0.0 ) + ( _CutoutIntensityValue + 0.0 ) + ( _CutoutMultiValue + _CutoutAlphaValue + _CutoutNoiseValue + _CutoutNoiseTillingValue ) + 0.0 ) + ( ( _DitherLiteInfo + _DitherColoring ) + ( _DitherCategory + _DitherEnd ) + ( _DitherConstantValue + 0.0 + 0.0 + ( _DitherDistanceValue + _DitherDistanceMaxValue + _DitherDistanceMinValue ) + 0.0 ) + ( _DitherMultiValue + _DitherNoiseTillingValue ) ) + ( ( _SizeFadeLiteInfo + _SizeFadeColoring ) + ( _SizeFadeCategory + _SizeFadeEnd + _SizeFadeElementMode ) + ( _SizeFadeIntensityValue + _SizeFadeScaleMode + _SizeFadeScaleValue + _SizeFadeDistMinValue + _SizeFadeDistMaxValue ) ) );
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g158318 = ( float4( temp_output_6_0_g158318 , 0.0 ) + ( Dummy_Data433 * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g158318 = float4( temp_output_6_0_g158318 , 0.0 );
				#endif
				
				o.ase_texcoord11.xyz = vertexToFrag281_g156802;
				o.ase_texcoord12.xyz = ase_worldNormal;
				
				o.ase_texcoord10.xy = v.texcoord.xyzw.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;

				v.vertex.xyz += staticSwitch14_g158318.rgb;
				o.pos = UnityObjectToClipPos(v.vertex);

				#if UNITY_VERSION >= 201810
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#else
					UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
				#endif
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag_surf ( v2f_surf IN, out float outDepth : SV_Depth  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif
				float4 positionCS = 0;
				float3 positionWS = 0;

				float localBreakData4_g158307 = ( 0.0 );
				float localCompData3_g158292 = ( 0.0 );
				TVEVisualData Data3_g158292 = (TVEVisualData)0;
				half Dummy145_g158290 = ( _SubsurfaceCategory + _SubsurfaceEnd + ( _SubsurfaceDirectValue + _SubsurfaceNormalValue + _SubsurfaceAmbientValue + _SubsurfaceShadowValue ) + _SubsurfaceElementMode );
				float In_Dummy3_g158292 = Dummy145_g158290;
				float localBreakData4_g158291 = ( 0.0 );
				float localCompData3_g158259 = ( 0.0 );
				TVEVisualData Data3_g158259 = (TVEVisualData)0;
				half Dummy145_g158247 = ( _EmissiveCategory + _EmissiveEnd + ( _EmissivePowerMode + _EmissivePowerValue ) + _EmissiveElementMode + 0.0 );
				float In_Dummy3_g158259 = Dummy145_g158247;
				float localBreakData4_g158258 = ( 0.0 );
				float localCompData3_g158220 = ( 0.0 );
				TVEVisualData Data3_g158220 = (TVEVisualData)0;
				float2 uv_OverlayGlitterTex = IN.ase_texcoord10.xy * _OverlayGlitterTex_ST.xy + _OverlayGlitterTex_ST.zw;
				half4 Dummy594_g158217 = ( ( _OverlayCategory + _OverlayEnd + _OverlaySpace + _OverlayElementMode + _OverlayBakeInfo ) + ( _OverlayLiteInfo + _OverlayColoringOn + _OverlayColoringOff ) + ( SAMPLE_TEXTURE2D( _OverlayGlitterTex, sampler_OverlayGlitterTex, uv_OverlayGlitterTex ) + _OverlayGlitterTillingValue + _OverlayGlitterIntensityValue + _OverlayGlitterColor + _OverlayGlitterDistValue ) );
				float In_Dummy3_g158220 = Dummy594_g158217.r;
				float localBreakData4_g158218 = ( 0.0 );
				float localCompData3_g156877 = ( 0.0 );
				TVEVisualData Data3_g156877 = (TVEVisualData)0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, positionCS, positionWS, IN.UVsFrame122_g156801, IN.UVsFrame222_g156801, IN.UVsFrame322_g156801, IN.octaframe22_g156801, IN.viewPos22_g156801, output0, output1 );
				float In_Dummy3_g156877 = output1.r;
				float4 break227_g156876 = output0;
				half Local_MultiMask249_g156876 = break227_g156876.b;
				float lerpResult289_g156876 = lerp( 1.0 , Local_MultiMask249_g156876 , _ImpostorColorMode);
				float3 lerpResult292_g156876 = lerp( (_ImpostorColorTwo).rgb , (_ImpostorColor).rgb , lerpResult289_g156876);
				half3 Local_Albedo239_g156876 = ( o.Albedo * lerpResult292_g156876 );
				float3 In_Albedo3_g156877 = Local_Albedo239_g156876;
				float2 temp_cast_4 = (0.5).xx;
				float2 In_NormalTS3_g156877 = temp_cast_4;
				float3 In_NormalWS3_g156877 = o.Normal;
				half Local_Metallic247_g156876 = break227_g156876.r;
				half Final_Metallic238_g156876 = ( Local_Metallic247_g156876 * _ImpostorMetallicValue );
				half Local_Smoothness250_g156876 = break227_g156876.a;
				half Final_Smoothness233_g156876 = ( Local_Smoothness250_g156876 * _ImpostorSmoothnessValue );
				float4 appendResult257_g156876 = (float4(Final_Metallic238_g156876 , 1.0 , 1.0 , Final_Smoothness233_g156876));
				float4 In_Shader3_g156877 = appendResult257_g156876;
				half Local_EmissiveMask248_g156876 = break227_g156876.g;
				float4 appendResult286_g156876 = (float4(Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , 1.0));
				float4 In_Emissive3_g156877 = appendResult286_g156876;
				float3 temp_output_3_0_g156878 = Local_Albedo239_g156876;
				float dotResult20_g156878 = dot( temp_output_3_0_g156878 , float3(0.2126,0.7152,0.0722) );
				half Local_Grayscale268_g156876 = dotResult20_g156878;
				float In_Grayscale3_g156877 = Local_Grayscale268_g156876;
				float clampResult267_g156876 = clamp( saturate( ( Local_Grayscale268_g156876 * 5.0 ) ) , 0.2 , 1.0 );
				half Local_Luminosity269_g156876 = clampResult267_g156876;
				float In_Luminosity3_g156877 = Local_Luminosity269_g156876;
				float In_MultiMask3_g156877 = Local_MultiMask249_g156876;
				float In_AlphaClip3_g156877 = 0.0;
				float In_AlphaFade3_g156877 = 1.0;
				float3 temp_cast_5 = (1.0).xxx;
				float3 In_Translucency3_g156877 = temp_cast_5;
				float In_Transmission3_g156877 = 1.0;
				float In_Thickness3_g156877 = 0.0;
				float In_Diffusion3_g156877 = 0.0;
				{
				Data3_g156877.Dummy = In_Dummy3_g156877;
				Data3_g156877.Albedo = In_Albedo3_g156877;
				Data3_g156877.NormalTS = In_NormalTS3_g156877;
				Data3_g156877.NormalWS = In_NormalWS3_g156877;
				Data3_g156877.Shader = In_Shader3_g156877;
				Data3_g156877.Emissive= In_Emissive3_g156877;
				Data3_g156877.MultiMask = In_MultiMask3_g156877;
				Data3_g156877.Grayscale = In_Grayscale3_g156877;
				Data3_g156877.Luminosity = In_Luminosity3_g156877;
				Data3_g156877.AlphaClip = In_AlphaClip3_g156877;
				Data3_g156877.AlphaFade = In_AlphaFade3_g156877;
				Data3_g156877.Translucency = In_Translucency3_g156877;
				Data3_g156877.Transmission = In_Transmission3_g156877;
				Data3_g156877.Thickness = In_Thickness3_g156877;
				Data3_g156877.Diffusion = In_Diffusion3_g156877;
				}
				TVEVisualData Data4_g158218 = Data3_g156877;
				float Out_Dummy4_g158218 = 0;
				float3 Out_Albedo4_g158218 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158218 = float2( 0,0 );
				float3 Out_NormalWS4_g158218 = float3( 0,0,0 );
				float4 Out_Shader4_g158218 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158218 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158218 = 0;
				float Out_Grayscale4_g158218 = 0;
				float Out_Luminosity4_g158218 = 0;
				float Out_AlphaClip4_g158218 = 0;
				float Out_AlphaFade4_g158218 = 0;
				float3 Out_Translucency4_g158218 = float3( 0,0,0 );
				float Out_Transmission4_g158218 = 0;
				float Out_Thickness4_g158218 = 0;
				float Out_Diffusion4_g158218 = 0;
				{
				Out_Dummy4_g158218 = Data4_g158218.Dummy;
				Out_Albedo4_g158218 = Data4_g158218.Albedo;
				Out_NormalTS4_g158218 = Data4_g158218.NormalTS;
				Out_NormalWS4_g158218 = Data4_g158218.NormalWS;
				Out_Shader4_g158218 = Data4_g158218.Shader;
				Out_Emissive4_g158218= Data4_g158218.Emissive;
				Out_MultiMask4_g158218 = Data4_g158218.MultiMask;
				Out_Grayscale4_g158218 = Data4_g158218.Grayscale;
				Out_Luminosity4_g158218= Data4_g158218.Luminosity;
				Out_AlphaClip4_g158218 = Data4_g158218.AlphaClip;
				Out_AlphaFade4_g158218 = Data4_g158218.AlphaFade;
				Out_Translucency4_g158218 = Data4_g158218.Translucency;
				Out_Transmission4_g158218 = Data4_g158218.Transmission;
				Out_Thickness4_g158218 = Data4_g158218.Thickness;
				Out_Diffusion4_g158218 = Data4_g158218.Diffusion;
				}
				half3 Visual_Albedo127_g158217 = Out_Albedo4_g158218;
				float3 temp_output_622_0_g158217 = (_OverlayColor).rgb;
				half Overlay_TexMask906_g158217 = 1.0;
				float3 temp_output_739_21_g158217 = Out_NormalWS4_g158218;
				half3 Visual_NormalWS749_g158217 = temp_output_739_21_g158217;
				float clampResult17_g158237 = clamp( saturate( (Visual_NormalWS749_g158217).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g158236 = _OverlayProjRemap.x;
				float temp_output_10_0_g158236 = ( _OverlayProjRemap.y - temp_output_7_0_g158236 );
				float lerpResult842_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158237 - temp_output_7_0_g158236 ) / ( temp_output_10_0_g158236 + 0.0001 ) ) ) , _OverlayProjValue);
				half Overlay_MaskProj457_g158217 = lerpResult842_g158217;
				float temp_output_739_15_g158217 = Out_Luminosity4_g158218;
				half Visual_Luminosity654_g158217 = temp_output_739_15_g158217;
				float clampResult17_g158239 = clamp( Visual_Luminosity654_g158217 , 0.0001 , 0.9999 );
				float temp_output_7_0_g158238 = _OverlayLumaRemap.x;
				float temp_output_10_0_g158238 = ( _OverlayLumaRemap.y - temp_output_7_0_g158238 );
				float lerpResult587_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158239 - temp_output_7_0_g158238 ) / ( temp_output_10_0_g158238 + 0.0001 ) ) ) , _OverlayLumaValue);
				half Overlay_MaskLuma438_g158217 = lerpResult587_g158217;
				half Overlay_VertMask801_g158217 = 1.0;
				half Overlay_MaskNoise427_g158217 = 1.0;
				float localBuildGlobalData204_g156811 = ( 0.0 );
				TVEGlobalData Data204_g156811 = (TVEGlobalData)0;
				half Dummy211_g156811 = ( _GlobalLiteInfo + ( _GlobalCategory + _GlobalEnd ) );
				float In_Dummy204_g156811 = Dummy211_g156811;
				float4 temp_output_362_164_g156811 = TVE_CoatParams;
				half4 Coat_Params302_g156811 = temp_output_362_164_g156811;
				float4 In_CoatParams204_g156811 = Coat_Params302_g156811;
				float4 temp_output_361_164_g156811 = TVE_PaintParams;
				half4 Paint_Params71_g156811 = temp_output_361_164_g156811;
				float4 In_PaintParams204_g156811 = Paint_Params71_g156811;
				float4 temp_output_365_163_g156811 = TVE_GlowParams;
				half4 Glow_Params248_g156811 = temp_output_365_163_g156811;
				float4 In_GlowParams204_g156811 = Glow_Params248_g156811;
				float4 temp_output_363_141_g156811 = TVE_AtmoParams;
				half4 Atmo_Params80_g156811 = temp_output_363_141_g156811;
				float4 In_AtmoParams204_g156811 = Atmo_Params80_g156811;
				float4 temp_output_364_139_g156811 = TVE_FormParams;
				half4 Form_Params112_g156811 = temp_output_364_139_g156811;
				float4 In_FormParams204_g156811 = Form_Params112_g156811;
				float4 temp_output_366_145_g156811 = TVE_WindParams;
				half4 Wind_Params88_g156811 = temp_output_366_145_g156811;
				float4 In_WindParams204_g156811 = Wind_Params88_g156811;
				float4 temp_output_367_145_g156811 = TVE_PushParams;
				half4 Push_Params335_g156811 = temp_output_367_145_g156811;
				float4 In_PushParams204_g156811 = Push_Params335_g156811;
				{
				Data204_g156811.Dummy = In_Dummy204_g156811;
				Data204_g156811.CoatParams = In_CoatParams204_g156811;
				Data204_g156811.PaintParams = In_PaintParams204_g156811;
				Data204_g156811.GlowParams = In_GlowParams204_g156811;
				Data204_g156811.AtmoParams = In_AtmoParams204_g156811;
				Data204_g156811.FormParams= In_FormParams204_g156811;
				Data204_g156811.WindParams = In_WindParams204_g156811;
				Data204_g156811.PushParams = In_PushParams204_g156811;
				}
				TVEGlobalData Data15_g158219 = Data204_g156811;
				float Out_Dummy15_g158219 = 0;
				float4 Out_CoatParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158219 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158219 = Data15_g158219.Dummy;
				Out_CoatParams15_g158219 = Data15_g158219.CoatParams;
				Out_PaintParams15_g158219 = Data15_g158219.PaintParams;
				Out_GlowParams15_g158219 = Data15_g158219.GlowParams;
				Out_AtmoParams15_g158219= Data15_g158219.AtmoParams;
				Out_FadeParams15_g158219= Data15_g158219.FadeParams;
				Out_FormParams15_g158219 = Data15_g158219.FormParams;
				Out_LandParams15_g158219 = Data15_g158219.LandParams;
				Out_WindParams15_g158219 = Data15_g158219.WindParams;
				Out_PushParams15_g158219 = Data15_g158219.PushParams;
				}
				half4 Global_AtmoParams516_g158217 = Out_AtmoParams15_g158219;
				#ifdef TVE_OVERLAY_ELEMENT
				float staticSwitch705_g158217 = (Global_AtmoParams516_g158217).z;
				#else
				float staticSwitch705_g158217 = 1.0;
				#endif
				half Overlay_MaskGlobal429_g158217 = staticSwitch705_g158217;
				half Custom_Mask646_g158217 = 1.0;
				float temp_output_7_0_g158244 = _OverlayBlendRemap1.x;
				float temp_output_10_0_g158244 = ( _OverlayBlendRemap1.y - temp_output_7_0_g158244 );
				half Overlay_Mask494_g158217 = saturate( ( ( ( _OverlayIntensityValue * Overlay_TexMask906_g158217 * Overlay_MaskProj457_g158217 * Overlay_MaskLuma438_g158217 * Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 * Custom_Mask646_g158217 ) - temp_output_7_0_g158244 ) / ( temp_output_10_0_g158244 + 0.0001 ) ) );
				float3 lerpResult467_g158217 = lerp( Visual_Albedo127_g158217 , temp_output_622_0_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float3 staticSwitch577_g158217 = lerpResult467_g158217;
				#else
				float3 staticSwitch577_g158217 = Visual_Albedo127_g158217;
				#endif
				half3 Final_Albedo493_g158217 = staticSwitch577_g158217;
				float3 In_Albedo3_g158220 = Final_Albedo493_g158217;
				half2 Visual_NormalTS535_g158217 = Out_NormalTS4_g158218;
				float2 lerpResult551_g158217 = lerp( Visual_NormalTS535_g158217 , ( Visual_NormalTS535_g158217 * _OverlayNormalValue ) , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float2 staticSwitch583_g158217 = lerpResult551_g158217;
				#else
				float2 staticSwitch583_g158217 = Visual_NormalTS535_g158217;
				#endif
				half2 Final_NormalTS499_g158217 = staticSwitch583_g158217;
				float2 In_NormalTS3_g158220 = Final_NormalTS499_g158217;
				float3 In_NormalWS3_g158220 = temp_output_739_21_g158217;
				half4 Visual_Masks536_g158217 = Out_Shader4_g158218;
				float4 appendResult585_g158217 = (float4(0.0 , 1.0 , 0.0 , _OverlaySmoothnessValue));
				float4 lerpResult584_g158217 = lerp( Visual_Masks536_g158217 , appendResult585_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float4 staticSwitch586_g158217 = lerpResult584_g158217;
				#else
				float4 staticSwitch586_g158217 = Visual_Masks536_g158217;
				#endif
				half4 Final_Masks482_g158217 = staticSwitch586_g158217;
				float4 In_Shader3_g158220 = Final_Masks482_g158217;
				float4 In_Emissive3_g158220 = Out_Emissive4_g158218;
				float temp_output_739_12_g158217 = Out_Grayscale4_g158218;
				float In_Grayscale3_g158220 = temp_output_739_12_g158217;
				float In_Luminosity3_g158220 = temp_output_739_15_g158217;
				float In_MultiMask3_g158220 = Out_MultiMask4_g158218;
				float In_AlphaClip3_g158220 = Out_AlphaClip4_g158218;
				float In_AlphaFade3_g158220 = Out_AlphaFade4_g158218;
				float3 In_Translucency3_g158220 = Out_Translucency4_g158218;
				half Visual_Transmission699_g158217 = Out_Transmission4_g158218;
				float lerpResult746_g158217 = lerp( Visual_Transmission699_g158217 , ( Visual_Transmission699_g158217 * _OverlaySubsurfaceValue ) , ( Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 ));
				#ifdef TVE_OVERLAY
				float staticSwitch703_g158217 = lerpResult746_g158217;
				#else
				float staticSwitch703_g158217 = Visual_Transmission699_g158217;
				#endif
				half Final_Transmission702_g158217 = staticSwitch703_g158217;
				float In_Transmission3_g158220 = Final_Transmission702_g158217;
				float In_Thickness3_g158220 = Out_Thickness4_g158218;
				float In_Diffusion3_g158220 = Out_Diffusion4_g158218;
				{
				Data3_g158220.Dummy = In_Dummy3_g158220;
				Data3_g158220.Albedo = In_Albedo3_g158220;
				Data3_g158220.NormalTS = In_NormalTS3_g158220;
				Data3_g158220.NormalWS = In_NormalWS3_g158220;
				Data3_g158220.Shader = In_Shader3_g158220;
				Data3_g158220.Emissive= In_Emissive3_g158220;
				Data3_g158220.MultiMask = In_MultiMask3_g158220;
				Data3_g158220.Grayscale = In_Grayscale3_g158220;
				Data3_g158220.Luminosity = In_Luminosity3_g158220;
				Data3_g158220.AlphaClip = In_AlphaClip3_g158220;
				Data3_g158220.AlphaFade = In_AlphaFade3_g158220;
				Data3_g158220.Translucency = In_Translucency3_g158220;
				Data3_g158220.Transmission = In_Transmission3_g158220;
				Data3_g158220.Thickness = In_Thickness3_g158220;
				Data3_g158220.Diffusion = In_Diffusion3_g158220;
				}
				TVEVisualData Data4_g158258 = Data3_g158220;
				float Out_Dummy4_g158258 = 0;
				float3 Out_Albedo4_g158258 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158258 = float2( 0,0 );
				float3 Out_NormalWS4_g158258 = float3( 0,0,0 );
				float4 Out_Shader4_g158258 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158258 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158258 = 0;
				float Out_Grayscale4_g158258 = 0;
				float Out_Luminosity4_g158258 = 0;
				float Out_AlphaClip4_g158258 = 0;
				float Out_AlphaFade4_g158258 = 0;
				float3 Out_Translucency4_g158258 = float3( 0,0,0 );
				float Out_Transmission4_g158258 = 0;
				float Out_Thickness4_g158258 = 0;
				float Out_Diffusion4_g158258 = 0;
				{
				Out_Dummy4_g158258 = Data4_g158258.Dummy;
				Out_Albedo4_g158258 = Data4_g158258.Albedo;
				Out_NormalTS4_g158258 = Data4_g158258.NormalTS;
				Out_NormalWS4_g158258 = Data4_g158258.NormalWS;
				Out_Shader4_g158258 = Data4_g158258.Shader;
				Out_Emissive4_g158258= Data4_g158258.Emissive;
				Out_MultiMask4_g158258 = Data4_g158258.MultiMask;
				Out_Grayscale4_g158258 = Data4_g158258.Grayscale;
				Out_Luminosity4_g158258= Data4_g158258.Luminosity;
				Out_AlphaClip4_g158258 = Data4_g158258.AlphaClip;
				Out_AlphaFade4_g158258 = Data4_g158258.AlphaFade;
				Out_Translucency4_g158258 = Data4_g158258.Translucency;
				Out_Transmission4_g158258 = Data4_g158258.Transmission;
				Out_Thickness4_g158258 = Data4_g158258.Thickness;
				Out_Diffusion4_g158258 = Data4_g158258.Diffusion;
				}
				float3 temp_output_297_0_g158247 = Out_Albedo4_g158258;
				float3 In_Albedo3_g158259 = temp_output_297_0_g158247;
				float2 In_NormalTS3_g158259 = Out_NormalTS4_g158258;
				float3 In_NormalWS3_g158259 = Out_NormalWS4_g158258;
				float4 In_Shader3_g158259 = Out_Shader4_g158258;
				float4 temp_cast_6 = (0.0).xxxx;
				half4 Visual_Emissive255_g158247 = Out_Emissive4_g158258;
				half Emissive_MeshMask221_g158247 = 1.0;
				half Emissive_Mask103_g158247 = 1.0;
				float temp_output_279_0_g158247 = ( Emissive_MeshMask221_g158247 * Emissive_Mask103_g158247 );
				float3 appendResult293_g158247 = (float3(temp_output_279_0_g158247 , temp_output_279_0_g158247 , temp_output_279_0_g158247));
				half3 Local_EmissiveColor278_g158247 = appendResult293_g158247;
				float3 temp_cast_7 = (1.0).xxx;
				TVEGlobalData Data15_g158249 = Data204_g156811;
				float Out_Dummy15_g158249 = 0;
				float4 Out_CoatParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158249 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158249 = Data15_g158249.Dummy;
				Out_CoatParams15_g158249 = Data15_g158249.CoatParams;
				Out_PaintParams15_g158249 = Data15_g158249.PaintParams;
				Out_GlowParams15_g158249 = Data15_g158249.GlowParams;
				Out_AtmoParams15_g158249= Data15_g158249.AtmoParams;
				Out_FadeParams15_g158249= Data15_g158249.FadeParams;
				Out_FormParams15_g158249 = Data15_g158249.FormParams;
				Out_LandParams15_g158249 = Data15_g158249.LandParams;
				Out_WindParams15_g158249 = Data15_g158249.WindParams;
				Out_PushParams15_g158249 = Data15_g158249.PushParams;
				}
				half4 Global_GlowParams179_g158247 = Out_GlowParams15_g158249;
				float3 lerpResult299_g158247 = lerp( float3( 1,1,1 ) , (Global_GlowParams179_g158247).xyz , TVE_IsEnabled);
				#ifdef TVE_EMISSIVE_ELEMENT
				float3 staticSwitch228_g158247 = lerpResult299_g158247;
				#else
				float3 staticSwitch228_g158247 = temp_cast_7;
				#endif
				half3 Emissive_GlobalMask248_g158247 = staticSwitch228_g158247;
				half3 Local_EmissiveValue88_g158247 = ( _EmissiveIntensityValue * (_EmissiveColor).rgb * Emissive_GlobalMask248_g158247 );
				half3 Emissive_Blend260_g158247 = ( ( (Visual_Emissive255_g158247).xyz * Local_EmissiveColor278_g158247 ) * Local_EmissiveValue88_g158247 );
				float3 temp_output_3_0_g158257 = Emissive_Blend260_g158247;
				float temp_output_15_0_g158257 = _emissive_power_value;
				float3 temp_output_23_0_g158257 = ( temp_output_3_0_g158257 * temp_output_15_0_g158257 );
				float4 appendResult295_g158247 = (float4(temp_output_23_0_g158257 , Emissive_Mask103_g158247));
				#ifdef TVE_EMISSIVE
				float4 staticSwitch129_g158247 = appendResult295_g158247;
				#else
				float4 staticSwitch129_g158247 = temp_cast_6;
				#endif
				half4 Final_Emissive184_g158247 = staticSwitch129_g158247;
				float4 In_Emissive3_g158259 = Final_Emissive184_g158247;
				float In_Grayscale3_g158259 = Out_Grayscale4_g158258;
				float In_Luminosity3_g158259 = Out_Luminosity4_g158258;
				float temp_output_297_11_g158247 = Out_MultiMask4_g158258;
				float In_MultiMask3_g158259 = temp_output_297_11_g158247;
				float In_AlphaClip3_g158259 = Out_AlphaClip4_g158258;
				float In_AlphaFade3_g158259 = Out_AlphaFade4_g158258;
				float3 In_Translucency3_g158259 = Out_Translucency4_g158258;
				float In_Transmission3_g158259 = Out_Transmission4_g158258;
				float In_Thickness3_g158259 = Out_Thickness4_g158258;
				float In_Diffusion3_g158259 = Out_Diffusion4_g158258;
				{
				Data3_g158259.Dummy = In_Dummy3_g158259;
				Data3_g158259.Albedo = In_Albedo3_g158259;
				Data3_g158259.NormalTS = In_NormalTS3_g158259;
				Data3_g158259.NormalWS = In_NormalWS3_g158259;
				Data3_g158259.Shader = In_Shader3_g158259;
				Data3_g158259.Emissive= In_Emissive3_g158259;
				Data3_g158259.MultiMask = In_MultiMask3_g158259;
				Data3_g158259.Grayscale = In_Grayscale3_g158259;
				Data3_g158259.Luminosity = In_Luminosity3_g158259;
				Data3_g158259.AlphaClip = In_AlphaClip3_g158259;
				Data3_g158259.AlphaFade = In_AlphaFade3_g158259;
				Data3_g158259.Translucency = In_Translucency3_g158259;
				Data3_g158259.Transmission = In_Transmission3_g158259;
				Data3_g158259.Thickness = In_Thickness3_g158259;
				Data3_g158259.Diffusion = In_Diffusion3_g158259;
				}
				TVEVisualData Data4_g158291 = Data3_g158259;
				float Out_Dummy4_g158291 = 0;
				float3 Out_Albedo4_g158291 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158291 = float2( 0,0 );
				float3 Out_NormalWS4_g158291 = float3( 0,0,0 );
				float4 Out_Shader4_g158291 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158291 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158291 = 0;
				float Out_Grayscale4_g158291 = 0;
				float Out_Luminosity4_g158291 = 0;
				float Out_AlphaClip4_g158291 = 0;
				float Out_AlphaFade4_g158291 = 0;
				float3 Out_Translucency4_g158291 = float3( 0,0,0 );
				float Out_Transmission4_g158291 = 0;
				float Out_Thickness4_g158291 = 0;
				float Out_Diffusion4_g158291 = 0;
				{
				Out_Dummy4_g158291 = Data4_g158291.Dummy;
				Out_Albedo4_g158291 = Data4_g158291.Albedo;
				Out_NormalTS4_g158291 = Data4_g158291.NormalTS;
				Out_NormalWS4_g158291 = Data4_g158291.NormalWS;
				Out_Shader4_g158291 = Data4_g158291.Shader;
				Out_Emissive4_g158291= Data4_g158291.Emissive;
				Out_MultiMask4_g158291 = Data4_g158291.MultiMask;
				Out_Grayscale4_g158291 = Data4_g158291.Grayscale;
				Out_Luminosity4_g158291= Data4_g158291.Luminosity;
				Out_AlphaClip4_g158291 = Data4_g158291.AlphaClip;
				Out_AlphaFade4_g158291 = Data4_g158291.AlphaFade;
				Out_Translucency4_g158291 = Data4_g158291.Translucency;
				Out_Transmission4_g158291 = Data4_g158291.Transmission;
				Out_Thickness4_g158291 = Data4_g158291.Thickness;
				Out_Diffusion4_g158291 = Data4_g158291.Diffusion;
				}
				half3 Visual_Albedo199_g158290 = Out_Albedo4_g158291;
				float3 temp_cast_8 = (0.0).xxx;
				half3 Subsurface_Color264_g158290 = ( (_SubsurfaceColor).rgb * Visual_Albedo199_g158290 );
				half Visual_Transmission138_g158290 = Out_Transmission4_g158291;
				half Subsurface_Value268_g158290 = _SubsurfaceIntensityValue;
				TVEGlobalData Data15_g158294 = Data204_g156811;
				float Out_Dummy15_g158294 = 0;
				float4 Out_CoatParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158294 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158294 = Data15_g158294.Dummy;
				Out_CoatParams15_g158294 = Data15_g158294.CoatParams;
				Out_PaintParams15_g158294 = Data15_g158294.PaintParams;
				Out_GlowParams15_g158294 = Data15_g158294.GlowParams;
				Out_AtmoParams15_g158294= Data15_g158294.AtmoParams;
				Out_FadeParams15_g158294= Data15_g158294.FadeParams;
				Out_FormParams15_g158294 = Data15_g158294.FormParams;
				Out_LandParams15_g158294 = Data15_g158294.LandParams;
				Out_WindParams15_g158294 = Data15_g158294.WindParams;
				Out_PushParams15_g158294 = Data15_g158294.PushParams;
				}
				half4 Global_GlowParams373_g158290 = Out_GlowParams15_g158294;
				float lerpResult403_g158290 = lerp( 1.0 , saturate( (Global_GlowParams373_g158290).w ) , TVE_IsEnabled);
				#ifdef TVE_SUBSURFACE_ELEMENT
				float staticSwitch367_g158290 = lerpResult403_g158290;
				#else
				float staticSwitch367_g158290 = 1.0;
				#endif
				half Subsurface_GlobalMask369_g158290 = staticSwitch367_g158290;
				float temp_output_301_11_g158290 = Out_MultiMask4_g158291;
				half Visual_MultiMask292_g158290 = temp_output_301_11_g158290;
				float lerpResult293_g158290 = lerp( 1.0 , Visual_MultiMask292_g158290 , _SubsurfaceMultiValue);
				half Subsurface_MultiMask296_g158290 = lerpResult293_g158290;
				half Custom_Mask363_g158290 = 1.0;
				#ifdef TVE_SUBSURFACE
				float staticSwitch345_g158290 = ( Visual_Transmission138_g158290 * Subsurface_Value268_g158290 * Subsurface_GlobalMask369_g158290 * Subsurface_MultiMask296_g158290 * Custom_Mask363_g158290 );
				#else
				float staticSwitch345_g158290 = 0.0;
				#endif
				half Final_Transmission269_g158290 = staticSwitch345_g158290;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch348_g158290 = ( Subsurface_Color264_g158290 * Final_Transmission269_g158290 * 10.0 );
				#else
				float3 staticSwitch348_g158290 = temp_cast_8;
				#endif
				half3 Final_Translucency254_g158290 = staticSwitch348_g158290;
				TVEModelData Data16_g156810 = (TVEModelData)0;
				float In_Dummy16_g156810 = 0.0;
				float3 In_PositionOS16_g156810 = float3( 0,0,0 );
				half3 Input_PositionWS218_g156802 = positionWS;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156810 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156810 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156810 = float3( 0,0,0 );
				float3 In_PositionAddOS16_g156810 = float3( 0,0,0 );
				float3 In_PivotOS16_g156810 = float3( 0,0,0 );
				float3 vertexToFrag281_g156802 = IN.ase_texcoord11.xyz;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156810 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156810 = Model_PivotWO133_g156802;
				float3 In_NormalOS16_g156810 = float3( 0,0,0 );
				float3 ase_worldNormal = IN.ase_texcoord12.xyz;
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156810 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156810 = float3( 0,0,0 );
				float3 In_NormalRawWS16_g156810 = float3( 0,0,0 );
				float4 In_TangentOS16_g156810 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156810 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156810 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156810 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156810 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156810 = float4( 0,0,0,0 );
				{
				Data16_g156810.Dummy = In_Dummy16_g156810;
				Data16_g156810.PositionOS = In_PositionOS16_g156810;
				Data16_g156810.PositionWS = In_PositionWS16_g156810;
				Data16_g156810.PositionWO = In_PositionWO16_g156810;
				Data16_g156810.PositionRawOS = In_PositionRawOS16_g156810;
				Data16_g156810.PositionAddOS = In_PositionAddOS16_g156810;
				Data16_g156810.PivotOS = In_PivotOS16_g156810;
				Data16_g156810.PivotWS = In_PivotWS16_g156810;
				Data16_g156810.PivotWO = In_PivotWO16_g156810;
				Data16_g156810.NormalOS = In_NormalOS16_g156810;
				Data16_g156810.NormalWS = In_NormalWS16_g156810;
				Data16_g156810.NormalRawOS = In_NormalRawOS16_g156810;
				Data16_g156810.NormalRawWS = In_NormalRawWS16_g156810;
				Data16_g156810.TangentOS = In_TangentOS16_g156810;
				Data16_g156810.ViewDirWS = In_ViewDirWS16_g156810;
				Data16_g156810.VertexData = In_VertexData16_g156810;
				Data16_g156810.MotionData = In_MotionData16_g156810;
				Data16_g156810.BoundsData = In_BoundsData16_g156810;
				Data16_g156810.RotationData = In_RotationData16_g156810;
				}
				TVEModelData Data15_g158293 = Data16_g156810;
				float Out_Dummy15_g158293 = 0;
				float3 Out_PositionOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158293 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158293 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158293 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158293 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158293 = float3( 0,0,0 );
				float4 Out_VertexData15_g158293 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158293 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158293 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158293 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158293 = Data15_g158293.Dummy;
				Out_PositionOS15_g158293 = Data15_g158293.PositionOS;
				Out_PositionWS15_g158293 = Data15_g158293.PositionWS;
				Out_PositionWO15_g158293 = Data15_g158293.PositionWO;
				Out_PositionRawOS15_g158293 = Data15_g158293.PositionRawOS;
				Out_PositionAddOS15_g158293 = Data15_g158293.PositionAddOS;
				Out_PivotOS15_g158293 = Data15_g158293.PivotOS;
				Out_PivotWS15_g158293 = Data15_g158293.PivotWS;
				Out_PivotWO15_g158293 = Data15_g158293.PivotWO;
				Out_NormalOS15_g158293 = Data15_g158293.NormalOS;
				Out_NormalWS15_g158293 = Data15_g158293.NormalWS;
				Out_NormalRawOS15_g158293 = Data15_g158293.NormalRawOS;
				Out_NormalRawWS15_g158293 = Data15_g158293.NormalRawWS;
				Out_TangentOS15_g158293 = Data15_g158293.TangentOS;
				Out_ViewDirWS15_g158293 = Data15_g158293.ViewDirWS;
				Out_VertexData15_g158293 = Data15_g158293.VertexData;
				Out_MotionData15_g158293 = Data15_g158293.MotionData;
				Out_BoundsData15_g158293 = Data15_g158293.BoundsData;
				Out_RotationData15_g158293 = Data15_g158293.RotationData;
				}
				half3 Model_ViewDirWS392_g158290 = Out_ViewDirWS15_g158293;
				float dotResult324_g158290 = dot( -TVE_MainLightDirection , Model_ViewDirWS392_g158290 );
				float saferPower323_g158290 = abs( saturate( dotResult324_g158290 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch330_g158290 = 0.0;
				#else
				float staticSwitch330_g158290 = ( pow( saferPower323_g158290 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View320_g158290 = staticSwitch330_g158290;
				float3 temp_output_6_0_g158295 = ( Final_Translucency254_g158290 * Mask_Subsurface_View320_g158290 );
				#ifdef TVE_REGISTER
				float3 staticSwitch14_g158295 = ( temp_output_6_0_g158295 + ( _SubsurfaceAproxInfo * 0.0 ) );
				#else
				float3 staticSwitch14_g158295 = temp_output_6_0_g158295;
				#endif
				half3 Subsurface_Approximation333_g158290 = staticSwitch14_g158295;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch353_g158290 = ( Visual_Albedo199_g158290 + Subsurface_Approximation333_g158290 );
				#else
				float3 staticSwitch353_g158290 = Visual_Albedo199_g158290;
				#endif
				half3 Final_Albedo312_g158290 = staticSwitch353_g158290;
				float3 In_Albedo3_g158292 = Final_Albedo312_g158290;
				float2 In_NormalTS3_g158292 = Out_NormalTS4_g158291;
				float3 In_NormalWS3_g158292 = Out_NormalWS4_g158291;
				float4 In_Shader3_g158292 = Out_Shader4_g158291;
				float4 In_Emissive3_g158292 = Out_Emissive4_g158291;
				float In_Grayscale3_g158292 = Out_Grayscale4_g158291;
				float In_Luminosity3_g158292 = Out_Luminosity4_g158291;
				float In_MultiMask3_g158292 = temp_output_301_11_g158290;
				float In_AlphaClip3_g158292 = Out_AlphaClip4_g158291;
				float In_AlphaFade3_g158292 = Out_AlphaFade4_g158291;
				float3 In_Translucency3_g158292 = Final_Translucency254_g158290;
				float In_Transmission3_g158292 = Final_Transmission269_g158290;
				#ifdef TVE_SUBSURFACE
				float staticSwitch351_g158290 = 0.0;
				#else
				float staticSwitch351_g158290 = 1.0;
				#endif
				half Final_Thickness275_g158290 = staticSwitch351_g158290;
				float In_Thickness3_g158292 = Final_Thickness275_g158290;
				float Final_Diffusion340_g158290 = _SubsurfaceDiffusion;
				float In_Diffusion3_g158292 = Final_Diffusion340_g158290;
				{
				Data3_g158292.Dummy = In_Dummy3_g158292;
				Data3_g158292.Albedo = In_Albedo3_g158292;
				Data3_g158292.NormalTS = In_NormalTS3_g158292;
				Data3_g158292.NormalWS = In_NormalWS3_g158292;
				Data3_g158292.Shader = In_Shader3_g158292;
				Data3_g158292.Emissive= In_Emissive3_g158292;
				Data3_g158292.MultiMask = In_MultiMask3_g158292;
				Data3_g158292.Grayscale = In_Grayscale3_g158292;
				Data3_g158292.Luminosity = In_Luminosity3_g158292;
				Data3_g158292.AlphaClip = In_AlphaClip3_g158292;
				Data3_g158292.AlphaFade = In_AlphaFade3_g158292;
				Data3_g158292.Translucency = In_Translucency3_g158292;
				Data3_g158292.Transmission = In_Transmission3_g158292;
				Data3_g158292.Thickness = In_Thickness3_g158292;
				Data3_g158292.Diffusion = In_Diffusion3_g158292;
				}
				TVEVisualData Data4_g158307 = Data3_g158292;
				float Out_Dummy4_g158307 = 0;
				float3 Out_Albedo4_g158307 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158307 = float2( 0,0 );
				float3 Out_NormalWS4_g158307 = float3( 0,0,0 );
				float4 Out_Shader4_g158307 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158307 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158307 = 0;
				float Out_Grayscale4_g158307 = 0;
				float Out_Luminosity4_g158307 = 0;
				float Out_AlphaClip4_g158307 = 0;
				float Out_AlphaFade4_g158307 = 0;
				float3 Out_Translucency4_g158307 = float3( 0,0,0 );
				float Out_Transmission4_g158307 = 0;
				float Out_Thickness4_g158307 = 0;
				float Out_Diffusion4_g158307 = 0;
				{
				Out_Dummy4_g158307 = Data4_g158307.Dummy;
				Out_Albedo4_g158307 = Data4_g158307.Albedo;
				Out_NormalTS4_g158307 = Data4_g158307.NormalTS;
				Out_NormalWS4_g158307 = Data4_g158307.NormalWS;
				Out_Shader4_g158307 = Data4_g158307.Shader;
				Out_Emissive4_g158307= Data4_g158307.Emissive;
				Out_MultiMask4_g158307 = Data4_g158307.MultiMask;
				Out_Grayscale4_g158307 = Data4_g158307.Grayscale;
				Out_Luminosity4_g158307= Data4_g158307.Luminosity;
				Out_AlphaClip4_g158307 = Data4_g158307.AlphaClip;
				Out_AlphaFade4_g158307 = Data4_g158307.AlphaFade;
				Out_Translucency4_g158307 = Data4_g158307.Translucency;
				Out_Transmission4_g158307 = Data4_g158307.Transmission;
				Out_Thickness4_g158307 = Data4_g158307.Thickness;
				Out_Diffusion4_g158307 = Data4_g158307.Diffusion;
				}
				half3 Input_Albedo24_g158305 = Out_Albedo4_g158307;
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch22_g158305 = half4(0.2209163,0.2209163,0.2209163,0.7790837);
				#else
				float4 staticSwitch22_g158305 = half4(0.04,0.04,0.04,0.96);
				#endif
				half4 ColorSpaceDielectricSpec23_g158305 = staticSwitch22_g158305;
				float4 break24_g158304 = Out_Shader4_g158307;
				half Metallic117_g158304 = break24_g158304.x;
				half Input_Metallic25_g158305 = Metallic117_g158304;
				half OneMinusReflectivity31_g158305 = ( (ColorSpaceDielectricSpec23_g158305).w - ( (ColorSpaceDielectricSpec23_g158305).w * Input_Metallic25_g158305 ) );
				float3 lerpResult87_g158304 = lerp( half3(1,0,0) , ( Input_Albedo24_g158305 * OneMinusReflectivity31_g158305 ) , _IsInitialized);
				
				float3 lerpResult28_g158305 = lerp( (ColorSpaceDielectricSpec23_g158305).xyz , Input_Albedo24_g158305 , Input_Metallic25_g158305);
				half RenderSpec105_g158304 = _RenderSpecular;
				
				float localCustomAlphaClip19_g158312 = ( 0.0 );
				float temp_output_3_0_g158312 = Out_AlphaClip4_g158307;
				float Alpha19_g158312 = temp_output_3_0_g158312;
				float temp_output_15_0_g158312 = 0.0;
				float Treshold19_g158312 = temp_output_15_0_g158312;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_CUTOUT) || defined (TVE_DITHER)
				#if defined ( TVE_PIPELINE_HD)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#else
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#endif
				}
				

				fixed3 albedo = lerpResult87_g158304;
				fixed3 normal = Out_NormalWS4_g158307;
				half3 emission = (Out_Emissive4_g158307).xyz;
				fixed3 specular = ( lerpResult28_g158305 * RenderSpec105_g158304 );
				fixed metallic = 0;
				half smoothness = break24_g158304.w;
				half occlusion = 1;

				float3 Transmission = 1;
				float3 Translucency = 1;

				fixed alpha = Alpha19_g158312;
				fixed alphaClipThreshold = 0;

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif

				IN.pos.zw = positionCS.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(positionWS));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(positionWS));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				UNITY_LIGHT_ATTENUATION(atten, IN, positionWS)
				fixed4 c = 0;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;
				gi.light.color *= atten;
				#if defined(_SPECULAR_SETUP)
					c += LightingStandardSpecular( o, worldViewDir, gi );
				#else
					c += LightingStandard( o, worldViewDir, gi );
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 transmission = max(0, -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp(_LightColor0.rgb, gi.light.color, shadow);
					#else
						float3 lightAtten = gi.light.color;
					#endif

					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow(saturate(dot(worldViewDir, -lightDir)), scattering);
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				UNITY_APPLY_FOG(IN.fogCoord, c);
				return c;
			}
			ENDCG
		}

		Pass
		{
			
			

			Name "Deferred"
			Tags { "LightMode"="Deferred" }

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#pragma shader_feature_local_fragment _ _SPECULARHIGHLIGHTS_OFF
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_instancing
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#pragma exclude_renderers ps5 
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_prepassfinal
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_DEFERRED
			#define UNITY_PASS_DEFERRED
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityStandardUtils.cginc"

			#ifdef LIGHTMAP_ON
			float4 unity_LightmapFade;
			#endif
			fixed4 unity_Ambient;

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local_fragment TVE_PIPELINE_STANDARD TVE_PIPELINE_UNIVERSAL TVE_PIPELINE_HD
			#pragma shader_feature_local_vertex TVE_MOTION_BASE_BENDING
			#pragma shader_feature_local_vertex TVE_MOTION_WIND_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE
			#pragma shader_feature_local_fragment TVE_OVERLAY
			#pragma shader_feature_local_fragment TVE_OVERLAY_ELEMENT
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#pragma shader_feature_local_fragment TVE_EMISSIVE_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE_ELEMENT
			  
			struct TVEVisualData
			{  
				half Dummy;  
				half3 Albedo;
				half2 NormalTS;
				half3 NormalWS; 
				half4 Shader;
				half4 Emissive;
				half AlphaClip;
				half AlphaFade;
				half MultiMask;
				half Grayscale;
				half Luminosity;
				half3 Translucency;
				half Transmission;
				half Thickness;
				float Diffusion;
			};  
			    
			struct TVEModelData
			{    
				half Dummy;    
				half3 PositionOS;
				half3 PositionWS;
				half3 PositionWO;
				half3 PositionRawOS;
				half3 PositionAddOS;
				half3 PivotOS;
				half3 PivotWS;
				half3 PivotWO;
				half3 NormalOS;
				half3 NormalWS;
				half3 NormalRawOS;
				half3 NormalRawWS;
				half4 TangentOS;
				half3 ViewDirWS;
				half4 VertexData;
				half4 MotionData;
				half4 BoundsData;
				half4 RotationData;
			};    
			      
			struct TVEGlobalData
			{      
				half Dummy;      
				half4 CoatParams;
				half4 PaintParams;
				half4 GlowParams;
				half4 AtmoParams;
				half4 FadeParams;
				half4 FormParams;
				half4 LandParams;
				half4 WindParams;
				half4 PushParams;
			};      
			        
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//#pragma editor_sync_compilation
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			


			uniform half _ImpostorAlphaClipValue;
			uniform half4 _OverlayColoringOn;
			uniform half4 _OverlayColoringOff;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayGlitterTex);
			SamplerState sampler_OverlayGlitterTex;
			uniform half _OverlayGlitterTillingValue;
			uniform half _OverlayGlitterIntensityValue;
			uniform half _OverlayLiteInfo;
			uniform half4 _OverlayGlitterColor;
			uniform half _SubsurfaceScatteringValue;
			uniform half _SubsurfaceAngleValue;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform half _SubsurfaceSpace;
			uniform half _IsVersion;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _CategoryRender;
			uniform half _EndRender;
			uniform half _NoiseCategory;
			uniform half _NoiseEnd;
			UNITY_DECLARE_TEX3D_NOSAMPLER(_NoiseTex3D);
			SamplerState sampler_NoiseTex3D;
			uniform half _IsInitialized;
			uniform half _IsTVEShader;
			uniform half _IsCustomShader;
			uniform half _IsShared;
			uniform half _HasDefaultTextures;
			uniform half _IsCollected;
			uniform half _IsConverted;
			uniform half _IsIdentifier;
			uniform half _RenderMotion;
			uniform half _RenderShadow;
			uniform half _IsLiteShader;
			uniform half _IsStandardShader;
			uniform half _IsImpostorShader;
			uniform half _ImpostorCategory;
			uniform half _ImpostorEnd;
			uniform half _MotionWindCategory;
			uniform half _MotionWindEnd;
			uniform half _MotionWindElementMode;
			uniform half _MotionInteractionCategory;
			uniform half _MotionInteractionEnd;
			uniform half _InteractionLiteInfo;
			uniform half4 _InteractionColoring;
			uniform half _MotionPushIntensityValue;
			uniform half _MotionPushPivotValue;
			uniform half _MotionPushMaskValue;
			uniform half _MotionPushElementMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionBaseIntensityValue;
			uniform half4 TVE_MotionParams;
			uniform half TVE_IsEnabled;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MotionNoiseTex);
			uniform half _MotionBasePivotValue;
			uniform half _MotionTillingValue;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeedValue;
			SamplerState sampler_Linear_Repeat;
			uniform half _MotionNoiseValue;
			uniform half _MotionIntensityValue;
			uniform half _global_wind_layer_value;
			uniform float TVE_WindLayers[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindBaseTex);
			uniform half4 TVE_RenderBaseCoords;
			SamplerState sampler_Linear_Clamp;
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindNearTex);
			uniform half4 TVE_RenderNearCoords;
			uniform float4 TVE_RenderNearPositionR;
			uniform half TVE_RenderNearFadeValue;
			uniform half4 TVE_WindParams;
			uniform half _DisableSRPBatcher;
			uniform half _VariationLiteInfo;
			uniform half4 _VariationColoring;
			uniform half _VariationCategory;
			uniform half _VariationEnd;
			uniform half _VariationIntensityValue;
			uniform half4 _VariationColorTwo;
			uniform half4 _VariationColorOne;
			uniform half _VariationMultiValue;
			uniform half4 _VariationNoiseRemap;
			uniform half _VariationNoisePivotsValue1;
			uniform half _VariationNoiseTillingValue;
			uniform half _TintingLiteInfo;
			uniform half4 _TintingColoring;
			uniform half _TintingCategory;
			uniform half _TintingEnd;
			uniform half _TintingSpace;
			uniform half _TintingElementMode;
			uniform half _TintingIntensityValue;
			uniform float4 _TintingColor;
			uniform half _TintingGrayValue;
			uniform half _TintingMultiValue;
			uniform half _TintingLumaValue;
			uniform half4 _TintingLumaRemap;
			uniform half _DrynessLiteInfo;
			uniform half4 _DrynessColoring;
			uniform half _DrynessCategory;
			uniform half _DrynessEnd;
			uniform half _DrynessSpace;
			uniform half _DrynessElementMode;
			uniform half _DrynessIntensityValue;
			uniform float4 _DrynessColor;
			uniform half _DrynessGrayValue;
			uniform half _DrynessShiftValue;
			uniform half _DrynessSmoothnessValue;
			uniform half _DrynessSubsurfaceValue;
			uniform half _DrynessMultiValue;
			uniform half _DrynessLumaValue;
			uniform half4 _DrynessLumaRemap;
			uniform half _WetnessLiteInfo;
			uniform half4 _WetnessColoring;
			uniform half _WetnessCategory;
			uniform half _WetnessEnd;
			uniform half _WetnessElementMode;
			uniform half _WetnessIntensityValue;
			uniform half _WetnessContrastValue;
			uniform half _WetnessSmoothnessValue;
			uniform half _CutoutLiteInfo;
			uniform half4 _CutoutColoring;
			uniform half _CutoutCategory;
			uniform half _CutoutEnd;
			uniform half _CutoutSpace;
			uniform half _CutoutElementMode;
			uniform half _CutoutIntensityValue;
			uniform half _CutoutMultiValue;
			uniform half _CutoutAlphaValue;
			uniform half _CutoutNoiseValue;
			uniform half _CutoutNoiseTillingValue;
			uniform half _DitherLiteInfo;
			uniform half4 _DitherColoring;
			uniform half _DitherCategory;
			uniform half _DitherEnd;
			uniform half _DitherConstantValue;
			uniform half _DitherDistanceValue;
			uniform half _DitherDistanceMaxValue;
			uniform half _DitherDistanceMinValue;
			uniform half _DitherMultiValue;
			uniform half _DitherNoiseTillingValue;
			uniform half _SizeFadeLiteInfo;
			uniform half4 _SizeFadeColoring;
			uniform half _SizeFadeCategory;
			uniform half _SizeFadeEnd;
			uniform half _SizeFadeElementMode;
			uniform half _SizeFadeIntensityValue;
			uniform half _SizeFadeScaleMode;
			uniform half _SizeFadeScaleValue;
			uniform half _SizeFadeDistMinValue;
			uniform half _SizeFadeDistMaxValue;
			uniform half _SubsurfaceCategory;
			uniform half _SubsurfaceEnd;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceElementMode;
			uniform half _EmissiveCategory;
			uniform half _EmissiveEnd;
			uniform half _EmissivePowerMode;
			uniform half _EmissivePowerValue;
			uniform half _EmissiveElementMode;
			uniform half _OverlayCategory;
			uniform half _OverlayEnd;
			uniform half _OverlaySpace;
			uniform half _OverlayElementMode;
			uniform half _OverlayBakeInfo;
			uniform float4 _OverlayGlitterTex_ST;
			uniform half _OverlayGlitterDistValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksA);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksB);
			SamplerState sampler_MasksA;
			SamplerState sampler_MasksB;
			uniform half4 _ImpostorColorTwo;
			uniform half4 _ImpostorColor;
			uniform half _ImpostorColorMode;
			uniform half _ImpostorMetallicValue;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _OverlayColor;
			uniform half _OverlayIntensityValue;
			uniform half4 _OverlayProjRemap;
			uniform half _OverlayProjValue;
			uniform half4 _OverlayLumaRemap;
			uniform half _OverlayLumaValue;
			uniform half _GlobalLiteInfo;
			uniform half _GlobalCategory;
			uniform half _GlobalEnd;
			uniform half4 TVE_CoatParams;
			uniform half4 TVE_PaintParams;
			uniform half4 TVE_GlowParams;
			uniform half4 TVE_AtmoParams;
			uniform half4 TVE_FormParams;
			uniform half4 TVE_PushParams;
			uniform half4 _OverlayBlendRemap1;
			uniform half _OverlayNormalValue;
			uniform half _OverlaySmoothnessValue;
			uniform half _OverlaySubsurfaceValue;
			uniform half _EmissiveIntensityValue;
			uniform half4 _EmissiveColor;
			uniform float _emissive_power_value;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceIntensityValue;
			uniform half _SubsurfaceMultiValue;
			uniform half3 TVE_MainLightDirection;
			uniform half _SubsurfaceAproxInfo;
			uniform half _RenderSpecular;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normalOS, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normalOS ); 
				float p0l0DotN = dot( -rayPosition, normalOS );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normalOS ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normalOS );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normalOS );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 positionOS, inout float3 normalOS, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldCameraPos;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				#else
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				worldCameraPos = ai_ObjectToWorld._m03_m13_m23 + UNITY_MATRIX_I_V._m02_m12_m22 * 5000;
				}
				else
				{
				worldCameraPos = _WorldSpaceCameraPos;
				}
				#endif
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = positionOS.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				objectCameraDirection = trunc( objectCameraDirection * 65536.0 ) / 65536.0;
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				positionOS.xyz = billboard + _AI_Offset.xyz;
				normalOS.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( positionOS.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 positionCS, out float3 positionWS, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				positionWS = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				positionCS = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				positionCS = UnityApplyLinearShadowBias( positionCS );
				#endif
				positionCS.xyz /= positionCS.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				positionCS = positionCS * 0.5 + 0.5;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f_surf
			{
				UNITY_POSITION(pos);
				#ifndef DIRLIGHTMAP_OFF
					half3 viewDir : TEXCOORD1;
				#endif
				float4 lmap : TEXCOORD2;
				#ifndef LIGHTMAP_ON
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						half3 sh : TEXCOORD3;
					#endif
				#else
					#ifdef DIRLIGHTMAP_OFF
						float4 lmapFadePos : TEXCOORD4;
					#endif
				#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame122_g156801 : TEXCOORD5;
				float4 UVsFrame222_g156801 : TEXCOORD6;
				float4 UVsFrame322_g156801 : TEXCOORD7;
				float4 octaframe22_g156801 : TEXCOORD8;
				float4 viewPos22_g156801 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
			};

			v2f_surf vert_surf (appdata v  )
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				TVEModelData Data16_g158299 = (TVEModelData)0;
				float In_Dummy16_g158299 = 0.0;
				TVEModelData Data16_g158265 = (TVEModelData)0;
				half4 Dummy181_g158262 = ( ( _MotionWindCategory + _MotionWindEnd ) + _MotionWindElementMode + ( _MotionInteractionCategory + _MotionInteractionEnd ) + ( _InteractionLiteInfo + _InteractionColoring + _MotionPushIntensityValue + _MotionPushPivotValue + _MotionPushMaskValue + _MotionPushElementMode ) );
				float In_Dummy16_g158265 = Dummy181_g158262.r;
				TVEModelData Data16_g156809 = (TVEModelData)0;
				float In_Dummy16_g156809 = 0.0;
				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame122_g156801, o.UVsFrame222_g156801, o.UVsFrame322_g156801, o.octaframe22_g156801, o.viewPos22_g156801 );
				float3 worldPosOut22_g156801 = mul( UNITY_MATRIX_I_V, float4( o.viewPos22_g156801.xyz, 1.0 ) ).xyz;
				half3 Input_PositionWS218_g156802 = worldPosOut22_g156801;
				float3 worldToObj278_g156802 = mul( unity_WorldToObject, float4( Input_PositionWS218_g156802, 1 ) ).xyz;
				half3 Model_PositionOS131_g156802 = worldToObj278_g156802;
				float3 In_PositionOS16_g156809 = Model_PositionOS131_g156802;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156809 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156809 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156809 = Model_PositionOS131_g156802;
				float3 In_PositionAddOS16_g156809 = float3( 0,0,0 );
				float3 In_PivotOS16_g156809 = float3( 0,0,0 );
				float4x4 break19_g156804 = unity_ObjectToWorld;
				float3 appendResult20_g156804 = (float3(break19_g156804[ 0 ][ 3 ] , break19_g156804[ 1 ][ 3 ] , break19_g156804[ 2 ][ 3 ]));
				half3 ObjectData20_g156806 = appendResult20_g156804;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g156806 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g156806 = WorldData19_g156806;
				#else
				float3 staticSwitch14_g156806 = ObjectData20_g156806;
				#endif
				float3 temp_output_124_0_g156804 = staticSwitch14_g156806;
				float3 vertexToFrag281_g156802 = temp_output_124_0_g156804;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156809 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156809 = Model_PivotWO133_g156802;
				half3 Model_NormalOS134_g156802 = v.normal;
				float3 In_NormalOS16_g156809 = Model_NormalOS134_g156802;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156809 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156809 = Model_NormalOS134_g156802;
				float3 In_NormalRawWS16_g156809 = Model_Normal_WS95_g156802;
				float4 In_TangentOS16_g156809 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156809 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156809 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156809 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156809 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156809 = float4( 0,0,0,0 );
				{
				Data16_g156809.Dummy = In_Dummy16_g156809;
				Data16_g156809.PositionOS = In_PositionOS16_g156809;
				Data16_g156809.PositionWS = In_PositionWS16_g156809;
				Data16_g156809.PositionWO = In_PositionWO16_g156809;
				Data16_g156809.PositionRawOS = In_PositionRawOS16_g156809;
				Data16_g156809.PositionAddOS = In_PositionAddOS16_g156809;
				Data16_g156809.PivotOS = In_PivotOS16_g156809;
				Data16_g156809.PivotWS = In_PivotWS16_g156809;
				Data16_g156809.PivotWO = In_PivotWO16_g156809;
				Data16_g156809.NormalOS = In_NormalOS16_g156809;
				Data16_g156809.NormalWS = In_NormalWS16_g156809;
				Data16_g156809.NormalRawOS = In_NormalRawOS16_g156809;
				Data16_g156809.NormalRawWS = In_NormalRawWS16_g156809;
				Data16_g156809.TangentOS = In_TangentOS16_g156809;
				Data16_g156809.ViewDirWS = In_ViewDirWS16_g156809;
				Data16_g156809.VertexData = In_VertexData16_g156809;
				Data16_g156809.MotionData = In_MotionData16_g156809;
				Data16_g156809.BoundsData = In_BoundsData16_g156809;
				Data16_g156809.RotationData = In_RotationData16_g156809;
				}
				TVEModelData Data15_g158264 = Data16_g156809;
				float Out_Dummy15_g158264 = 0;
				float3 Out_PositionOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158264 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158264 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158264 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158264 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158264 = float3( 0,0,0 );
				float4 Out_VertexData15_g158264 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158264 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158264 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158264 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158264 = Data15_g158264.Dummy;
				Out_PositionOS15_g158264 = Data15_g158264.PositionOS;
				Out_PositionWS15_g158264 = Data15_g158264.PositionWS;
				Out_PositionWO15_g158264 = Data15_g158264.PositionWO;
				Out_PositionRawOS15_g158264 = Data15_g158264.PositionRawOS;
				Out_PositionAddOS15_g158264 = Data15_g158264.PositionAddOS;
				Out_PivotOS15_g158264 = Data15_g158264.PivotOS;
				Out_PivotWS15_g158264 = Data15_g158264.PivotWS;
				Out_PivotWO15_g158264 = Data15_g158264.PivotWO;
				Out_NormalOS15_g158264 = Data15_g158264.NormalOS;
				Out_NormalWS15_g158264 = Data15_g158264.NormalWS;
				Out_NormalRawOS15_g158264 = Data15_g158264.NormalRawOS;
				Out_NormalRawWS15_g158264 = Data15_g158264.NormalRawWS;
				Out_TangentOS15_g158264 = Data15_g158264.TangentOS;
				Out_ViewDirWS15_g158264 = Data15_g158264.ViewDirWS;
				Out_VertexData15_g158264 = Data15_g158264.VertexData;
				Out_MotionData15_g158264 = Data15_g158264.MotionData;
				Out_BoundsData15_g158264 = Data15_g158264.BoundsData;
				Out_RotationData15_g158264 = Data15_g158264.RotationData;
				}
				float3 temp_output_1567_0_g158262 = Out_PositionOS15_g158264;
				float3 In_PositionOS16_g158265 = temp_output_1567_0_g158262;
				float3 In_PositionWS16_g158265 = Out_PositionWS15_g158264;
				float3 temp_output_1567_17_g158262 = Out_PositionWO15_g158264;
				float3 In_PositionWO16_g158265 = temp_output_1567_17_g158262;
				float3 In_PositionRawOS16_g158265 = Out_PositionRawOS15_g158264;
				float3 In_PositionAddOS16_g158265 = Out_PositionAddOS15_g158264;
				float3 In_PivotOS16_g158265 = Out_PivotOS15_g158264;
				float3 In_PivotWS16_g158265 = Out_PivotWS15_g158264;
				float3 temp_output_1567_19_g158262 = Out_PivotWO15_g158264;
				float3 In_PivotWO16_g158265 = temp_output_1567_19_g158262;
				float3 In_NormalOS16_g158265 = Out_NormalOS15_g158264;
				float3 In_NormalWS16_g158265 = Out_NormalWS15_g158264;
				float3 In_NormalRawOS16_g158265 = Out_NormalRawOS15_g158264;
				float3 In_NormalRawWS16_g158265 = Out_NormalRawWS15_g158264;
				float4 In_TangentOS16_g158265 = Out_TangentOS15_g158264;
				float3 In_ViewDirWS16_g158265 = Out_ViewDirWS15_g158264;
				float4 In_VertexData16_g158265 = Out_VertexData15_g158264;
				float4 In_MotionData16_g158265 = Out_MotionData15_g158264;
				float4 In_BoundsData16_g158265 = Out_BoundsData15_g158264;
				float2 temp_cast_1 = (0.0).xx;
				half3 Model_PositionOS147_g158262 = temp_output_1567_0_g158262;
				half Base_Mask217_g158262 = saturate( ( Model_PositionOS147_g158262.y / _AI_Offset.y ) );
				float4 lerpResult627_g158267 = lerp( half4(0,1,1,0) , TVE_MotionParams , TVE_IsEnabled);
				half2 Global_WindDirection593_g158267 = (lerpResult627_g158267).xy;
				half3 Model_PositionWO162_g158262 = temp_output_1567_17_g158262;
				half3 Model_PivotWO402_g158262 = temp_output_1567_19_g158262;
				float3 lerpResult829_g158262 = lerp( Model_PositionWO162_g158262 , Model_PivotWO402_g158262 , _MotionBasePivotValue);
				half3 Base_Position1394_g158262 = lerpResult829_g158262;
				half3 Input_PositionWO419_g158267 = Base_Position1394_g158262;
				half Flow_Tillling1397_g158262 = _MotionTillingValue;
				half Input_MotionTilling321_g158267 = ( Flow_Tillling1397_g158262 + 0.2 );
				half2 Noise_Coord515_g158267 = ( -(Input_PositionWO419_g158267).xz * Input_MotionTilling321_g158267 * 0.005 );
				float2 temp_output_3_0_g158280 = Noise_Coord515_g158267;
				float2 temp_output_606_0_g158267 = (Global_WindDirection593_g158267*2.0 + -1.0);
				float2 temp_output_21_0_g158280 = temp_output_606_0_g158267;
				float lerpResult128_g158268 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Flow_Speed1398_g158262 = _MotionSpeedValue;
				half Input_MotionSpeed62_g158267 = Flow_Speed1398_g158262;
				float temp_output_505_0_g158267 = ( lerpResult128_g158268 * Input_MotionSpeed62_g158267 );
				half Noise_Speed516_g158267 = ( temp_output_505_0_g158267 * 0.02 );
				float temp_output_15_0_g158280 = Noise_Speed516_g158267;
				float temp_output_23_0_g158280 = frac( temp_output_15_0_g158280 );
				float4 lerpResult39_g158280 = lerp( SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * temp_output_23_0_g158280 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * frac( ( temp_output_15_0_g158280 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_23_0_g158280 - 0.5 ) ) / 0.5 ));
				half4 Noise_Params535_g158267 = lerpResult39_g158280;
				half Flow_Noise1600_g158262 = _MotionNoiseValue;
				half Input_MotionNoise552_g158267 = Flow_Noise1600_g158262;
				float2 lerpResult560_g158267 = lerp( Global_WindDirection593_g158267 , (Noise_Params535_g158267).rg , Input_MotionNoise552_g158267);
				half Global_WindIntensity576_g158267 = (lerpResult627_g158267).z;
				half Flow_Value1602_g158262 = _MotionIntensityValue;
				half Input_MotionValue629_g158267 = Flow_Value1602_g158262;
				float2 lerpResult574_g158267 = lerp( float2( 0.5,0.5 ) , lerpResult560_g158267 , ( Global_WindIntensity576_g158267 * Input_MotionValue629_g158267 ));
				float3 appendResult566_g158267 = (float3(lerpResult574_g158267 , (Noise_Params535_g158267).b));
				float temp_output_136_0_g158269 = _global_wind_layer_value;
				float temp_output_19_0_g158271 = TVE_WindLayers[(int)temp_output_136_0_g158269];
				half3 Input_Position180_g158272 = Input_PositionWO419_g158267;
				float2 temp_output_75_0_g158272 = ( (TVE_RenderBaseCoords).zw + ( (TVE_RenderBaseCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_82_0_g158272 = temp_output_136_0_g158269;
				float2 temp_output_119_0_g158272 = ( (TVE_RenderNearCoords).zw + ( (TVE_RenderNearCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_7_0_g158277 = 1.0;
				float temp_output_10_0_g158277 = ( TVE_RenderNearFadeValue - temp_output_7_0_g158277 );
				float4 lerpResult131_g158272 = lerp( SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindBaseTex, sampler_Linear_Clamp, float3(temp_output_75_0_g158272,temp_output_82_0_g158272), 0.0 ) , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindNearTex, sampler_Linear_Repeat, float3(temp_output_119_0_g158272,temp_output_82_0_g158272), 0.0 ) , saturate( ( ( saturate( ( distance( Input_Position180_g158272 , (TVE_RenderNearPositionR).xyz ) / (TVE_RenderNearPositionR).w ) ) - temp_output_7_0_g158277 ) / temp_output_10_0_g158277 ) ));
				float4 temp_output_17_0_g158271 = lerpResult131_g158272;
				float4 temp_output_3_0_g158271 = TVE_WindParams;
				float4 ifLocalVar18_g158271 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g158271 >= 0.5 )
				ifLocalVar18_g158271 = temp_output_17_0_g158271;
				else
				ifLocalVar18_g158271 = temp_output_3_0_g158271;
				float4 lerpResult22_g158271 = lerp( temp_output_3_0_g158271 , temp_output_17_0_g158271 , temp_output_19_0_g158271);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g158271 = lerpResult22_g158271;
				#else
				float4 staticSwitch24_g158271 = ifLocalVar18_g158271;
				#endif
				float4 temp_output_610_0_g158267 = staticSwitch24_g158271;
				float3 lerpResult623_g158267 = lerp( appendResult566_g158267 , (temp_output_610_0_g158267).rgb , (temp_output_610_0_g158267).a);
				#ifdef TVE_MOTION_WIND_ELEMENT
				float3 staticSwitch612_g158267 = lerpResult623_g158267;
				#else
				float3 staticSwitch612_g158267 = appendResult566_g158267;
				#endif
				float3 temp_output_1563_567_g158262 = staticSwitch612_g158267;
				half Base_Noise1590_g158262 = abs( (temp_output_1563_567_g158262).z );
				float2 break83_g158263 = ((temp_output_1563_567_g158262).xy*2.0 + -1.0);
				float3 appendResult79_g158263 = (float3(break83_g158263.x , 0.0 , break83_g158263.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Base_Direction893_g158262 = (( mul( unity_WorldToObject, float4( appendResult79_g158263 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float lerpResult1587_g158262 = lerp( (Base_Noise1590_g158262*2.0 + -1.0) , Base_Noise1590_g158262 , length( Base_Direction893_g158262 ));
				#ifdef TVE_MOTION_BASE_BENDING
				float2 staticSwitch1573_g158262 = ( ( _MotionBaseIntensityValue * Base_Mask217_g158262 * lerpResult1587_g158262 ) * Base_Direction893_g158262 );
				#else
				float2 staticSwitch1573_g158262 = temp_cast_1;
				#endif
				half2 Base_Motion1440_g158262 = staticSwitch1573_g158262;
				half2 Final_RoationData1570_g158262 = Base_Motion1440_g158262;
				float4 In_RotationData16_g158265 = float4( Final_RoationData1570_g158262, 0.0 , 0.0 );
				{
				Data16_g158265.Dummy = In_Dummy16_g158265;
				Data16_g158265.PositionOS = In_PositionOS16_g158265;
				Data16_g158265.PositionWS = In_PositionWS16_g158265;
				Data16_g158265.PositionWO = In_PositionWO16_g158265;
				Data16_g158265.PositionRawOS = In_PositionRawOS16_g158265;
				Data16_g158265.PositionAddOS = In_PositionAddOS16_g158265;
				Data16_g158265.PivotOS = In_PivotOS16_g158265;
				Data16_g158265.PivotWS = In_PivotWS16_g158265;
				Data16_g158265.PivotWO = In_PivotWO16_g158265;
				Data16_g158265.NormalOS = In_NormalOS16_g158265;
				Data16_g158265.NormalWS = In_NormalWS16_g158265;
				Data16_g158265.NormalRawOS = In_NormalRawOS16_g158265;
				Data16_g158265.NormalRawWS = In_NormalRawWS16_g158265;
				Data16_g158265.TangentOS = In_TangentOS16_g158265;
				Data16_g158265.ViewDirWS = In_ViewDirWS16_g158265;
				Data16_g158265.VertexData = In_VertexData16_g158265;
				Data16_g158265.MotionData = In_MotionData16_g158265;
				Data16_g158265.BoundsData = In_BoundsData16_g158265;
				Data16_g158265.RotationData = In_RotationData16_g158265;
				}
				TVEModelData Data15_g158298 = Data16_g158265;
				float Out_Dummy15_g158298 = 0;
				float3 Out_PositionOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158298 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158298 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158298 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158298 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158298 = float3( 0,0,0 );
				float4 Out_VertexData15_g158298 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158298 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158298 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158298 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158298 = Data15_g158298.Dummy;
				Out_PositionOS15_g158298 = Data15_g158298.PositionOS;
				Out_PositionWS15_g158298 = Data15_g158298.PositionWS;
				Out_PositionWO15_g158298 = Data15_g158298.PositionWO;
				Out_PositionRawOS15_g158298 = Data15_g158298.PositionRawOS;
				Out_PositionAddOS15_g158298 = Data15_g158298.PositionAddOS;
				Out_PivotOS15_g158298 = Data15_g158298.PivotOS;
				Out_PivotWS15_g158298 = Data15_g158298.PivotWS;
				Out_PivotWO15_g158298 = Data15_g158298.PivotWO;
				Out_NormalOS15_g158298 = Data15_g158298.NormalOS;
				Out_NormalWS15_g158298 = Data15_g158298.NormalWS;
				Out_NormalRawOS15_g158298 = Data15_g158298.NormalRawOS;
				Out_NormalRawWS15_g158298 = Data15_g158298.NormalRawWS;
				Out_TangentOS15_g158298 = Data15_g158298.TangentOS;
				Out_ViewDirWS15_g158298 = Data15_g158298.ViewDirWS;
				Out_VertexData15_g158298 = Data15_g158298.VertexData;
				Out_MotionData15_g158298 = Data15_g158298.MotionData;
				Out_BoundsData15_g158298 = Data15_g158298.BoundsData;
				Out_RotationData15_g158298 = Data15_g158298.RotationData;
				}
				half3 Model_PositionOS147_g158297 = Out_PositionOS15_g158298;
				half3 Input_False58_g158303 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158300 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158301 = VertexPos40_g158300;
				float3 appendResult74_g158301 = (float3(VertexPos40_g158301.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g158301 = appendResult74_g158301;
				float3 break84_g158301 = VertexPos40_g158301;
				float3 appendResult81_g158301 = (float3(0.0 , break84_g158301.y , break84_g158301.z));
				half3 VertexPosOtherAxis82_g158301 = appendResult81_g158301;
				float4 temp_output_1567_33_g158297 = Out_RotationData15_g158298;
				half4 Model_VertexBend1569_g158297 = temp_output_1567_33_g158297;
				half2 Angle44_g158300 = (Model_VertexBend1569_g158297).xy;
				half Angle44_g158301 = (Angle44_g158300).y;
				half3 VertexPos40_g158302 = ( VertexPosRotationAxis50_g158301 + ( VertexPosOtherAxis82_g158301 * cos( Angle44_g158301 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g158301 ) * sin( Angle44_g158301 ) ) );
				float3 appendResult74_g158302 = (float3(0.0 , 0.0 , VertexPos40_g158302.z));
				half3 VertexPosRotationAxis50_g158302 = appendResult74_g158302;
				float3 break84_g158302 = VertexPos40_g158302;
				float3 appendResult81_g158302 = (float3(break84_g158302.x , break84_g158302.y , 0.0));
				half3 VertexPosOtherAxis82_g158302 = appendResult81_g158302;
				half Angle44_g158302 = -(Angle44_g158300).x;
				half3 Input_True57_g158303 = ( VertexPosRotationAxis50_g158302 + ( VertexPosOtherAxis82_g158302 * cos( Angle44_g158302 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g158302 ) * sin( Angle44_g158302 ) ) );
				#ifdef TVE_MOTION_BASE_BENDING
				float3 staticSwitch65_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch65_g158303 = Input_False58_g158303;
				#endif
				#ifdef TVE_MOTION_PUSH_BENDING
				float3 staticSwitch67_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch67_g158303 = staticSwitch65_g158303;
				#endif
				#ifdef TVE_BLANKET_BENDING
				float3 staticSwitch69_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch69_g158303 = staticSwitch67_g158303;
				#endif
				float3 temp_output_1567_31_g158297 = Out_PositionAddOS15_g158298;
				half3 Model_PositionADD1568_g158297 = temp_output_1567_31_g158297;
				half3 Final_PositionOS178_g158297 = ( staticSwitch69_g158303 + Model_PositionADD1568_g158297 );
				float3 In_PositionOS16_g158299 = Final_PositionOS178_g158297;
				float3 In_PositionWS16_g158299 = Out_PositionWS15_g158298;
				float3 In_PositionWO16_g158299 = Out_PositionWO15_g158298;
				float3 In_PositionRawOS16_g158299 = Out_PositionRawOS15_g158298;
				float3 In_PositionAddOS16_g158299 = temp_output_1567_31_g158297;
				float3 In_PivotOS16_g158299 = Out_PivotOS15_g158298;
				float3 In_PivotWS16_g158299 = Out_PivotWS15_g158298;
				float3 In_PivotWO16_g158299 = Out_PivotWO15_g158298;
				float3 In_NormalOS16_g158299 = Out_NormalOS15_g158298;
				float3 In_NormalWS16_g158299 = Out_NormalWS15_g158298;
				float3 In_NormalRawOS16_g158299 = Out_NormalRawOS15_g158298;
				float3 In_NormalRawWS16_g158299 = Out_NormalRawWS15_g158298;
				float4 In_TangentOS16_g158299 = Out_TangentOS15_g158298;
				float3 In_ViewDirWS16_g158299 = Out_ViewDirWS15_g158298;
				float4 In_VertexData16_g158299 = Out_VertexData15_g158298;
				float4 In_MotionData16_g158299 = Out_MotionData15_g158298;
				float4 In_BoundsData16_g158299 = Out_BoundsData15_g158298;
				float4 In_RotationData16_g158299 = temp_output_1567_33_g158297;
				{
				Data16_g158299.Dummy = In_Dummy16_g158299;
				Data16_g158299.PositionOS = In_PositionOS16_g158299;
				Data16_g158299.PositionWS = In_PositionWS16_g158299;
				Data16_g158299.PositionWO = In_PositionWO16_g158299;
				Data16_g158299.PositionRawOS = In_PositionRawOS16_g158299;
				Data16_g158299.PositionAddOS = In_PositionAddOS16_g158299;
				Data16_g158299.PivotOS = In_PivotOS16_g158299;
				Data16_g158299.PivotWS = In_PivotWS16_g158299;
				Data16_g158299.PivotWO = In_PivotWO16_g158299;
				Data16_g158299.NormalOS = In_NormalOS16_g158299;
				Data16_g158299.NormalWS = In_NormalWS16_g158299;
				Data16_g158299.NormalRawOS = In_NormalRawOS16_g158299;
				Data16_g158299.NormalRawWS = In_NormalRawWS16_g158299;
				Data16_g158299.TangentOS = In_TangentOS16_g158299;
				Data16_g158299.ViewDirWS = In_ViewDirWS16_g158299;
				Data16_g158299.VertexData = In_VertexData16_g158299;
				Data16_g158299.MotionData = In_MotionData16_g158299;
				Data16_g158299.BoundsData = In_BoundsData16_g158299;
				Data16_g158299.RotationData = In_RotationData16_g158299;
				}
				TVEModelData Data15_g158311 = Data16_g158299;
				float Out_Dummy15_g158311 = 0;
				float3 Out_PositionOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158311 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158311 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158311 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158311 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158311 = float3( 0,0,0 );
				float4 Out_VertexData15_g158311 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158311 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158311 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158311 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158311 = Data15_g158311.Dummy;
				Out_PositionOS15_g158311 = Data15_g158311.PositionOS;
				Out_PositionWS15_g158311 = Data15_g158311.PositionWS;
				Out_PositionWO15_g158311 = Data15_g158311.PositionWO;
				Out_PositionRawOS15_g158311 = Data15_g158311.PositionRawOS;
				Out_PositionAddOS15_g158311 = Data15_g158311.PositionAddOS;
				Out_PivotOS15_g158311 = Data15_g158311.PivotOS;
				Out_PivotWS15_g158311 = Data15_g158311.PivotWS;
				Out_PivotWO15_g158311 = Data15_g158311.PivotWO;
				Out_NormalOS15_g158311 = Data15_g158311.NormalOS;
				Out_NormalWS15_g158311 = Data15_g158311.NormalWS;
				Out_NormalRawOS15_g158311 = Data15_g158311.NormalRawOS;
				Out_NormalRawWS15_g158311 = Data15_g158311.NormalRawWS;
				Out_TangentOS15_g158311 = Data15_g158311.TangentOS;
				Out_ViewDirWS15_g158311 = Data15_g158311.ViewDirWS;
				Out_VertexData15_g158311 = Data15_g158311.VertexData;
				Out_MotionData15_g158311 = Data15_g158311.MotionData;
				Out_BoundsData15_g158311 = Data15_g158311.BoundsData;
				Out_RotationData15_g158311 = Data15_g158311.RotationData;
				}
				float3 temp_output_31_0_g158304 = Out_PositionOS15_g158311;
				float3 temp_output_6_0_g158318 = ( ( temp_output_31_0_g158304 - Out_PositionRawOS15_g158311 ) + _DisableSRPBatcher );
				half4 Dummy_Data433 = ( ( ( _VariationLiteInfo + _VariationColoring ) + ( _VariationCategory + _VariationEnd ) + ( _VariationIntensityValue + _VariationColorTwo + _VariationColorOne ) + ( _VariationMultiValue + _VariationNoiseRemap + _VariationNoisePivotsValue1 + _VariationNoiseTillingValue ) ) + ( ( _TintingLiteInfo + _TintingColoring ) + ( _TintingCategory + _TintingEnd + _TintingSpace + 0.0 + _TintingElementMode ) + ( _TintingIntensityValue + _TintingColor + _TintingGrayValue ) + ( _TintingMultiValue + _TintingLumaValue + _TintingLumaRemap ) + 0.0 + 0.0 ) + ( ( _DrynessLiteInfo + _DrynessColoring ) + ( _DrynessCategory + _DrynessEnd + _DrynessSpace + _DrynessElementMode + 0.0 ) + ( _DrynessIntensityValue + _DrynessColor + _DrynessGrayValue + _DrynessShiftValue + _DrynessSmoothnessValue + _DrynessSubsurfaceValue ) + ( _DrynessMultiValue + _DrynessLumaValue + _DrynessLumaRemap ) + 0.0 + 0.0 ) + ( ( _WetnessLiteInfo + _WetnessColoring ) + ( _WetnessCategory + _WetnessEnd + _WetnessElementMode + 0.0 ) + ( _WetnessIntensityValue + _WetnessContrastValue + _WetnessSmoothnessValue ) + float4( 0,0,0,0 ) + float4( 0,0,0,0 ) ) + ( ( _CutoutLiteInfo + _CutoutColoring ) + ( _CutoutCategory + _CutoutEnd + _CutoutSpace + _CutoutElementMode + 0.0 ) + ( _CutoutIntensityValue + 0.0 ) + ( _CutoutMultiValue + _CutoutAlphaValue + _CutoutNoiseValue + _CutoutNoiseTillingValue ) + 0.0 ) + ( ( _DitherLiteInfo + _DitherColoring ) + ( _DitherCategory + _DitherEnd ) + ( _DitherConstantValue + 0.0 + 0.0 + ( _DitherDistanceValue + _DitherDistanceMaxValue + _DitherDistanceMinValue ) + 0.0 ) + ( _DitherMultiValue + _DitherNoiseTillingValue ) ) + ( ( _SizeFadeLiteInfo + _SizeFadeColoring ) + ( _SizeFadeCategory + _SizeFadeEnd + _SizeFadeElementMode ) + ( _SizeFadeIntensityValue + _SizeFadeScaleMode + _SizeFadeScaleValue + _SizeFadeDistMinValue + _SizeFadeDistMaxValue ) ) );
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g158318 = ( float4( temp_output_6_0_g158318 , 0.0 ) + ( Dummy_Data433 * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g158318 = float4( temp_output_6_0_g158318 , 0.0 );
				#endif
				
				o.ase_texcoord11.xyz = vertexToFrag281_g156802;
				o.ase_texcoord12.xyz = ase_worldNormal;
				
				o.ase_texcoord10.xy = v.texcoord.xyzw.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;

				v.vertex.xyz += staticSwitch14_g158318.rgb;

				o.pos = UnityObjectToClipPos(v.vertex);

				float3 positionWS = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 normalWS = UnityObjectToWorldNormal(v.normal);
				float3 viewDirForLight = UnityWorldSpaceViewDir(positionWS);
				#ifndef DIRLIGHTMAP_OFF
					o.viewDir = viewDirForLight;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
					o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#else
					o.lmap.zw = 0;
				#endif
				#ifdef LIGHTMAP_ON
					o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					#ifdef DIRLIGHTMAP_OFF
						o.lmapFadePos.xyz = (mul(unity_ObjectToWorld, v.vertex).xyz - unity_ShadowFadeCenterAndType.xyz) * unity_ShadowFadeCenterAndType.w;
						o.lmapFadePos.w = (-UnityObjectToViewPos(v.vertex).z) * (1.0 - unity_ShadowFadeCenterAndType.w);
					#endif
				#else
					o.lmap.xy = 0;
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						o.sh = 0;
						o.sh = ShadeSHPerVertex (normalWS, o.sh);
					#endif
				#endif
				return o;
			}

			void frag_surf (v2f_surf IN , out half4 outGBuffer0 : SV_Target0, out half4 outGBuffer1 : SV_Target1, out half4 outGBuffer2 : SV_Target2, out half4 outEmission : SV_Target3
			#if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
				, out half4 outShadowMask : SV_Target4
			#endif
			, out float outDepth : SV_Depth )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 positionCS = 0;
				float3 positionWS = 0;

				float localBreakData4_g158307 = ( 0.0 );
				float localCompData3_g158292 = ( 0.0 );
				TVEVisualData Data3_g158292 = (TVEVisualData)0;
				half Dummy145_g158290 = ( _SubsurfaceCategory + _SubsurfaceEnd + ( _SubsurfaceDirectValue + _SubsurfaceNormalValue + _SubsurfaceAmbientValue + _SubsurfaceShadowValue ) + _SubsurfaceElementMode );
				float In_Dummy3_g158292 = Dummy145_g158290;
				float localBreakData4_g158291 = ( 0.0 );
				float localCompData3_g158259 = ( 0.0 );
				TVEVisualData Data3_g158259 = (TVEVisualData)0;
				half Dummy145_g158247 = ( _EmissiveCategory + _EmissiveEnd + ( _EmissivePowerMode + _EmissivePowerValue ) + _EmissiveElementMode + 0.0 );
				float In_Dummy3_g158259 = Dummy145_g158247;
				float localBreakData4_g158258 = ( 0.0 );
				float localCompData3_g158220 = ( 0.0 );
				TVEVisualData Data3_g158220 = (TVEVisualData)0;
				float2 uv_OverlayGlitterTex = IN.ase_texcoord10.xy * _OverlayGlitterTex_ST.xy + _OverlayGlitterTex_ST.zw;
				half4 Dummy594_g158217 = ( ( _OverlayCategory + _OverlayEnd + _OverlaySpace + _OverlayElementMode + _OverlayBakeInfo ) + ( _OverlayLiteInfo + _OverlayColoringOn + _OverlayColoringOff ) + ( SAMPLE_TEXTURE2D( _OverlayGlitterTex, sampler_OverlayGlitterTex, uv_OverlayGlitterTex ) + _OverlayGlitterTillingValue + _OverlayGlitterIntensityValue + _OverlayGlitterColor + _OverlayGlitterDistValue ) );
				float In_Dummy3_g158220 = Dummy594_g158217.r;
				float localBreakData4_g158218 = ( 0.0 );
				float localCompData3_g156877 = ( 0.0 );
				TVEVisualData Data3_g156877 = (TVEVisualData)0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, positionCS, positionWS, IN.UVsFrame122_g156801, IN.UVsFrame222_g156801, IN.UVsFrame322_g156801, IN.octaframe22_g156801, IN.viewPos22_g156801, output0, output1 );
				float In_Dummy3_g156877 = output1.r;
				float4 break227_g156876 = output0;
				half Local_MultiMask249_g156876 = break227_g156876.b;
				float lerpResult289_g156876 = lerp( 1.0 , Local_MultiMask249_g156876 , _ImpostorColorMode);
				float3 lerpResult292_g156876 = lerp( (_ImpostorColorTwo).rgb , (_ImpostorColor).rgb , lerpResult289_g156876);
				half3 Local_Albedo239_g156876 = ( o.Albedo * lerpResult292_g156876 );
				float3 In_Albedo3_g156877 = Local_Albedo239_g156876;
				float2 temp_cast_4 = (0.5).xx;
				float2 In_NormalTS3_g156877 = temp_cast_4;
				float3 In_NormalWS3_g156877 = o.Normal;
				half Local_Metallic247_g156876 = break227_g156876.r;
				half Final_Metallic238_g156876 = ( Local_Metallic247_g156876 * _ImpostorMetallicValue );
				half Local_Smoothness250_g156876 = break227_g156876.a;
				half Final_Smoothness233_g156876 = ( Local_Smoothness250_g156876 * _ImpostorSmoothnessValue );
				float4 appendResult257_g156876 = (float4(Final_Metallic238_g156876 , 1.0 , 1.0 , Final_Smoothness233_g156876));
				float4 In_Shader3_g156877 = appendResult257_g156876;
				half Local_EmissiveMask248_g156876 = break227_g156876.g;
				float4 appendResult286_g156876 = (float4(Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , 1.0));
				float4 In_Emissive3_g156877 = appendResult286_g156876;
				float3 temp_output_3_0_g156878 = Local_Albedo239_g156876;
				float dotResult20_g156878 = dot( temp_output_3_0_g156878 , float3(0.2126,0.7152,0.0722) );
				half Local_Grayscale268_g156876 = dotResult20_g156878;
				float In_Grayscale3_g156877 = Local_Grayscale268_g156876;
				float clampResult267_g156876 = clamp( saturate( ( Local_Grayscale268_g156876 * 5.0 ) ) , 0.2 , 1.0 );
				half Local_Luminosity269_g156876 = clampResult267_g156876;
				float In_Luminosity3_g156877 = Local_Luminosity269_g156876;
				float In_MultiMask3_g156877 = Local_MultiMask249_g156876;
				float In_AlphaClip3_g156877 = 0.0;
				float In_AlphaFade3_g156877 = 1.0;
				float3 temp_cast_5 = (1.0).xxx;
				float3 In_Translucency3_g156877 = temp_cast_5;
				float In_Transmission3_g156877 = 1.0;
				float In_Thickness3_g156877 = 0.0;
				float In_Diffusion3_g156877 = 0.0;
				{
				Data3_g156877.Dummy = In_Dummy3_g156877;
				Data3_g156877.Albedo = In_Albedo3_g156877;
				Data3_g156877.NormalTS = In_NormalTS3_g156877;
				Data3_g156877.NormalWS = In_NormalWS3_g156877;
				Data3_g156877.Shader = In_Shader3_g156877;
				Data3_g156877.Emissive= In_Emissive3_g156877;
				Data3_g156877.MultiMask = In_MultiMask3_g156877;
				Data3_g156877.Grayscale = In_Grayscale3_g156877;
				Data3_g156877.Luminosity = In_Luminosity3_g156877;
				Data3_g156877.AlphaClip = In_AlphaClip3_g156877;
				Data3_g156877.AlphaFade = In_AlphaFade3_g156877;
				Data3_g156877.Translucency = In_Translucency3_g156877;
				Data3_g156877.Transmission = In_Transmission3_g156877;
				Data3_g156877.Thickness = In_Thickness3_g156877;
				Data3_g156877.Diffusion = In_Diffusion3_g156877;
				}
				TVEVisualData Data4_g158218 = Data3_g156877;
				float Out_Dummy4_g158218 = 0;
				float3 Out_Albedo4_g158218 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158218 = float2( 0,0 );
				float3 Out_NormalWS4_g158218 = float3( 0,0,0 );
				float4 Out_Shader4_g158218 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158218 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158218 = 0;
				float Out_Grayscale4_g158218 = 0;
				float Out_Luminosity4_g158218 = 0;
				float Out_AlphaClip4_g158218 = 0;
				float Out_AlphaFade4_g158218 = 0;
				float3 Out_Translucency4_g158218 = float3( 0,0,0 );
				float Out_Transmission4_g158218 = 0;
				float Out_Thickness4_g158218 = 0;
				float Out_Diffusion4_g158218 = 0;
				{
				Out_Dummy4_g158218 = Data4_g158218.Dummy;
				Out_Albedo4_g158218 = Data4_g158218.Albedo;
				Out_NormalTS4_g158218 = Data4_g158218.NormalTS;
				Out_NormalWS4_g158218 = Data4_g158218.NormalWS;
				Out_Shader4_g158218 = Data4_g158218.Shader;
				Out_Emissive4_g158218= Data4_g158218.Emissive;
				Out_MultiMask4_g158218 = Data4_g158218.MultiMask;
				Out_Grayscale4_g158218 = Data4_g158218.Grayscale;
				Out_Luminosity4_g158218= Data4_g158218.Luminosity;
				Out_AlphaClip4_g158218 = Data4_g158218.AlphaClip;
				Out_AlphaFade4_g158218 = Data4_g158218.AlphaFade;
				Out_Translucency4_g158218 = Data4_g158218.Translucency;
				Out_Transmission4_g158218 = Data4_g158218.Transmission;
				Out_Thickness4_g158218 = Data4_g158218.Thickness;
				Out_Diffusion4_g158218 = Data4_g158218.Diffusion;
				}
				half3 Visual_Albedo127_g158217 = Out_Albedo4_g158218;
				float3 temp_output_622_0_g158217 = (_OverlayColor).rgb;
				half Overlay_TexMask906_g158217 = 1.0;
				float3 temp_output_739_21_g158217 = Out_NormalWS4_g158218;
				half3 Visual_NormalWS749_g158217 = temp_output_739_21_g158217;
				float clampResult17_g158237 = clamp( saturate( (Visual_NormalWS749_g158217).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g158236 = _OverlayProjRemap.x;
				float temp_output_10_0_g158236 = ( _OverlayProjRemap.y - temp_output_7_0_g158236 );
				float lerpResult842_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158237 - temp_output_7_0_g158236 ) / ( temp_output_10_0_g158236 + 0.0001 ) ) ) , _OverlayProjValue);
				half Overlay_MaskProj457_g158217 = lerpResult842_g158217;
				float temp_output_739_15_g158217 = Out_Luminosity4_g158218;
				half Visual_Luminosity654_g158217 = temp_output_739_15_g158217;
				float clampResult17_g158239 = clamp( Visual_Luminosity654_g158217 , 0.0001 , 0.9999 );
				float temp_output_7_0_g158238 = _OverlayLumaRemap.x;
				float temp_output_10_0_g158238 = ( _OverlayLumaRemap.y - temp_output_7_0_g158238 );
				float lerpResult587_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158239 - temp_output_7_0_g158238 ) / ( temp_output_10_0_g158238 + 0.0001 ) ) ) , _OverlayLumaValue);
				half Overlay_MaskLuma438_g158217 = lerpResult587_g158217;
				half Overlay_VertMask801_g158217 = 1.0;
				half Overlay_MaskNoise427_g158217 = 1.0;
				float localBuildGlobalData204_g156811 = ( 0.0 );
				TVEGlobalData Data204_g156811 = (TVEGlobalData)0;
				half Dummy211_g156811 = ( _GlobalLiteInfo + ( _GlobalCategory + _GlobalEnd ) );
				float In_Dummy204_g156811 = Dummy211_g156811;
				float4 temp_output_362_164_g156811 = TVE_CoatParams;
				half4 Coat_Params302_g156811 = temp_output_362_164_g156811;
				float4 In_CoatParams204_g156811 = Coat_Params302_g156811;
				float4 temp_output_361_164_g156811 = TVE_PaintParams;
				half4 Paint_Params71_g156811 = temp_output_361_164_g156811;
				float4 In_PaintParams204_g156811 = Paint_Params71_g156811;
				float4 temp_output_365_163_g156811 = TVE_GlowParams;
				half4 Glow_Params248_g156811 = temp_output_365_163_g156811;
				float4 In_GlowParams204_g156811 = Glow_Params248_g156811;
				float4 temp_output_363_141_g156811 = TVE_AtmoParams;
				half4 Atmo_Params80_g156811 = temp_output_363_141_g156811;
				float4 In_AtmoParams204_g156811 = Atmo_Params80_g156811;
				float4 temp_output_364_139_g156811 = TVE_FormParams;
				half4 Form_Params112_g156811 = temp_output_364_139_g156811;
				float4 In_FormParams204_g156811 = Form_Params112_g156811;
				float4 temp_output_366_145_g156811 = TVE_WindParams;
				half4 Wind_Params88_g156811 = temp_output_366_145_g156811;
				float4 In_WindParams204_g156811 = Wind_Params88_g156811;
				float4 temp_output_367_145_g156811 = TVE_PushParams;
				half4 Push_Params335_g156811 = temp_output_367_145_g156811;
				float4 In_PushParams204_g156811 = Push_Params335_g156811;
				{
				Data204_g156811.Dummy = In_Dummy204_g156811;
				Data204_g156811.CoatParams = In_CoatParams204_g156811;
				Data204_g156811.PaintParams = In_PaintParams204_g156811;
				Data204_g156811.GlowParams = In_GlowParams204_g156811;
				Data204_g156811.AtmoParams = In_AtmoParams204_g156811;
				Data204_g156811.FormParams= In_FormParams204_g156811;
				Data204_g156811.WindParams = In_WindParams204_g156811;
				Data204_g156811.PushParams = In_PushParams204_g156811;
				}
				TVEGlobalData Data15_g158219 = Data204_g156811;
				float Out_Dummy15_g158219 = 0;
				float4 Out_CoatParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158219 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158219 = Data15_g158219.Dummy;
				Out_CoatParams15_g158219 = Data15_g158219.CoatParams;
				Out_PaintParams15_g158219 = Data15_g158219.PaintParams;
				Out_GlowParams15_g158219 = Data15_g158219.GlowParams;
				Out_AtmoParams15_g158219= Data15_g158219.AtmoParams;
				Out_FadeParams15_g158219= Data15_g158219.FadeParams;
				Out_FormParams15_g158219 = Data15_g158219.FormParams;
				Out_LandParams15_g158219 = Data15_g158219.LandParams;
				Out_WindParams15_g158219 = Data15_g158219.WindParams;
				Out_PushParams15_g158219 = Data15_g158219.PushParams;
				}
				half4 Global_AtmoParams516_g158217 = Out_AtmoParams15_g158219;
				#ifdef TVE_OVERLAY_ELEMENT
				float staticSwitch705_g158217 = (Global_AtmoParams516_g158217).z;
				#else
				float staticSwitch705_g158217 = 1.0;
				#endif
				half Overlay_MaskGlobal429_g158217 = staticSwitch705_g158217;
				half Custom_Mask646_g158217 = 1.0;
				float temp_output_7_0_g158244 = _OverlayBlendRemap1.x;
				float temp_output_10_0_g158244 = ( _OverlayBlendRemap1.y - temp_output_7_0_g158244 );
				half Overlay_Mask494_g158217 = saturate( ( ( ( _OverlayIntensityValue * Overlay_TexMask906_g158217 * Overlay_MaskProj457_g158217 * Overlay_MaskLuma438_g158217 * Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 * Custom_Mask646_g158217 ) - temp_output_7_0_g158244 ) / ( temp_output_10_0_g158244 + 0.0001 ) ) );
				float3 lerpResult467_g158217 = lerp( Visual_Albedo127_g158217 , temp_output_622_0_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float3 staticSwitch577_g158217 = lerpResult467_g158217;
				#else
				float3 staticSwitch577_g158217 = Visual_Albedo127_g158217;
				#endif
				half3 Final_Albedo493_g158217 = staticSwitch577_g158217;
				float3 In_Albedo3_g158220 = Final_Albedo493_g158217;
				half2 Visual_NormalTS535_g158217 = Out_NormalTS4_g158218;
				float2 lerpResult551_g158217 = lerp( Visual_NormalTS535_g158217 , ( Visual_NormalTS535_g158217 * _OverlayNormalValue ) , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float2 staticSwitch583_g158217 = lerpResult551_g158217;
				#else
				float2 staticSwitch583_g158217 = Visual_NormalTS535_g158217;
				#endif
				half2 Final_NormalTS499_g158217 = staticSwitch583_g158217;
				float2 In_NormalTS3_g158220 = Final_NormalTS499_g158217;
				float3 In_NormalWS3_g158220 = temp_output_739_21_g158217;
				half4 Visual_Masks536_g158217 = Out_Shader4_g158218;
				float4 appendResult585_g158217 = (float4(0.0 , 1.0 , 0.0 , _OverlaySmoothnessValue));
				float4 lerpResult584_g158217 = lerp( Visual_Masks536_g158217 , appendResult585_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float4 staticSwitch586_g158217 = lerpResult584_g158217;
				#else
				float4 staticSwitch586_g158217 = Visual_Masks536_g158217;
				#endif
				half4 Final_Masks482_g158217 = staticSwitch586_g158217;
				float4 In_Shader3_g158220 = Final_Masks482_g158217;
				float4 In_Emissive3_g158220 = Out_Emissive4_g158218;
				float temp_output_739_12_g158217 = Out_Grayscale4_g158218;
				float In_Grayscale3_g158220 = temp_output_739_12_g158217;
				float In_Luminosity3_g158220 = temp_output_739_15_g158217;
				float In_MultiMask3_g158220 = Out_MultiMask4_g158218;
				float In_AlphaClip3_g158220 = Out_AlphaClip4_g158218;
				float In_AlphaFade3_g158220 = Out_AlphaFade4_g158218;
				float3 In_Translucency3_g158220 = Out_Translucency4_g158218;
				half Visual_Transmission699_g158217 = Out_Transmission4_g158218;
				float lerpResult746_g158217 = lerp( Visual_Transmission699_g158217 , ( Visual_Transmission699_g158217 * _OverlaySubsurfaceValue ) , ( Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 ));
				#ifdef TVE_OVERLAY
				float staticSwitch703_g158217 = lerpResult746_g158217;
				#else
				float staticSwitch703_g158217 = Visual_Transmission699_g158217;
				#endif
				half Final_Transmission702_g158217 = staticSwitch703_g158217;
				float In_Transmission3_g158220 = Final_Transmission702_g158217;
				float In_Thickness3_g158220 = Out_Thickness4_g158218;
				float In_Diffusion3_g158220 = Out_Diffusion4_g158218;
				{
				Data3_g158220.Dummy = In_Dummy3_g158220;
				Data3_g158220.Albedo = In_Albedo3_g158220;
				Data3_g158220.NormalTS = In_NormalTS3_g158220;
				Data3_g158220.NormalWS = In_NormalWS3_g158220;
				Data3_g158220.Shader = In_Shader3_g158220;
				Data3_g158220.Emissive= In_Emissive3_g158220;
				Data3_g158220.MultiMask = In_MultiMask3_g158220;
				Data3_g158220.Grayscale = In_Grayscale3_g158220;
				Data3_g158220.Luminosity = In_Luminosity3_g158220;
				Data3_g158220.AlphaClip = In_AlphaClip3_g158220;
				Data3_g158220.AlphaFade = In_AlphaFade3_g158220;
				Data3_g158220.Translucency = In_Translucency3_g158220;
				Data3_g158220.Transmission = In_Transmission3_g158220;
				Data3_g158220.Thickness = In_Thickness3_g158220;
				Data3_g158220.Diffusion = In_Diffusion3_g158220;
				}
				TVEVisualData Data4_g158258 = Data3_g158220;
				float Out_Dummy4_g158258 = 0;
				float3 Out_Albedo4_g158258 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158258 = float2( 0,0 );
				float3 Out_NormalWS4_g158258 = float3( 0,0,0 );
				float4 Out_Shader4_g158258 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158258 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158258 = 0;
				float Out_Grayscale4_g158258 = 0;
				float Out_Luminosity4_g158258 = 0;
				float Out_AlphaClip4_g158258 = 0;
				float Out_AlphaFade4_g158258 = 0;
				float3 Out_Translucency4_g158258 = float3( 0,0,0 );
				float Out_Transmission4_g158258 = 0;
				float Out_Thickness4_g158258 = 0;
				float Out_Diffusion4_g158258 = 0;
				{
				Out_Dummy4_g158258 = Data4_g158258.Dummy;
				Out_Albedo4_g158258 = Data4_g158258.Albedo;
				Out_NormalTS4_g158258 = Data4_g158258.NormalTS;
				Out_NormalWS4_g158258 = Data4_g158258.NormalWS;
				Out_Shader4_g158258 = Data4_g158258.Shader;
				Out_Emissive4_g158258= Data4_g158258.Emissive;
				Out_MultiMask4_g158258 = Data4_g158258.MultiMask;
				Out_Grayscale4_g158258 = Data4_g158258.Grayscale;
				Out_Luminosity4_g158258= Data4_g158258.Luminosity;
				Out_AlphaClip4_g158258 = Data4_g158258.AlphaClip;
				Out_AlphaFade4_g158258 = Data4_g158258.AlphaFade;
				Out_Translucency4_g158258 = Data4_g158258.Translucency;
				Out_Transmission4_g158258 = Data4_g158258.Transmission;
				Out_Thickness4_g158258 = Data4_g158258.Thickness;
				Out_Diffusion4_g158258 = Data4_g158258.Diffusion;
				}
				float3 temp_output_297_0_g158247 = Out_Albedo4_g158258;
				float3 In_Albedo3_g158259 = temp_output_297_0_g158247;
				float2 In_NormalTS3_g158259 = Out_NormalTS4_g158258;
				float3 In_NormalWS3_g158259 = Out_NormalWS4_g158258;
				float4 In_Shader3_g158259 = Out_Shader4_g158258;
				float4 temp_cast_6 = (0.0).xxxx;
				half4 Visual_Emissive255_g158247 = Out_Emissive4_g158258;
				half Emissive_MeshMask221_g158247 = 1.0;
				half Emissive_Mask103_g158247 = 1.0;
				float temp_output_279_0_g158247 = ( Emissive_MeshMask221_g158247 * Emissive_Mask103_g158247 );
				float3 appendResult293_g158247 = (float3(temp_output_279_0_g158247 , temp_output_279_0_g158247 , temp_output_279_0_g158247));
				half3 Local_EmissiveColor278_g158247 = appendResult293_g158247;
				float3 temp_cast_7 = (1.0).xxx;
				TVEGlobalData Data15_g158249 = Data204_g156811;
				float Out_Dummy15_g158249 = 0;
				float4 Out_CoatParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158249 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158249 = Data15_g158249.Dummy;
				Out_CoatParams15_g158249 = Data15_g158249.CoatParams;
				Out_PaintParams15_g158249 = Data15_g158249.PaintParams;
				Out_GlowParams15_g158249 = Data15_g158249.GlowParams;
				Out_AtmoParams15_g158249= Data15_g158249.AtmoParams;
				Out_FadeParams15_g158249= Data15_g158249.FadeParams;
				Out_FormParams15_g158249 = Data15_g158249.FormParams;
				Out_LandParams15_g158249 = Data15_g158249.LandParams;
				Out_WindParams15_g158249 = Data15_g158249.WindParams;
				Out_PushParams15_g158249 = Data15_g158249.PushParams;
				}
				half4 Global_GlowParams179_g158247 = Out_GlowParams15_g158249;
				float3 lerpResult299_g158247 = lerp( float3( 1,1,1 ) , (Global_GlowParams179_g158247).xyz , TVE_IsEnabled);
				#ifdef TVE_EMISSIVE_ELEMENT
				float3 staticSwitch228_g158247 = lerpResult299_g158247;
				#else
				float3 staticSwitch228_g158247 = temp_cast_7;
				#endif
				half3 Emissive_GlobalMask248_g158247 = staticSwitch228_g158247;
				half3 Local_EmissiveValue88_g158247 = ( _EmissiveIntensityValue * (_EmissiveColor).rgb * Emissive_GlobalMask248_g158247 );
				half3 Emissive_Blend260_g158247 = ( ( (Visual_Emissive255_g158247).xyz * Local_EmissiveColor278_g158247 ) * Local_EmissiveValue88_g158247 );
				float3 temp_output_3_0_g158257 = Emissive_Blend260_g158247;
				float temp_output_15_0_g158257 = _emissive_power_value;
				float3 temp_output_23_0_g158257 = ( temp_output_3_0_g158257 * temp_output_15_0_g158257 );
				float4 appendResult295_g158247 = (float4(temp_output_23_0_g158257 , Emissive_Mask103_g158247));
				#ifdef TVE_EMISSIVE
				float4 staticSwitch129_g158247 = appendResult295_g158247;
				#else
				float4 staticSwitch129_g158247 = temp_cast_6;
				#endif
				half4 Final_Emissive184_g158247 = staticSwitch129_g158247;
				float4 In_Emissive3_g158259 = Final_Emissive184_g158247;
				float In_Grayscale3_g158259 = Out_Grayscale4_g158258;
				float In_Luminosity3_g158259 = Out_Luminosity4_g158258;
				float temp_output_297_11_g158247 = Out_MultiMask4_g158258;
				float In_MultiMask3_g158259 = temp_output_297_11_g158247;
				float In_AlphaClip3_g158259 = Out_AlphaClip4_g158258;
				float In_AlphaFade3_g158259 = Out_AlphaFade4_g158258;
				float3 In_Translucency3_g158259 = Out_Translucency4_g158258;
				float In_Transmission3_g158259 = Out_Transmission4_g158258;
				float In_Thickness3_g158259 = Out_Thickness4_g158258;
				float In_Diffusion3_g158259 = Out_Diffusion4_g158258;
				{
				Data3_g158259.Dummy = In_Dummy3_g158259;
				Data3_g158259.Albedo = In_Albedo3_g158259;
				Data3_g158259.NormalTS = In_NormalTS3_g158259;
				Data3_g158259.NormalWS = In_NormalWS3_g158259;
				Data3_g158259.Shader = In_Shader3_g158259;
				Data3_g158259.Emissive= In_Emissive3_g158259;
				Data3_g158259.MultiMask = In_MultiMask3_g158259;
				Data3_g158259.Grayscale = In_Grayscale3_g158259;
				Data3_g158259.Luminosity = In_Luminosity3_g158259;
				Data3_g158259.AlphaClip = In_AlphaClip3_g158259;
				Data3_g158259.AlphaFade = In_AlphaFade3_g158259;
				Data3_g158259.Translucency = In_Translucency3_g158259;
				Data3_g158259.Transmission = In_Transmission3_g158259;
				Data3_g158259.Thickness = In_Thickness3_g158259;
				Data3_g158259.Diffusion = In_Diffusion3_g158259;
				}
				TVEVisualData Data4_g158291 = Data3_g158259;
				float Out_Dummy4_g158291 = 0;
				float3 Out_Albedo4_g158291 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158291 = float2( 0,0 );
				float3 Out_NormalWS4_g158291 = float3( 0,0,0 );
				float4 Out_Shader4_g158291 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158291 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158291 = 0;
				float Out_Grayscale4_g158291 = 0;
				float Out_Luminosity4_g158291 = 0;
				float Out_AlphaClip4_g158291 = 0;
				float Out_AlphaFade4_g158291 = 0;
				float3 Out_Translucency4_g158291 = float3( 0,0,0 );
				float Out_Transmission4_g158291 = 0;
				float Out_Thickness4_g158291 = 0;
				float Out_Diffusion4_g158291 = 0;
				{
				Out_Dummy4_g158291 = Data4_g158291.Dummy;
				Out_Albedo4_g158291 = Data4_g158291.Albedo;
				Out_NormalTS4_g158291 = Data4_g158291.NormalTS;
				Out_NormalWS4_g158291 = Data4_g158291.NormalWS;
				Out_Shader4_g158291 = Data4_g158291.Shader;
				Out_Emissive4_g158291= Data4_g158291.Emissive;
				Out_MultiMask4_g158291 = Data4_g158291.MultiMask;
				Out_Grayscale4_g158291 = Data4_g158291.Grayscale;
				Out_Luminosity4_g158291= Data4_g158291.Luminosity;
				Out_AlphaClip4_g158291 = Data4_g158291.AlphaClip;
				Out_AlphaFade4_g158291 = Data4_g158291.AlphaFade;
				Out_Translucency4_g158291 = Data4_g158291.Translucency;
				Out_Transmission4_g158291 = Data4_g158291.Transmission;
				Out_Thickness4_g158291 = Data4_g158291.Thickness;
				Out_Diffusion4_g158291 = Data4_g158291.Diffusion;
				}
				half3 Visual_Albedo199_g158290 = Out_Albedo4_g158291;
				float3 temp_cast_8 = (0.0).xxx;
				half3 Subsurface_Color264_g158290 = ( (_SubsurfaceColor).rgb * Visual_Albedo199_g158290 );
				half Visual_Transmission138_g158290 = Out_Transmission4_g158291;
				half Subsurface_Value268_g158290 = _SubsurfaceIntensityValue;
				TVEGlobalData Data15_g158294 = Data204_g156811;
				float Out_Dummy15_g158294 = 0;
				float4 Out_CoatParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158294 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158294 = Data15_g158294.Dummy;
				Out_CoatParams15_g158294 = Data15_g158294.CoatParams;
				Out_PaintParams15_g158294 = Data15_g158294.PaintParams;
				Out_GlowParams15_g158294 = Data15_g158294.GlowParams;
				Out_AtmoParams15_g158294= Data15_g158294.AtmoParams;
				Out_FadeParams15_g158294= Data15_g158294.FadeParams;
				Out_FormParams15_g158294 = Data15_g158294.FormParams;
				Out_LandParams15_g158294 = Data15_g158294.LandParams;
				Out_WindParams15_g158294 = Data15_g158294.WindParams;
				Out_PushParams15_g158294 = Data15_g158294.PushParams;
				}
				half4 Global_GlowParams373_g158290 = Out_GlowParams15_g158294;
				float lerpResult403_g158290 = lerp( 1.0 , saturate( (Global_GlowParams373_g158290).w ) , TVE_IsEnabled);
				#ifdef TVE_SUBSURFACE_ELEMENT
				float staticSwitch367_g158290 = lerpResult403_g158290;
				#else
				float staticSwitch367_g158290 = 1.0;
				#endif
				half Subsurface_GlobalMask369_g158290 = staticSwitch367_g158290;
				float temp_output_301_11_g158290 = Out_MultiMask4_g158291;
				half Visual_MultiMask292_g158290 = temp_output_301_11_g158290;
				float lerpResult293_g158290 = lerp( 1.0 , Visual_MultiMask292_g158290 , _SubsurfaceMultiValue);
				half Subsurface_MultiMask296_g158290 = lerpResult293_g158290;
				half Custom_Mask363_g158290 = 1.0;
				#ifdef TVE_SUBSURFACE
				float staticSwitch345_g158290 = ( Visual_Transmission138_g158290 * Subsurface_Value268_g158290 * Subsurface_GlobalMask369_g158290 * Subsurface_MultiMask296_g158290 * Custom_Mask363_g158290 );
				#else
				float staticSwitch345_g158290 = 0.0;
				#endif
				half Final_Transmission269_g158290 = staticSwitch345_g158290;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch348_g158290 = ( Subsurface_Color264_g158290 * Final_Transmission269_g158290 * 10.0 );
				#else
				float3 staticSwitch348_g158290 = temp_cast_8;
				#endif
				half3 Final_Translucency254_g158290 = staticSwitch348_g158290;
				TVEModelData Data16_g156810 = (TVEModelData)0;
				float In_Dummy16_g156810 = 0.0;
				float3 In_PositionOS16_g156810 = float3( 0,0,0 );
				half3 Input_PositionWS218_g156802 = positionWS;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156810 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156810 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156810 = float3( 0,0,0 );
				float3 In_PositionAddOS16_g156810 = float3( 0,0,0 );
				float3 In_PivotOS16_g156810 = float3( 0,0,0 );
				float3 vertexToFrag281_g156802 = IN.ase_texcoord11.xyz;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156810 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156810 = Model_PivotWO133_g156802;
				float3 In_NormalOS16_g156810 = float3( 0,0,0 );
				float3 ase_worldNormal = IN.ase_texcoord12.xyz;
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156810 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156810 = float3( 0,0,0 );
				float3 In_NormalRawWS16_g156810 = float3( 0,0,0 );
				float4 In_TangentOS16_g156810 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156810 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156810 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156810 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156810 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156810 = float4( 0,0,0,0 );
				{
				Data16_g156810.Dummy = In_Dummy16_g156810;
				Data16_g156810.PositionOS = In_PositionOS16_g156810;
				Data16_g156810.PositionWS = In_PositionWS16_g156810;
				Data16_g156810.PositionWO = In_PositionWO16_g156810;
				Data16_g156810.PositionRawOS = In_PositionRawOS16_g156810;
				Data16_g156810.PositionAddOS = In_PositionAddOS16_g156810;
				Data16_g156810.PivotOS = In_PivotOS16_g156810;
				Data16_g156810.PivotWS = In_PivotWS16_g156810;
				Data16_g156810.PivotWO = In_PivotWO16_g156810;
				Data16_g156810.NormalOS = In_NormalOS16_g156810;
				Data16_g156810.NormalWS = In_NormalWS16_g156810;
				Data16_g156810.NormalRawOS = In_NormalRawOS16_g156810;
				Data16_g156810.NormalRawWS = In_NormalRawWS16_g156810;
				Data16_g156810.TangentOS = In_TangentOS16_g156810;
				Data16_g156810.ViewDirWS = In_ViewDirWS16_g156810;
				Data16_g156810.VertexData = In_VertexData16_g156810;
				Data16_g156810.MotionData = In_MotionData16_g156810;
				Data16_g156810.BoundsData = In_BoundsData16_g156810;
				Data16_g156810.RotationData = In_RotationData16_g156810;
				}
				TVEModelData Data15_g158293 = Data16_g156810;
				float Out_Dummy15_g158293 = 0;
				float3 Out_PositionOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158293 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158293 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158293 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158293 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158293 = float3( 0,0,0 );
				float4 Out_VertexData15_g158293 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158293 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158293 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158293 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158293 = Data15_g158293.Dummy;
				Out_PositionOS15_g158293 = Data15_g158293.PositionOS;
				Out_PositionWS15_g158293 = Data15_g158293.PositionWS;
				Out_PositionWO15_g158293 = Data15_g158293.PositionWO;
				Out_PositionRawOS15_g158293 = Data15_g158293.PositionRawOS;
				Out_PositionAddOS15_g158293 = Data15_g158293.PositionAddOS;
				Out_PivotOS15_g158293 = Data15_g158293.PivotOS;
				Out_PivotWS15_g158293 = Data15_g158293.PivotWS;
				Out_PivotWO15_g158293 = Data15_g158293.PivotWO;
				Out_NormalOS15_g158293 = Data15_g158293.NormalOS;
				Out_NormalWS15_g158293 = Data15_g158293.NormalWS;
				Out_NormalRawOS15_g158293 = Data15_g158293.NormalRawOS;
				Out_NormalRawWS15_g158293 = Data15_g158293.NormalRawWS;
				Out_TangentOS15_g158293 = Data15_g158293.TangentOS;
				Out_ViewDirWS15_g158293 = Data15_g158293.ViewDirWS;
				Out_VertexData15_g158293 = Data15_g158293.VertexData;
				Out_MotionData15_g158293 = Data15_g158293.MotionData;
				Out_BoundsData15_g158293 = Data15_g158293.BoundsData;
				Out_RotationData15_g158293 = Data15_g158293.RotationData;
				}
				half3 Model_ViewDirWS392_g158290 = Out_ViewDirWS15_g158293;
				float dotResult324_g158290 = dot( -TVE_MainLightDirection , Model_ViewDirWS392_g158290 );
				float saferPower323_g158290 = abs( saturate( dotResult324_g158290 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch330_g158290 = 0.0;
				#else
				float staticSwitch330_g158290 = ( pow( saferPower323_g158290 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View320_g158290 = staticSwitch330_g158290;
				float3 temp_output_6_0_g158295 = ( Final_Translucency254_g158290 * Mask_Subsurface_View320_g158290 );
				#ifdef TVE_REGISTER
				float3 staticSwitch14_g158295 = ( temp_output_6_0_g158295 + ( _SubsurfaceAproxInfo * 0.0 ) );
				#else
				float3 staticSwitch14_g158295 = temp_output_6_0_g158295;
				#endif
				half3 Subsurface_Approximation333_g158290 = staticSwitch14_g158295;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch353_g158290 = ( Visual_Albedo199_g158290 + Subsurface_Approximation333_g158290 );
				#else
				float3 staticSwitch353_g158290 = Visual_Albedo199_g158290;
				#endif
				half3 Final_Albedo312_g158290 = staticSwitch353_g158290;
				float3 In_Albedo3_g158292 = Final_Albedo312_g158290;
				float2 In_NormalTS3_g158292 = Out_NormalTS4_g158291;
				float3 In_NormalWS3_g158292 = Out_NormalWS4_g158291;
				float4 In_Shader3_g158292 = Out_Shader4_g158291;
				float4 In_Emissive3_g158292 = Out_Emissive4_g158291;
				float In_Grayscale3_g158292 = Out_Grayscale4_g158291;
				float In_Luminosity3_g158292 = Out_Luminosity4_g158291;
				float In_MultiMask3_g158292 = temp_output_301_11_g158290;
				float In_AlphaClip3_g158292 = Out_AlphaClip4_g158291;
				float In_AlphaFade3_g158292 = Out_AlphaFade4_g158291;
				float3 In_Translucency3_g158292 = Final_Translucency254_g158290;
				float In_Transmission3_g158292 = Final_Transmission269_g158290;
				#ifdef TVE_SUBSURFACE
				float staticSwitch351_g158290 = 0.0;
				#else
				float staticSwitch351_g158290 = 1.0;
				#endif
				half Final_Thickness275_g158290 = staticSwitch351_g158290;
				float In_Thickness3_g158292 = Final_Thickness275_g158290;
				float Final_Diffusion340_g158290 = _SubsurfaceDiffusion;
				float In_Diffusion3_g158292 = Final_Diffusion340_g158290;
				{
				Data3_g158292.Dummy = In_Dummy3_g158292;
				Data3_g158292.Albedo = In_Albedo3_g158292;
				Data3_g158292.NormalTS = In_NormalTS3_g158292;
				Data3_g158292.NormalWS = In_NormalWS3_g158292;
				Data3_g158292.Shader = In_Shader3_g158292;
				Data3_g158292.Emissive= In_Emissive3_g158292;
				Data3_g158292.MultiMask = In_MultiMask3_g158292;
				Data3_g158292.Grayscale = In_Grayscale3_g158292;
				Data3_g158292.Luminosity = In_Luminosity3_g158292;
				Data3_g158292.AlphaClip = In_AlphaClip3_g158292;
				Data3_g158292.AlphaFade = In_AlphaFade3_g158292;
				Data3_g158292.Translucency = In_Translucency3_g158292;
				Data3_g158292.Transmission = In_Transmission3_g158292;
				Data3_g158292.Thickness = In_Thickness3_g158292;
				Data3_g158292.Diffusion = In_Diffusion3_g158292;
				}
				TVEVisualData Data4_g158307 = Data3_g158292;
				float Out_Dummy4_g158307 = 0;
				float3 Out_Albedo4_g158307 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158307 = float2( 0,0 );
				float3 Out_NormalWS4_g158307 = float3( 0,0,0 );
				float4 Out_Shader4_g158307 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158307 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158307 = 0;
				float Out_Grayscale4_g158307 = 0;
				float Out_Luminosity4_g158307 = 0;
				float Out_AlphaClip4_g158307 = 0;
				float Out_AlphaFade4_g158307 = 0;
				float3 Out_Translucency4_g158307 = float3( 0,0,0 );
				float Out_Transmission4_g158307 = 0;
				float Out_Thickness4_g158307 = 0;
				float Out_Diffusion4_g158307 = 0;
				{
				Out_Dummy4_g158307 = Data4_g158307.Dummy;
				Out_Albedo4_g158307 = Data4_g158307.Albedo;
				Out_NormalTS4_g158307 = Data4_g158307.NormalTS;
				Out_NormalWS4_g158307 = Data4_g158307.NormalWS;
				Out_Shader4_g158307 = Data4_g158307.Shader;
				Out_Emissive4_g158307= Data4_g158307.Emissive;
				Out_MultiMask4_g158307 = Data4_g158307.MultiMask;
				Out_Grayscale4_g158307 = Data4_g158307.Grayscale;
				Out_Luminosity4_g158307= Data4_g158307.Luminosity;
				Out_AlphaClip4_g158307 = Data4_g158307.AlphaClip;
				Out_AlphaFade4_g158307 = Data4_g158307.AlphaFade;
				Out_Translucency4_g158307 = Data4_g158307.Translucency;
				Out_Transmission4_g158307 = Data4_g158307.Transmission;
				Out_Thickness4_g158307 = Data4_g158307.Thickness;
				Out_Diffusion4_g158307 = Data4_g158307.Diffusion;
				}
				half3 Input_Albedo24_g158305 = Out_Albedo4_g158307;
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch22_g158305 = half4(0.2209163,0.2209163,0.2209163,0.7790837);
				#else
				float4 staticSwitch22_g158305 = half4(0.04,0.04,0.04,0.96);
				#endif
				half4 ColorSpaceDielectricSpec23_g158305 = staticSwitch22_g158305;
				float4 break24_g158304 = Out_Shader4_g158307;
				half Metallic117_g158304 = break24_g158304.x;
				half Input_Metallic25_g158305 = Metallic117_g158304;
				half OneMinusReflectivity31_g158305 = ( (ColorSpaceDielectricSpec23_g158305).w - ( (ColorSpaceDielectricSpec23_g158305).w * Input_Metallic25_g158305 ) );
				float3 lerpResult87_g158304 = lerp( half3(1,0,0) , ( Input_Albedo24_g158305 * OneMinusReflectivity31_g158305 ) , _IsInitialized);
				
				float3 lerpResult28_g158305 = lerp( (ColorSpaceDielectricSpec23_g158305).xyz , Input_Albedo24_g158305 , Input_Metallic25_g158305);
				half RenderSpec105_g158304 = _RenderSpecular;
				
				float localCustomAlphaClip19_g158312 = ( 0.0 );
				float temp_output_3_0_g158312 = Out_AlphaClip4_g158307;
				float Alpha19_g158312 = temp_output_3_0_g158312;
				float temp_output_15_0_g158312 = 0.0;
				float Treshold19_g158312 = temp_output_15_0_g158312;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_CUTOUT) || defined (TVE_DITHER)
				#if defined ( TVE_PIPELINE_HD)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#else
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#endif
				}
				

				fixed3 albedo = lerpResult87_g158304;
				fixed3 normal = Out_NormalWS4_g158307;
				half3 emission = (Out_Emissive4_g158307).xyz;
				fixed3 specular = ( lerpResult28_g158305 * RenderSpec105_g158304 );
				fixed metallic = 0;
				half smoothness = break24_g158304.w;
				half occlusion = 1;
				fixed alpha = Alpha19_g158312;
				fixed alphaClipThreshold = 0;
				float4 bakedGI = float4( 0, 0, 0, 0 );

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif

				IN.pos.zw = positionCS.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(positionWS));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(positionWS));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				half atten = 1;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = 0;
				gi.light.dir = half3(0,1,0);

				UnityGIInput giInput;
				UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
				giInput.light = gi.light;
				giInput.worldPos = positionWS;
				giInput.worldViewDir = worldViewDir;
				giInput.atten = atten;
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
					giInput.lightmapUV = IN.lmap;
				#else
					giInput.lightmapUV = 0.0;
				#endif
				#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
					giInput.ambient = IN.sh;
				#else
					giInput.ambient.rgb = 0.0;
				#endif
				giInput.probeHDR[0] = unity_SpecCube0_HDR;
				giInput.probeHDR[1] = unity_SpecCube1_HDR;
				#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#ifdef UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(_SPECULAR_SETUP)
					LightingStandardSpecular_GI( o, giInput, gi );
					#if defined(CUSTOM_BAKED_GI)
						gi.indirect.diffuse = DecodeLightmapRGBM( bakedGI, 1 ) * EMISSIVE_RGBM_SCALE;
					#endif
					outEmission = LightingStandardSpecular_Deferred( o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
				#else
					LightingStandard_GI( o, giInput, gi );
					#if defined(CUSTOM_BAKED_GI)
						gi.indirect.diffuse = DecodeLightmapRGBM( bakedGI, 1 ) * EMISSIVE_RGBM_SCALE;
					#endif
					outEmission = LightingStandard_Deferred( o, worldViewDir, gi, outGBuffer0, outGBuffer1, outGBuffer2 );
				#endif

				#if defined(SHADOWS_SHADOWMASK) && (UNITY_ALLOWED_MRT_COUNT > 4)
					outShadowMask = UnityGetRawBakedOcclusions (IN.lmap.xy, float3(0, 0, 0));
				#endif
				#ifndef UNITY_HDR_ON
					outEmission.rgb = exp2(-outEmission.rgb);
				#endif
			}
			ENDCG
		}

		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }
			Cull Off

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#pragma shader_feature EDITOR_VISUALIZATION
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#ifndef UNITY_PASS_META
			#define UNITY_PASS_META
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityStandardUtils.cginc"
			#include "UnityMetaPass.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local_fragment TVE_PIPELINE_STANDARD TVE_PIPELINE_UNIVERSAL TVE_PIPELINE_HD
			#pragma shader_feature_local_vertex TVE_MOTION_BASE_BENDING
			#pragma shader_feature_local_vertex TVE_MOTION_WIND_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE
			#pragma shader_feature_local_fragment TVE_OVERLAY
			#pragma shader_feature_local_fragment TVE_OVERLAY_ELEMENT
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#pragma shader_feature_local_fragment TVE_EMISSIVE_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE_ELEMENT
			  
			struct TVEVisualData
			{  
				half Dummy;  
				half3 Albedo;
				half2 NormalTS;
				half3 NormalWS; 
				half4 Shader;
				half4 Emissive;
				half AlphaClip;
				half AlphaFade;
				half MultiMask;
				half Grayscale;
				half Luminosity;
				half3 Translucency;
				half Transmission;
				half Thickness;
				float Diffusion;
			};  
			    
			struct TVEModelData
			{    
				half Dummy;    
				half3 PositionOS;
				half3 PositionWS;
				half3 PositionWO;
				half3 PositionRawOS;
				half3 PositionAddOS;
				half3 PivotOS;
				half3 PivotWS;
				half3 PivotWO;
				half3 NormalOS;
				half3 NormalWS;
				half3 NormalRawOS;
				half3 NormalRawWS;
				half4 TangentOS;
				half3 ViewDirWS;
				half4 VertexData;
				half4 MotionData;
				half4 BoundsData;
				half4 RotationData;
			};    
			      
			struct TVEGlobalData
			{      
				half Dummy;      
				half4 CoatParams;
				half4 PaintParams;
				half4 GlowParams;
				half4 AtmoParams;
				half4 FadeParams;
				half4 FormParams;
				half4 LandParams;
				half4 WindParams;
				half4 PushParams;
			};      
			        
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//#pragma editor_sync_compilation
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			


			uniform half _ImpostorAlphaClipValue;
			uniform half4 _OverlayColoringOn;
			uniform half4 _OverlayColoringOff;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayGlitterTex);
			SamplerState sampler_OverlayGlitterTex;
			uniform half _OverlayGlitterTillingValue;
			uniform half _OverlayGlitterIntensityValue;
			uniform half _OverlayLiteInfo;
			uniform half4 _OverlayGlitterColor;
			uniform half _SubsurfaceScatteringValue;
			uniform half _SubsurfaceAngleValue;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform half _SubsurfaceSpace;
			uniform half _IsVersion;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _CategoryRender;
			uniform half _EndRender;
			uniform half _NoiseCategory;
			uniform half _NoiseEnd;
			UNITY_DECLARE_TEX3D_NOSAMPLER(_NoiseTex3D);
			SamplerState sampler_NoiseTex3D;
			uniform half _IsInitialized;
			uniform half _IsTVEShader;
			uniform half _IsCustomShader;
			uniform half _IsShared;
			uniform half _HasDefaultTextures;
			uniform half _IsCollected;
			uniform half _IsConverted;
			uniform half _IsIdentifier;
			uniform half _RenderMotion;
			uniform half _RenderShadow;
			uniform half _IsLiteShader;
			uniform half _IsStandardShader;
			uniform half _IsImpostorShader;
			uniform half _ImpostorCategory;
			uniform half _ImpostorEnd;
			uniform half _MotionWindCategory;
			uniform half _MotionWindEnd;
			uniform half _MotionWindElementMode;
			uniform half _MotionInteractionCategory;
			uniform half _MotionInteractionEnd;
			uniform half _InteractionLiteInfo;
			uniform half4 _InteractionColoring;
			uniform half _MotionPushIntensityValue;
			uniform half _MotionPushPivotValue;
			uniform half _MotionPushMaskValue;
			uniform half _MotionPushElementMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionBaseIntensityValue;
			uniform half4 TVE_MotionParams;
			uniform half TVE_IsEnabled;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MotionNoiseTex);
			uniform half _MotionBasePivotValue;
			uniform half _MotionTillingValue;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeedValue;
			SamplerState sampler_Linear_Repeat;
			uniform half _MotionNoiseValue;
			uniform half _MotionIntensityValue;
			uniform half _global_wind_layer_value;
			uniform float TVE_WindLayers[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindBaseTex);
			uniform half4 TVE_RenderBaseCoords;
			SamplerState sampler_Linear_Clamp;
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindNearTex);
			uniform half4 TVE_RenderNearCoords;
			uniform float4 TVE_RenderNearPositionR;
			uniform half TVE_RenderNearFadeValue;
			uniform half4 TVE_WindParams;
			uniform half _DisableSRPBatcher;
			uniform half _VariationLiteInfo;
			uniform half4 _VariationColoring;
			uniform half _VariationCategory;
			uniform half _VariationEnd;
			uniform half _VariationIntensityValue;
			uniform half4 _VariationColorTwo;
			uniform half4 _VariationColorOne;
			uniform half _VariationMultiValue;
			uniform half4 _VariationNoiseRemap;
			uniform half _VariationNoisePivotsValue1;
			uniform half _VariationNoiseTillingValue;
			uniform half _TintingLiteInfo;
			uniform half4 _TintingColoring;
			uniform half _TintingCategory;
			uniform half _TintingEnd;
			uniform half _TintingSpace;
			uniform half _TintingElementMode;
			uniform half _TintingIntensityValue;
			uniform float4 _TintingColor;
			uniform half _TintingGrayValue;
			uniform half _TintingMultiValue;
			uniform half _TintingLumaValue;
			uniform half4 _TintingLumaRemap;
			uniform half _DrynessLiteInfo;
			uniform half4 _DrynessColoring;
			uniform half _DrynessCategory;
			uniform half _DrynessEnd;
			uniform half _DrynessSpace;
			uniform half _DrynessElementMode;
			uniform half _DrynessIntensityValue;
			uniform float4 _DrynessColor;
			uniform half _DrynessGrayValue;
			uniform half _DrynessShiftValue;
			uniform half _DrynessSmoothnessValue;
			uniform half _DrynessSubsurfaceValue;
			uniform half _DrynessMultiValue;
			uniform half _DrynessLumaValue;
			uniform half4 _DrynessLumaRemap;
			uniform half _WetnessLiteInfo;
			uniform half4 _WetnessColoring;
			uniform half _WetnessCategory;
			uniform half _WetnessEnd;
			uniform half _WetnessElementMode;
			uniform half _WetnessIntensityValue;
			uniform half _WetnessContrastValue;
			uniform half _WetnessSmoothnessValue;
			uniform half _CutoutLiteInfo;
			uniform half4 _CutoutColoring;
			uniform half _CutoutCategory;
			uniform half _CutoutEnd;
			uniform half _CutoutSpace;
			uniform half _CutoutElementMode;
			uniform half _CutoutIntensityValue;
			uniform half _CutoutMultiValue;
			uniform half _CutoutAlphaValue;
			uniform half _CutoutNoiseValue;
			uniform half _CutoutNoiseTillingValue;
			uniform half _DitherLiteInfo;
			uniform half4 _DitherColoring;
			uniform half _DitherCategory;
			uniform half _DitherEnd;
			uniform half _DitherConstantValue;
			uniform half _DitherDistanceValue;
			uniform half _DitherDistanceMaxValue;
			uniform half _DitherDistanceMinValue;
			uniform half _DitherMultiValue;
			uniform half _DitherNoiseTillingValue;
			uniform half _SizeFadeLiteInfo;
			uniform half4 _SizeFadeColoring;
			uniform half _SizeFadeCategory;
			uniform half _SizeFadeEnd;
			uniform half _SizeFadeElementMode;
			uniform half _SizeFadeIntensityValue;
			uniform half _SizeFadeScaleMode;
			uniform half _SizeFadeScaleValue;
			uniform half _SizeFadeDistMinValue;
			uniform half _SizeFadeDistMaxValue;
			uniform half _SubsurfaceCategory;
			uniform half _SubsurfaceEnd;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceElementMode;
			uniform half _EmissiveCategory;
			uniform half _EmissiveEnd;
			uniform half _EmissivePowerMode;
			uniform half _EmissivePowerValue;
			uniform half _EmissiveElementMode;
			uniform half _OverlayCategory;
			uniform half _OverlayEnd;
			uniform half _OverlaySpace;
			uniform half _OverlayElementMode;
			uniform half _OverlayBakeInfo;
			uniform float4 _OverlayGlitterTex_ST;
			uniform half _OverlayGlitterDistValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksA);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksB);
			SamplerState sampler_MasksA;
			SamplerState sampler_MasksB;
			uniform half4 _ImpostorColorTwo;
			uniform half4 _ImpostorColor;
			uniform half _ImpostorColorMode;
			uniform half _ImpostorMetallicValue;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _OverlayColor;
			uniform half _OverlayIntensityValue;
			uniform half4 _OverlayProjRemap;
			uniform half _OverlayProjValue;
			uniform half4 _OverlayLumaRemap;
			uniform half _OverlayLumaValue;
			uniform half _GlobalLiteInfo;
			uniform half _GlobalCategory;
			uniform half _GlobalEnd;
			uniform half4 TVE_CoatParams;
			uniform half4 TVE_PaintParams;
			uniform half4 TVE_GlowParams;
			uniform half4 TVE_AtmoParams;
			uniform half4 TVE_FormParams;
			uniform half4 TVE_PushParams;
			uniform half4 _OverlayBlendRemap1;
			uniform half _OverlayNormalValue;
			uniform half _OverlaySmoothnessValue;
			uniform half _OverlaySubsurfaceValue;
			uniform half _EmissiveIntensityValue;
			uniform half4 _EmissiveColor;
			uniform float _emissive_power_value;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceIntensityValue;
			uniform half _SubsurfaceMultiValue;
			uniform half3 TVE_MainLightDirection;
			uniform half _SubsurfaceAproxInfo;
			uniform half _RenderSpecular;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normalOS, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normalOS ); 
				float p0l0DotN = dot( -rayPosition, normalOS );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normalOS ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normalOS );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normalOS );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 positionOS, inout float3 normalOS, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldCameraPos;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				#else
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				worldCameraPos = ai_ObjectToWorld._m03_m13_m23 + UNITY_MATRIX_I_V._m02_m12_m22 * 5000;
				}
				else
				{
				worldCameraPos = _WorldSpaceCameraPos;
				}
				#endif
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = positionOS.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				objectCameraDirection = trunc( objectCameraDirection * 65536.0 ) / 65536.0;
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				positionOS.xyz = billboard + _AI_Offset.xyz;
				normalOS.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( positionOS.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 positionCS, out float3 positionWS, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				positionWS = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				positionCS = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				positionCS = UnityApplyLinearShadowBias( positionCS );
				#endif
				positionCS.xyz /= positionCS.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				positionCS = positionCS * 0.5 + 0.5;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f_surf {
				UNITY_POSITION(pos);
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame122_g156801 : TEXCOORD5;
				float4 UVsFrame222_g156801 : TEXCOORD6;
				float4 UVsFrame322_g156801 : TEXCOORD7;
				float4 octaframe22_g156801 : TEXCOORD8;
				float4 viewPos22_g156801 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
			};

			v2f_surf vert_surf (appdata v  )
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				TVEModelData Data16_g158299 = (TVEModelData)0;
				float In_Dummy16_g158299 = 0.0;
				TVEModelData Data16_g158265 = (TVEModelData)0;
				half4 Dummy181_g158262 = ( ( _MotionWindCategory + _MotionWindEnd ) + _MotionWindElementMode + ( _MotionInteractionCategory + _MotionInteractionEnd ) + ( _InteractionLiteInfo + _InteractionColoring + _MotionPushIntensityValue + _MotionPushPivotValue + _MotionPushMaskValue + _MotionPushElementMode ) );
				float In_Dummy16_g158265 = Dummy181_g158262.r;
				TVEModelData Data16_g156809 = (TVEModelData)0;
				float In_Dummy16_g156809 = 0.0;
				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame122_g156801, o.UVsFrame222_g156801, o.UVsFrame322_g156801, o.octaframe22_g156801, o.viewPos22_g156801 );
				float3 worldPosOut22_g156801 = mul( UNITY_MATRIX_I_V, float4( o.viewPos22_g156801.xyz, 1.0 ) ).xyz;
				half3 Input_PositionWS218_g156802 = worldPosOut22_g156801;
				float3 worldToObj278_g156802 = mul( unity_WorldToObject, float4( Input_PositionWS218_g156802, 1 ) ).xyz;
				half3 Model_PositionOS131_g156802 = worldToObj278_g156802;
				float3 In_PositionOS16_g156809 = Model_PositionOS131_g156802;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156809 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156809 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156809 = Model_PositionOS131_g156802;
				float3 In_PositionAddOS16_g156809 = float3( 0,0,0 );
				float3 In_PivotOS16_g156809 = float3( 0,0,0 );
				float4x4 break19_g156804 = unity_ObjectToWorld;
				float3 appendResult20_g156804 = (float3(break19_g156804[ 0 ][ 3 ] , break19_g156804[ 1 ][ 3 ] , break19_g156804[ 2 ][ 3 ]));
				half3 ObjectData20_g156806 = appendResult20_g156804;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g156806 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g156806 = WorldData19_g156806;
				#else
				float3 staticSwitch14_g156806 = ObjectData20_g156806;
				#endif
				float3 temp_output_124_0_g156804 = staticSwitch14_g156806;
				float3 vertexToFrag281_g156802 = temp_output_124_0_g156804;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156809 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156809 = Model_PivotWO133_g156802;
				half3 Model_NormalOS134_g156802 = v.normal;
				float3 In_NormalOS16_g156809 = Model_NormalOS134_g156802;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156809 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156809 = Model_NormalOS134_g156802;
				float3 In_NormalRawWS16_g156809 = Model_Normal_WS95_g156802;
				float4 In_TangentOS16_g156809 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156809 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156809 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156809 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156809 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156809 = float4( 0,0,0,0 );
				{
				Data16_g156809.Dummy = In_Dummy16_g156809;
				Data16_g156809.PositionOS = In_PositionOS16_g156809;
				Data16_g156809.PositionWS = In_PositionWS16_g156809;
				Data16_g156809.PositionWO = In_PositionWO16_g156809;
				Data16_g156809.PositionRawOS = In_PositionRawOS16_g156809;
				Data16_g156809.PositionAddOS = In_PositionAddOS16_g156809;
				Data16_g156809.PivotOS = In_PivotOS16_g156809;
				Data16_g156809.PivotWS = In_PivotWS16_g156809;
				Data16_g156809.PivotWO = In_PivotWO16_g156809;
				Data16_g156809.NormalOS = In_NormalOS16_g156809;
				Data16_g156809.NormalWS = In_NormalWS16_g156809;
				Data16_g156809.NormalRawOS = In_NormalRawOS16_g156809;
				Data16_g156809.NormalRawWS = In_NormalRawWS16_g156809;
				Data16_g156809.TangentOS = In_TangentOS16_g156809;
				Data16_g156809.ViewDirWS = In_ViewDirWS16_g156809;
				Data16_g156809.VertexData = In_VertexData16_g156809;
				Data16_g156809.MotionData = In_MotionData16_g156809;
				Data16_g156809.BoundsData = In_BoundsData16_g156809;
				Data16_g156809.RotationData = In_RotationData16_g156809;
				}
				TVEModelData Data15_g158264 = Data16_g156809;
				float Out_Dummy15_g158264 = 0;
				float3 Out_PositionOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158264 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158264 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158264 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158264 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158264 = float3( 0,0,0 );
				float4 Out_VertexData15_g158264 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158264 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158264 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158264 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158264 = Data15_g158264.Dummy;
				Out_PositionOS15_g158264 = Data15_g158264.PositionOS;
				Out_PositionWS15_g158264 = Data15_g158264.PositionWS;
				Out_PositionWO15_g158264 = Data15_g158264.PositionWO;
				Out_PositionRawOS15_g158264 = Data15_g158264.PositionRawOS;
				Out_PositionAddOS15_g158264 = Data15_g158264.PositionAddOS;
				Out_PivotOS15_g158264 = Data15_g158264.PivotOS;
				Out_PivotWS15_g158264 = Data15_g158264.PivotWS;
				Out_PivotWO15_g158264 = Data15_g158264.PivotWO;
				Out_NormalOS15_g158264 = Data15_g158264.NormalOS;
				Out_NormalWS15_g158264 = Data15_g158264.NormalWS;
				Out_NormalRawOS15_g158264 = Data15_g158264.NormalRawOS;
				Out_NormalRawWS15_g158264 = Data15_g158264.NormalRawWS;
				Out_TangentOS15_g158264 = Data15_g158264.TangentOS;
				Out_ViewDirWS15_g158264 = Data15_g158264.ViewDirWS;
				Out_VertexData15_g158264 = Data15_g158264.VertexData;
				Out_MotionData15_g158264 = Data15_g158264.MotionData;
				Out_BoundsData15_g158264 = Data15_g158264.BoundsData;
				Out_RotationData15_g158264 = Data15_g158264.RotationData;
				}
				float3 temp_output_1567_0_g158262 = Out_PositionOS15_g158264;
				float3 In_PositionOS16_g158265 = temp_output_1567_0_g158262;
				float3 In_PositionWS16_g158265 = Out_PositionWS15_g158264;
				float3 temp_output_1567_17_g158262 = Out_PositionWO15_g158264;
				float3 In_PositionWO16_g158265 = temp_output_1567_17_g158262;
				float3 In_PositionRawOS16_g158265 = Out_PositionRawOS15_g158264;
				float3 In_PositionAddOS16_g158265 = Out_PositionAddOS15_g158264;
				float3 In_PivotOS16_g158265 = Out_PivotOS15_g158264;
				float3 In_PivotWS16_g158265 = Out_PivotWS15_g158264;
				float3 temp_output_1567_19_g158262 = Out_PivotWO15_g158264;
				float3 In_PivotWO16_g158265 = temp_output_1567_19_g158262;
				float3 In_NormalOS16_g158265 = Out_NormalOS15_g158264;
				float3 In_NormalWS16_g158265 = Out_NormalWS15_g158264;
				float3 In_NormalRawOS16_g158265 = Out_NormalRawOS15_g158264;
				float3 In_NormalRawWS16_g158265 = Out_NormalRawWS15_g158264;
				float4 In_TangentOS16_g158265 = Out_TangentOS15_g158264;
				float3 In_ViewDirWS16_g158265 = Out_ViewDirWS15_g158264;
				float4 In_VertexData16_g158265 = Out_VertexData15_g158264;
				float4 In_MotionData16_g158265 = Out_MotionData15_g158264;
				float4 In_BoundsData16_g158265 = Out_BoundsData15_g158264;
				float2 temp_cast_1 = (0.0).xx;
				half3 Model_PositionOS147_g158262 = temp_output_1567_0_g158262;
				half Base_Mask217_g158262 = saturate( ( Model_PositionOS147_g158262.y / _AI_Offset.y ) );
				float4 lerpResult627_g158267 = lerp( half4(0,1,1,0) , TVE_MotionParams , TVE_IsEnabled);
				half2 Global_WindDirection593_g158267 = (lerpResult627_g158267).xy;
				half3 Model_PositionWO162_g158262 = temp_output_1567_17_g158262;
				half3 Model_PivotWO402_g158262 = temp_output_1567_19_g158262;
				float3 lerpResult829_g158262 = lerp( Model_PositionWO162_g158262 , Model_PivotWO402_g158262 , _MotionBasePivotValue);
				half3 Base_Position1394_g158262 = lerpResult829_g158262;
				half3 Input_PositionWO419_g158267 = Base_Position1394_g158262;
				half Flow_Tillling1397_g158262 = _MotionTillingValue;
				half Input_MotionTilling321_g158267 = ( Flow_Tillling1397_g158262 + 0.2 );
				half2 Noise_Coord515_g158267 = ( -(Input_PositionWO419_g158267).xz * Input_MotionTilling321_g158267 * 0.005 );
				float2 temp_output_3_0_g158280 = Noise_Coord515_g158267;
				float2 temp_output_606_0_g158267 = (Global_WindDirection593_g158267*2.0 + -1.0);
				float2 temp_output_21_0_g158280 = temp_output_606_0_g158267;
				float lerpResult128_g158268 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Flow_Speed1398_g158262 = _MotionSpeedValue;
				half Input_MotionSpeed62_g158267 = Flow_Speed1398_g158262;
				float temp_output_505_0_g158267 = ( lerpResult128_g158268 * Input_MotionSpeed62_g158267 );
				half Noise_Speed516_g158267 = ( temp_output_505_0_g158267 * 0.02 );
				float temp_output_15_0_g158280 = Noise_Speed516_g158267;
				float temp_output_23_0_g158280 = frac( temp_output_15_0_g158280 );
				float4 lerpResult39_g158280 = lerp( SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * temp_output_23_0_g158280 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * frac( ( temp_output_15_0_g158280 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_23_0_g158280 - 0.5 ) ) / 0.5 ));
				half4 Noise_Params535_g158267 = lerpResult39_g158280;
				half Flow_Noise1600_g158262 = _MotionNoiseValue;
				half Input_MotionNoise552_g158267 = Flow_Noise1600_g158262;
				float2 lerpResult560_g158267 = lerp( Global_WindDirection593_g158267 , (Noise_Params535_g158267).rg , Input_MotionNoise552_g158267);
				half Global_WindIntensity576_g158267 = (lerpResult627_g158267).z;
				half Flow_Value1602_g158262 = _MotionIntensityValue;
				half Input_MotionValue629_g158267 = Flow_Value1602_g158262;
				float2 lerpResult574_g158267 = lerp( float2( 0.5,0.5 ) , lerpResult560_g158267 , ( Global_WindIntensity576_g158267 * Input_MotionValue629_g158267 ));
				float3 appendResult566_g158267 = (float3(lerpResult574_g158267 , (Noise_Params535_g158267).b));
				float temp_output_136_0_g158269 = _global_wind_layer_value;
				float temp_output_19_0_g158271 = TVE_WindLayers[(int)temp_output_136_0_g158269];
				half3 Input_Position180_g158272 = Input_PositionWO419_g158267;
				float2 temp_output_75_0_g158272 = ( (TVE_RenderBaseCoords).zw + ( (TVE_RenderBaseCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_82_0_g158272 = temp_output_136_0_g158269;
				float2 temp_output_119_0_g158272 = ( (TVE_RenderNearCoords).zw + ( (TVE_RenderNearCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_7_0_g158277 = 1.0;
				float temp_output_10_0_g158277 = ( TVE_RenderNearFadeValue - temp_output_7_0_g158277 );
				float4 lerpResult131_g158272 = lerp( SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindBaseTex, sampler_Linear_Clamp, float3(temp_output_75_0_g158272,temp_output_82_0_g158272), 0.0 ) , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindNearTex, sampler_Linear_Repeat, float3(temp_output_119_0_g158272,temp_output_82_0_g158272), 0.0 ) , saturate( ( ( saturate( ( distance( Input_Position180_g158272 , (TVE_RenderNearPositionR).xyz ) / (TVE_RenderNearPositionR).w ) ) - temp_output_7_0_g158277 ) / temp_output_10_0_g158277 ) ));
				float4 temp_output_17_0_g158271 = lerpResult131_g158272;
				float4 temp_output_3_0_g158271 = TVE_WindParams;
				float4 ifLocalVar18_g158271 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g158271 >= 0.5 )
				ifLocalVar18_g158271 = temp_output_17_0_g158271;
				else
				ifLocalVar18_g158271 = temp_output_3_0_g158271;
				float4 lerpResult22_g158271 = lerp( temp_output_3_0_g158271 , temp_output_17_0_g158271 , temp_output_19_0_g158271);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g158271 = lerpResult22_g158271;
				#else
				float4 staticSwitch24_g158271 = ifLocalVar18_g158271;
				#endif
				float4 temp_output_610_0_g158267 = staticSwitch24_g158271;
				float3 lerpResult623_g158267 = lerp( appendResult566_g158267 , (temp_output_610_0_g158267).rgb , (temp_output_610_0_g158267).a);
				#ifdef TVE_MOTION_WIND_ELEMENT
				float3 staticSwitch612_g158267 = lerpResult623_g158267;
				#else
				float3 staticSwitch612_g158267 = appendResult566_g158267;
				#endif
				float3 temp_output_1563_567_g158262 = staticSwitch612_g158267;
				half Base_Noise1590_g158262 = abs( (temp_output_1563_567_g158262).z );
				float2 break83_g158263 = ((temp_output_1563_567_g158262).xy*2.0 + -1.0);
				float3 appendResult79_g158263 = (float3(break83_g158263.x , 0.0 , break83_g158263.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Base_Direction893_g158262 = (( mul( unity_WorldToObject, float4( appendResult79_g158263 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float lerpResult1587_g158262 = lerp( (Base_Noise1590_g158262*2.0 + -1.0) , Base_Noise1590_g158262 , length( Base_Direction893_g158262 ));
				#ifdef TVE_MOTION_BASE_BENDING
				float2 staticSwitch1573_g158262 = ( ( _MotionBaseIntensityValue * Base_Mask217_g158262 * lerpResult1587_g158262 ) * Base_Direction893_g158262 );
				#else
				float2 staticSwitch1573_g158262 = temp_cast_1;
				#endif
				half2 Base_Motion1440_g158262 = staticSwitch1573_g158262;
				half2 Final_RoationData1570_g158262 = Base_Motion1440_g158262;
				float4 In_RotationData16_g158265 = float4( Final_RoationData1570_g158262, 0.0 , 0.0 );
				{
				Data16_g158265.Dummy = In_Dummy16_g158265;
				Data16_g158265.PositionOS = In_PositionOS16_g158265;
				Data16_g158265.PositionWS = In_PositionWS16_g158265;
				Data16_g158265.PositionWO = In_PositionWO16_g158265;
				Data16_g158265.PositionRawOS = In_PositionRawOS16_g158265;
				Data16_g158265.PositionAddOS = In_PositionAddOS16_g158265;
				Data16_g158265.PivotOS = In_PivotOS16_g158265;
				Data16_g158265.PivotWS = In_PivotWS16_g158265;
				Data16_g158265.PivotWO = In_PivotWO16_g158265;
				Data16_g158265.NormalOS = In_NormalOS16_g158265;
				Data16_g158265.NormalWS = In_NormalWS16_g158265;
				Data16_g158265.NormalRawOS = In_NormalRawOS16_g158265;
				Data16_g158265.NormalRawWS = In_NormalRawWS16_g158265;
				Data16_g158265.TangentOS = In_TangentOS16_g158265;
				Data16_g158265.ViewDirWS = In_ViewDirWS16_g158265;
				Data16_g158265.VertexData = In_VertexData16_g158265;
				Data16_g158265.MotionData = In_MotionData16_g158265;
				Data16_g158265.BoundsData = In_BoundsData16_g158265;
				Data16_g158265.RotationData = In_RotationData16_g158265;
				}
				TVEModelData Data15_g158298 = Data16_g158265;
				float Out_Dummy15_g158298 = 0;
				float3 Out_PositionOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158298 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158298 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158298 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158298 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158298 = float3( 0,0,0 );
				float4 Out_VertexData15_g158298 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158298 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158298 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158298 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158298 = Data15_g158298.Dummy;
				Out_PositionOS15_g158298 = Data15_g158298.PositionOS;
				Out_PositionWS15_g158298 = Data15_g158298.PositionWS;
				Out_PositionWO15_g158298 = Data15_g158298.PositionWO;
				Out_PositionRawOS15_g158298 = Data15_g158298.PositionRawOS;
				Out_PositionAddOS15_g158298 = Data15_g158298.PositionAddOS;
				Out_PivotOS15_g158298 = Data15_g158298.PivotOS;
				Out_PivotWS15_g158298 = Data15_g158298.PivotWS;
				Out_PivotWO15_g158298 = Data15_g158298.PivotWO;
				Out_NormalOS15_g158298 = Data15_g158298.NormalOS;
				Out_NormalWS15_g158298 = Data15_g158298.NormalWS;
				Out_NormalRawOS15_g158298 = Data15_g158298.NormalRawOS;
				Out_NormalRawWS15_g158298 = Data15_g158298.NormalRawWS;
				Out_TangentOS15_g158298 = Data15_g158298.TangentOS;
				Out_ViewDirWS15_g158298 = Data15_g158298.ViewDirWS;
				Out_VertexData15_g158298 = Data15_g158298.VertexData;
				Out_MotionData15_g158298 = Data15_g158298.MotionData;
				Out_BoundsData15_g158298 = Data15_g158298.BoundsData;
				Out_RotationData15_g158298 = Data15_g158298.RotationData;
				}
				half3 Model_PositionOS147_g158297 = Out_PositionOS15_g158298;
				half3 Input_False58_g158303 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158300 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158301 = VertexPos40_g158300;
				float3 appendResult74_g158301 = (float3(VertexPos40_g158301.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g158301 = appendResult74_g158301;
				float3 break84_g158301 = VertexPos40_g158301;
				float3 appendResult81_g158301 = (float3(0.0 , break84_g158301.y , break84_g158301.z));
				half3 VertexPosOtherAxis82_g158301 = appendResult81_g158301;
				float4 temp_output_1567_33_g158297 = Out_RotationData15_g158298;
				half4 Model_VertexBend1569_g158297 = temp_output_1567_33_g158297;
				half2 Angle44_g158300 = (Model_VertexBend1569_g158297).xy;
				half Angle44_g158301 = (Angle44_g158300).y;
				half3 VertexPos40_g158302 = ( VertexPosRotationAxis50_g158301 + ( VertexPosOtherAxis82_g158301 * cos( Angle44_g158301 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g158301 ) * sin( Angle44_g158301 ) ) );
				float3 appendResult74_g158302 = (float3(0.0 , 0.0 , VertexPos40_g158302.z));
				half3 VertexPosRotationAxis50_g158302 = appendResult74_g158302;
				float3 break84_g158302 = VertexPos40_g158302;
				float3 appendResult81_g158302 = (float3(break84_g158302.x , break84_g158302.y , 0.0));
				half3 VertexPosOtherAxis82_g158302 = appendResult81_g158302;
				half Angle44_g158302 = -(Angle44_g158300).x;
				half3 Input_True57_g158303 = ( VertexPosRotationAxis50_g158302 + ( VertexPosOtherAxis82_g158302 * cos( Angle44_g158302 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g158302 ) * sin( Angle44_g158302 ) ) );
				#ifdef TVE_MOTION_BASE_BENDING
				float3 staticSwitch65_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch65_g158303 = Input_False58_g158303;
				#endif
				#ifdef TVE_MOTION_PUSH_BENDING
				float3 staticSwitch67_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch67_g158303 = staticSwitch65_g158303;
				#endif
				#ifdef TVE_BLANKET_BENDING
				float3 staticSwitch69_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch69_g158303 = staticSwitch67_g158303;
				#endif
				float3 temp_output_1567_31_g158297 = Out_PositionAddOS15_g158298;
				half3 Model_PositionADD1568_g158297 = temp_output_1567_31_g158297;
				half3 Final_PositionOS178_g158297 = ( staticSwitch69_g158303 + Model_PositionADD1568_g158297 );
				float3 In_PositionOS16_g158299 = Final_PositionOS178_g158297;
				float3 In_PositionWS16_g158299 = Out_PositionWS15_g158298;
				float3 In_PositionWO16_g158299 = Out_PositionWO15_g158298;
				float3 In_PositionRawOS16_g158299 = Out_PositionRawOS15_g158298;
				float3 In_PositionAddOS16_g158299 = temp_output_1567_31_g158297;
				float3 In_PivotOS16_g158299 = Out_PivotOS15_g158298;
				float3 In_PivotWS16_g158299 = Out_PivotWS15_g158298;
				float3 In_PivotWO16_g158299 = Out_PivotWO15_g158298;
				float3 In_NormalOS16_g158299 = Out_NormalOS15_g158298;
				float3 In_NormalWS16_g158299 = Out_NormalWS15_g158298;
				float3 In_NormalRawOS16_g158299 = Out_NormalRawOS15_g158298;
				float3 In_NormalRawWS16_g158299 = Out_NormalRawWS15_g158298;
				float4 In_TangentOS16_g158299 = Out_TangentOS15_g158298;
				float3 In_ViewDirWS16_g158299 = Out_ViewDirWS15_g158298;
				float4 In_VertexData16_g158299 = Out_VertexData15_g158298;
				float4 In_MotionData16_g158299 = Out_MotionData15_g158298;
				float4 In_BoundsData16_g158299 = Out_BoundsData15_g158298;
				float4 In_RotationData16_g158299 = temp_output_1567_33_g158297;
				{
				Data16_g158299.Dummy = In_Dummy16_g158299;
				Data16_g158299.PositionOS = In_PositionOS16_g158299;
				Data16_g158299.PositionWS = In_PositionWS16_g158299;
				Data16_g158299.PositionWO = In_PositionWO16_g158299;
				Data16_g158299.PositionRawOS = In_PositionRawOS16_g158299;
				Data16_g158299.PositionAddOS = In_PositionAddOS16_g158299;
				Data16_g158299.PivotOS = In_PivotOS16_g158299;
				Data16_g158299.PivotWS = In_PivotWS16_g158299;
				Data16_g158299.PivotWO = In_PivotWO16_g158299;
				Data16_g158299.NormalOS = In_NormalOS16_g158299;
				Data16_g158299.NormalWS = In_NormalWS16_g158299;
				Data16_g158299.NormalRawOS = In_NormalRawOS16_g158299;
				Data16_g158299.NormalRawWS = In_NormalRawWS16_g158299;
				Data16_g158299.TangentOS = In_TangentOS16_g158299;
				Data16_g158299.ViewDirWS = In_ViewDirWS16_g158299;
				Data16_g158299.VertexData = In_VertexData16_g158299;
				Data16_g158299.MotionData = In_MotionData16_g158299;
				Data16_g158299.BoundsData = In_BoundsData16_g158299;
				Data16_g158299.RotationData = In_RotationData16_g158299;
				}
				TVEModelData Data15_g158311 = Data16_g158299;
				float Out_Dummy15_g158311 = 0;
				float3 Out_PositionOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158311 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158311 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158311 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158311 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158311 = float3( 0,0,0 );
				float4 Out_VertexData15_g158311 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158311 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158311 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158311 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158311 = Data15_g158311.Dummy;
				Out_PositionOS15_g158311 = Data15_g158311.PositionOS;
				Out_PositionWS15_g158311 = Data15_g158311.PositionWS;
				Out_PositionWO15_g158311 = Data15_g158311.PositionWO;
				Out_PositionRawOS15_g158311 = Data15_g158311.PositionRawOS;
				Out_PositionAddOS15_g158311 = Data15_g158311.PositionAddOS;
				Out_PivotOS15_g158311 = Data15_g158311.PivotOS;
				Out_PivotWS15_g158311 = Data15_g158311.PivotWS;
				Out_PivotWO15_g158311 = Data15_g158311.PivotWO;
				Out_NormalOS15_g158311 = Data15_g158311.NormalOS;
				Out_NormalWS15_g158311 = Data15_g158311.NormalWS;
				Out_NormalRawOS15_g158311 = Data15_g158311.NormalRawOS;
				Out_NormalRawWS15_g158311 = Data15_g158311.NormalRawWS;
				Out_TangentOS15_g158311 = Data15_g158311.TangentOS;
				Out_ViewDirWS15_g158311 = Data15_g158311.ViewDirWS;
				Out_VertexData15_g158311 = Data15_g158311.VertexData;
				Out_MotionData15_g158311 = Data15_g158311.MotionData;
				Out_BoundsData15_g158311 = Data15_g158311.BoundsData;
				Out_RotationData15_g158311 = Data15_g158311.RotationData;
				}
				float3 temp_output_31_0_g158304 = Out_PositionOS15_g158311;
				float3 temp_output_6_0_g158318 = ( ( temp_output_31_0_g158304 - Out_PositionRawOS15_g158311 ) + _DisableSRPBatcher );
				half4 Dummy_Data433 = ( ( ( _VariationLiteInfo + _VariationColoring ) + ( _VariationCategory + _VariationEnd ) + ( _VariationIntensityValue + _VariationColorTwo + _VariationColorOne ) + ( _VariationMultiValue + _VariationNoiseRemap + _VariationNoisePivotsValue1 + _VariationNoiseTillingValue ) ) + ( ( _TintingLiteInfo + _TintingColoring ) + ( _TintingCategory + _TintingEnd + _TintingSpace + 0.0 + _TintingElementMode ) + ( _TintingIntensityValue + _TintingColor + _TintingGrayValue ) + ( _TintingMultiValue + _TintingLumaValue + _TintingLumaRemap ) + 0.0 + 0.0 ) + ( ( _DrynessLiteInfo + _DrynessColoring ) + ( _DrynessCategory + _DrynessEnd + _DrynessSpace + _DrynessElementMode + 0.0 ) + ( _DrynessIntensityValue + _DrynessColor + _DrynessGrayValue + _DrynessShiftValue + _DrynessSmoothnessValue + _DrynessSubsurfaceValue ) + ( _DrynessMultiValue + _DrynessLumaValue + _DrynessLumaRemap ) + 0.0 + 0.0 ) + ( ( _WetnessLiteInfo + _WetnessColoring ) + ( _WetnessCategory + _WetnessEnd + _WetnessElementMode + 0.0 ) + ( _WetnessIntensityValue + _WetnessContrastValue + _WetnessSmoothnessValue ) + float4( 0,0,0,0 ) + float4( 0,0,0,0 ) ) + ( ( _CutoutLiteInfo + _CutoutColoring ) + ( _CutoutCategory + _CutoutEnd + _CutoutSpace + _CutoutElementMode + 0.0 ) + ( _CutoutIntensityValue + 0.0 ) + ( _CutoutMultiValue + _CutoutAlphaValue + _CutoutNoiseValue + _CutoutNoiseTillingValue ) + 0.0 ) + ( ( _DitherLiteInfo + _DitherColoring ) + ( _DitherCategory + _DitherEnd ) + ( _DitherConstantValue + 0.0 + 0.0 + ( _DitherDistanceValue + _DitherDistanceMaxValue + _DitherDistanceMinValue ) + 0.0 ) + ( _DitherMultiValue + _DitherNoiseTillingValue ) ) + ( ( _SizeFadeLiteInfo + _SizeFadeColoring ) + ( _SizeFadeCategory + _SizeFadeEnd + _SizeFadeElementMode ) + ( _SizeFadeIntensityValue + _SizeFadeScaleMode + _SizeFadeScaleValue + _SizeFadeDistMinValue + _SizeFadeDistMaxValue ) ) );
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g158318 = ( float4( temp_output_6_0_g158318 , 0.0 ) + ( Dummy_Data433 * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g158318 = float4( temp_output_6_0_g158318 , 0.0 );
				#endif
				
				o.ase_texcoord11.xyz = vertexToFrag281_g156802;
				o.ase_texcoord12.xyz = ase_worldNormal;
				
				o.ase_texcoord10.xy = v.texcoord.xyzw.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;

				v.vertex.xyz += staticSwitch14_g158318.rgb;

				o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST);
				return o;
			}

			fixed4 frag_surf (v2f_surf IN, out float outDepth : SV_Depth  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 positionCS = 0;
				float3 positionWS = 0;

				float localBreakData4_g158307 = ( 0.0 );
				float localCompData3_g158292 = ( 0.0 );
				TVEVisualData Data3_g158292 = (TVEVisualData)0;
				half Dummy145_g158290 = ( _SubsurfaceCategory + _SubsurfaceEnd + ( _SubsurfaceDirectValue + _SubsurfaceNormalValue + _SubsurfaceAmbientValue + _SubsurfaceShadowValue ) + _SubsurfaceElementMode );
				float In_Dummy3_g158292 = Dummy145_g158290;
				float localBreakData4_g158291 = ( 0.0 );
				float localCompData3_g158259 = ( 0.0 );
				TVEVisualData Data3_g158259 = (TVEVisualData)0;
				half Dummy145_g158247 = ( _EmissiveCategory + _EmissiveEnd + ( _EmissivePowerMode + _EmissivePowerValue ) + _EmissiveElementMode + 0.0 );
				float In_Dummy3_g158259 = Dummy145_g158247;
				float localBreakData4_g158258 = ( 0.0 );
				float localCompData3_g158220 = ( 0.0 );
				TVEVisualData Data3_g158220 = (TVEVisualData)0;
				float2 uv_OverlayGlitterTex = IN.ase_texcoord10.xy * _OverlayGlitterTex_ST.xy + _OverlayGlitterTex_ST.zw;
				half4 Dummy594_g158217 = ( ( _OverlayCategory + _OverlayEnd + _OverlaySpace + _OverlayElementMode + _OverlayBakeInfo ) + ( _OverlayLiteInfo + _OverlayColoringOn + _OverlayColoringOff ) + ( SAMPLE_TEXTURE2D( _OverlayGlitterTex, sampler_OverlayGlitterTex, uv_OverlayGlitterTex ) + _OverlayGlitterTillingValue + _OverlayGlitterIntensityValue + _OverlayGlitterColor + _OverlayGlitterDistValue ) );
				float In_Dummy3_g158220 = Dummy594_g158217.r;
				float localBreakData4_g158218 = ( 0.0 );
				float localCompData3_g156877 = ( 0.0 );
				TVEVisualData Data3_g156877 = (TVEVisualData)0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, positionCS, positionWS, IN.UVsFrame122_g156801, IN.UVsFrame222_g156801, IN.UVsFrame322_g156801, IN.octaframe22_g156801, IN.viewPos22_g156801, output0, output1 );
				float In_Dummy3_g156877 = output1.r;
				float4 break227_g156876 = output0;
				half Local_MultiMask249_g156876 = break227_g156876.b;
				float lerpResult289_g156876 = lerp( 1.0 , Local_MultiMask249_g156876 , _ImpostorColorMode);
				float3 lerpResult292_g156876 = lerp( (_ImpostorColorTwo).rgb , (_ImpostorColor).rgb , lerpResult289_g156876);
				half3 Local_Albedo239_g156876 = ( o.Albedo * lerpResult292_g156876 );
				float3 In_Albedo3_g156877 = Local_Albedo239_g156876;
				float2 temp_cast_4 = (0.5).xx;
				float2 In_NormalTS3_g156877 = temp_cast_4;
				float3 In_NormalWS3_g156877 = o.Normal;
				half Local_Metallic247_g156876 = break227_g156876.r;
				half Final_Metallic238_g156876 = ( Local_Metallic247_g156876 * _ImpostorMetallicValue );
				half Local_Smoothness250_g156876 = break227_g156876.a;
				half Final_Smoothness233_g156876 = ( Local_Smoothness250_g156876 * _ImpostorSmoothnessValue );
				float4 appendResult257_g156876 = (float4(Final_Metallic238_g156876 , 1.0 , 1.0 , Final_Smoothness233_g156876));
				float4 In_Shader3_g156877 = appendResult257_g156876;
				half Local_EmissiveMask248_g156876 = break227_g156876.g;
				float4 appendResult286_g156876 = (float4(Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , 1.0));
				float4 In_Emissive3_g156877 = appendResult286_g156876;
				float3 temp_output_3_0_g156878 = Local_Albedo239_g156876;
				float dotResult20_g156878 = dot( temp_output_3_0_g156878 , float3(0.2126,0.7152,0.0722) );
				half Local_Grayscale268_g156876 = dotResult20_g156878;
				float In_Grayscale3_g156877 = Local_Grayscale268_g156876;
				float clampResult267_g156876 = clamp( saturate( ( Local_Grayscale268_g156876 * 5.0 ) ) , 0.2 , 1.0 );
				half Local_Luminosity269_g156876 = clampResult267_g156876;
				float In_Luminosity3_g156877 = Local_Luminosity269_g156876;
				float In_MultiMask3_g156877 = Local_MultiMask249_g156876;
				float In_AlphaClip3_g156877 = 0.0;
				float In_AlphaFade3_g156877 = 1.0;
				float3 temp_cast_5 = (1.0).xxx;
				float3 In_Translucency3_g156877 = temp_cast_5;
				float In_Transmission3_g156877 = 1.0;
				float In_Thickness3_g156877 = 0.0;
				float In_Diffusion3_g156877 = 0.0;
				{
				Data3_g156877.Dummy = In_Dummy3_g156877;
				Data3_g156877.Albedo = In_Albedo3_g156877;
				Data3_g156877.NormalTS = In_NormalTS3_g156877;
				Data3_g156877.NormalWS = In_NormalWS3_g156877;
				Data3_g156877.Shader = In_Shader3_g156877;
				Data3_g156877.Emissive= In_Emissive3_g156877;
				Data3_g156877.MultiMask = In_MultiMask3_g156877;
				Data3_g156877.Grayscale = In_Grayscale3_g156877;
				Data3_g156877.Luminosity = In_Luminosity3_g156877;
				Data3_g156877.AlphaClip = In_AlphaClip3_g156877;
				Data3_g156877.AlphaFade = In_AlphaFade3_g156877;
				Data3_g156877.Translucency = In_Translucency3_g156877;
				Data3_g156877.Transmission = In_Transmission3_g156877;
				Data3_g156877.Thickness = In_Thickness3_g156877;
				Data3_g156877.Diffusion = In_Diffusion3_g156877;
				}
				TVEVisualData Data4_g158218 = Data3_g156877;
				float Out_Dummy4_g158218 = 0;
				float3 Out_Albedo4_g158218 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158218 = float2( 0,0 );
				float3 Out_NormalWS4_g158218 = float3( 0,0,0 );
				float4 Out_Shader4_g158218 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158218 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158218 = 0;
				float Out_Grayscale4_g158218 = 0;
				float Out_Luminosity4_g158218 = 0;
				float Out_AlphaClip4_g158218 = 0;
				float Out_AlphaFade4_g158218 = 0;
				float3 Out_Translucency4_g158218 = float3( 0,0,0 );
				float Out_Transmission4_g158218 = 0;
				float Out_Thickness4_g158218 = 0;
				float Out_Diffusion4_g158218 = 0;
				{
				Out_Dummy4_g158218 = Data4_g158218.Dummy;
				Out_Albedo4_g158218 = Data4_g158218.Albedo;
				Out_NormalTS4_g158218 = Data4_g158218.NormalTS;
				Out_NormalWS4_g158218 = Data4_g158218.NormalWS;
				Out_Shader4_g158218 = Data4_g158218.Shader;
				Out_Emissive4_g158218= Data4_g158218.Emissive;
				Out_MultiMask4_g158218 = Data4_g158218.MultiMask;
				Out_Grayscale4_g158218 = Data4_g158218.Grayscale;
				Out_Luminosity4_g158218= Data4_g158218.Luminosity;
				Out_AlphaClip4_g158218 = Data4_g158218.AlphaClip;
				Out_AlphaFade4_g158218 = Data4_g158218.AlphaFade;
				Out_Translucency4_g158218 = Data4_g158218.Translucency;
				Out_Transmission4_g158218 = Data4_g158218.Transmission;
				Out_Thickness4_g158218 = Data4_g158218.Thickness;
				Out_Diffusion4_g158218 = Data4_g158218.Diffusion;
				}
				half3 Visual_Albedo127_g158217 = Out_Albedo4_g158218;
				float3 temp_output_622_0_g158217 = (_OverlayColor).rgb;
				half Overlay_TexMask906_g158217 = 1.0;
				float3 temp_output_739_21_g158217 = Out_NormalWS4_g158218;
				half3 Visual_NormalWS749_g158217 = temp_output_739_21_g158217;
				float clampResult17_g158237 = clamp( saturate( (Visual_NormalWS749_g158217).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g158236 = _OverlayProjRemap.x;
				float temp_output_10_0_g158236 = ( _OverlayProjRemap.y - temp_output_7_0_g158236 );
				float lerpResult842_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158237 - temp_output_7_0_g158236 ) / ( temp_output_10_0_g158236 + 0.0001 ) ) ) , _OverlayProjValue);
				half Overlay_MaskProj457_g158217 = lerpResult842_g158217;
				float temp_output_739_15_g158217 = Out_Luminosity4_g158218;
				half Visual_Luminosity654_g158217 = temp_output_739_15_g158217;
				float clampResult17_g158239 = clamp( Visual_Luminosity654_g158217 , 0.0001 , 0.9999 );
				float temp_output_7_0_g158238 = _OverlayLumaRemap.x;
				float temp_output_10_0_g158238 = ( _OverlayLumaRemap.y - temp_output_7_0_g158238 );
				float lerpResult587_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158239 - temp_output_7_0_g158238 ) / ( temp_output_10_0_g158238 + 0.0001 ) ) ) , _OverlayLumaValue);
				half Overlay_MaskLuma438_g158217 = lerpResult587_g158217;
				half Overlay_VertMask801_g158217 = 1.0;
				half Overlay_MaskNoise427_g158217 = 1.0;
				float localBuildGlobalData204_g156811 = ( 0.0 );
				TVEGlobalData Data204_g156811 = (TVEGlobalData)0;
				half Dummy211_g156811 = ( _GlobalLiteInfo + ( _GlobalCategory + _GlobalEnd ) );
				float In_Dummy204_g156811 = Dummy211_g156811;
				float4 temp_output_362_164_g156811 = TVE_CoatParams;
				half4 Coat_Params302_g156811 = temp_output_362_164_g156811;
				float4 In_CoatParams204_g156811 = Coat_Params302_g156811;
				float4 temp_output_361_164_g156811 = TVE_PaintParams;
				half4 Paint_Params71_g156811 = temp_output_361_164_g156811;
				float4 In_PaintParams204_g156811 = Paint_Params71_g156811;
				float4 temp_output_365_163_g156811 = TVE_GlowParams;
				half4 Glow_Params248_g156811 = temp_output_365_163_g156811;
				float4 In_GlowParams204_g156811 = Glow_Params248_g156811;
				float4 temp_output_363_141_g156811 = TVE_AtmoParams;
				half4 Atmo_Params80_g156811 = temp_output_363_141_g156811;
				float4 In_AtmoParams204_g156811 = Atmo_Params80_g156811;
				float4 temp_output_364_139_g156811 = TVE_FormParams;
				half4 Form_Params112_g156811 = temp_output_364_139_g156811;
				float4 In_FormParams204_g156811 = Form_Params112_g156811;
				float4 temp_output_366_145_g156811 = TVE_WindParams;
				half4 Wind_Params88_g156811 = temp_output_366_145_g156811;
				float4 In_WindParams204_g156811 = Wind_Params88_g156811;
				float4 temp_output_367_145_g156811 = TVE_PushParams;
				half4 Push_Params335_g156811 = temp_output_367_145_g156811;
				float4 In_PushParams204_g156811 = Push_Params335_g156811;
				{
				Data204_g156811.Dummy = In_Dummy204_g156811;
				Data204_g156811.CoatParams = In_CoatParams204_g156811;
				Data204_g156811.PaintParams = In_PaintParams204_g156811;
				Data204_g156811.GlowParams = In_GlowParams204_g156811;
				Data204_g156811.AtmoParams = In_AtmoParams204_g156811;
				Data204_g156811.FormParams= In_FormParams204_g156811;
				Data204_g156811.WindParams = In_WindParams204_g156811;
				Data204_g156811.PushParams = In_PushParams204_g156811;
				}
				TVEGlobalData Data15_g158219 = Data204_g156811;
				float Out_Dummy15_g158219 = 0;
				float4 Out_CoatParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158219 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158219 = Data15_g158219.Dummy;
				Out_CoatParams15_g158219 = Data15_g158219.CoatParams;
				Out_PaintParams15_g158219 = Data15_g158219.PaintParams;
				Out_GlowParams15_g158219 = Data15_g158219.GlowParams;
				Out_AtmoParams15_g158219= Data15_g158219.AtmoParams;
				Out_FadeParams15_g158219= Data15_g158219.FadeParams;
				Out_FormParams15_g158219 = Data15_g158219.FormParams;
				Out_LandParams15_g158219 = Data15_g158219.LandParams;
				Out_WindParams15_g158219 = Data15_g158219.WindParams;
				Out_PushParams15_g158219 = Data15_g158219.PushParams;
				}
				half4 Global_AtmoParams516_g158217 = Out_AtmoParams15_g158219;
				#ifdef TVE_OVERLAY_ELEMENT
				float staticSwitch705_g158217 = (Global_AtmoParams516_g158217).z;
				#else
				float staticSwitch705_g158217 = 1.0;
				#endif
				half Overlay_MaskGlobal429_g158217 = staticSwitch705_g158217;
				half Custom_Mask646_g158217 = 1.0;
				float temp_output_7_0_g158244 = _OverlayBlendRemap1.x;
				float temp_output_10_0_g158244 = ( _OverlayBlendRemap1.y - temp_output_7_0_g158244 );
				half Overlay_Mask494_g158217 = saturate( ( ( ( _OverlayIntensityValue * Overlay_TexMask906_g158217 * Overlay_MaskProj457_g158217 * Overlay_MaskLuma438_g158217 * Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 * Custom_Mask646_g158217 ) - temp_output_7_0_g158244 ) / ( temp_output_10_0_g158244 + 0.0001 ) ) );
				float3 lerpResult467_g158217 = lerp( Visual_Albedo127_g158217 , temp_output_622_0_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float3 staticSwitch577_g158217 = lerpResult467_g158217;
				#else
				float3 staticSwitch577_g158217 = Visual_Albedo127_g158217;
				#endif
				half3 Final_Albedo493_g158217 = staticSwitch577_g158217;
				float3 In_Albedo3_g158220 = Final_Albedo493_g158217;
				half2 Visual_NormalTS535_g158217 = Out_NormalTS4_g158218;
				float2 lerpResult551_g158217 = lerp( Visual_NormalTS535_g158217 , ( Visual_NormalTS535_g158217 * _OverlayNormalValue ) , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float2 staticSwitch583_g158217 = lerpResult551_g158217;
				#else
				float2 staticSwitch583_g158217 = Visual_NormalTS535_g158217;
				#endif
				half2 Final_NormalTS499_g158217 = staticSwitch583_g158217;
				float2 In_NormalTS3_g158220 = Final_NormalTS499_g158217;
				float3 In_NormalWS3_g158220 = temp_output_739_21_g158217;
				half4 Visual_Masks536_g158217 = Out_Shader4_g158218;
				float4 appendResult585_g158217 = (float4(0.0 , 1.0 , 0.0 , _OverlaySmoothnessValue));
				float4 lerpResult584_g158217 = lerp( Visual_Masks536_g158217 , appendResult585_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float4 staticSwitch586_g158217 = lerpResult584_g158217;
				#else
				float4 staticSwitch586_g158217 = Visual_Masks536_g158217;
				#endif
				half4 Final_Masks482_g158217 = staticSwitch586_g158217;
				float4 In_Shader3_g158220 = Final_Masks482_g158217;
				float4 In_Emissive3_g158220 = Out_Emissive4_g158218;
				float temp_output_739_12_g158217 = Out_Grayscale4_g158218;
				float In_Grayscale3_g158220 = temp_output_739_12_g158217;
				float In_Luminosity3_g158220 = temp_output_739_15_g158217;
				float In_MultiMask3_g158220 = Out_MultiMask4_g158218;
				float In_AlphaClip3_g158220 = Out_AlphaClip4_g158218;
				float In_AlphaFade3_g158220 = Out_AlphaFade4_g158218;
				float3 In_Translucency3_g158220 = Out_Translucency4_g158218;
				half Visual_Transmission699_g158217 = Out_Transmission4_g158218;
				float lerpResult746_g158217 = lerp( Visual_Transmission699_g158217 , ( Visual_Transmission699_g158217 * _OverlaySubsurfaceValue ) , ( Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 ));
				#ifdef TVE_OVERLAY
				float staticSwitch703_g158217 = lerpResult746_g158217;
				#else
				float staticSwitch703_g158217 = Visual_Transmission699_g158217;
				#endif
				half Final_Transmission702_g158217 = staticSwitch703_g158217;
				float In_Transmission3_g158220 = Final_Transmission702_g158217;
				float In_Thickness3_g158220 = Out_Thickness4_g158218;
				float In_Diffusion3_g158220 = Out_Diffusion4_g158218;
				{
				Data3_g158220.Dummy = In_Dummy3_g158220;
				Data3_g158220.Albedo = In_Albedo3_g158220;
				Data3_g158220.NormalTS = In_NormalTS3_g158220;
				Data3_g158220.NormalWS = In_NormalWS3_g158220;
				Data3_g158220.Shader = In_Shader3_g158220;
				Data3_g158220.Emissive= In_Emissive3_g158220;
				Data3_g158220.MultiMask = In_MultiMask3_g158220;
				Data3_g158220.Grayscale = In_Grayscale3_g158220;
				Data3_g158220.Luminosity = In_Luminosity3_g158220;
				Data3_g158220.AlphaClip = In_AlphaClip3_g158220;
				Data3_g158220.AlphaFade = In_AlphaFade3_g158220;
				Data3_g158220.Translucency = In_Translucency3_g158220;
				Data3_g158220.Transmission = In_Transmission3_g158220;
				Data3_g158220.Thickness = In_Thickness3_g158220;
				Data3_g158220.Diffusion = In_Diffusion3_g158220;
				}
				TVEVisualData Data4_g158258 = Data3_g158220;
				float Out_Dummy4_g158258 = 0;
				float3 Out_Albedo4_g158258 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158258 = float2( 0,0 );
				float3 Out_NormalWS4_g158258 = float3( 0,0,0 );
				float4 Out_Shader4_g158258 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158258 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158258 = 0;
				float Out_Grayscale4_g158258 = 0;
				float Out_Luminosity4_g158258 = 0;
				float Out_AlphaClip4_g158258 = 0;
				float Out_AlphaFade4_g158258 = 0;
				float3 Out_Translucency4_g158258 = float3( 0,0,0 );
				float Out_Transmission4_g158258 = 0;
				float Out_Thickness4_g158258 = 0;
				float Out_Diffusion4_g158258 = 0;
				{
				Out_Dummy4_g158258 = Data4_g158258.Dummy;
				Out_Albedo4_g158258 = Data4_g158258.Albedo;
				Out_NormalTS4_g158258 = Data4_g158258.NormalTS;
				Out_NormalWS4_g158258 = Data4_g158258.NormalWS;
				Out_Shader4_g158258 = Data4_g158258.Shader;
				Out_Emissive4_g158258= Data4_g158258.Emissive;
				Out_MultiMask4_g158258 = Data4_g158258.MultiMask;
				Out_Grayscale4_g158258 = Data4_g158258.Grayscale;
				Out_Luminosity4_g158258= Data4_g158258.Luminosity;
				Out_AlphaClip4_g158258 = Data4_g158258.AlphaClip;
				Out_AlphaFade4_g158258 = Data4_g158258.AlphaFade;
				Out_Translucency4_g158258 = Data4_g158258.Translucency;
				Out_Transmission4_g158258 = Data4_g158258.Transmission;
				Out_Thickness4_g158258 = Data4_g158258.Thickness;
				Out_Diffusion4_g158258 = Data4_g158258.Diffusion;
				}
				float3 temp_output_297_0_g158247 = Out_Albedo4_g158258;
				float3 In_Albedo3_g158259 = temp_output_297_0_g158247;
				float2 In_NormalTS3_g158259 = Out_NormalTS4_g158258;
				float3 In_NormalWS3_g158259 = Out_NormalWS4_g158258;
				float4 In_Shader3_g158259 = Out_Shader4_g158258;
				float4 temp_cast_6 = (0.0).xxxx;
				half4 Visual_Emissive255_g158247 = Out_Emissive4_g158258;
				half Emissive_MeshMask221_g158247 = 1.0;
				half Emissive_Mask103_g158247 = 1.0;
				float temp_output_279_0_g158247 = ( Emissive_MeshMask221_g158247 * Emissive_Mask103_g158247 );
				float3 appendResult293_g158247 = (float3(temp_output_279_0_g158247 , temp_output_279_0_g158247 , temp_output_279_0_g158247));
				half3 Local_EmissiveColor278_g158247 = appendResult293_g158247;
				float3 temp_cast_7 = (1.0).xxx;
				TVEGlobalData Data15_g158249 = Data204_g156811;
				float Out_Dummy15_g158249 = 0;
				float4 Out_CoatParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158249 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158249 = Data15_g158249.Dummy;
				Out_CoatParams15_g158249 = Data15_g158249.CoatParams;
				Out_PaintParams15_g158249 = Data15_g158249.PaintParams;
				Out_GlowParams15_g158249 = Data15_g158249.GlowParams;
				Out_AtmoParams15_g158249= Data15_g158249.AtmoParams;
				Out_FadeParams15_g158249= Data15_g158249.FadeParams;
				Out_FormParams15_g158249 = Data15_g158249.FormParams;
				Out_LandParams15_g158249 = Data15_g158249.LandParams;
				Out_WindParams15_g158249 = Data15_g158249.WindParams;
				Out_PushParams15_g158249 = Data15_g158249.PushParams;
				}
				half4 Global_GlowParams179_g158247 = Out_GlowParams15_g158249;
				float3 lerpResult299_g158247 = lerp( float3( 1,1,1 ) , (Global_GlowParams179_g158247).xyz , TVE_IsEnabled);
				#ifdef TVE_EMISSIVE_ELEMENT
				float3 staticSwitch228_g158247 = lerpResult299_g158247;
				#else
				float3 staticSwitch228_g158247 = temp_cast_7;
				#endif
				half3 Emissive_GlobalMask248_g158247 = staticSwitch228_g158247;
				half3 Local_EmissiveValue88_g158247 = ( _EmissiveIntensityValue * (_EmissiveColor).rgb * Emissive_GlobalMask248_g158247 );
				half3 Emissive_Blend260_g158247 = ( ( (Visual_Emissive255_g158247).xyz * Local_EmissiveColor278_g158247 ) * Local_EmissiveValue88_g158247 );
				float3 temp_output_3_0_g158257 = Emissive_Blend260_g158247;
				float temp_output_15_0_g158257 = _emissive_power_value;
				float3 temp_output_23_0_g158257 = ( temp_output_3_0_g158257 * temp_output_15_0_g158257 );
				float4 appendResult295_g158247 = (float4(temp_output_23_0_g158257 , Emissive_Mask103_g158247));
				#ifdef TVE_EMISSIVE
				float4 staticSwitch129_g158247 = appendResult295_g158247;
				#else
				float4 staticSwitch129_g158247 = temp_cast_6;
				#endif
				half4 Final_Emissive184_g158247 = staticSwitch129_g158247;
				float4 In_Emissive3_g158259 = Final_Emissive184_g158247;
				float In_Grayscale3_g158259 = Out_Grayscale4_g158258;
				float In_Luminosity3_g158259 = Out_Luminosity4_g158258;
				float temp_output_297_11_g158247 = Out_MultiMask4_g158258;
				float In_MultiMask3_g158259 = temp_output_297_11_g158247;
				float In_AlphaClip3_g158259 = Out_AlphaClip4_g158258;
				float In_AlphaFade3_g158259 = Out_AlphaFade4_g158258;
				float3 In_Translucency3_g158259 = Out_Translucency4_g158258;
				float In_Transmission3_g158259 = Out_Transmission4_g158258;
				float In_Thickness3_g158259 = Out_Thickness4_g158258;
				float In_Diffusion3_g158259 = Out_Diffusion4_g158258;
				{
				Data3_g158259.Dummy = In_Dummy3_g158259;
				Data3_g158259.Albedo = In_Albedo3_g158259;
				Data3_g158259.NormalTS = In_NormalTS3_g158259;
				Data3_g158259.NormalWS = In_NormalWS3_g158259;
				Data3_g158259.Shader = In_Shader3_g158259;
				Data3_g158259.Emissive= In_Emissive3_g158259;
				Data3_g158259.MultiMask = In_MultiMask3_g158259;
				Data3_g158259.Grayscale = In_Grayscale3_g158259;
				Data3_g158259.Luminosity = In_Luminosity3_g158259;
				Data3_g158259.AlphaClip = In_AlphaClip3_g158259;
				Data3_g158259.AlphaFade = In_AlphaFade3_g158259;
				Data3_g158259.Translucency = In_Translucency3_g158259;
				Data3_g158259.Transmission = In_Transmission3_g158259;
				Data3_g158259.Thickness = In_Thickness3_g158259;
				Data3_g158259.Diffusion = In_Diffusion3_g158259;
				}
				TVEVisualData Data4_g158291 = Data3_g158259;
				float Out_Dummy4_g158291 = 0;
				float3 Out_Albedo4_g158291 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158291 = float2( 0,0 );
				float3 Out_NormalWS4_g158291 = float3( 0,0,0 );
				float4 Out_Shader4_g158291 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158291 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158291 = 0;
				float Out_Grayscale4_g158291 = 0;
				float Out_Luminosity4_g158291 = 0;
				float Out_AlphaClip4_g158291 = 0;
				float Out_AlphaFade4_g158291 = 0;
				float3 Out_Translucency4_g158291 = float3( 0,0,0 );
				float Out_Transmission4_g158291 = 0;
				float Out_Thickness4_g158291 = 0;
				float Out_Diffusion4_g158291 = 0;
				{
				Out_Dummy4_g158291 = Data4_g158291.Dummy;
				Out_Albedo4_g158291 = Data4_g158291.Albedo;
				Out_NormalTS4_g158291 = Data4_g158291.NormalTS;
				Out_NormalWS4_g158291 = Data4_g158291.NormalWS;
				Out_Shader4_g158291 = Data4_g158291.Shader;
				Out_Emissive4_g158291= Data4_g158291.Emissive;
				Out_MultiMask4_g158291 = Data4_g158291.MultiMask;
				Out_Grayscale4_g158291 = Data4_g158291.Grayscale;
				Out_Luminosity4_g158291= Data4_g158291.Luminosity;
				Out_AlphaClip4_g158291 = Data4_g158291.AlphaClip;
				Out_AlphaFade4_g158291 = Data4_g158291.AlphaFade;
				Out_Translucency4_g158291 = Data4_g158291.Translucency;
				Out_Transmission4_g158291 = Data4_g158291.Transmission;
				Out_Thickness4_g158291 = Data4_g158291.Thickness;
				Out_Diffusion4_g158291 = Data4_g158291.Diffusion;
				}
				half3 Visual_Albedo199_g158290 = Out_Albedo4_g158291;
				float3 temp_cast_8 = (0.0).xxx;
				half3 Subsurface_Color264_g158290 = ( (_SubsurfaceColor).rgb * Visual_Albedo199_g158290 );
				half Visual_Transmission138_g158290 = Out_Transmission4_g158291;
				half Subsurface_Value268_g158290 = _SubsurfaceIntensityValue;
				TVEGlobalData Data15_g158294 = Data204_g156811;
				float Out_Dummy15_g158294 = 0;
				float4 Out_CoatParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158294 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158294 = Data15_g158294.Dummy;
				Out_CoatParams15_g158294 = Data15_g158294.CoatParams;
				Out_PaintParams15_g158294 = Data15_g158294.PaintParams;
				Out_GlowParams15_g158294 = Data15_g158294.GlowParams;
				Out_AtmoParams15_g158294= Data15_g158294.AtmoParams;
				Out_FadeParams15_g158294= Data15_g158294.FadeParams;
				Out_FormParams15_g158294 = Data15_g158294.FormParams;
				Out_LandParams15_g158294 = Data15_g158294.LandParams;
				Out_WindParams15_g158294 = Data15_g158294.WindParams;
				Out_PushParams15_g158294 = Data15_g158294.PushParams;
				}
				half4 Global_GlowParams373_g158290 = Out_GlowParams15_g158294;
				float lerpResult403_g158290 = lerp( 1.0 , saturate( (Global_GlowParams373_g158290).w ) , TVE_IsEnabled);
				#ifdef TVE_SUBSURFACE_ELEMENT
				float staticSwitch367_g158290 = lerpResult403_g158290;
				#else
				float staticSwitch367_g158290 = 1.0;
				#endif
				half Subsurface_GlobalMask369_g158290 = staticSwitch367_g158290;
				float temp_output_301_11_g158290 = Out_MultiMask4_g158291;
				half Visual_MultiMask292_g158290 = temp_output_301_11_g158290;
				float lerpResult293_g158290 = lerp( 1.0 , Visual_MultiMask292_g158290 , _SubsurfaceMultiValue);
				half Subsurface_MultiMask296_g158290 = lerpResult293_g158290;
				half Custom_Mask363_g158290 = 1.0;
				#ifdef TVE_SUBSURFACE
				float staticSwitch345_g158290 = ( Visual_Transmission138_g158290 * Subsurface_Value268_g158290 * Subsurface_GlobalMask369_g158290 * Subsurface_MultiMask296_g158290 * Custom_Mask363_g158290 );
				#else
				float staticSwitch345_g158290 = 0.0;
				#endif
				half Final_Transmission269_g158290 = staticSwitch345_g158290;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch348_g158290 = ( Subsurface_Color264_g158290 * Final_Transmission269_g158290 * 10.0 );
				#else
				float3 staticSwitch348_g158290 = temp_cast_8;
				#endif
				half3 Final_Translucency254_g158290 = staticSwitch348_g158290;
				TVEModelData Data16_g156810 = (TVEModelData)0;
				float In_Dummy16_g156810 = 0.0;
				float3 In_PositionOS16_g156810 = float3( 0,0,0 );
				half3 Input_PositionWS218_g156802 = positionWS;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156810 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156810 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156810 = float3( 0,0,0 );
				float3 In_PositionAddOS16_g156810 = float3( 0,0,0 );
				float3 In_PivotOS16_g156810 = float3( 0,0,0 );
				float3 vertexToFrag281_g156802 = IN.ase_texcoord11.xyz;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156810 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156810 = Model_PivotWO133_g156802;
				float3 In_NormalOS16_g156810 = float3( 0,0,0 );
				float3 ase_worldNormal = IN.ase_texcoord12.xyz;
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156810 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156810 = float3( 0,0,0 );
				float3 In_NormalRawWS16_g156810 = float3( 0,0,0 );
				float4 In_TangentOS16_g156810 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156810 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156810 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156810 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156810 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156810 = float4( 0,0,0,0 );
				{
				Data16_g156810.Dummy = In_Dummy16_g156810;
				Data16_g156810.PositionOS = In_PositionOS16_g156810;
				Data16_g156810.PositionWS = In_PositionWS16_g156810;
				Data16_g156810.PositionWO = In_PositionWO16_g156810;
				Data16_g156810.PositionRawOS = In_PositionRawOS16_g156810;
				Data16_g156810.PositionAddOS = In_PositionAddOS16_g156810;
				Data16_g156810.PivotOS = In_PivotOS16_g156810;
				Data16_g156810.PivotWS = In_PivotWS16_g156810;
				Data16_g156810.PivotWO = In_PivotWO16_g156810;
				Data16_g156810.NormalOS = In_NormalOS16_g156810;
				Data16_g156810.NormalWS = In_NormalWS16_g156810;
				Data16_g156810.NormalRawOS = In_NormalRawOS16_g156810;
				Data16_g156810.NormalRawWS = In_NormalRawWS16_g156810;
				Data16_g156810.TangentOS = In_TangentOS16_g156810;
				Data16_g156810.ViewDirWS = In_ViewDirWS16_g156810;
				Data16_g156810.VertexData = In_VertexData16_g156810;
				Data16_g156810.MotionData = In_MotionData16_g156810;
				Data16_g156810.BoundsData = In_BoundsData16_g156810;
				Data16_g156810.RotationData = In_RotationData16_g156810;
				}
				TVEModelData Data15_g158293 = Data16_g156810;
				float Out_Dummy15_g158293 = 0;
				float3 Out_PositionOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158293 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158293 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158293 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158293 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158293 = float3( 0,0,0 );
				float4 Out_VertexData15_g158293 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158293 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158293 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158293 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158293 = Data15_g158293.Dummy;
				Out_PositionOS15_g158293 = Data15_g158293.PositionOS;
				Out_PositionWS15_g158293 = Data15_g158293.PositionWS;
				Out_PositionWO15_g158293 = Data15_g158293.PositionWO;
				Out_PositionRawOS15_g158293 = Data15_g158293.PositionRawOS;
				Out_PositionAddOS15_g158293 = Data15_g158293.PositionAddOS;
				Out_PivotOS15_g158293 = Data15_g158293.PivotOS;
				Out_PivotWS15_g158293 = Data15_g158293.PivotWS;
				Out_PivotWO15_g158293 = Data15_g158293.PivotWO;
				Out_NormalOS15_g158293 = Data15_g158293.NormalOS;
				Out_NormalWS15_g158293 = Data15_g158293.NormalWS;
				Out_NormalRawOS15_g158293 = Data15_g158293.NormalRawOS;
				Out_NormalRawWS15_g158293 = Data15_g158293.NormalRawWS;
				Out_TangentOS15_g158293 = Data15_g158293.TangentOS;
				Out_ViewDirWS15_g158293 = Data15_g158293.ViewDirWS;
				Out_VertexData15_g158293 = Data15_g158293.VertexData;
				Out_MotionData15_g158293 = Data15_g158293.MotionData;
				Out_BoundsData15_g158293 = Data15_g158293.BoundsData;
				Out_RotationData15_g158293 = Data15_g158293.RotationData;
				}
				half3 Model_ViewDirWS392_g158290 = Out_ViewDirWS15_g158293;
				float dotResult324_g158290 = dot( -TVE_MainLightDirection , Model_ViewDirWS392_g158290 );
				float saferPower323_g158290 = abs( saturate( dotResult324_g158290 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch330_g158290 = 0.0;
				#else
				float staticSwitch330_g158290 = ( pow( saferPower323_g158290 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View320_g158290 = staticSwitch330_g158290;
				float3 temp_output_6_0_g158295 = ( Final_Translucency254_g158290 * Mask_Subsurface_View320_g158290 );
				#ifdef TVE_REGISTER
				float3 staticSwitch14_g158295 = ( temp_output_6_0_g158295 + ( _SubsurfaceAproxInfo * 0.0 ) );
				#else
				float3 staticSwitch14_g158295 = temp_output_6_0_g158295;
				#endif
				half3 Subsurface_Approximation333_g158290 = staticSwitch14_g158295;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch353_g158290 = ( Visual_Albedo199_g158290 + Subsurface_Approximation333_g158290 );
				#else
				float3 staticSwitch353_g158290 = Visual_Albedo199_g158290;
				#endif
				half3 Final_Albedo312_g158290 = staticSwitch353_g158290;
				float3 In_Albedo3_g158292 = Final_Albedo312_g158290;
				float2 In_NormalTS3_g158292 = Out_NormalTS4_g158291;
				float3 In_NormalWS3_g158292 = Out_NormalWS4_g158291;
				float4 In_Shader3_g158292 = Out_Shader4_g158291;
				float4 In_Emissive3_g158292 = Out_Emissive4_g158291;
				float In_Grayscale3_g158292 = Out_Grayscale4_g158291;
				float In_Luminosity3_g158292 = Out_Luminosity4_g158291;
				float In_MultiMask3_g158292 = temp_output_301_11_g158290;
				float In_AlphaClip3_g158292 = Out_AlphaClip4_g158291;
				float In_AlphaFade3_g158292 = Out_AlphaFade4_g158291;
				float3 In_Translucency3_g158292 = Final_Translucency254_g158290;
				float In_Transmission3_g158292 = Final_Transmission269_g158290;
				#ifdef TVE_SUBSURFACE
				float staticSwitch351_g158290 = 0.0;
				#else
				float staticSwitch351_g158290 = 1.0;
				#endif
				half Final_Thickness275_g158290 = staticSwitch351_g158290;
				float In_Thickness3_g158292 = Final_Thickness275_g158290;
				float Final_Diffusion340_g158290 = _SubsurfaceDiffusion;
				float In_Diffusion3_g158292 = Final_Diffusion340_g158290;
				{
				Data3_g158292.Dummy = In_Dummy3_g158292;
				Data3_g158292.Albedo = In_Albedo3_g158292;
				Data3_g158292.NormalTS = In_NormalTS3_g158292;
				Data3_g158292.NormalWS = In_NormalWS3_g158292;
				Data3_g158292.Shader = In_Shader3_g158292;
				Data3_g158292.Emissive= In_Emissive3_g158292;
				Data3_g158292.MultiMask = In_MultiMask3_g158292;
				Data3_g158292.Grayscale = In_Grayscale3_g158292;
				Data3_g158292.Luminosity = In_Luminosity3_g158292;
				Data3_g158292.AlphaClip = In_AlphaClip3_g158292;
				Data3_g158292.AlphaFade = In_AlphaFade3_g158292;
				Data3_g158292.Translucency = In_Translucency3_g158292;
				Data3_g158292.Transmission = In_Transmission3_g158292;
				Data3_g158292.Thickness = In_Thickness3_g158292;
				Data3_g158292.Diffusion = In_Diffusion3_g158292;
				}
				TVEVisualData Data4_g158307 = Data3_g158292;
				float Out_Dummy4_g158307 = 0;
				float3 Out_Albedo4_g158307 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158307 = float2( 0,0 );
				float3 Out_NormalWS4_g158307 = float3( 0,0,0 );
				float4 Out_Shader4_g158307 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158307 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158307 = 0;
				float Out_Grayscale4_g158307 = 0;
				float Out_Luminosity4_g158307 = 0;
				float Out_AlphaClip4_g158307 = 0;
				float Out_AlphaFade4_g158307 = 0;
				float3 Out_Translucency4_g158307 = float3( 0,0,0 );
				float Out_Transmission4_g158307 = 0;
				float Out_Thickness4_g158307 = 0;
				float Out_Diffusion4_g158307 = 0;
				{
				Out_Dummy4_g158307 = Data4_g158307.Dummy;
				Out_Albedo4_g158307 = Data4_g158307.Albedo;
				Out_NormalTS4_g158307 = Data4_g158307.NormalTS;
				Out_NormalWS4_g158307 = Data4_g158307.NormalWS;
				Out_Shader4_g158307 = Data4_g158307.Shader;
				Out_Emissive4_g158307= Data4_g158307.Emissive;
				Out_MultiMask4_g158307 = Data4_g158307.MultiMask;
				Out_Grayscale4_g158307 = Data4_g158307.Grayscale;
				Out_Luminosity4_g158307= Data4_g158307.Luminosity;
				Out_AlphaClip4_g158307 = Data4_g158307.AlphaClip;
				Out_AlphaFade4_g158307 = Data4_g158307.AlphaFade;
				Out_Translucency4_g158307 = Data4_g158307.Translucency;
				Out_Transmission4_g158307 = Data4_g158307.Transmission;
				Out_Thickness4_g158307 = Data4_g158307.Thickness;
				Out_Diffusion4_g158307 = Data4_g158307.Diffusion;
				}
				half3 Input_Albedo24_g158305 = Out_Albedo4_g158307;
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch22_g158305 = half4(0.2209163,0.2209163,0.2209163,0.7790837);
				#else
				float4 staticSwitch22_g158305 = half4(0.04,0.04,0.04,0.96);
				#endif
				half4 ColorSpaceDielectricSpec23_g158305 = staticSwitch22_g158305;
				float4 break24_g158304 = Out_Shader4_g158307;
				half Metallic117_g158304 = break24_g158304.x;
				half Input_Metallic25_g158305 = Metallic117_g158304;
				half OneMinusReflectivity31_g158305 = ( (ColorSpaceDielectricSpec23_g158305).w - ( (ColorSpaceDielectricSpec23_g158305).w * Input_Metallic25_g158305 ) );
				float3 lerpResult87_g158304 = lerp( half3(1,0,0) , ( Input_Albedo24_g158305 * OneMinusReflectivity31_g158305 ) , _IsInitialized);
				
				float3 lerpResult28_g158305 = lerp( (ColorSpaceDielectricSpec23_g158305).xyz , Input_Albedo24_g158305 , Input_Metallic25_g158305);
				half RenderSpec105_g158304 = _RenderSpecular;
				
				float localCustomAlphaClip19_g158312 = ( 0.0 );
				float temp_output_3_0_g158312 = Out_AlphaClip4_g158307;
				float Alpha19_g158312 = temp_output_3_0_g158312;
				float temp_output_15_0_g158312 = 0.0;
				float Treshold19_g158312 = temp_output_15_0_g158312;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_CUTOUT) || defined (TVE_DITHER)
				#if defined ( TVE_PIPELINE_HD)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#else
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#endif
				}
				

				fixed3 albedo = lerpResult87_g158304;
				fixed3 normal = Out_NormalWS4_g158307;
				half3 emission = (Out_Emissive4_g158307).xyz;
				fixed3 specular = ( lerpResult28_g158305 * RenderSpec105_g158304 );
				fixed metallic = 0;
				half smoothness = break24_g158304.w;
				half occlusion = 1;
				fixed alpha = Alpha19_g158312;
				fixed alphaClipThreshold = 0;

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif
				IN.pos.zw = positionCS.zw;
				outDepth = IN.pos.z;

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(positionWS));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed3 worldViewDir = normalize(UnityWorldSpaceViewDir(positionWS));

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				UnityMetaInput metaIN;
				UNITY_INITIALIZE_OUTPUT(UnityMetaInput, metaIN);
				metaIN.Albedo = o.Albedo;
				metaIN.Emission = o.Emission;
				return UnityMetaFragment(metaIN);
			}
			ENDCG
		}

		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On

			CGPROGRAM
			#define _SPECULAR_SETUP 1
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert_surf
			#pragma fragment frag_surf
			#pragma multi_compile_shadowcaster
			#pragma multi_compile __ LOD_FADE_CROSSFADE
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#pragma multi_compile_instancing
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityShaderUtilities.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "UnityStandardUtils.cginc"

			#define ai_ObjectToWorld unity_ObjectToWorld
			#define ai_WorldToObject unity_WorldToObject
			#define AI_INV_TWO_PI  UNITY_INV_TWO_PI
			#define AI_PI          UNITY_PI
			#define AI_INV_PI      UNITY_INV_PI
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local_fragment TVE_PIPELINE_STANDARD TVE_PIPELINE_UNIVERSAL TVE_PIPELINE_HD
			#pragma shader_feature_local_vertex TVE_MOTION_BASE_BENDING
			#pragma shader_feature_local_vertex TVE_MOTION_WIND_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE
			#pragma shader_feature_local_fragment TVE_OVERLAY
			#pragma shader_feature_local_fragment TVE_OVERLAY_ELEMENT
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#pragma shader_feature_local_fragment TVE_EMISSIVE_ELEMENT
			#pragma shader_feature_local_fragment TVE_SUBSURFACE_ELEMENT
			  
			struct TVEVisualData
			{  
				half Dummy;  
				half3 Albedo;
				half2 NormalTS;
				half3 NormalWS; 
				half4 Shader;
				half4 Emissive;
				half AlphaClip;
				half AlphaFade;
				half MultiMask;
				half Grayscale;
				half Luminosity;
				half3 Translucency;
				half Transmission;
				half Thickness;
				float Diffusion;
			};  
			    
			struct TVEModelData
			{    
				half Dummy;    
				half3 PositionOS;
				half3 PositionWS;
				half3 PositionWO;
				half3 PositionRawOS;
				half3 PositionAddOS;
				half3 PivotOS;
				half3 PivotWS;
				half3 PivotWO;
				half3 NormalOS;
				half3 NormalWS;
				half3 NormalRawOS;
				half3 NormalRawWS;
				half4 TangentOS;
				half3 ViewDirWS;
				half4 VertexData;
				half4 MotionData;
				half4 BoundsData;
				half4 RotationData;
			};    
			      
			struct TVEGlobalData
			{      
				half Dummy;      
				half4 CoatParams;
				half4 PaintParams;
				half4 GlowParams;
				half4 AtmoParams;
				half4 FadeParams;
				half4 FormParams;
				half4 LandParams;
				half4 WindParams;
				half4 PushParams;
			};      
			        
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//#pragma editor_sync_compilation
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
			#endif//ASE Sampling Macros
			


			uniform half _ImpostorAlphaClipValue;
			uniform half4 _OverlayColoringOn;
			uniform half4 _OverlayColoringOff;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayGlitterTex);
			SamplerState sampler_OverlayGlitterTex;
			uniform half _OverlayGlitterTillingValue;
			uniform half _OverlayGlitterIntensityValue;
			uniform half _OverlayLiteInfo;
			uniform half4 _OverlayGlitterColor;
			uniform half _SubsurfaceScatteringValue;
			uniform half _SubsurfaceAngleValue;
			uniform float _SubsurfaceDiffusion;
			uniform float4 _SubsurfaceDiffusion_Asset;
			uniform half _SubsurfaceSpace;
			uniform half _IsVersion;
			uniform half _RenderDecals;
			uniform half _RenderSSR;
			uniform half _CategoryRender;
			uniform half _EndRender;
			uniform half _NoiseCategory;
			uniform half _NoiseEnd;
			UNITY_DECLARE_TEX3D_NOSAMPLER(_NoiseTex3D);
			SamplerState sampler_NoiseTex3D;
			uniform half _IsInitialized;
			uniform half _IsTVEShader;
			uniform half _IsCustomShader;
			uniform half _IsShared;
			uniform half _HasDefaultTextures;
			uniform half _IsCollected;
			uniform half _IsConverted;
			uniform half _IsIdentifier;
			uniform half _RenderMotion;
			uniform half _RenderShadow;
			uniform half _IsLiteShader;
			uniform half _IsStandardShader;
			uniform half _IsImpostorShader;
			uniform half _ImpostorCategory;
			uniform half _ImpostorEnd;
			uniform half _MotionWindCategory;
			uniform half _MotionWindEnd;
			uniform half _MotionWindElementMode;
			uniform half _MotionInteractionCategory;
			uniform half _MotionInteractionEnd;
			uniform half _InteractionLiteInfo;
			uniform half4 _InteractionColoring;
			uniform half _MotionPushIntensityValue;
			uniform half _MotionPushPivotValue;
			uniform half _MotionPushMaskValue;
			uniform half _MotionPushElementMode;
			uniform float _AI_Frames;
			uniform float _AI_FramesX;
			uniform float _AI_FramesY;
			uniform float _AI_ImpostorSize;
			uniform float _AI_Parallax;
			uniform float3 _AI_Offset;
			uniform float4 _AI_SizeOffset;
			uniform float _AI_TextureBias;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Albedo);
			SamplerState sampler_Albedo;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_Normals);
			SamplerState sampler_Normals;
			uniform float _AI_DepthSize;
			uniform float _AI_ShadowBias;
			uniform float _AI_ShadowView;
			uniform float _AI_Clip;
			uniform float3 TVE_WorldOrigin;
			uniform half _MotionBaseIntensityValue;
			uniform half4 TVE_MotionParams;
			uniform half TVE_IsEnabled;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MotionNoiseTex);
			uniform half _MotionBasePivotValue;
			uniform half _MotionTillingValue;
			uniform half4 TVE_TimeParams;
			uniform half _MotionSpeedValue;
			SamplerState sampler_Linear_Repeat;
			uniform half _MotionNoiseValue;
			uniform half _MotionIntensityValue;
			uniform half _global_wind_layer_value;
			uniform float TVE_WindLayers[10];
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindBaseTex);
			uniform half4 TVE_RenderBaseCoords;
			SamplerState sampler_Linear_Clamp;
			UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_WindNearTex);
			uniform half4 TVE_RenderNearCoords;
			uniform float4 TVE_RenderNearPositionR;
			uniform half TVE_RenderNearFadeValue;
			uniform half4 TVE_WindParams;
			uniform half _DisableSRPBatcher;
			uniform half _VariationLiteInfo;
			uniform half4 _VariationColoring;
			uniform half _VariationCategory;
			uniform half _VariationEnd;
			uniform half _VariationIntensityValue;
			uniform half4 _VariationColorTwo;
			uniform half4 _VariationColorOne;
			uniform half _VariationMultiValue;
			uniform half4 _VariationNoiseRemap;
			uniform half _VariationNoisePivotsValue1;
			uniform half _VariationNoiseTillingValue;
			uniform half _TintingLiteInfo;
			uniform half4 _TintingColoring;
			uniform half _TintingCategory;
			uniform half _TintingEnd;
			uniform half _TintingSpace;
			uniform half _TintingElementMode;
			uniform half _TintingIntensityValue;
			uniform float4 _TintingColor;
			uniform half _TintingGrayValue;
			uniform half _TintingMultiValue;
			uniform half _TintingLumaValue;
			uniform half4 _TintingLumaRemap;
			uniform half _DrynessLiteInfo;
			uniform half4 _DrynessColoring;
			uniform half _DrynessCategory;
			uniform half _DrynessEnd;
			uniform half _DrynessSpace;
			uniform half _DrynessElementMode;
			uniform half _DrynessIntensityValue;
			uniform float4 _DrynessColor;
			uniform half _DrynessGrayValue;
			uniform half _DrynessShiftValue;
			uniform half _DrynessSmoothnessValue;
			uniform half _DrynessSubsurfaceValue;
			uniform half _DrynessMultiValue;
			uniform half _DrynessLumaValue;
			uniform half4 _DrynessLumaRemap;
			uniform half _WetnessLiteInfo;
			uniform half4 _WetnessColoring;
			uniform half _WetnessCategory;
			uniform half _WetnessEnd;
			uniform half _WetnessElementMode;
			uniform half _WetnessIntensityValue;
			uniform half _WetnessContrastValue;
			uniform half _WetnessSmoothnessValue;
			uniform half _CutoutLiteInfo;
			uniform half4 _CutoutColoring;
			uniform half _CutoutCategory;
			uniform half _CutoutEnd;
			uniform half _CutoutSpace;
			uniform half _CutoutElementMode;
			uniform half _CutoutIntensityValue;
			uniform half _CutoutMultiValue;
			uniform half _CutoutAlphaValue;
			uniform half _CutoutNoiseValue;
			uniform half _CutoutNoiseTillingValue;
			uniform half _DitherLiteInfo;
			uniform half4 _DitherColoring;
			uniform half _DitherCategory;
			uniform half _DitherEnd;
			uniform half _DitherConstantValue;
			uniform half _DitherDistanceValue;
			uniform half _DitherDistanceMaxValue;
			uniform half _DitherDistanceMinValue;
			uniform half _DitherMultiValue;
			uniform half _DitherNoiseTillingValue;
			uniform half _SizeFadeLiteInfo;
			uniform half4 _SizeFadeColoring;
			uniform half _SizeFadeCategory;
			uniform half _SizeFadeEnd;
			uniform half _SizeFadeElementMode;
			uniform half _SizeFadeIntensityValue;
			uniform half _SizeFadeScaleMode;
			uniform half _SizeFadeScaleValue;
			uniform half _SizeFadeDistMinValue;
			uniform half _SizeFadeDistMaxValue;
			uniform half _SubsurfaceCategory;
			uniform half _SubsurfaceEnd;
			uniform half _SubsurfaceDirectValue;
			uniform half _SubsurfaceNormalValue;
			uniform half _SubsurfaceAmbientValue;
			uniform half _SubsurfaceShadowValue;
			uniform half _SubsurfaceElementMode;
			uniform half _EmissiveCategory;
			uniform half _EmissiveEnd;
			uniform half _EmissivePowerMode;
			uniform half _EmissivePowerValue;
			uniform half _EmissiveElementMode;
			uniform half _OverlayCategory;
			uniform half _OverlayEnd;
			uniform half _OverlaySpace;
			uniform half _OverlayElementMode;
			uniform half _OverlayBakeInfo;
			uniform float4 _OverlayGlitterTex_ST;
			uniform half _OverlayGlitterDistValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksA);
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MasksB);
			SamplerState sampler_MasksA;
			SamplerState sampler_MasksB;
			uniform half4 _ImpostorColorTwo;
			uniform half4 _ImpostorColor;
			uniform half _ImpostorColorMode;
			uniform half _ImpostorMetallicValue;
			uniform half _ImpostorSmoothnessValue;
			uniform half4 _OverlayColor;
			uniform half _OverlayIntensityValue;
			uniform half4 _OverlayProjRemap;
			uniform half _OverlayProjValue;
			uniform half4 _OverlayLumaRemap;
			uniform half _OverlayLumaValue;
			uniform half _GlobalLiteInfo;
			uniform half _GlobalCategory;
			uniform half _GlobalEnd;
			uniform half4 TVE_CoatParams;
			uniform half4 TVE_PaintParams;
			uniform half4 TVE_GlowParams;
			uniform half4 TVE_AtmoParams;
			uniform half4 TVE_FormParams;
			uniform half4 TVE_PushParams;
			uniform half4 _OverlayBlendRemap1;
			uniform half _OverlayNormalValue;
			uniform half _OverlaySmoothnessValue;
			uniform half _OverlaySubsurfaceValue;
			uniform half _EmissiveIntensityValue;
			uniform half4 _EmissiveColor;
			uniform float _emissive_power_value;
			uniform half4 _SubsurfaceColor;
			uniform half _SubsurfaceIntensityValue;
			uniform half _SubsurfaceMultiValue;
			uniform half3 TVE_MainLightDirection;
			uniform half _SubsurfaceAproxInfo;
			uniform half _RenderSpecular;
			float2 VectortoOctahedron( float3 N )
			{
				N /= dot( 1.0, abs( N ) );
				if( N.z <= 0 )
				{
				N.xy = ( 1 - abs( N.yx ) ) * ( N.xy >= 0 ? 1.0 : -1.0 );
				}
				return N.xy;
			}
			
			float3 OctahedronToVector( float2 Oct )
			{
				float3 N = float3( Oct, 1.0 - dot( 1.0, abs( Oct ) ) );
				if(N.z< 0 )
				{
				N.xy = ( 1 - abs( N.yx) ) * (N.xy >= 0 ? 1.0 : -1.0 );
				}
				return normalize( N);
			}
			
			inline void RayPlaneIntersectionUV( float3 normalOS, float3 rayPosition, float3 rayDirection, inout float2 uvs, inout float3 localNormal )
			{
				float lDotN = dot( rayDirection, normalOS ); 
				float p0l0DotN = dot( -rayPosition, normalOS );
				float t = p0l0DotN / lDotN;
				float3 p = rayDirection * t + rayPosition;
				float3 upVector = float3( 0, 1, 0 );
				float3 tangent = normalize( cross( upVector, normalOS ) + float3( -0.001, 0, 0 ) );
				float3 bitangent = cross( tangent, normalOS );
				float frameX = dot( p, tangent );
				float frameZ = dot( p, bitangent );
				uvs = -float2( frameX, frameZ );
				if( t <= 0.0 )
				uvs = 0;
				float3x3 worldToLocal = float3x3( tangent, bitangent, normalOS );
				localNormal = normalize( mul( worldToLocal, rayDirection ) );
			}
			
			inline void OctaImpostorVertex( inout float4 positionOS, inout float3 normalOS, inout float4 uvsFrame1, inout float4 uvsFrame2, inout float4 uvsFrame3, inout float4 octaFrame, inout float4 viewPos )
			{
				float2 uvOffset = _AI_SizeOffset.zw;
				float parallax = -_AI_Parallax; 
				float UVscale = _AI_ImpostorSize;
				float framesXY = _AI_Frames;
				float prevFrame = framesXY - 1;
				float3 fractions = 1.0 / float3( framesXY, prevFrame, UVscale );
				float fractionsFrame = fractions.x;
				float fractionsPrevFrame = fractions.y;
				float fractionsUVscale = fractions.z;
				float3 worldCameraPos;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float3 worldOrigin = 0;
				float4 perspective = float4( 0, 0, 0, 1 );
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				perspective = float4( 0, 0, 5000, 0 );
				worldOrigin = ai_ObjectToWorld._m03_m13_m23;
				}
				worldCameraPos = worldOrigin + mul( UNITY_MATRIX_I_V, perspective ).xyz;
				#else
				if ( UNITY_MATRIX_P[ 3 ][ 3 ] == 1 )
				{
				worldCameraPos = ai_ObjectToWorld._m03_m13_m23 + UNITY_MATRIX_I_V._m02_m12_m22 * 5000;
				}
				else
				{
				worldCameraPos = _WorldSpaceCameraPos;
				}
				#endif
				float3 objectCameraPosition = mul( ai_WorldToObject, float4( worldCameraPos, 1 ) ).xyz - _AI_Offset.xyz; 
				float3 objectCameraDirection = normalize( objectCameraPosition );
				float3 upVector = float3( 0,1,0 );
				float3 objectHorizontalVector = normalize( cross( objectCameraDirection, upVector ) );
				float3 objectVerticalVector = cross( objectHorizontalVector, objectCameraDirection );
				float2 uvExpansion = positionOS.xy;
				float3 billboard = objectHorizontalVector * uvExpansion.x + objectVerticalVector * uvExpansion.y;
				float3 localDir = billboard - objectCameraPosition; 
				objectCameraDirection = trunc( objectCameraDirection * 65536.0 ) / 65536.0;
				float2 frameOcta = VectortoOctahedron( objectCameraDirection.xzy ) * 0.5 + 0.5;
				float2 prevOctaFrame = frameOcta * prevFrame;
				float2 baseOctaFrame = floor( prevOctaFrame );
				float2 fractionOctaFrame = ( baseOctaFrame * fractionsFrame );
				float2 octaFrame1 = ( baseOctaFrame * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa1WorldY = OctahedronToVector( octaFrame1 ).xzy;
				float3 octa1LocalY;
				float2 uvFrame1;
				RayPlaneIntersectionUV( octa1WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame1, /*inout*/ octa1LocalY );
				float2 uvParallax1 = octa1LocalY.xy * fractionsFrame * parallax;
				uvFrame1 = ( uvFrame1 * fractionsUVscale + 0.5 ) * fractionsFrame + fractionOctaFrame;
				uvsFrame1 = float4( uvParallax1, uvFrame1) - float4( 0, 0, uvOffset );
				float2 fractPrevOctaFrame = frac( prevOctaFrame );
				float2 cornerDifference = lerp( float2( 0,1 ) , float2( 1,0 ) , saturate( ceil( ( fractPrevOctaFrame.x - fractPrevOctaFrame.y ) ) ));
				float2 octaFrame2 = ( ( baseOctaFrame + cornerDifference ) * fractionsPrevFrame ) * 2.0 - 1.0;
				float3 octa2WorldY = OctahedronToVector( octaFrame2 ).xzy;
				float3 octa2LocalY;
				float2 uvFrame2;
				RayPlaneIntersectionUV( octa2WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame2, /*inout*/ octa2LocalY );
				float2 uvParallax2 = octa2LocalY.xy * fractionsFrame * parallax;
				uvFrame2 = ( uvFrame2 * fractionsUVscale + 0.5 ) * fractionsFrame + ( ( cornerDifference * fractionsFrame ) + fractionOctaFrame );
				uvsFrame2 = float4( uvParallax2, uvFrame2) - float4( 0, 0, uvOffset );
				float2 octaFrame3 = ( ( baseOctaFrame + 1 ) * fractionsPrevFrame  ) * 2.0 - 1.0;
				float3 octa3WorldY = OctahedronToVector( octaFrame3 ).xzy;
				float3 octa3LocalY;
				float2 uvFrame3;
				RayPlaneIntersectionUV( octa3WorldY, objectCameraPosition, localDir, /*inout*/ uvFrame3, /*inout*/ octa3LocalY );
				float2 uvParallax3 = octa3LocalY.xy * fractionsFrame * parallax;
				uvFrame3 = ( uvFrame3 * fractionsUVscale + 0.5 ) * fractionsFrame + ( fractionOctaFrame + fractionsFrame );
				uvsFrame3 = float4( uvParallax3, uvFrame3) - float4( 0, 0, uvOffset );
				octaFrame = 0;
				octaFrame.xy = prevOctaFrame;
				octaFrame.zw = fractionOctaFrame;
				positionOS.xyz = billboard + _AI_Offset.xyz;
				normalOS.xyz = objectCameraDirection;
				viewPos = 0;
				viewPos.xyz = UnityObjectToViewPos( positionOS.xyz );
			}
			
			inline void OctaImpostorFragment( inout SurfaceOutputStandardSpecular o, out float4 positionCS, out float3 positionWS, float4 uvsFrame1, float4 uvsFrame2, float4 uvsFrame3, float4 octaFrame, float4 interpViewPos, out float4 output0, out float4 output1 )
			{
				float depthBias = -1.0;
				float textureBias = _AI_TextureBias;
				float2 fraction = frac( octaFrame.xy );
				float2 invFraction = 1 - fraction;
				float3 weights;
				weights.x = min( invFraction.x, invFraction.y );
				weights.y = abs( fraction.x - fraction.y );
				weights.z = min( fraction.x, fraction.y );
				float4 parallaxSample1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame1.zw, depthBias );
				float2 parallax1 = ( ( 0.5 - parallaxSample1.a ) * uvsFrame1.xy ) + uvsFrame1.zw;
				float4 parallaxSample2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame2.zw, depthBias );
				float2 parallax2 = ( ( 0.5 - parallaxSample2.a ) * uvsFrame2.xy ) + uvsFrame2.zw;
				float4 parallaxSample3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, uvsFrame3.zw, depthBias );
				float2 parallax3 = ( ( 0.5 - parallaxSample3.a ) * uvsFrame3.xy ) + uvsFrame3.zw;
				float4 albedo1 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax1, textureBias );
				float4 albedo2 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax2, textureBias );
				float4 albedo3 = SAMPLE_TEXTURE2D_BIAS( _Albedo, sampler_Albedo, parallax3, textureBias );
				float4 blendedAlbedo = albedo1 * weights.x + albedo2 * weights.y + albedo3 * weights.z;
				o.Alpha = ( blendedAlbedo.a - _AI_Clip );
				clip( o.Alpha );
				float t = ceil( fraction.x - fraction.y );
				float4 cornerDifference = float4( t, 1 - t, 1, 1 );
				float2 step_1 = ( parallax1 - octaFrame.zw ) * _AI_Frames;
				float4 step23 = ( float4( parallax2, parallax3 ) -  octaFrame.zwzw ) * _AI_Frames - cornerDifference;
				step_1 = step_1 * (1-step_1);
				step23 = step23 * (1-step23);
				float3 steps;
				steps.x = step_1.x * step_1.y;
				steps.y = step23.x * step23.y;
				steps.z = step23.z * step23.w;
				steps = step(-steps, 0);
				float final = dot( steps, weights );
				clip( final - 0.5 );
				o.Albedo = blendedAlbedo.rgb;
				float4 normals1 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax1, textureBias );
				float4 normals2 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax2, textureBias );
				float4 normals3 = SAMPLE_TEXTURE2D_BIAS( _Normals, sampler_Normals, parallax3, textureBias );
				float4 blendedNormal = normals1 * weights.x  + normals2 * weights.y + normals3 * weights.z;
				float4 output0a = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax1, textureBias );
				float4 output0b = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax2, textureBias );
				float4 output0c = SAMPLE_TEXTURE2D_BIAS( _MasksA, sampler_MasksA, parallax3, textureBias );
				output0 = output0a * weights.x  + output0b * weights.y + output0c * weights.z; 
				float4 output1a = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax1, textureBias );
				float4 output1b = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax2, textureBias );
				float4 output1c = SAMPLE_TEXTURE2D_BIAS( _MasksB, sampler_MasksB, parallax3, textureBias );
				output1 = output1a * weights.x  + output1b * weights.y + output1c * weights.z; 
				float3 localNormal = blendedNormal.rgb * 2.0 - 1.0;
				float3 worldNormal = normalize( mul( (float3x3)ai_ObjectToWorld, localNormal ) );
				o.Normal = worldNormal;
				float3 viewPos = interpViewPos.xyz;
				#if defined(UNITY_PASS_SHADOWCASTER)
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5001 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#else
				float depthOffset = ( ( parallaxSample1.a * weights.x + parallaxSample2.a * weights.y + parallaxSample3.a * weights.z ) - 0.5 /** 2.0 - 1.0*/ ) /** 0.5*/ * _AI_DepthSize * length( ai_ObjectToWorld[ 2 ].xyz );
				#endif
				#if defined(SHADOWS_DEPTH)
				if( unity_LightShadowBias.y == 1.0 ) 
				{
				viewPos.z += depthOffset * _AI_ShadowView;
				viewPos.z += -_AI_ShadowBias;
				}
				else 
				{
				viewPos.z += depthOffset;
				}
				#else 
				viewPos.z += depthOffset;
				#endif
				positionWS = mul( UNITY_MATRIX_I_V, float4( viewPos.xyz, 1 ) ).xyz;
				positionCS = mul( UNITY_MATRIX_P, float4( viewPos, 1 ) );
				#if defined(SHADOWS_DEPTH)
				positionCS = UnityApplyLinearShadowBias( positionCS );
				#endif
				positionCS.xyz /= positionCS.w;
				if( UNITY_NEAR_CLIP_VALUE < 0 )
				positionCS = positionCS * 0.5 + 0.5;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 texcoord3 : TEXCOORD3;
				fixed4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};

			struct v2f_surf
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 UVsFrame122_g156801 : TEXCOORD5;
				float4 UVsFrame222_g156801 : TEXCOORD6;
				float4 UVsFrame322_g156801 : TEXCOORD7;
				float4 octaframe22_g156801 : TEXCOORD8;
				float4 viewPos22_g156801 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
			};

			v2f_surf vert_surf (appdata v  )
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f_surf o;
				UNITY_INITIALIZE_OUTPUT(v2f_surf,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				TVEModelData Data16_g158299 = (TVEModelData)0;
				float In_Dummy16_g158299 = 0.0;
				TVEModelData Data16_g158265 = (TVEModelData)0;
				half4 Dummy181_g158262 = ( ( _MotionWindCategory + _MotionWindEnd ) + _MotionWindElementMode + ( _MotionInteractionCategory + _MotionInteractionEnd ) + ( _InteractionLiteInfo + _InteractionColoring + _MotionPushIntensityValue + _MotionPushPivotValue + _MotionPushMaskValue + _MotionPushElementMode ) );
				float In_Dummy16_g158265 = Dummy181_g158262.r;
				TVEModelData Data16_g156809 = (TVEModelData)0;
				float In_Dummy16_g156809 = 0.0;
				OctaImpostorVertex( v.vertex, v.normal, o.UVsFrame122_g156801, o.UVsFrame222_g156801, o.UVsFrame322_g156801, o.octaframe22_g156801, o.viewPos22_g156801 );
				float3 worldPosOut22_g156801 = mul( UNITY_MATRIX_I_V, float4( o.viewPos22_g156801.xyz, 1.0 ) ).xyz;
				half3 Input_PositionWS218_g156802 = worldPosOut22_g156801;
				float3 worldToObj278_g156802 = mul( unity_WorldToObject, float4( Input_PositionWS218_g156802, 1 ) ).xyz;
				half3 Model_PositionOS131_g156802 = worldToObj278_g156802;
				float3 In_PositionOS16_g156809 = Model_PositionOS131_g156802;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156809 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156809 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156809 = Model_PositionOS131_g156802;
				float3 In_PositionAddOS16_g156809 = float3( 0,0,0 );
				float3 In_PivotOS16_g156809 = float3( 0,0,0 );
				float4x4 break19_g156804 = unity_ObjectToWorld;
				float3 appendResult20_g156804 = (float3(break19_g156804[ 0 ][ 3 ] , break19_g156804[ 1 ][ 3 ] , break19_g156804[ 2 ][ 3 ]));
				half3 ObjectData20_g156806 = appendResult20_g156804;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				half3 WorldData19_g156806 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g156806 = WorldData19_g156806;
				#else
				float3 staticSwitch14_g156806 = ObjectData20_g156806;
				#endif
				float3 temp_output_124_0_g156804 = staticSwitch14_g156806;
				float3 vertexToFrag281_g156802 = temp_output_124_0_g156804;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156809 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156809 = Model_PivotWO133_g156802;
				half3 Model_NormalOS134_g156802 = v.normal;
				float3 In_NormalOS16_g156809 = Model_NormalOS134_g156802;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156809 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156809 = Model_NormalOS134_g156802;
				float3 In_NormalRawWS16_g156809 = Model_Normal_WS95_g156802;
				float4 In_TangentOS16_g156809 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156809 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156809 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156809 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156809 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156809 = float4( 0,0,0,0 );
				{
				Data16_g156809.Dummy = In_Dummy16_g156809;
				Data16_g156809.PositionOS = In_PositionOS16_g156809;
				Data16_g156809.PositionWS = In_PositionWS16_g156809;
				Data16_g156809.PositionWO = In_PositionWO16_g156809;
				Data16_g156809.PositionRawOS = In_PositionRawOS16_g156809;
				Data16_g156809.PositionAddOS = In_PositionAddOS16_g156809;
				Data16_g156809.PivotOS = In_PivotOS16_g156809;
				Data16_g156809.PivotWS = In_PivotWS16_g156809;
				Data16_g156809.PivotWO = In_PivotWO16_g156809;
				Data16_g156809.NormalOS = In_NormalOS16_g156809;
				Data16_g156809.NormalWS = In_NormalWS16_g156809;
				Data16_g156809.NormalRawOS = In_NormalRawOS16_g156809;
				Data16_g156809.NormalRawWS = In_NormalRawWS16_g156809;
				Data16_g156809.TangentOS = In_TangentOS16_g156809;
				Data16_g156809.ViewDirWS = In_ViewDirWS16_g156809;
				Data16_g156809.VertexData = In_VertexData16_g156809;
				Data16_g156809.MotionData = In_MotionData16_g156809;
				Data16_g156809.BoundsData = In_BoundsData16_g156809;
				Data16_g156809.RotationData = In_RotationData16_g156809;
				}
				TVEModelData Data15_g158264 = Data16_g156809;
				float Out_Dummy15_g158264 = 0;
				float3 Out_PositionOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158264 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158264 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158264 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158264 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158264 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158264 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158264 = float3( 0,0,0 );
				float4 Out_VertexData15_g158264 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158264 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158264 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158264 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158264 = Data15_g158264.Dummy;
				Out_PositionOS15_g158264 = Data15_g158264.PositionOS;
				Out_PositionWS15_g158264 = Data15_g158264.PositionWS;
				Out_PositionWO15_g158264 = Data15_g158264.PositionWO;
				Out_PositionRawOS15_g158264 = Data15_g158264.PositionRawOS;
				Out_PositionAddOS15_g158264 = Data15_g158264.PositionAddOS;
				Out_PivotOS15_g158264 = Data15_g158264.PivotOS;
				Out_PivotWS15_g158264 = Data15_g158264.PivotWS;
				Out_PivotWO15_g158264 = Data15_g158264.PivotWO;
				Out_NormalOS15_g158264 = Data15_g158264.NormalOS;
				Out_NormalWS15_g158264 = Data15_g158264.NormalWS;
				Out_NormalRawOS15_g158264 = Data15_g158264.NormalRawOS;
				Out_NormalRawWS15_g158264 = Data15_g158264.NormalRawWS;
				Out_TangentOS15_g158264 = Data15_g158264.TangentOS;
				Out_ViewDirWS15_g158264 = Data15_g158264.ViewDirWS;
				Out_VertexData15_g158264 = Data15_g158264.VertexData;
				Out_MotionData15_g158264 = Data15_g158264.MotionData;
				Out_BoundsData15_g158264 = Data15_g158264.BoundsData;
				Out_RotationData15_g158264 = Data15_g158264.RotationData;
				}
				float3 temp_output_1567_0_g158262 = Out_PositionOS15_g158264;
				float3 In_PositionOS16_g158265 = temp_output_1567_0_g158262;
				float3 In_PositionWS16_g158265 = Out_PositionWS15_g158264;
				float3 temp_output_1567_17_g158262 = Out_PositionWO15_g158264;
				float3 In_PositionWO16_g158265 = temp_output_1567_17_g158262;
				float3 In_PositionRawOS16_g158265 = Out_PositionRawOS15_g158264;
				float3 In_PositionAddOS16_g158265 = Out_PositionAddOS15_g158264;
				float3 In_PivotOS16_g158265 = Out_PivotOS15_g158264;
				float3 In_PivotWS16_g158265 = Out_PivotWS15_g158264;
				float3 temp_output_1567_19_g158262 = Out_PivotWO15_g158264;
				float3 In_PivotWO16_g158265 = temp_output_1567_19_g158262;
				float3 In_NormalOS16_g158265 = Out_NormalOS15_g158264;
				float3 In_NormalWS16_g158265 = Out_NormalWS15_g158264;
				float3 In_NormalRawOS16_g158265 = Out_NormalRawOS15_g158264;
				float3 In_NormalRawWS16_g158265 = Out_NormalRawWS15_g158264;
				float4 In_TangentOS16_g158265 = Out_TangentOS15_g158264;
				float3 In_ViewDirWS16_g158265 = Out_ViewDirWS15_g158264;
				float4 In_VertexData16_g158265 = Out_VertexData15_g158264;
				float4 In_MotionData16_g158265 = Out_MotionData15_g158264;
				float4 In_BoundsData16_g158265 = Out_BoundsData15_g158264;
				float2 temp_cast_1 = (0.0).xx;
				half3 Model_PositionOS147_g158262 = temp_output_1567_0_g158262;
				half Base_Mask217_g158262 = saturate( ( Model_PositionOS147_g158262.y / _AI_Offset.y ) );
				float4 lerpResult627_g158267 = lerp( half4(0,1,1,0) , TVE_MotionParams , TVE_IsEnabled);
				half2 Global_WindDirection593_g158267 = (lerpResult627_g158267).xy;
				half3 Model_PositionWO162_g158262 = temp_output_1567_17_g158262;
				half3 Model_PivotWO402_g158262 = temp_output_1567_19_g158262;
				float3 lerpResult829_g158262 = lerp( Model_PositionWO162_g158262 , Model_PivotWO402_g158262 , _MotionBasePivotValue);
				half3 Base_Position1394_g158262 = lerpResult829_g158262;
				half3 Input_PositionWO419_g158267 = Base_Position1394_g158262;
				half Flow_Tillling1397_g158262 = _MotionTillingValue;
				half Input_MotionTilling321_g158267 = ( Flow_Tillling1397_g158262 + 0.2 );
				half2 Noise_Coord515_g158267 = ( -(Input_PositionWO419_g158267).xz * Input_MotionTilling321_g158267 * 0.005 );
				float2 temp_output_3_0_g158280 = Noise_Coord515_g158267;
				float2 temp_output_606_0_g158267 = (Global_WindDirection593_g158267*2.0 + -1.0);
				float2 temp_output_21_0_g158280 = temp_output_606_0_g158267;
				float lerpResult128_g158268 = lerp( _Time.y , ( ( _Time.y * TVE_TimeParams.x ) + TVE_TimeParams.y ) , TVE_TimeParams.w);
				half Flow_Speed1398_g158262 = _MotionSpeedValue;
				half Input_MotionSpeed62_g158267 = Flow_Speed1398_g158262;
				float temp_output_505_0_g158267 = ( lerpResult128_g158268 * Input_MotionSpeed62_g158267 );
				half Noise_Speed516_g158267 = ( temp_output_505_0_g158267 * 0.02 );
				float temp_output_15_0_g158280 = Noise_Speed516_g158267;
				float temp_output_23_0_g158280 = frac( temp_output_15_0_g158280 );
				float4 lerpResult39_g158280 = lerp( SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * temp_output_23_0_g158280 ) ), 0.0 ) , SAMPLE_TEXTURE2D_LOD( _MotionNoiseTex, sampler_Linear_Repeat, ( temp_output_3_0_g158280 + ( temp_output_21_0_g158280 * frac( ( temp_output_15_0_g158280 + 0.5 ) ) ) ), 0.0 ) , ( abs( ( temp_output_23_0_g158280 - 0.5 ) ) / 0.5 ));
				half4 Noise_Params535_g158267 = lerpResult39_g158280;
				half Flow_Noise1600_g158262 = _MotionNoiseValue;
				half Input_MotionNoise552_g158267 = Flow_Noise1600_g158262;
				float2 lerpResult560_g158267 = lerp( Global_WindDirection593_g158267 , (Noise_Params535_g158267).rg , Input_MotionNoise552_g158267);
				half Global_WindIntensity576_g158267 = (lerpResult627_g158267).z;
				half Flow_Value1602_g158262 = _MotionIntensityValue;
				half Input_MotionValue629_g158267 = Flow_Value1602_g158262;
				float2 lerpResult574_g158267 = lerp( float2( 0.5,0.5 ) , lerpResult560_g158267 , ( Global_WindIntensity576_g158267 * Input_MotionValue629_g158267 ));
				float3 appendResult566_g158267 = (float3(lerpResult574_g158267 , (Noise_Params535_g158267).b));
				float temp_output_136_0_g158269 = _global_wind_layer_value;
				float temp_output_19_0_g158271 = TVE_WindLayers[(int)temp_output_136_0_g158269];
				half3 Input_Position180_g158272 = Input_PositionWO419_g158267;
				float2 temp_output_75_0_g158272 = ( (TVE_RenderBaseCoords).zw + ( (TVE_RenderBaseCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_82_0_g158272 = temp_output_136_0_g158269;
				float2 temp_output_119_0_g158272 = ( (TVE_RenderNearCoords).zw + ( (TVE_RenderNearCoords).xy * (Input_Position180_g158272).xz ) );
				float temp_output_7_0_g158277 = 1.0;
				float temp_output_10_0_g158277 = ( TVE_RenderNearFadeValue - temp_output_7_0_g158277 );
				float4 lerpResult131_g158272 = lerp( SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindBaseTex, sampler_Linear_Clamp, float3(temp_output_75_0_g158272,temp_output_82_0_g158272), 0.0 ) , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_WindNearTex, sampler_Linear_Repeat, float3(temp_output_119_0_g158272,temp_output_82_0_g158272), 0.0 ) , saturate( ( ( saturate( ( distance( Input_Position180_g158272 , (TVE_RenderNearPositionR).xyz ) / (TVE_RenderNearPositionR).w ) ) - temp_output_7_0_g158277 ) / temp_output_10_0_g158277 ) ));
				float4 temp_output_17_0_g158271 = lerpResult131_g158272;
				float4 temp_output_3_0_g158271 = TVE_WindParams;
				float4 ifLocalVar18_g158271 = 0;
				UNITY_BRANCH 
				if( temp_output_19_0_g158271 >= 0.5 )
				ifLocalVar18_g158271 = temp_output_17_0_g158271;
				else
				ifLocalVar18_g158271 = temp_output_3_0_g158271;
				float4 lerpResult22_g158271 = lerp( temp_output_3_0_g158271 , temp_output_17_0_g158271 , temp_output_19_0_g158271);
				#ifdef SHADER_API_MOBILE
				float4 staticSwitch24_g158271 = lerpResult22_g158271;
				#else
				float4 staticSwitch24_g158271 = ifLocalVar18_g158271;
				#endif
				float4 temp_output_610_0_g158267 = staticSwitch24_g158271;
				float3 lerpResult623_g158267 = lerp( appendResult566_g158267 , (temp_output_610_0_g158267).rgb , (temp_output_610_0_g158267).a);
				#ifdef TVE_MOTION_WIND_ELEMENT
				float3 staticSwitch612_g158267 = lerpResult623_g158267;
				#else
				float3 staticSwitch612_g158267 = appendResult566_g158267;
				#endif
				float3 temp_output_1563_567_g158262 = staticSwitch612_g158267;
				half Base_Noise1590_g158262 = abs( (temp_output_1563_567_g158262).z );
				float2 break83_g158263 = ((temp_output_1563_567_g158262).xy*2.0 + -1.0);
				float3 appendResult79_g158263 = (float3(break83_g158263.x , 0.0 , break83_g158263.y));
				float3 ase_parentObjectScale = ( 1.0 / float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ) );
				half2 Base_Direction893_g158262 = (( mul( unity_WorldToObject, float4( appendResult79_g158263 , 0.0 ) ).xyz * ase_parentObjectScale )).xz;
				float lerpResult1587_g158262 = lerp( (Base_Noise1590_g158262*2.0 + -1.0) , Base_Noise1590_g158262 , length( Base_Direction893_g158262 ));
				#ifdef TVE_MOTION_BASE_BENDING
				float2 staticSwitch1573_g158262 = ( ( _MotionBaseIntensityValue * Base_Mask217_g158262 * lerpResult1587_g158262 ) * Base_Direction893_g158262 );
				#else
				float2 staticSwitch1573_g158262 = temp_cast_1;
				#endif
				half2 Base_Motion1440_g158262 = staticSwitch1573_g158262;
				half2 Final_RoationData1570_g158262 = Base_Motion1440_g158262;
				float4 In_RotationData16_g158265 = float4( Final_RoationData1570_g158262, 0.0 , 0.0 );
				{
				Data16_g158265.Dummy = In_Dummy16_g158265;
				Data16_g158265.PositionOS = In_PositionOS16_g158265;
				Data16_g158265.PositionWS = In_PositionWS16_g158265;
				Data16_g158265.PositionWO = In_PositionWO16_g158265;
				Data16_g158265.PositionRawOS = In_PositionRawOS16_g158265;
				Data16_g158265.PositionAddOS = In_PositionAddOS16_g158265;
				Data16_g158265.PivotOS = In_PivotOS16_g158265;
				Data16_g158265.PivotWS = In_PivotWS16_g158265;
				Data16_g158265.PivotWO = In_PivotWO16_g158265;
				Data16_g158265.NormalOS = In_NormalOS16_g158265;
				Data16_g158265.NormalWS = In_NormalWS16_g158265;
				Data16_g158265.NormalRawOS = In_NormalRawOS16_g158265;
				Data16_g158265.NormalRawWS = In_NormalRawWS16_g158265;
				Data16_g158265.TangentOS = In_TangentOS16_g158265;
				Data16_g158265.ViewDirWS = In_ViewDirWS16_g158265;
				Data16_g158265.VertexData = In_VertexData16_g158265;
				Data16_g158265.MotionData = In_MotionData16_g158265;
				Data16_g158265.BoundsData = In_BoundsData16_g158265;
				Data16_g158265.RotationData = In_RotationData16_g158265;
				}
				TVEModelData Data15_g158298 = Data16_g158265;
				float Out_Dummy15_g158298 = 0;
				float3 Out_PositionOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158298 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158298 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158298 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158298 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158298 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158298 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158298 = float3( 0,0,0 );
				float4 Out_VertexData15_g158298 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158298 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158298 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158298 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158298 = Data15_g158298.Dummy;
				Out_PositionOS15_g158298 = Data15_g158298.PositionOS;
				Out_PositionWS15_g158298 = Data15_g158298.PositionWS;
				Out_PositionWO15_g158298 = Data15_g158298.PositionWO;
				Out_PositionRawOS15_g158298 = Data15_g158298.PositionRawOS;
				Out_PositionAddOS15_g158298 = Data15_g158298.PositionAddOS;
				Out_PivotOS15_g158298 = Data15_g158298.PivotOS;
				Out_PivotWS15_g158298 = Data15_g158298.PivotWS;
				Out_PivotWO15_g158298 = Data15_g158298.PivotWO;
				Out_NormalOS15_g158298 = Data15_g158298.NormalOS;
				Out_NormalWS15_g158298 = Data15_g158298.NormalWS;
				Out_NormalRawOS15_g158298 = Data15_g158298.NormalRawOS;
				Out_NormalRawWS15_g158298 = Data15_g158298.NormalRawWS;
				Out_TangentOS15_g158298 = Data15_g158298.TangentOS;
				Out_ViewDirWS15_g158298 = Data15_g158298.ViewDirWS;
				Out_VertexData15_g158298 = Data15_g158298.VertexData;
				Out_MotionData15_g158298 = Data15_g158298.MotionData;
				Out_BoundsData15_g158298 = Data15_g158298.BoundsData;
				Out_RotationData15_g158298 = Data15_g158298.RotationData;
				}
				half3 Model_PositionOS147_g158297 = Out_PositionOS15_g158298;
				half3 Input_False58_g158303 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158300 = Model_PositionOS147_g158297;
				half3 VertexPos40_g158301 = VertexPos40_g158300;
				float3 appendResult74_g158301 = (float3(VertexPos40_g158301.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g158301 = appendResult74_g158301;
				float3 break84_g158301 = VertexPos40_g158301;
				float3 appendResult81_g158301 = (float3(0.0 , break84_g158301.y , break84_g158301.z));
				half3 VertexPosOtherAxis82_g158301 = appendResult81_g158301;
				float4 temp_output_1567_33_g158297 = Out_RotationData15_g158298;
				half4 Model_VertexBend1569_g158297 = temp_output_1567_33_g158297;
				half2 Angle44_g158300 = (Model_VertexBend1569_g158297).xy;
				half Angle44_g158301 = (Angle44_g158300).y;
				half3 VertexPos40_g158302 = ( VertexPosRotationAxis50_g158301 + ( VertexPosOtherAxis82_g158301 * cos( Angle44_g158301 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g158301 ) * sin( Angle44_g158301 ) ) );
				float3 appendResult74_g158302 = (float3(0.0 , 0.0 , VertexPos40_g158302.z));
				half3 VertexPosRotationAxis50_g158302 = appendResult74_g158302;
				float3 break84_g158302 = VertexPos40_g158302;
				float3 appendResult81_g158302 = (float3(break84_g158302.x , break84_g158302.y , 0.0));
				half3 VertexPosOtherAxis82_g158302 = appendResult81_g158302;
				half Angle44_g158302 = -(Angle44_g158300).x;
				half3 Input_True57_g158303 = ( VertexPosRotationAxis50_g158302 + ( VertexPosOtherAxis82_g158302 * cos( Angle44_g158302 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g158302 ) * sin( Angle44_g158302 ) ) );
				#ifdef TVE_MOTION_BASE_BENDING
				float3 staticSwitch65_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch65_g158303 = Input_False58_g158303;
				#endif
				#ifdef TVE_MOTION_PUSH_BENDING
				float3 staticSwitch67_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch67_g158303 = staticSwitch65_g158303;
				#endif
				#ifdef TVE_BLANKET_BENDING
				float3 staticSwitch69_g158303 = Input_True57_g158303;
				#else
				float3 staticSwitch69_g158303 = staticSwitch67_g158303;
				#endif
				float3 temp_output_1567_31_g158297 = Out_PositionAddOS15_g158298;
				half3 Model_PositionADD1568_g158297 = temp_output_1567_31_g158297;
				half3 Final_PositionOS178_g158297 = ( staticSwitch69_g158303 + Model_PositionADD1568_g158297 );
				float3 In_PositionOS16_g158299 = Final_PositionOS178_g158297;
				float3 In_PositionWS16_g158299 = Out_PositionWS15_g158298;
				float3 In_PositionWO16_g158299 = Out_PositionWO15_g158298;
				float3 In_PositionRawOS16_g158299 = Out_PositionRawOS15_g158298;
				float3 In_PositionAddOS16_g158299 = temp_output_1567_31_g158297;
				float3 In_PivotOS16_g158299 = Out_PivotOS15_g158298;
				float3 In_PivotWS16_g158299 = Out_PivotWS15_g158298;
				float3 In_PivotWO16_g158299 = Out_PivotWO15_g158298;
				float3 In_NormalOS16_g158299 = Out_NormalOS15_g158298;
				float3 In_NormalWS16_g158299 = Out_NormalWS15_g158298;
				float3 In_NormalRawOS16_g158299 = Out_NormalRawOS15_g158298;
				float3 In_NormalRawWS16_g158299 = Out_NormalRawWS15_g158298;
				float4 In_TangentOS16_g158299 = Out_TangentOS15_g158298;
				float3 In_ViewDirWS16_g158299 = Out_ViewDirWS15_g158298;
				float4 In_VertexData16_g158299 = Out_VertexData15_g158298;
				float4 In_MotionData16_g158299 = Out_MotionData15_g158298;
				float4 In_BoundsData16_g158299 = Out_BoundsData15_g158298;
				float4 In_RotationData16_g158299 = temp_output_1567_33_g158297;
				{
				Data16_g158299.Dummy = In_Dummy16_g158299;
				Data16_g158299.PositionOS = In_PositionOS16_g158299;
				Data16_g158299.PositionWS = In_PositionWS16_g158299;
				Data16_g158299.PositionWO = In_PositionWO16_g158299;
				Data16_g158299.PositionRawOS = In_PositionRawOS16_g158299;
				Data16_g158299.PositionAddOS = In_PositionAddOS16_g158299;
				Data16_g158299.PivotOS = In_PivotOS16_g158299;
				Data16_g158299.PivotWS = In_PivotWS16_g158299;
				Data16_g158299.PivotWO = In_PivotWO16_g158299;
				Data16_g158299.NormalOS = In_NormalOS16_g158299;
				Data16_g158299.NormalWS = In_NormalWS16_g158299;
				Data16_g158299.NormalRawOS = In_NormalRawOS16_g158299;
				Data16_g158299.NormalRawWS = In_NormalRawWS16_g158299;
				Data16_g158299.TangentOS = In_TangentOS16_g158299;
				Data16_g158299.ViewDirWS = In_ViewDirWS16_g158299;
				Data16_g158299.VertexData = In_VertexData16_g158299;
				Data16_g158299.MotionData = In_MotionData16_g158299;
				Data16_g158299.BoundsData = In_BoundsData16_g158299;
				Data16_g158299.RotationData = In_RotationData16_g158299;
				}
				TVEModelData Data15_g158311 = Data16_g158299;
				float Out_Dummy15_g158311 = 0;
				float3 Out_PositionOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158311 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158311 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158311 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158311 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158311 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158311 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158311 = float3( 0,0,0 );
				float4 Out_VertexData15_g158311 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158311 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158311 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158311 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158311 = Data15_g158311.Dummy;
				Out_PositionOS15_g158311 = Data15_g158311.PositionOS;
				Out_PositionWS15_g158311 = Data15_g158311.PositionWS;
				Out_PositionWO15_g158311 = Data15_g158311.PositionWO;
				Out_PositionRawOS15_g158311 = Data15_g158311.PositionRawOS;
				Out_PositionAddOS15_g158311 = Data15_g158311.PositionAddOS;
				Out_PivotOS15_g158311 = Data15_g158311.PivotOS;
				Out_PivotWS15_g158311 = Data15_g158311.PivotWS;
				Out_PivotWO15_g158311 = Data15_g158311.PivotWO;
				Out_NormalOS15_g158311 = Data15_g158311.NormalOS;
				Out_NormalWS15_g158311 = Data15_g158311.NormalWS;
				Out_NormalRawOS15_g158311 = Data15_g158311.NormalRawOS;
				Out_NormalRawWS15_g158311 = Data15_g158311.NormalRawWS;
				Out_TangentOS15_g158311 = Data15_g158311.TangentOS;
				Out_ViewDirWS15_g158311 = Data15_g158311.ViewDirWS;
				Out_VertexData15_g158311 = Data15_g158311.VertexData;
				Out_MotionData15_g158311 = Data15_g158311.MotionData;
				Out_BoundsData15_g158311 = Data15_g158311.BoundsData;
				Out_RotationData15_g158311 = Data15_g158311.RotationData;
				}
				float3 temp_output_31_0_g158304 = Out_PositionOS15_g158311;
				float3 temp_output_6_0_g158318 = ( ( temp_output_31_0_g158304 - Out_PositionRawOS15_g158311 ) + _DisableSRPBatcher );
				half4 Dummy_Data433 = ( ( ( _VariationLiteInfo + _VariationColoring ) + ( _VariationCategory + _VariationEnd ) + ( _VariationIntensityValue + _VariationColorTwo + _VariationColorOne ) + ( _VariationMultiValue + _VariationNoiseRemap + _VariationNoisePivotsValue1 + _VariationNoiseTillingValue ) ) + ( ( _TintingLiteInfo + _TintingColoring ) + ( _TintingCategory + _TintingEnd + _TintingSpace + 0.0 + _TintingElementMode ) + ( _TintingIntensityValue + _TintingColor + _TintingGrayValue ) + ( _TintingMultiValue + _TintingLumaValue + _TintingLumaRemap ) + 0.0 + 0.0 ) + ( ( _DrynessLiteInfo + _DrynessColoring ) + ( _DrynessCategory + _DrynessEnd + _DrynessSpace + _DrynessElementMode + 0.0 ) + ( _DrynessIntensityValue + _DrynessColor + _DrynessGrayValue + _DrynessShiftValue + _DrynessSmoothnessValue + _DrynessSubsurfaceValue ) + ( _DrynessMultiValue + _DrynessLumaValue + _DrynessLumaRemap ) + 0.0 + 0.0 ) + ( ( _WetnessLiteInfo + _WetnessColoring ) + ( _WetnessCategory + _WetnessEnd + _WetnessElementMode + 0.0 ) + ( _WetnessIntensityValue + _WetnessContrastValue + _WetnessSmoothnessValue ) + float4( 0,0,0,0 ) + float4( 0,0,0,0 ) ) + ( ( _CutoutLiteInfo + _CutoutColoring ) + ( _CutoutCategory + _CutoutEnd + _CutoutSpace + _CutoutElementMode + 0.0 ) + ( _CutoutIntensityValue + 0.0 ) + ( _CutoutMultiValue + _CutoutAlphaValue + _CutoutNoiseValue + _CutoutNoiseTillingValue ) + 0.0 ) + ( ( _DitherLiteInfo + _DitherColoring ) + ( _DitherCategory + _DitherEnd ) + ( _DitherConstantValue + 0.0 + 0.0 + ( _DitherDistanceValue + _DitherDistanceMaxValue + _DitherDistanceMinValue ) + 0.0 ) + ( _DitherMultiValue + _DitherNoiseTillingValue ) ) + ( ( _SizeFadeLiteInfo + _SizeFadeColoring ) + ( _SizeFadeCategory + _SizeFadeEnd + _SizeFadeElementMode ) + ( _SizeFadeIntensityValue + _SizeFadeScaleMode + _SizeFadeScaleValue + _SizeFadeDistMinValue + _SizeFadeDistMaxValue ) ) );
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g158318 = ( float4( temp_output_6_0_g158318 , 0.0 ) + ( Dummy_Data433 * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g158318 = float4( temp_output_6_0_g158318 , 0.0 );
				#endif
				
				o.ase_texcoord11.xyz = vertexToFrag281_g156802;
				o.ase_texcoord12.xyz = ase_worldNormal;
				
				o.ase_texcoord10.xy = v.texcoord.xyzw.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				o.ase_texcoord11.w = 0;
				o.ase_texcoord12.w = 0;

				v.vertex.xyz += staticSwitch14_g158318.rgb;

				// TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				TRANSFER_SHADOW_CASTER(o)
				return o;
			}

			fixed4 frag_surf (v2f_surf IN, out float outDepth : SV_Depth  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif

				float4 positionCS = 0;
				float3 positionWS = 0;

				float localBreakData4_g158307 = ( 0.0 );
				float localCompData3_g158292 = ( 0.0 );
				TVEVisualData Data3_g158292 = (TVEVisualData)0;
				half Dummy145_g158290 = ( _SubsurfaceCategory + _SubsurfaceEnd + ( _SubsurfaceDirectValue + _SubsurfaceNormalValue + _SubsurfaceAmbientValue + _SubsurfaceShadowValue ) + _SubsurfaceElementMode );
				float In_Dummy3_g158292 = Dummy145_g158290;
				float localBreakData4_g158291 = ( 0.0 );
				float localCompData3_g158259 = ( 0.0 );
				TVEVisualData Data3_g158259 = (TVEVisualData)0;
				half Dummy145_g158247 = ( _EmissiveCategory + _EmissiveEnd + ( _EmissivePowerMode + _EmissivePowerValue ) + _EmissiveElementMode + 0.0 );
				float In_Dummy3_g158259 = Dummy145_g158247;
				float localBreakData4_g158258 = ( 0.0 );
				float localCompData3_g158220 = ( 0.0 );
				TVEVisualData Data3_g158220 = (TVEVisualData)0;
				float2 uv_OverlayGlitterTex = IN.ase_texcoord10.xy * _OverlayGlitterTex_ST.xy + _OverlayGlitterTex_ST.zw;
				half4 Dummy594_g158217 = ( ( _OverlayCategory + _OverlayEnd + _OverlaySpace + _OverlayElementMode + _OverlayBakeInfo ) + ( _OverlayLiteInfo + _OverlayColoringOn + _OverlayColoringOff ) + ( SAMPLE_TEXTURE2D( _OverlayGlitterTex, sampler_OverlayGlitterTex, uv_OverlayGlitterTex ) + _OverlayGlitterTillingValue + _OverlayGlitterIntensityValue + _OverlayGlitterColor + _OverlayGlitterDistValue ) );
				float In_Dummy3_g158220 = Dummy594_g158217.r;
				float localBreakData4_g158218 = ( 0.0 );
				float localCompData3_g156877 = ( 0.0 );
				TVEVisualData Data3_g156877 = (TVEVisualData)0;
				float4 output0 = 0;
				float4 output1 = 0;
				OctaImpostorFragment( o, positionCS, positionWS, IN.UVsFrame122_g156801, IN.UVsFrame222_g156801, IN.UVsFrame322_g156801, IN.octaframe22_g156801, IN.viewPos22_g156801, output0, output1 );
				float In_Dummy3_g156877 = output1.r;
				float4 break227_g156876 = output0;
				half Local_MultiMask249_g156876 = break227_g156876.b;
				float lerpResult289_g156876 = lerp( 1.0 , Local_MultiMask249_g156876 , _ImpostorColorMode);
				float3 lerpResult292_g156876 = lerp( (_ImpostorColorTwo).rgb , (_ImpostorColor).rgb , lerpResult289_g156876);
				half3 Local_Albedo239_g156876 = ( o.Albedo * lerpResult292_g156876 );
				float3 In_Albedo3_g156877 = Local_Albedo239_g156876;
				float2 temp_cast_4 = (0.5).xx;
				float2 In_NormalTS3_g156877 = temp_cast_4;
				float3 In_NormalWS3_g156877 = o.Normal;
				half Local_Metallic247_g156876 = break227_g156876.r;
				half Final_Metallic238_g156876 = ( Local_Metallic247_g156876 * _ImpostorMetallicValue );
				half Local_Smoothness250_g156876 = break227_g156876.a;
				half Final_Smoothness233_g156876 = ( Local_Smoothness250_g156876 * _ImpostorSmoothnessValue );
				float4 appendResult257_g156876 = (float4(Final_Metallic238_g156876 , 1.0 , 1.0 , Final_Smoothness233_g156876));
				float4 In_Shader3_g156877 = appendResult257_g156876;
				half Local_EmissiveMask248_g156876 = break227_g156876.g;
				float4 appendResult286_g156876 = (float4(Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , Local_EmissiveMask248_g156876 , 1.0));
				float4 In_Emissive3_g156877 = appendResult286_g156876;
				float3 temp_output_3_0_g156878 = Local_Albedo239_g156876;
				float dotResult20_g156878 = dot( temp_output_3_0_g156878 , float3(0.2126,0.7152,0.0722) );
				half Local_Grayscale268_g156876 = dotResult20_g156878;
				float In_Grayscale3_g156877 = Local_Grayscale268_g156876;
				float clampResult267_g156876 = clamp( saturate( ( Local_Grayscale268_g156876 * 5.0 ) ) , 0.2 , 1.0 );
				half Local_Luminosity269_g156876 = clampResult267_g156876;
				float In_Luminosity3_g156877 = Local_Luminosity269_g156876;
				float In_MultiMask3_g156877 = Local_MultiMask249_g156876;
				float In_AlphaClip3_g156877 = 0.0;
				float In_AlphaFade3_g156877 = 1.0;
				float3 temp_cast_5 = (1.0).xxx;
				float3 In_Translucency3_g156877 = temp_cast_5;
				float In_Transmission3_g156877 = 1.0;
				float In_Thickness3_g156877 = 0.0;
				float In_Diffusion3_g156877 = 0.0;
				{
				Data3_g156877.Dummy = In_Dummy3_g156877;
				Data3_g156877.Albedo = In_Albedo3_g156877;
				Data3_g156877.NormalTS = In_NormalTS3_g156877;
				Data3_g156877.NormalWS = In_NormalWS3_g156877;
				Data3_g156877.Shader = In_Shader3_g156877;
				Data3_g156877.Emissive= In_Emissive3_g156877;
				Data3_g156877.MultiMask = In_MultiMask3_g156877;
				Data3_g156877.Grayscale = In_Grayscale3_g156877;
				Data3_g156877.Luminosity = In_Luminosity3_g156877;
				Data3_g156877.AlphaClip = In_AlphaClip3_g156877;
				Data3_g156877.AlphaFade = In_AlphaFade3_g156877;
				Data3_g156877.Translucency = In_Translucency3_g156877;
				Data3_g156877.Transmission = In_Transmission3_g156877;
				Data3_g156877.Thickness = In_Thickness3_g156877;
				Data3_g156877.Diffusion = In_Diffusion3_g156877;
				}
				TVEVisualData Data4_g158218 = Data3_g156877;
				float Out_Dummy4_g158218 = 0;
				float3 Out_Albedo4_g158218 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158218 = float2( 0,0 );
				float3 Out_NormalWS4_g158218 = float3( 0,0,0 );
				float4 Out_Shader4_g158218 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158218 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158218 = 0;
				float Out_Grayscale4_g158218 = 0;
				float Out_Luminosity4_g158218 = 0;
				float Out_AlphaClip4_g158218 = 0;
				float Out_AlphaFade4_g158218 = 0;
				float3 Out_Translucency4_g158218 = float3( 0,0,0 );
				float Out_Transmission4_g158218 = 0;
				float Out_Thickness4_g158218 = 0;
				float Out_Diffusion4_g158218 = 0;
				{
				Out_Dummy4_g158218 = Data4_g158218.Dummy;
				Out_Albedo4_g158218 = Data4_g158218.Albedo;
				Out_NormalTS4_g158218 = Data4_g158218.NormalTS;
				Out_NormalWS4_g158218 = Data4_g158218.NormalWS;
				Out_Shader4_g158218 = Data4_g158218.Shader;
				Out_Emissive4_g158218= Data4_g158218.Emissive;
				Out_MultiMask4_g158218 = Data4_g158218.MultiMask;
				Out_Grayscale4_g158218 = Data4_g158218.Grayscale;
				Out_Luminosity4_g158218= Data4_g158218.Luminosity;
				Out_AlphaClip4_g158218 = Data4_g158218.AlphaClip;
				Out_AlphaFade4_g158218 = Data4_g158218.AlphaFade;
				Out_Translucency4_g158218 = Data4_g158218.Translucency;
				Out_Transmission4_g158218 = Data4_g158218.Transmission;
				Out_Thickness4_g158218 = Data4_g158218.Thickness;
				Out_Diffusion4_g158218 = Data4_g158218.Diffusion;
				}
				half3 Visual_Albedo127_g158217 = Out_Albedo4_g158218;
				float3 temp_output_622_0_g158217 = (_OverlayColor).rgb;
				half Overlay_TexMask906_g158217 = 1.0;
				float3 temp_output_739_21_g158217 = Out_NormalWS4_g158218;
				half3 Visual_NormalWS749_g158217 = temp_output_739_21_g158217;
				float clampResult17_g158237 = clamp( saturate( (Visual_NormalWS749_g158217).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g158236 = _OverlayProjRemap.x;
				float temp_output_10_0_g158236 = ( _OverlayProjRemap.y - temp_output_7_0_g158236 );
				float lerpResult842_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158237 - temp_output_7_0_g158236 ) / ( temp_output_10_0_g158236 + 0.0001 ) ) ) , _OverlayProjValue);
				half Overlay_MaskProj457_g158217 = lerpResult842_g158217;
				float temp_output_739_15_g158217 = Out_Luminosity4_g158218;
				half Visual_Luminosity654_g158217 = temp_output_739_15_g158217;
				float clampResult17_g158239 = clamp( Visual_Luminosity654_g158217 , 0.0001 , 0.9999 );
				float temp_output_7_0_g158238 = _OverlayLumaRemap.x;
				float temp_output_10_0_g158238 = ( _OverlayLumaRemap.y - temp_output_7_0_g158238 );
				float lerpResult587_g158217 = lerp( 1.0 , saturate( ( ( clampResult17_g158239 - temp_output_7_0_g158238 ) / ( temp_output_10_0_g158238 + 0.0001 ) ) ) , _OverlayLumaValue);
				half Overlay_MaskLuma438_g158217 = lerpResult587_g158217;
				half Overlay_VertMask801_g158217 = 1.0;
				half Overlay_MaskNoise427_g158217 = 1.0;
				float localBuildGlobalData204_g156811 = ( 0.0 );
				TVEGlobalData Data204_g156811 = (TVEGlobalData)0;
				half Dummy211_g156811 = ( _GlobalLiteInfo + ( _GlobalCategory + _GlobalEnd ) );
				float In_Dummy204_g156811 = Dummy211_g156811;
				float4 temp_output_362_164_g156811 = TVE_CoatParams;
				half4 Coat_Params302_g156811 = temp_output_362_164_g156811;
				float4 In_CoatParams204_g156811 = Coat_Params302_g156811;
				float4 temp_output_361_164_g156811 = TVE_PaintParams;
				half4 Paint_Params71_g156811 = temp_output_361_164_g156811;
				float4 In_PaintParams204_g156811 = Paint_Params71_g156811;
				float4 temp_output_365_163_g156811 = TVE_GlowParams;
				half4 Glow_Params248_g156811 = temp_output_365_163_g156811;
				float4 In_GlowParams204_g156811 = Glow_Params248_g156811;
				float4 temp_output_363_141_g156811 = TVE_AtmoParams;
				half4 Atmo_Params80_g156811 = temp_output_363_141_g156811;
				float4 In_AtmoParams204_g156811 = Atmo_Params80_g156811;
				float4 temp_output_364_139_g156811 = TVE_FormParams;
				half4 Form_Params112_g156811 = temp_output_364_139_g156811;
				float4 In_FormParams204_g156811 = Form_Params112_g156811;
				float4 temp_output_366_145_g156811 = TVE_WindParams;
				half4 Wind_Params88_g156811 = temp_output_366_145_g156811;
				float4 In_WindParams204_g156811 = Wind_Params88_g156811;
				float4 temp_output_367_145_g156811 = TVE_PushParams;
				half4 Push_Params335_g156811 = temp_output_367_145_g156811;
				float4 In_PushParams204_g156811 = Push_Params335_g156811;
				{
				Data204_g156811.Dummy = In_Dummy204_g156811;
				Data204_g156811.CoatParams = In_CoatParams204_g156811;
				Data204_g156811.PaintParams = In_PaintParams204_g156811;
				Data204_g156811.GlowParams = In_GlowParams204_g156811;
				Data204_g156811.AtmoParams = In_AtmoParams204_g156811;
				Data204_g156811.FormParams= In_FormParams204_g156811;
				Data204_g156811.WindParams = In_WindParams204_g156811;
				Data204_g156811.PushParams = In_PushParams204_g156811;
				}
				TVEGlobalData Data15_g158219 = Data204_g156811;
				float Out_Dummy15_g158219 = 0;
				float4 Out_CoatParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158219 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158219 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158219 = Data15_g158219.Dummy;
				Out_CoatParams15_g158219 = Data15_g158219.CoatParams;
				Out_PaintParams15_g158219 = Data15_g158219.PaintParams;
				Out_GlowParams15_g158219 = Data15_g158219.GlowParams;
				Out_AtmoParams15_g158219= Data15_g158219.AtmoParams;
				Out_FadeParams15_g158219= Data15_g158219.FadeParams;
				Out_FormParams15_g158219 = Data15_g158219.FormParams;
				Out_LandParams15_g158219 = Data15_g158219.LandParams;
				Out_WindParams15_g158219 = Data15_g158219.WindParams;
				Out_PushParams15_g158219 = Data15_g158219.PushParams;
				}
				half4 Global_AtmoParams516_g158217 = Out_AtmoParams15_g158219;
				#ifdef TVE_OVERLAY_ELEMENT
				float staticSwitch705_g158217 = (Global_AtmoParams516_g158217).z;
				#else
				float staticSwitch705_g158217 = 1.0;
				#endif
				half Overlay_MaskGlobal429_g158217 = staticSwitch705_g158217;
				half Custom_Mask646_g158217 = 1.0;
				float temp_output_7_0_g158244 = _OverlayBlendRemap1.x;
				float temp_output_10_0_g158244 = ( _OverlayBlendRemap1.y - temp_output_7_0_g158244 );
				half Overlay_Mask494_g158217 = saturate( ( ( ( _OverlayIntensityValue * Overlay_TexMask906_g158217 * Overlay_MaskProj457_g158217 * Overlay_MaskLuma438_g158217 * Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 * Custom_Mask646_g158217 ) - temp_output_7_0_g158244 ) / ( temp_output_10_0_g158244 + 0.0001 ) ) );
				float3 lerpResult467_g158217 = lerp( Visual_Albedo127_g158217 , temp_output_622_0_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float3 staticSwitch577_g158217 = lerpResult467_g158217;
				#else
				float3 staticSwitch577_g158217 = Visual_Albedo127_g158217;
				#endif
				half3 Final_Albedo493_g158217 = staticSwitch577_g158217;
				float3 In_Albedo3_g158220 = Final_Albedo493_g158217;
				half2 Visual_NormalTS535_g158217 = Out_NormalTS4_g158218;
				float2 lerpResult551_g158217 = lerp( Visual_NormalTS535_g158217 , ( Visual_NormalTS535_g158217 * _OverlayNormalValue ) , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float2 staticSwitch583_g158217 = lerpResult551_g158217;
				#else
				float2 staticSwitch583_g158217 = Visual_NormalTS535_g158217;
				#endif
				half2 Final_NormalTS499_g158217 = staticSwitch583_g158217;
				float2 In_NormalTS3_g158220 = Final_NormalTS499_g158217;
				float3 In_NormalWS3_g158220 = temp_output_739_21_g158217;
				half4 Visual_Masks536_g158217 = Out_Shader4_g158218;
				float4 appendResult585_g158217 = (float4(0.0 , 1.0 , 0.0 , _OverlaySmoothnessValue));
				float4 lerpResult584_g158217 = lerp( Visual_Masks536_g158217 , appendResult585_g158217 , Overlay_Mask494_g158217);
				#ifdef TVE_OVERLAY
				float4 staticSwitch586_g158217 = lerpResult584_g158217;
				#else
				float4 staticSwitch586_g158217 = Visual_Masks536_g158217;
				#endif
				half4 Final_Masks482_g158217 = staticSwitch586_g158217;
				float4 In_Shader3_g158220 = Final_Masks482_g158217;
				float4 In_Emissive3_g158220 = Out_Emissive4_g158218;
				float temp_output_739_12_g158217 = Out_Grayscale4_g158218;
				float In_Grayscale3_g158220 = temp_output_739_12_g158217;
				float In_Luminosity3_g158220 = temp_output_739_15_g158217;
				float In_MultiMask3_g158220 = Out_MultiMask4_g158218;
				float In_AlphaClip3_g158220 = Out_AlphaClip4_g158218;
				float In_AlphaFade3_g158220 = Out_AlphaFade4_g158218;
				float3 In_Translucency3_g158220 = Out_Translucency4_g158218;
				half Visual_Transmission699_g158217 = Out_Transmission4_g158218;
				float lerpResult746_g158217 = lerp( Visual_Transmission699_g158217 , ( Visual_Transmission699_g158217 * _OverlaySubsurfaceValue ) , ( Overlay_VertMask801_g158217 * Overlay_MaskNoise427_g158217 * Overlay_MaskGlobal429_g158217 ));
				#ifdef TVE_OVERLAY
				float staticSwitch703_g158217 = lerpResult746_g158217;
				#else
				float staticSwitch703_g158217 = Visual_Transmission699_g158217;
				#endif
				half Final_Transmission702_g158217 = staticSwitch703_g158217;
				float In_Transmission3_g158220 = Final_Transmission702_g158217;
				float In_Thickness3_g158220 = Out_Thickness4_g158218;
				float In_Diffusion3_g158220 = Out_Diffusion4_g158218;
				{
				Data3_g158220.Dummy = In_Dummy3_g158220;
				Data3_g158220.Albedo = In_Albedo3_g158220;
				Data3_g158220.NormalTS = In_NormalTS3_g158220;
				Data3_g158220.NormalWS = In_NormalWS3_g158220;
				Data3_g158220.Shader = In_Shader3_g158220;
				Data3_g158220.Emissive= In_Emissive3_g158220;
				Data3_g158220.MultiMask = In_MultiMask3_g158220;
				Data3_g158220.Grayscale = In_Grayscale3_g158220;
				Data3_g158220.Luminosity = In_Luminosity3_g158220;
				Data3_g158220.AlphaClip = In_AlphaClip3_g158220;
				Data3_g158220.AlphaFade = In_AlphaFade3_g158220;
				Data3_g158220.Translucency = In_Translucency3_g158220;
				Data3_g158220.Transmission = In_Transmission3_g158220;
				Data3_g158220.Thickness = In_Thickness3_g158220;
				Data3_g158220.Diffusion = In_Diffusion3_g158220;
				}
				TVEVisualData Data4_g158258 = Data3_g158220;
				float Out_Dummy4_g158258 = 0;
				float3 Out_Albedo4_g158258 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158258 = float2( 0,0 );
				float3 Out_NormalWS4_g158258 = float3( 0,0,0 );
				float4 Out_Shader4_g158258 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158258 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158258 = 0;
				float Out_Grayscale4_g158258 = 0;
				float Out_Luminosity4_g158258 = 0;
				float Out_AlphaClip4_g158258 = 0;
				float Out_AlphaFade4_g158258 = 0;
				float3 Out_Translucency4_g158258 = float3( 0,0,0 );
				float Out_Transmission4_g158258 = 0;
				float Out_Thickness4_g158258 = 0;
				float Out_Diffusion4_g158258 = 0;
				{
				Out_Dummy4_g158258 = Data4_g158258.Dummy;
				Out_Albedo4_g158258 = Data4_g158258.Albedo;
				Out_NormalTS4_g158258 = Data4_g158258.NormalTS;
				Out_NormalWS4_g158258 = Data4_g158258.NormalWS;
				Out_Shader4_g158258 = Data4_g158258.Shader;
				Out_Emissive4_g158258= Data4_g158258.Emissive;
				Out_MultiMask4_g158258 = Data4_g158258.MultiMask;
				Out_Grayscale4_g158258 = Data4_g158258.Grayscale;
				Out_Luminosity4_g158258= Data4_g158258.Luminosity;
				Out_AlphaClip4_g158258 = Data4_g158258.AlphaClip;
				Out_AlphaFade4_g158258 = Data4_g158258.AlphaFade;
				Out_Translucency4_g158258 = Data4_g158258.Translucency;
				Out_Transmission4_g158258 = Data4_g158258.Transmission;
				Out_Thickness4_g158258 = Data4_g158258.Thickness;
				Out_Diffusion4_g158258 = Data4_g158258.Diffusion;
				}
				float3 temp_output_297_0_g158247 = Out_Albedo4_g158258;
				float3 In_Albedo3_g158259 = temp_output_297_0_g158247;
				float2 In_NormalTS3_g158259 = Out_NormalTS4_g158258;
				float3 In_NormalWS3_g158259 = Out_NormalWS4_g158258;
				float4 In_Shader3_g158259 = Out_Shader4_g158258;
				float4 temp_cast_6 = (0.0).xxxx;
				half4 Visual_Emissive255_g158247 = Out_Emissive4_g158258;
				half Emissive_MeshMask221_g158247 = 1.0;
				half Emissive_Mask103_g158247 = 1.0;
				float temp_output_279_0_g158247 = ( Emissive_MeshMask221_g158247 * Emissive_Mask103_g158247 );
				float3 appendResult293_g158247 = (float3(temp_output_279_0_g158247 , temp_output_279_0_g158247 , temp_output_279_0_g158247));
				half3 Local_EmissiveColor278_g158247 = appendResult293_g158247;
				float3 temp_cast_7 = (1.0).xxx;
				TVEGlobalData Data15_g158249 = Data204_g156811;
				float Out_Dummy15_g158249 = 0;
				float4 Out_CoatParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158249 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158249 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158249 = Data15_g158249.Dummy;
				Out_CoatParams15_g158249 = Data15_g158249.CoatParams;
				Out_PaintParams15_g158249 = Data15_g158249.PaintParams;
				Out_GlowParams15_g158249 = Data15_g158249.GlowParams;
				Out_AtmoParams15_g158249= Data15_g158249.AtmoParams;
				Out_FadeParams15_g158249= Data15_g158249.FadeParams;
				Out_FormParams15_g158249 = Data15_g158249.FormParams;
				Out_LandParams15_g158249 = Data15_g158249.LandParams;
				Out_WindParams15_g158249 = Data15_g158249.WindParams;
				Out_PushParams15_g158249 = Data15_g158249.PushParams;
				}
				half4 Global_GlowParams179_g158247 = Out_GlowParams15_g158249;
				float3 lerpResult299_g158247 = lerp( float3( 1,1,1 ) , (Global_GlowParams179_g158247).xyz , TVE_IsEnabled);
				#ifdef TVE_EMISSIVE_ELEMENT
				float3 staticSwitch228_g158247 = lerpResult299_g158247;
				#else
				float3 staticSwitch228_g158247 = temp_cast_7;
				#endif
				half3 Emissive_GlobalMask248_g158247 = staticSwitch228_g158247;
				half3 Local_EmissiveValue88_g158247 = ( _EmissiveIntensityValue * (_EmissiveColor).rgb * Emissive_GlobalMask248_g158247 );
				half3 Emissive_Blend260_g158247 = ( ( (Visual_Emissive255_g158247).xyz * Local_EmissiveColor278_g158247 ) * Local_EmissiveValue88_g158247 );
				float3 temp_output_3_0_g158257 = Emissive_Blend260_g158247;
				float temp_output_15_0_g158257 = _emissive_power_value;
				float3 temp_output_23_0_g158257 = ( temp_output_3_0_g158257 * temp_output_15_0_g158257 );
				float4 appendResult295_g158247 = (float4(temp_output_23_0_g158257 , Emissive_Mask103_g158247));
				#ifdef TVE_EMISSIVE
				float4 staticSwitch129_g158247 = appendResult295_g158247;
				#else
				float4 staticSwitch129_g158247 = temp_cast_6;
				#endif
				half4 Final_Emissive184_g158247 = staticSwitch129_g158247;
				float4 In_Emissive3_g158259 = Final_Emissive184_g158247;
				float In_Grayscale3_g158259 = Out_Grayscale4_g158258;
				float In_Luminosity3_g158259 = Out_Luminosity4_g158258;
				float temp_output_297_11_g158247 = Out_MultiMask4_g158258;
				float In_MultiMask3_g158259 = temp_output_297_11_g158247;
				float In_AlphaClip3_g158259 = Out_AlphaClip4_g158258;
				float In_AlphaFade3_g158259 = Out_AlphaFade4_g158258;
				float3 In_Translucency3_g158259 = Out_Translucency4_g158258;
				float In_Transmission3_g158259 = Out_Transmission4_g158258;
				float In_Thickness3_g158259 = Out_Thickness4_g158258;
				float In_Diffusion3_g158259 = Out_Diffusion4_g158258;
				{
				Data3_g158259.Dummy = In_Dummy3_g158259;
				Data3_g158259.Albedo = In_Albedo3_g158259;
				Data3_g158259.NormalTS = In_NormalTS3_g158259;
				Data3_g158259.NormalWS = In_NormalWS3_g158259;
				Data3_g158259.Shader = In_Shader3_g158259;
				Data3_g158259.Emissive= In_Emissive3_g158259;
				Data3_g158259.MultiMask = In_MultiMask3_g158259;
				Data3_g158259.Grayscale = In_Grayscale3_g158259;
				Data3_g158259.Luminosity = In_Luminosity3_g158259;
				Data3_g158259.AlphaClip = In_AlphaClip3_g158259;
				Data3_g158259.AlphaFade = In_AlphaFade3_g158259;
				Data3_g158259.Translucency = In_Translucency3_g158259;
				Data3_g158259.Transmission = In_Transmission3_g158259;
				Data3_g158259.Thickness = In_Thickness3_g158259;
				Data3_g158259.Diffusion = In_Diffusion3_g158259;
				}
				TVEVisualData Data4_g158291 = Data3_g158259;
				float Out_Dummy4_g158291 = 0;
				float3 Out_Albedo4_g158291 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158291 = float2( 0,0 );
				float3 Out_NormalWS4_g158291 = float3( 0,0,0 );
				float4 Out_Shader4_g158291 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158291 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158291 = 0;
				float Out_Grayscale4_g158291 = 0;
				float Out_Luminosity4_g158291 = 0;
				float Out_AlphaClip4_g158291 = 0;
				float Out_AlphaFade4_g158291 = 0;
				float3 Out_Translucency4_g158291 = float3( 0,0,0 );
				float Out_Transmission4_g158291 = 0;
				float Out_Thickness4_g158291 = 0;
				float Out_Diffusion4_g158291 = 0;
				{
				Out_Dummy4_g158291 = Data4_g158291.Dummy;
				Out_Albedo4_g158291 = Data4_g158291.Albedo;
				Out_NormalTS4_g158291 = Data4_g158291.NormalTS;
				Out_NormalWS4_g158291 = Data4_g158291.NormalWS;
				Out_Shader4_g158291 = Data4_g158291.Shader;
				Out_Emissive4_g158291= Data4_g158291.Emissive;
				Out_MultiMask4_g158291 = Data4_g158291.MultiMask;
				Out_Grayscale4_g158291 = Data4_g158291.Grayscale;
				Out_Luminosity4_g158291= Data4_g158291.Luminosity;
				Out_AlphaClip4_g158291 = Data4_g158291.AlphaClip;
				Out_AlphaFade4_g158291 = Data4_g158291.AlphaFade;
				Out_Translucency4_g158291 = Data4_g158291.Translucency;
				Out_Transmission4_g158291 = Data4_g158291.Transmission;
				Out_Thickness4_g158291 = Data4_g158291.Thickness;
				Out_Diffusion4_g158291 = Data4_g158291.Diffusion;
				}
				half3 Visual_Albedo199_g158290 = Out_Albedo4_g158291;
				float3 temp_cast_8 = (0.0).xxx;
				half3 Subsurface_Color264_g158290 = ( (_SubsurfaceColor).rgb * Visual_Albedo199_g158290 );
				half Visual_Transmission138_g158290 = Out_Transmission4_g158291;
				half Subsurface_Value268_g158290 = _SubsurfaceIntensityValue;
				TVEGlobalData Data15_g158294 = Data204_g156811;
				float Out_Dummy15_g158294 = 0;
				float4 Out_CoatParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FadeParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g158294 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g158294 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158294 = Data15_g158294.Dummy;
				Out_CoatParams15_g158294 = Data15_g158294.CoatParams;
				Out_PaintParams15_g158294 = Data15_g158294.PaintParams;
				Out_GlowParams15_g158294 = Data15_g158294.GlowParams;
				Out_AtmoParams15_g158294= Data15_g158294.AtmoParams;
				Out_FadeParams15_g158294= Data15_g158294.FadeParams;
				Out_FormParams15_g158294 = Data15_g158294.FormParams;
				Out_LandParams15_g158294 = Data15_g158294.LandParams;
				Out_WindParams15_g158294 = Data15_g158294.WindParams;
				Out_PushParams15_g158294 = Data15_g158294.PushParams;
				}
				half4 Global_GlowParams373_g158290 = Out_GlowParams15_g158294;
				float lerpResult403_g158290 = lerp( 1.0 , saturate( (Global_GlowParams373_g158290).w ) , TVE_IsEnabled);
				#ifdef TVE_SUBSURFACE_ELEMENT
				float staticSwitch367_g158290 = lerpResult403_g158290;
				#else
				float staticSwitch367_g158290 = 1.0;
				#endif
				half Subsurface_GlobalMask369_g158290 = staticSwitch367_g158290;
				float temp_output_301_11_g158290 = Out_MultiMask4_g158291;
				half Visual_MultiMask292_g158290 = temp_output_301_11_g158290;
				float lerpResult293_g158290 = lerp( 1.0 , Visual_MultiMask292_g158290 , _SubsurfaceMultiValue);
				half Subsurface_MultiMask296_g158290 = lerpResult293_g158290;
				half Custom_Mask363_g158290 = 1.0;
				#ifdef TVE_SUBSURFACE
				float staticSwitch345_g158290 = ( Visual_Transmission138_g158290 * Subsurface_Value268_g158290 * Subsurface_GlobalMask369_g158290 * Subsurface_MultiMask296_g158290 * Custom_Mask363_g158290 );
				#else
				float staticSwitch345_g158290 = 0.0;
				#endif
				half Final_Transmission269_g158290 = staticSwitch345_g158290;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch348_g158290 = ( Subsurface_Color264_g158290 * Final_Transmission269_g158290 * 10.0 );
				#else
				float3 staticSwitch348_g158290 = temp_cast_8;
				#endif
				half3 Final_Translucency254_g158290 = staticSwitch348_g158290;
				TVEModelData Data16_g156810 = (TVEModelData)0;
				float In_Dummy16_g156810 = 0.0;
				float3 In_PositionOS16_g156810 = float3( 0,0,0 );
				half3 Input_PositionWS218_g156802 = positionWS;
				half3 Model_PositionWS122_g156802 = Input_PositionWS218_g156802;
				float3 In_PositionWS16_g156810 = Model_PositionWS122_g156802;
				half3 Model_PositionWO132_g156802 = ( Model_PositionWS122_g156802 - TVE_WorldOrigin );
				float3 In_PositionWO16_g156810 = Model_PositionWO132_g156802;
				float3 In_PositionRawOS16_g156810 = float3( 0,0,0 );
				float3 In_PositionAddOS16_g156810 = float3( 0,0,0 );
				float3 In_PivotOS16_g156810 = float3( 0,0,0 );
				float3 vertexToFrag281_g156802 = IN.ase_texcoord11.xyz;
				half3 Model_PivotWS121_g156802 = vertexToFrag281_g156802;
				float3 In_PivotWS16_g156810 = Model_PivotWS121_g156802;
				half3 Model_PivotWO133_g156802 = ( Model_PivotWS121_g156802 - TVE_WorldOrigin );
				float3 In_PivotWO16_g156810 = Model_PivotWO133_g156802;
				float3 In_NormalOS16_g156810 = float3( 0,0,0 );
				float3 ase_worldNormal = IN.ase_texcoord12.xyz;
				half3 Model_Normal_WS95_g156802 = ase_worldNormal;
				float3 In_NormalWS16_g156810 = Model_Normal_WS95_g156802;
				float3 In_NormalRawOS16_g156810 = float3( 0,0,0 );
				float3 In_NormalRawWS16_g156810 = float3( 0,0,0 );
				float4 In_TangentOS16_g156810 = float4( 0,1,0,1 );
				float3 normalizeResult326_g156802 = normalize( ( _WorldSpaceCameraPos - Model_PositionWS122_g156802 ) );
				half3 Model_ViewDirWS322_g156802 = normalizeResult326_g156802;
				float3 In_ViewDirWS16_g156810 = Model_ViewDirWS322_g156802;
				float4 In_VertexData16_g156810 = float4( 1,1,1,1 );
				float4 In_MotionData16_g156810 = float4( 0,0,0,0 );
				float4 In_BoundsData16_g156810 = float4( 1,1,1,1 );
				float4 In_RotationData16_g156810 = float4( 0,0,0,0 );
				{
				Data16_g156810.Dummy = In_Dummy16_g156810;
				Data16_g156810.PositionOS = In_PositionOS16_g156810;
				Data16_g156810.PositionWS = In_PositionWS16_g156810;
				Data16_g156810.PositionWO = In_PositionWO16_g156810;
				Data16_g156810.PositionRawOS = In_PositionRawOS16_g156810;
				Data16_g156810.PositionAddOS = In_PositionAddOS16_g156810;
				Data16_g156810.PivotOS = In_PivotOS16_g156810;
				Data16_g156810.PivotWS = In_PivotWS16_g156810;
				Data16_g156810.PivotWO = In_PivotWO16_g156810;
				Data16_g156810.NormalOS = In_NormalOS16_g156810;
				Data16_g156810.NormalWS = In_NormalWS16_g156810;
				Data16_g156810.NormalRawOS = In_NormalRawOS16_g156810;
				Data16_g156810.NormalRawWS = In_NormalRawWS16_g156810;
				Data16_g156810.TangentOS = In_TangentOS16_g156810;
				Data16_g156810.ViewDirWS = In_ViewDirWS16_g156810;
				Data16_g156810.VertexData = In_VertexData16_g156810;
				Data16_g156810.MotionData = In_MotionData16_g156810;
				Data16_g156810.BoundsData = In_BoundsData16_g156810;
				Data16_g156810.RotationData = In_RotationData16_g156810;
				}
				TVEModelData Data15_g158293 = Data16_g156810;
				float Out_Dummy15_g158293 = 0;
				float3 Out_PositionOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionWO15_g158293 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotOS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWS15_g158293 = float3( 0,0,0 );
				float3 Out_PivotWO15_g158293 = float3( 0,0,0 );
				float3 Out_NormalOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalWS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g158293 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g158293 = float3( 0,0,0 );
				float4 Out_TangentOS15_g158293 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g158293 = float3( 0,0,0 );
				float4 Out_VertexData15_g158293 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g158293 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g158293 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g158293 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g158293 = Data15_g158293.Dummy;
				Out_PositionOS15_g158293 = Data15_g158293.PositionOS;
				Out_PositionWS15_g158293 = Data15_g158293.PositionWS;
				Out_PositionWO15_g158293 = Data15_g158293.PositionWO;
				Out_PositionRawOS15_g158293 = Data15_g158293.PositionRawOS;
				Out_PositionAddOS15_g158293 = Data15_g158293.PositionAddOS;
				Out_PivotOS15_g158293 = Data15_g158293.PivotOS;
				Out_PivotWS15_g158293 = Data15_g158293.PivotWS;
				Out_PivotWO15_g158293 = Data15_g158293.PivotWO;
				Out_NormalOS15_g158293 = Data15_g158293.NormalOS;
				Out_NormalWS15_g158293 = Data15_g158293.NormalWS;
				Out_NormalRawOS15_g158293 = Data15_g158293.NormalRawOS;
				Out_NormalRawWS15_g158293 = Data15_g158293.NormalRawWS;
				Out_TangentOS15_g158293 = Data15_g158293.TangentOS;
				Out_ViewDirWS15_g158293 = Data15_g158293.ViewDirWS;
				Out_VertexData15_g158293 = Data15_g158293.VertexData;
				Out_MotionData15_g158293 = Data15_g158293.MotionData;
				Out_BoundsData15_g158293 = Data15_g158293.BoundsData;
				Out_RotationData15_g158293 = Data15_g158293.RotationData;
				}
				half3 Model_ViewDirWS392_g158290 = Out_ViewDirWS15_g158293;
				float dotResult324_g158290 = dot( -TVE_MainLightDirection , Model_ViewDirWS392_g158290 );
				float saferPower323_g158290 = abs( saturate( dotResult324_g158290 ) );
				#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch330_g158290 = 0.0;
				#else
				float staticSwitch330_g158290 = ( pow( saferPower323_g158290 , _SubsurfaceAngleValue ) * _SubsurfaceScatteringValue );
				#endif
				half Mask_Subsurface_View320_g158290 = staticSwitch330_g158290;
				float3 temp_output_6_0_g158295 = ( Final_Translucency254_g158290 * Mask_Subsurface_View320_g158290 );
				#ifdef TVE_REGISTER
				float3 staticSwitch14_g158295 = ( temp_output_6_0_g158295 + ( _SubsurfaceAproxInfo * 0.0 ) );
				#else
				float3 staticSwitch14_g158295 = temp_output_6_0_g158295;
				#endif
				half3 Subsurface_Approximation333_g158290 = staticSwitch14_g158295;
				#ifdef TVE_SUBSURFACE
				float3 staticSwitch353_g158290 = ( Visual_Albedo199_g158290 + Subsurface_Approximation333_g158290 );
				#else
				float3 staticSwitch353_g158290 = Visual_Albedo199_g158290;
				#endif
				half3 Final_Albedo312_g158290 = staticSwitch353_g158290;
				float3 In_Albedo3_g158292 = Final_Albedo312_g158290;
				float2 In_NormalTS3_g158292 = Out_NormalTS4_g158291;
				float3 In_NormalWS3_g158292 = Out_NormalWS4_g158291;
				float4 In_Shader3_g158292 = Out_Shader4_g158291;
				float4 In_Emissive3_g158292 = Out_Emissive4_g158291;
				float In_Grayscale3_g158292 = Out_Grayscale4_g158291;
				float In_Luminosity3_g158292 = Out_Luminosity4_g158291;
				float In_MultiMask3_g158292 = temp_output_301_11_g158290;
				float In_AlphaClip3_g158292 = Out_AlphaClip4_g158291;
				float In_AlphaFade3_g158292 = Out_AlphaFade4_g158291;
				float3 In_Translucency3_g158292 = Final_Translucency254_g158290;
				float In_Transmission3_g158292 = Final_Transmission269_g158290;
				#ifdef TVE_SUBSURFACE
				float staticSwitch351_g158290 = 0.0;
				#else
				float staticSwitch351_g158290 = 1.0;
				#endif
				half Final_Thickness275_g158290 = staticSwitch351_g158290;
				float In_Thickness3_g158292 = Final_Thickness275_g158290;
				float Final_Diffusion340_g158290 = _SubsurfaceDiffusion;
				float In_Diffusion3_g158292 = Final_Diffusion340_g158290;
				{
				Data3_g158292.Dummy = In_Dummy3_g158292;
				Data3_g158292.Albedo = In_Albedo3_g158292;
				Data3_g158292.NormalTS = In_NormalTS3_g158292;
				Data3_g158292.NormalWS = In_NormalWS3_g158292;
				Data3_g158292.Shader = In_Shader3_g158292;
				Data3_g158292.Emissive= In_Emissive3_g158292;
				Data3_g158292.MultiMask = In_MultiMask3_g158292;
				Data3_g158292.Grayscale = In_Grayscale3_g158292;
				Data3_g158292.Luminosity = In_Luminosity3_g158292;
				Data3_g158292.AlphaClip = In_AlphaClip3_g158292;
				Data3_g158292.AlphaFade = In_AlphaFade3_g158292;
				Data3_g158292.Translucency = In_Translucency3_g158292;
				Data3_g158292.Transmission = In_Transmission3_g158292;
				Data3_g158292.Thickness = In_Thickness3_g158292;
				Data3_g158292.Diffusion = In_Diffusion3_g158292;
				}
				TVEVisualData Data4_g158307 = Data3_g158292;
				float Out_Dummy4_g158307 = 0;
				float3 Out_Albedo4_g158307 = float3( 0,0,0 );
				float2 Out_NormalTS4_g158307 = float2( 0,0 );
				float3 Out_NormalWS4_g158307 = float3( 0,0,0 );
				float4 Out_Shader4_g158307 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g158307 = float4( 0,0,0,0 );
				float Out_MultiMask4_g158307 = 0;
				float Out_Grayscale4_g158307 = 0;
				float Out_Luminosity4_g158307 = 0;
				float Out_AlphaClip4_g158307 = 0;
				float Out_AlphaFade4_g158307 = 0;
				float3 Out_Translucency4_g158307 = float3( 0,0,0 );
				float Out_Transmission4_g158307 = 0;
				float Out_Thickness4_g158307 = 0;
				float Out_Diffusion4_g158307 = 0;
				{
				Out_Dummy4_g158307 = Data4_g158307.Dummy;
				Out_Albedo4_g158307 = Data4_g158307.Albedo;
				Out_NormalTS4_g158307 = Data4_g158307.NormalTS;
				Out_NormalWS4_g158307 = Data4_g158307.NormalWS;
				Out_Shader4_g158307 = Data4_g158307.Shader;
				Out_Emissive4_g158307= Data4_g158307.Emissive;
				Out_MultiMask4_g158307 = Data4_g158307.MultiMask;
				Out_Grayscale4_g158307 = Data4_g158307.Grayscale;
				Out_Luminosity4_g158307= Data4_g158307.Luminosity;
				Out_AlphaClip4_g158307 = Data4_g158307.AlphaClip;
				Out_AlphaFade4_g158307 = Data4_g158307.AlphaFade;
				Out_Translucency4_g158307 = Data4_g158307.Translucency;
				Out_Transmission4_g158307 = Data4_g158307.Transmission;
				Out_Thickness4_g158307 = Data4_g158307.Thickness;
				Out_Diffusion4_g158307 = Data4_g158307.Diffusion;
				}
				half3 Input_Albedo24_g158305 = Out_Albedo4_g158307;
				#ifdef UNITY_COLORSPACE_GAMMA
				float4 staticSwitch22_g158305 = half4(0.2209163,0.2209163,0.2209163,0.7790837);
				#else
				float4 staticSwitch22_g158305 = half4(0.04,0.04,0.04,0.96);
				#endif
				half4 ColorSpaceDielectricSpec23_g158305 = staticSwitch22_g158305;
				float4 break24_g158304 = Out_Shader4_g158307;
				half Metallic117_g158304 = break24_g158304.x;
				half Input_Metallic25_g158305 = Metallic117_g158304;
				half OneMinusReflectivity31_g158305 = ( (ColorSpaceDielectricSpec23_g158305).w - ( (ColorSpaceDielectricSpec23_g158305).w * Input_Metallic25_g158305 ) );
				float3 lerpResult87_g158304 = lerp( half3(1,0,0) , ( Input_Albedo24_g158305 * OneMinusReflectivity31_g158305 ) , _IsInitialized);
				
				float3 lerpResult28_g158305 = lerp( (ColorSpaceDielectricSpec23_g158305).xyz , Input_Albedo24_g158305 , Input_Metallic25_g158305);
				half RenderSpec105_g158304 = _RenderSpecular;
				
				float localCustomAlphaClip19_g158312 = ( 0.0 );
				float temp_output_3_0_g158312 = Out_AlphaClip4_g158307;
				float Alpha19_g158312 = temp_output_3_0_g158312;
				float temp_output_15_0_g158312 = 0.0;
				float Treshold19_g158312 = temp_output_15_0_g158312;
				{
				#if defined (TVE_ALPHA_CLIP) || defined (TVE_CUTOUT) || defined (TVE_DITHER)
				#if defined ( TVE_PIPELINE_HD)
				#if !defined(SHADERPASS_FORWARD_BYPASS_ALPHA_TEST) && !defined(SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST)
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#else
				clip(Alpha19_g158312 - Treshold19_g158312);
				#endif
				#endif
				}
				

				fixed3 albedo = lerpResult87_g158304;
				fixed3 normal = Out_NormalWS4_g158307;
				half3 emission = (Out_Emissive4_g158307).xyz;
				fixed3 specular = ( lerpResult28_g158305 * RenderSpec105_g158304 );
				fixed metallic = 0;
				half smoothness = break24_g158304.w;
				half occlusion = 1;
				fixed alpha = Alpha19_g158312;
				fixed alphaClipThreshold = 0;

				o.Albedo = albedo;
				o.Normal = normal;
				o.Emission = emission;
				#if defined(_SPECULAR_SETUP)
					o.Specular = specular;
				#else
					o.Metallic = metallic;
				#endif
				o.Smoothness = smoothness;
				o.Occlusion = occlusion;
				o.Alpha = alpha;
				#if _ALPHATEST_ON
					clip( o.Alpha - alphaClipThreshold );
				#endif
				IN.pos.zw = positionCS.zw;
				outDepth = IN.pos.z;

				UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				SHADOW_CASTER_FRAGMENT(IN)
			}
			ENDCG
		}
		
	}
	
	CustomEditor "TVEShaderGUILite"
	Fallback Off
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.FunctionNode;469;-8448,-256;Inherit;False;Impostor Pass Octa;82;;156801;47d9a0b51a8fa984f975828bdfee2fa3;0;0;5;FLOAT4;0;FLOAT4;23;FLOAT3;25;FLOAT3;26;FLOAT3;27
Node;AmplifyShaderEditor.FunctionNode;466;-8064,0;Inherit;False;Block Impostor Model;35;;156802;93e44146af3144a4b84056ae65ecf0fc;0;2;288;COLOR;0,0,0,0;False;163;FLOAT3;0,0,0;False;2;OBJECT;128;OBJECT;339
Node;AmplifyShaderEditor.RegisterLocalVarNode;406;-7744,64;Half;False;Model Frag;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;407;-7296,-256;Inherit;False;406;Model Frag;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;411;-7040,-256;Inherit;False;Block Lite Global;40;;156811;3cde0aa66f3d8ec4a9b80a215a26f02b;16,315,1,311,1,317,1,321,1,319,1,323,1,337,1,283,1,285,1,282,1,308,1,276,1,349,1,287,1,289,1,348,1;1;206;OBJECT;0,0,0,0;False;1;OBJECT;151
Node;AmplifyShaderEditor.FunctionNode;468;-8064,-256;Inherit;False;Block Impostor Visual;102;;156876;f5a6295b5f4a3004ebbb03db403bc544;0;5;229;COLOR;0,0,0,0;False;285;COLOR;0,0,0,0;False;224;FLOAT3;0,0,0;False;217;FLOAT3;0,0,0;False;261;FLOAT;0;False;1;OBJECT;272
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-7744,-256;Half;False;Visual  Raw;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;414;-6720,-256;Half;False;Global Data;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;410;-4864,-256;Inherit;False;408;Visual  Raw;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;416;-4864,-128;Inherit;False;414;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;401;-7744,0;Half;False;Model Vert;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;419;-4480,-128;Inherit;False;414;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;471;-4480,-256;Inherit;False;Block Lite Overlay;177;;158217;df6d6bbf01172a34387d93d862d3d156;9,821,0,819,0,813,0,908,0,826,1,823,1,828,0,844,0,447,0;4;572;OBJECT;0,0,0,0;False;596;OBJECT;0,0,0,0;False;600;OBJECT;0,0,0,0;False;445;FLOAT;1;False;1;OBJECT;566
Node;AmplifyShaderEditor.GetLocalVarNode;402;-6272,-256;Inherit;False;401;Model Vert;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;-4096,-64;Inherit;False;414;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;464;-4096,-256;Inherit;False;Block Emissive;276;;158247;64497f287b9096b43b688b52b4a0bf20;5,282,0,273,0,275,0,264,0,267,0;3;146;OBJECT;0,0,0,0;False;148;OBJECT;0,0,0,0;False;178;OBJECT;0,0,0,0;False;1;OBJECT;183
Node;AmplifyShaderEditor.GetLocalVarNode;448;-4096,-128;Inherit;False;406;Model Frag;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;470;-6016,-256;Inherit;False;Block Lite Impostor Motion;330;;158262;38077585734a3224db90527d4119d9c6;0;2;146;OBJECT;0,0,0,0;False;212;OBJECT;0,0,0,0;False;1;OBJECT;128
Node;AmplifyShaderEditor.FunctionNode;426;-2944,-256;Inherit;False;Block Lite Variation;110;;158282;3df1ad26aa7a397488e4d172ec7355ef;0;0;1;COLOR;116
Node;AmplifyShaderEditor.FunctionNode;430;-2944,128;Inherit;False;Block Lite Size Fade;319;;158283;828b7cb552f180f4193fb67dbaaae0ce;0;0;1;COLOR;128
Node;AmplifyShaderEditor.FunctionNode;429;-2944,0;Inherit;False;Block Lite Cutout;243;;158284;0780bee94024ab547ae8bb1fac250cb1;2,775,0,824,0;0;1;COLOR;566
Node;AmplifyShaderEditor.FunctionNode;428;-2944,-128;Inherit;False;Block Lite Dryness;148;;158285;d0ad841a44e589843b633cc1b97af190;3,398,0,440,0,438,0;0;1;COLOR;346
Node;AmplifyShaderEditor.FunctionNode;427;-2944,-192;Inherit;False;Block Lite Tinting;122;;158286;c2bee839afbcbb7499ebde2af2a2b317;3,352,0,377,0,375,0;0;1;COLOR;204
Node;AmplifyShaderEditor.FunctionNode;472;-2944,-64;Inherit;False;Block Lite Wetness;224;;158288;30361f2d9d7742e4db0b62746ed1affc;3,850,0,877,0,873,0;0;1;COLOR;566
Node;AmplifyShaderEditor.FunctionNode;425;-2944,64;Inherit;False;Block Lite Dithering;260;;158289;6e52cef07120daa408f9658182b29574;3,847,0,848,0,855,1;0;1;COLOR;566
Node;AmplifyShaderEditor.FunctionNode;463;-3712,-256;Inherit;False;Block Subsurface;300;;158290;d738d295ada6b1f409db6776b5efe789;3,315,1,359,1,362,0;4;146;OBJECT;0,0,0,0;False;385;OBJECT;0,0,0,0;False;371;OBJECT;0,0,0,0;False;361;FLOAT;1;False;1;OBJECT;183
Node;AmplifyShaderEditor.FunctionNode;404;-5632,-256;Inherit;False;Block Transform;-1;;158297;5ac6202bdddd8b34a85c261af6b8de8b;0;1;146;OBJECT;0,0,0,0;False;1;OBJECT;128
Node;AmplifyShaderEditor.SimpleAddOpNode;432;-2560,-256;Inherit;False;7;7;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;431;-3392,-256;Half;False;Visual Data;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;473;-5312,-256;Half;False;Model Data;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;435;-1664,-256;Inherit;False;431;Visual Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;433;-2368,-256;Half;False;Dummy Data;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;434;-1664,-192;Inherit;False;473;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;437;-1408,320;Inherit;False;433;Dummy Data;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;465;-1408,-256;Inherit;False;Block Impostor Render;0;;158304;1dac90ed7ee26b743a17d6c74e115d86;0;2;17;OBJECT;;False;19;OBJECT;;False;19;FLOAT3;21;FLOAT3;83;FLOAT3;34;FLOAT3;77;FLOAT;27;FLOAT;114;FLOAT;113;FLOAT;72;FLOAT;28;FLOAT;71;FLOAT3;65;FLOAT;66;FLOAT;67;FLOAT;68;FLOAT;73;FLOAT3;37;FLOAT3;30;FLOAT3;32;FLOAT4;33
Node;AmplifyShaderEditor.FunctionNode;442;-384,-768;Inherit;False;Base Compile;-1;;158317;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;445;-1024,128;Inherit;False;Register;-1;;158318;673534ff3248b7442a6471d786096f1f;0;2;6;FLOAT3;0,0,0;False;7;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;444;-608,-768;Half;False;Property;_IsLiteShader;_IsLiteShader;357;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;443;-832,-768;Half;False;Property;_IsStandardShader;_IsStandardShader;356;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;438;-1056,-768;Half;False;Property;_IsImpostorShader;_IsImpostorShader;355;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;441;-1664,-768;Half;False;Property;_ImpostorCategory;[ Impostor Category ];81;0;Create;True;0;0;0;True;1;StyledCategory(Impostor Settings, true, 0, 10);False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;440;-1408,-768;Half;False;Property;_ImpostorEnd;[ Impostor End ];109;0;Create;True;0;0;0;True;1;StyledSpace(10);False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;439;-1664,-640;Half;False;Property;_render_coverage;_render_coverage;358;1;[Enum];Create;True;0;1;Off;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;353;-640,123;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;350;-640,24;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;351;-640,57;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Deferred;0;2;Deferred;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Deferred;False;True;11;d3d11;glcore;gles;gles3;metal;vulkan;xboxone;xboxseries;playstation;ps4;switch;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;352;-640,90;Float;False;False;-1;2;ASEMaterialInspector;0;13;New Amplify Shader;4e5791d7c677cf540a160f0a09e2385a;True;Meta;0;3;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;349;-640,-256;Float;False;True;-1;2;TVEShaderGUILite;0;14;BOXOPHOBIC/The Visual Engine/Impostors/Octa Standard Lit (Lite);4e5791d7c677cf540a160f0a09e2385a;True;ForwardBase;0;0;ForwardBase;13;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_RenderCoverage;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;4;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=True=DisableBatching;ImpostorType=Octahedron;True;5;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;15;Material Type,InvertActionOnDeselection;1;0;Receive Specular;1;0;Transmission;0;0;  Transmission Shadow;0.5,True,;0;Translucency;0;0;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;Deferred Pass;1;0;Add Pass;1;0;Meta Pass;1;0;0;5;True;True;True;True;True;False;;True;0
WireConnection;466;163;469;27
WireConnection;406;0;466;339
WireConnection;411;206;407;0
WireConnection;468;229;469;0
WireConnection;468;285;469;23
WireConnection;468;224;469;25
WireConnection;468;217;469;26
WireConnection;408;0;468;272
WireConnection;414;0;411;151
WireConnection;401;0;466;128
WireConnection;471;572;410;0
WireConnection;471;600;416;0
WireConnection;464;146;471;566
WireConnection;464;178;419;0
WireConnection;470;146;402;0
WireConnection;463;146;464;183
WireConnection;463;385;448;0
WireConnection;463;371;422;0
WireConnection;404;146;470;128
WireConnection;432;0;426;116
WireConnection;432;1;427;204
WireConnection;432;2;428;346
WireConnection;432;3;472;566
WireConnection;432;4;429;566
WireConnection;432;5;425;566
WireConnection;432;6;430;128
WireConnection;431;0;463;183
WireConnection;473;0;404;128
WireConnection;433;0;432;0
WireConnection;465;17;435;0
WireConnection;465;19;434;0
WireConnection;445;6;465;37
WireConnection;445;7;437;0
WireConnection;349;0;465;21
WireConnection;349;1;465;83
WireConnection;349;2;465;34
WireConnection;349;3;465;77
WireConnection;349;4;465;27
WireConnection;349;6;465;28
WireConnection;349;12;445;0
ASEEND*/
//CHKSM=BE69263D839C979D0A42292962D4FC0BA3515C59