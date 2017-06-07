strComputer = "."
Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery ("Select * from Win32_Process Where Name = 'AnarchyOnline.exe'")
Set oShell = CreateObject("WScript.Shell") 

Function LFT(Arg1)

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{ESC}"
		WScript.sleep 10
	Next
	
	WScript.sleep 100
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{ENTER}"
		WScript.sleep 10
	Next
	
	WScript.sleep 100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "/lft soju"
		WScript.sleep 10
	Next
	
	WScript.sleep 100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{ENTER}"
		WScript.sleep 10
	Next
	
End Function

LFT(colProcessList)

MsgBox("lft complete")