﻿#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

$packageName = 'VS2013.RemoteTools.Update1.portable' # arbitrary name for the package, used in messages
$url = 'URL_HERE/.zip/.7z' # download url
$url64 = 'URL_x64_HERE' # 64bit URL here or remove - if installer decides, then use $url

try { 
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
  ### For BinRoot, use the following instead ###
  #$binRoot = "$env:systemdrive\tools"
  ### Using an environment variable to to define the bin root until we implement configuration ###
  #if($env:chocolatey_bin_root -ne $null -and $env:chocolatey_bin_root -notlike '*:\*'){$binRoot = join-path $env:systemdrive $env:chocolatey_bin_root}
  #$installDir = Join-Path $binRoot "$packageName"
  #Write-Host "Adding `'$installDir`' to the path and the current shell path"
  #Install-ChocolateyPath "$installDir"
  #$env:Path = "$($env:Path);$installDir"

  # if removing $url64, please remove from here
  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"

  ### OR for 7z ###

  # if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}
  
  # $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  # if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}

  # $file = Join-Path $tempDir "$($packageName).7z"
  # Get-ChocolateyWebFile "$packageName" "$file" "$url"

  # Start-Process "7za" -ArgumentList "x -o`"$installDir`" -y `"$file`"" -Wait

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}