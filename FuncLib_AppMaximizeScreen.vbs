'+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
Function AppMaximizeScreen(objParent)
    'Local variable
    Dim objWindow
    'Check for non-empty string
    If objParent <> "" Then
        'Create object
        Set objWindow = eval(objParent)
        'Check for non-empty strings
        If objWindow.Exist(20) Then  
		    ObjWindow.Maximize
			AppMaximizeScreen=True
				Exit Function
        End If
        
        AppMaximizeScreen = "strObj String is empty"
        Exit Function
    End If
    AppMaximizeScreen = "Object String is empty"
End Function

'+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
