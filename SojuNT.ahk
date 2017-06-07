#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Gui, Show, w300 h200, base

+^!1::
WinActivate , Anarchy Online - Sojunt
controlsend,,k, Anarchy Online - Sojunt
controlsend,,j, Anarchy Online - Sojunt
sleep 1100
controlsend,,k, Anarchy Online - Sojunt
sleep 1900
controlsend,,2, Anarchy Online - Sojunt
return

+^!2::
WinActivate , Anarchy Online - Sojunt
controlsend,,1, Anarchy Online - Sojunt
controlsend,,l, Anarchy Online - Sojunt
sleep 2200
controlsend,,l, Anarchy Online - Sojunt
sleep 1200
controlsend,,l, Anarchy Online - Sojunt
sleep 800
controlsend,,j, Anarchy Online - Sojunt
sleep 900
controlsend,,l, Anarchy Online - Sojunt
sleep 2050
controlsend,,2, Anarchy Online - Sojunt
return


home::
WinActivate , Anarchy Online - Sojunt
Aggup()
Sleep 50
SendInput {alt down}
Sleep 50
SendInput 3
Sleep 50
SendInput {alt up}
Sleep 50
SendInput {shift down}
Sleep 50
SendInput 2
Sleep 50
SendInput {shift up}
Sleep 50

sleep 500
controlsend,,{escape}, Anarchy Online - Sojunt
controlsend,,1, Anarchy Online - Sojunt
sleep 500
controlsend,,{f1}, Anarchy Online - Sojunt
sleep 500
controlsend,,x, Anarchy Online - Sojunt
sleep 1000
controlsend,,2, Anarchy Online - Sojunt
sleep 500
controlsend,,x, Anarchy Online - Sojunt
sleep 1000
controlsend,,3, Anarchy Online - Sojunt
sleep 2000
controlsend,,4, Anarchy Online - Sojunt
sleep 2000
controlsend,,5, Anarchy Online - Sojunt
sleep 2000
controlsend,,6, Anarchy Online - Sojunt
sleep 2000
controlsend,,7, Anarchy Online - Sojunt
sleep 2000
controlsend,,8, Anarchy Online - Sojunt
sleep 2000
controlsend,,9, Anarchy Online - Sojunt
sleep 2000
controlsend,,0, Anarchy Online - Sojunt
sleep 2000

Sleep 50
SendInput {shift down}
Sleep 50
SendInput 3
Sleep 50
SendInput {shift up}
Sleep 50
sleep 1000
controlsend,,1, Anarchy Online - Sojunt
sleep 3000
controlsend,,2, Anarchy Online - Sojunt
sleep 3500
controlsend,,3, Anarchy Online - Sojunt
sleep 4600
controlsend,,4, Anarchy Online - Sojunt
sleep 5200
controlsend,,5, Anarchy Online - Sojunt
sleep 1000

Sleep 50
SendInput {shift down}
Sleep 50
SendInput 1
Sleep 50
SendInput {shift up}
Sleep 50
SendInput {alt down}
Sleep 50
SendInput 1
Sleep 50
SendInput {alt up}
Sleep 50
WinActivate , Anarchy Online - Sojunt
Aggdown()
return

GuiClose:
ExitApp

Add(x, y)
{
    return x + y   ; "Return" expects an expression.
}

Aggup()
{
	x1 = 1670
	x2 = 1845
	y1 = 1050
	y2 = 1050
	MouseGetPos, xpos, ypos 
	MouseClickDrag, L, %x1%, %y1%, %x2%, %y2%
	sleep 10
	MouseMove, xpos, ypos
}

Aggdown()
{
	x1 = 1670
	x2 = 1845
	y1 = 1050
	y2 = 1050
	MouseGetPos, xpos, ypos 
	MouseClickDrag, L, %x2%, %y1%, %x1%, %y2%
	sleep 10
	MouseMove, xpos, ypos 
}
 