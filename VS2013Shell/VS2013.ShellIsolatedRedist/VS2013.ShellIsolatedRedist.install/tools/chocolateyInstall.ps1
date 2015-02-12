$packageName = 'VS2013.ShellIsolatedRedist'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/7/7/3/773720AE-C411-4821-929B-4CB5F57F750B/vs_isoshellLP.exe'
$silentArgs = '/Passive'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"