#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, aoid, List, Anarchy Online
Sort, %aoid%

Gui, Show, w300 h200, base


	Loop %aoid%
	{
		element := aoid%A_Index%@
		ControlSend,ahk_parent, {c down}, ahk_id %element%
		sleep 50		
		Loop %A_Index%
		{
			sleep 250
		}
		ControlSend,ahk_parent, {c up}, ahk_id %element%
		sleep 50
	}


GuiClose:
ExitApp 