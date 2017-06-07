strComputer = "."
Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
Set colProcessList = objWMIService.ExecQuery ("Select * from Win32_Process Where Name = 'AnarchyOnline.exe'")
Set oShell = CreateObject("WScript.Shell") 

Function Reset(Arg1)
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "%3"
		WScript.sleep 10
		oShell.SendKeys "+1" 
		WScript.sleep 10
		oShell.SendKeys "%2"
		WScript.sleep 10
		oShell.SendKeys "+1" 
		WScript.sleep 10
		oShell.SendKeys "%1"
		WScript.sleep 10
		oShell.SendKeys "+1" 
		WScript.sleep 10
	Next	
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{ESC}"
	Next
End Function

Function Sit(Arg1)
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "x"
		WScript.sleep 50
	Next
	
	WScript.sleep 100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F1}"
		WScript.sleep 50
	Next
	
	WScript.sleep 100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "0"
		WScript.sleep 50
	Next

	WScript.sleep 100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "x"
		WScript.sleep 50
	Next
	
End Function

Function Buff(Arg1)
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "%3"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "+2" 
		WScript.sleep 10
	Next
	
	WScript.sleep 100
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F1}"
		WScript.sleep 10
	Next
	
	WScript.sleep 100
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1"
		WScript.sleep 10
	Next
	
	WScript.sleep 1100

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "2" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "3"
		WScript.sleep 10
	Next
	
	WScript.sleep 1100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "4" 
		WScript.sleep 10
	Next

	WScript.sleep 1100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "5" 
		WScript.sleep 10
	Next			
End Function

Function SingleTarget(Arg1)
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "%3"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "+3" 
		WScript.sleep 10
	Next
	
	WScript.sleep 100

	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F1}"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100	
	
		For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F2}"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100	
	
		For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F3}"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100	
	
		For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F4}"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100	
	
		For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F5}"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100	
	
		For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{F6}"
		WScript.sleep 10
	Next

	For Each objProcess in colProcessList
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "1" 
		WScript.sleep 10
	Next
	
	WScript.sleep 1100	
End Function

Function Escape(Arg1)
	
	For Each objProcess in Arg1
		oShell.AppActivate objprocess.processid
		oShell.SendKeys "{ESCAPE}"
		WScript.sleep 10
	Next	
End Function


Escape(ColProcessList)
WScript.sleep 10
Sit(colProcessList)
WScript.sleep 10
Reset(colProcessList)
WScript.sleep 10
Escape(ColProcessList)
WScript.sleep 10
Buff(colProcessList)
WScript.sleep 10
Reset(colProcessList)
SingleTarget(colProcessList)
Reset(colProcessList)


