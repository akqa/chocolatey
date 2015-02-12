$packageName = 'aws-sdk-net.install'
$installerType = 'MSI'
$url = 'http://sdk-for-net.amazonwebservices.com/AWSToolsAndSDKForNet_sdk-2.0.5.0-ps-2.0.5.0-tk-1.6.2.0.msi'
$silentArgs = '/passive'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"