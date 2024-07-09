
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/fafarunner/fafarunner/releases/download/v1.0.0%2B320/fafarunner_1.0.0+320_windows_x86_64.exe'
$url64      = 'https://github.com/fafarunner/fafarunner/releases/download/v1.0.0%2B320/fafarunner_1.0.0+320_windows_x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'fafarunner*'

  checksum      = '6EE05FC6434D03908F8F005DC609ABCD96556863E03A5C1696A94198FC7F7012'
  checksumType  = 'sha256'
  checksum64    = '6EE05FC6434D03908F8F005DC609ABCD96556863E03A5C1696A94198FC7F7012'
  checksumType64= 'sha256'

  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
