﻿using System;
using System.Collections.Generic;
namespace SLua {
	[LuaBinder(2)]
	public class BindDll {
		public static Action<IntPtr>[] GetBindList() {
			Action<IntPtr>[] list= {
				Lua_DG_Tweening_DOTweenVisualManager.reg,
				Lua_DG_Tweening_HandlesDrawMode.reg,
				Lua_DG_Tweening_HandlesType.reg,
				Lua_DG_Tweening_DOTweenInspectorMode.reg,
				Lua_DG_Tweening_Core_ABSAnimationComponent.reg,
				Lua_DG_Tweening_DOTweenPath.reg,
				Lua_DG_Tweening_ShortcutExtensionsPro.reg,
				Lua_DG_Tweening_SpiralMode.reg,
				Lua_DG_Tweening_Plugins_SpiralOptions.reg,
				Lua_DG_Tweening_Plugins_SpiralPlugin.reg,
				Lua_DG_Tweening_Core_DOTweenAnimationType.reg,
				Lua_DG_Tweening_Core_OnDisableBehaviour.reg,
				Lua_DG_Tweening_Core_OnEnableBehaviour.reg,
				Lua_DG_Tweening_Core_TargetType.reg,
				Lua_DG_Tweening_Core_VisualManagerPreset.reg,
				Lua_DG_Tweening_AutoPlay.reg,
				Lua_DG_Tweening_AxisConstraint.reg,
				Lua_DG_Tweening_Color2.reg,
				Lua_DG_Tweening_DOTween.reg,
				Lua_DG_Tweening_DOVirtual.reg,
				Lua_DG_Tweening_Ease.reg,
				Lua_DG_Tweening_EaseFactory.reg,
				Lua_DG_Tweening_IDOTweenInit.reg,
				Lua_DG_Tweening_PathMode.reg,
				Lua_DG_Tweening_PathType.reg,
				Lua_DG_Tweening_RotateMode.reg,
				Lua_DG_Tweening_ScrambleMode.reg,
				Lua_DG_Tweening_TweenExtensions.reg,
				Lua_DG_Tweening_LoopType.reg,
				Lua_DG_Tweening_Core_ABSSequentiable.reg,
				Lua_DG_Tweening_Tween.reg,
				Lua_DG_Tweening_Sequence.reg,
				Lua_DG_Tweening_ShortcutExtensions.reg,
				Lua_DG_Tweening_TweenParams.reg,
				Lua_DG_Tweening_TweenSettingsExtensions.reg,
				Lua_DG_Tweening_LogBehaviour.reg,
				Lua_DG_Tweening_Tweener.reg,
				Lua_DG_Tweening_TweenType.reg,
				Lua_DG_Tweening_UpdateType.reg,
				Lua_DG_Tweening_Plugins_DoublePlugin.reg,
				Lua_DG_Tweening_Plugins_LongPlugin.reg,
				Lua_DG_Tweening_Plugins_UlongPlugin.reg,
				Lua_DG_Tweening_Plugins_Vector3ArrayPlugin.reg,
				Lua_DG_Tweening_Plugins_PathPlugin.reg,
				Lua_DG_Tweening_Plugins_ColorPlugin.reg,
				Lua_DG_Tweening_Plugins_IntPlugin.reg,
				Lua_DG_Tweening_Plugins_QuaternionPlugin.reg,
				Lua_DG_Tweening_Plugins_RectOffsetPlugin.reg,
				Lua_DG_Tweening_Plugins_RectPlugin.reg,
				Lua_DG_Tweening_Plugins_UintPlugin.reg,
				Lua_DG_Tweening_Plugins_Vector2Plugin.reg,
				Lua_DG_Tweening_Plugins_Vector4Plugin.reg,
				Lua_DG_Tweening_Plugins_StringPlugin.reg,
				Lua_DG_Tweening_Plugins_FloatPlugin.reg,
				Lua_DG_Tweening_Plugins_Vector3Plugin.reg,
				Lua_DG_Tweening_Plugins_Options_OrientType.reg,
				Lua_DG_Tweening_Plugins_Options_PathOptions.reg,
				Lua_DG_Tweening_Plugins_Options_QuaternionOptions.reg,
				Lua_DG_Tweening_Plugins_Options_UintOptions.reg,
				Lua_DG_Tweening_Plugins_Options_Vector3ArrayOptions.reg,
				Lua_DG_Tweening_Plugins_Options_NoOptions.reg,
				Lua_DG_Tweening_Plugins_Options_ColorOptions.reg,
				Lua_DG_Tweening_Plugins_Options_FloatOptions.reg,
				Lua_DG_Tweening_Plugins_Options_RectOptions.reg,
				Lua_DG_Tweening_Plugins_Options_StringOptions.reg,
				Lua_DG_Tweening_Plugins_Options_VectorOptions.reg,
				Lua_DG_Tweening_Plugins_Core_ITweenPlugin.reg,
				Lua_DG_Tweening_Plugins_Core_PathCore_ControlPoint.reg,
				Lua_DG_Tweening_Plugins_Core_PathCore_Path.reg,
				Lua_DG_Tweening_CustomPlugins_PureQuaternionPlugin.reg,
				Lua_DG_Tweening_Core_Debugger.reg,
				Lua_DG_Tweening_Core_DOTweenComponent.reg,
				Lua_DG_Tweening_Core_DOTweenSettings.reg,
				Lua_DG_Tweening_Core_Extensions.reg,
				Lua_DG_Tweening_Core_Enums_UpdateNotice.reg,
				Lua_DG_Tweening_Core_Easing_Bounce.reg,
				Lua_DG_Tweening_Core_Easing_EaseManager.reg,
				Lua_DG_Tweening_Core_Easing_EaseCurve.reg,
				Lua_DG_Tweening_Core_Easing_Flash.reg,
				Lua_DG_Tweening_Core_DOTweenSettings_SettingsLocation.reg,
				Lua_DG_Tweening_ShortcutExtensions43.reg,
				Lua_DG_Tweening_DOTweenUtils46.reg,
				Lua_DG_Tweening_ShortcutExtensions46.reg,
				Lua_DG_Tweening_ShortcutExtensions50.reg,
			};
			return list;
		}
	}
}
