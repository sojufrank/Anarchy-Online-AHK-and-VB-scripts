#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

x1 = 55
y1 = 120
x2 = 316
ytemp = %y1%

Gui, Show, w300 h170, mover5

insert::
	Loop 7
	{
	
		xtemp = %x1%	
		
		Loop 3
		{
			ControlClick, x+%xtemp% y+%ytemp%, Anarchy Online - Nyanie
			sleep 100
			ControlClick, x+%x2% y+%y1%, Anarchy Online - Nyanie
			sleep 100
			xtemp += 87
		}
		ytemp += 87
	}
	xtemp = %x1%
	ytemp = %y1%
return

delete::
	Loop 7
	{
	
		xtemp = %x2%	
		
		Loop 3
		{
			ControlClick, x+%xtemp% y+%ytemp%, Anarchy Online - Nyanie
			sleep 100
			ControlClick, x+%x1% y+%y1%, Anarchy Online - Nyanie
			sleep 100
			xtemp += 87
		}
		ytemp += 87
	}
	xtemp = %x1%
	ytemp = %y1%
return

home::
	Loop 7
	{
	
		xtemp = %x1%	
		
		Loop 3
		{
			ControlClick, x+%xtemp% y+%ytemp%, Anarchy Online - Shastiny
			sleep 100
			ControlClick, x870 y480, Anarchy Online - Shastiny
			sleep 100
			xtemp += 87
		}
		ytemp += 87
	}
	xtemp = %x1%
	ytemp = %y1%
return


GuiClose:
ExitApp 




	