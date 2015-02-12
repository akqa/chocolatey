$packageName = 'VS2012.ShellIntegratedRedist.install'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/1/9/1/19128EB7-6E57-4661-95AE-DA93E066DC98/vs_intshelladditional.exe'
$silentArgs = '/Passive'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"