$packageName = 'VS2013.RemoteTools.Update 1'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/5/E/D/5EDF400A-D932-438D-9ECB-25D1B385CEDA/VSU1/rtools_setup_x86.exe'
$url64 = 'http://download.microsoft.com/download/5/E/D/5EDF400A-D932-438D-9ECB-25D1B385CEDA/VSU1/rtools_setup_x64.exe'
$silentArgs = '/Passive'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"