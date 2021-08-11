$outFilePath = "$env:USERPROFILE\Downloads\test.html"
$url = "http://www.contoso.com"
Invoke-WebRequest -Uri $url -OutFile $outFilePath
notepad.exe $outFilePath 

