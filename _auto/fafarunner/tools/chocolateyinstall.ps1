
$ErrorActionPreference = 'Stop'
$url64      = 'https://github.com/fafarunner/fafarunner/releases/download/v1.0.0%2B359/fafarunner_1.0.0%2B359_windows_x64.exe'

$arch = [System.Environment]::Is64BitOperatingSystem

if (-not $arch) {
  Write-Error "This package does not support x86 architecture. Installation is not allowed."
  exit 1
}

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'fafarunner*'

  checksum64    = 'a0b3e41f5bf35885dff58220296471be3820ed31cb38750684d613b8443c2173'
  checksumType64= 'sha256'

  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
