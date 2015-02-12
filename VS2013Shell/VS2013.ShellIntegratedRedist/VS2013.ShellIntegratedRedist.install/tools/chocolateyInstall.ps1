$packageName = 'VS2013.ShellIntegratedRedist.install'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/A/5/F/A5FD8DF4-83E3-44D5-8D0C-F41A6CF128AA/vs_intshelladditional.exe'
$silentArgs = '/Passive'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"