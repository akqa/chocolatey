$packageName = 'nunit.install'
$version = '2.6.4'
$validExitCodes = @(0)

$params = @{
  PackageName = $packageName;
  FileType = 'msi';
  SilentArgs = '/QUIET';
  Url = 'http://github.com/nunit/nunitv2/releases/download/'+$version+'/NUnit-'+$version+'.msi';
}

Install-ChocolateyPackage @params -validExitCodes $validExitCodes