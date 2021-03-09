$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://cdn.kerio.com/dwn/kerio-control-vpnclient-win32.exe'
$url64 = 'https://cdn.kerio.com/dwn/kerio-control-vpnclient-win64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'Kerio Control VPN Client*'
  checksum       = '8C71C8C046D0AE5697F4D738B64AEFF997C3B10EFF015DA80EE6AAE0D96239EE'
  checksumType   = 'sha256'
  checksum64     = 'C59F89F40C3D045D541EC64A82E4410B1B61F12FAFC4BA058BE0BA1D3C48E9CD'
  checksumType64 = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
