$packageName = 'VS2012.ShellIsolatedRedist'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/E/5/2/E52EBD52-2FFD-4D9E-92F2-BECB2F1E2F88/vs_isoshell.exe'
$silentArgs = '/Passive'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"