#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

x = 1550
y = 470

;ControlClick, x+1400 y+%y%, Anarchy Online - Sojuspicy
;sleep 200
ControlClick, x+%x% y+%y%, Anarchy Online - Sojuspicy
