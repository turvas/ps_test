$outFilePath = "$env:USERPROFILE\Downloads\contitest.zip"
$url = "https://github.com/turvas/ps_test/raw/master/conti-ebeca2df2.zip"
Invoke-WebRequest -Uri $url -OutFile $outFilePath
notepad.exe $outFilePath 

