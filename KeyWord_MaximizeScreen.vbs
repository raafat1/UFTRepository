 
'+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ 
        'Keyword: MaximizeScreen
        'Description: Maximize the screen
        'Created By: Abdellaoui Raafet
        Case "MaximizeScreen"
          
            strEnv = DataTable.Value ( "Environment", strLocalTable )
			strtJavaButtonName =  DataTable.Value("Param1", strLocalTable)
            strButtonProperty =  DataTable.Value("Param2", strLocalTable)
            strButtonPropertyValue =  DataTable.Value("Param3", strLocalTable)
            intTimeOut = utilGetParam( DataTable.Value("Param4", strLocalTable))
            If Trim(strtJavaButtonName)<>"" And Trim(strButtonProperty)<>"" And Trim(strButtonPropertyValue)<>"" And Trim(intTimeOut)<>"" Then
                strEnv1=strEnv&".JavaButton("&Chr(34)& strtJavaButtonName &Chr(34)&")"
                blnResult=utilObjectWaitProp(strEnv1,strButtonProperty,strButtonPropertyValue,intTimeOut)
            End If 
            'Call the function for maximizing the screen
            blnResult=AppMaximizeScreen(strEnv)
            'Write Results Pass/Fail to QTP logs as well as in Result column in Results.xls file
            If blnResult = True Then
                Call utilWriteToResults(strCriticality, micPass, intTestCaseID,"Screen maximized  ")
                DataTable.Value("Result", strLocalTable) = "Pass"
            Else
                Call utilWriteToResults(strCriticality, micFail, intTestCaseID,"Unable to Maximize the screen  ")
                DataTable.Value("Result", strLocalTable) = "Fail"
                DataTable.Value("ErrorMsg", strLocalTable) = "Unable to Maximize the screen - " & blnResult
            End If
'+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+