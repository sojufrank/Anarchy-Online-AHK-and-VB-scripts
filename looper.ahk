#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, aoid, List, Anarchy Online

Gui, Show, w200 h100, looper
Gui, Add, Text,, 'Insert' starts the loop
Gui, Add, Text,, 'End' stops the loop
return

insert::
  $stop := 0
  Loop, 
  { 
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {1}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {2}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {3}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {4}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {5}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {6}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {7}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {8}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {9}, ahk_id %element%
	}
	sleep 6000
	Loop %aoid%
	{
		element := aoid%A_Index%
		ControlSend,ahk_parent, {0}, ahk_id %element%
	}
	sleep 30000
    if ($stop)
    {
      return
    }
  }

delete:: $stop := 1
return

GuiClose:
ExitApp 