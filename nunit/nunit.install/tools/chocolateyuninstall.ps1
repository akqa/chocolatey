$package = 'NUnit'
$version = '2.6.4'

$packageMatch = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "$package $version" }
$clsid = $packageMatch.IdentifyingNumber

$validExitCodes = @(0)

Uninstall-ChocolateyPackage $package 'msi' "$clsid /quiet"  -validExitCodes $validExitCodes