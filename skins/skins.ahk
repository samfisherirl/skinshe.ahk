﻿

; 强制使用32位运行
if !(1 = 1 and A_PtrSize = 4)
{
	Run(A_ScriptDir "\skins\AutoHotkeyU32.exe `"" A_ScriptFullPath "`"") ;Must run 32bit
	; Run either 32bit AHKV2
	ExitApp()
}
setTheme(theme := "aero.she"){
	hSkinH := DllCall("LoadLibrary", "Str", "skins\SkinHu.dll")
	changeSkin(A_ScriptDir "\skins\" theme)
}
changeSkin(skinPath) {
	DllCall("SkinHu\SkinH_AttachEx", "Str", skinPath, "Str", "mhgd")
}
