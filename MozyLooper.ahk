#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, aoid, List, Anarchy Online

Gui, Show, w300 h170, Mozy looper
Gui, Add, Text,, will keep looping until you close this program.


  Loop
  { 
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {tab}, ahk_id %element%
		Sleep 1000 
		ControlSend,ahk_parent, {f}, ahk_id %element%
		Sleep 1000 
	}

  }
return

GuiClose:
ExitApp 