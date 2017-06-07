#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, aoid, List, Anarchy Online

Gui, Show, w300 h170, Katsu looper
return

insert::
  $stop := 0
  Loop, 
  { 
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent,f, ahk_id %element%
	}
    Sleep 1000
	ControlSend,ahk_parent, {tab}, Anarchy Online - Sojukeeper
	Sleep 1000 
    if ($stop)
    {
      return
    }
  }

delete:: $stop := 1
return

GuiClose:
ExitApp 