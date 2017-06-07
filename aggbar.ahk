#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Gui, Show, w300 h200, base

+^!1::
WinActivate , Anarchy Online - Sojuspicy
Aggup()
Sleep 50
SendInput {alt down}
Sleep 50
SendInput 2
Sleep 50
SendInput {alt up}
Sleep 50
;controlsend,,1, Anarchy Online - Sojuspicy
;sleep 1400
controlsend,,q, Anarchy Online - Sojuspicy
sleep 600
controlsend,,m, Anarchy Online - Sojuspicy
sleep 100
controlsend,,n, Anarchy Online - Sojuspicy
sleep 100
controlsend,,1, Anarchy Online - Sojuspicy

controlsend,,2, Anarchy Online - Sojuspicy

controlsend,,3, Anarchy Online - Sojuspicy

controlsend,,4, Anarchy Online - Sojuspicy
sleep 1500
controlsend,,k, Anarchy Online - Sojuspicy
controlsend,,5, Anarchy Online - Sojuspicy
sleep 1000
controlsend,,f, Anarchy Online - Sojuspicy
controlsend,,o, Anarchy Online - Sojuspicy
sleep 1000
controlsend,,f, Anarchy Online - Sojuspicy
Sleep 1000
SendInput {alt down}
Sleep 50
SendInput 1
Sleep 50
SendInput {alt up}
Sleep 50
WinActivate , Anarchy Online - Sojuspicy
Aggdown()
return

;GuiClose:
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
 