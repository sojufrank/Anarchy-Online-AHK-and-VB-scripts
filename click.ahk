ControlClick, x150 y650, Anarchy Online - Sojufix,,right

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
	ControlClick, x150 y650, Anarchy Online - Sojuenfo,,right
	sleep 500
	ControlClick, x250 y650, Anarchy Online - Sojuenfo,,right
	sleep 500
    if ($stop)
    {
      return
    }
  }

delete:: $stop := 1
return

GuiClose:
ExitApp 