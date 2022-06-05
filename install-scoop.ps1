$env:SCOOP_GLOBAL='c:\GlobalScoopApps';[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
$env:SCOOP='c:\Scoop';[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'MACHINE');iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
$Reg='Registry::HKLM\System\CurrentControlSet\Control\Session Manager\Environment';$OldPath=(Get-ItemProperty -Path $Reg -Name PATH).Path;$NewPath=$OldPath+';'+'c:\Scoop\shims';Set-ItemProperty -Path $Reg -Name PATH -Value $NewPath
 $CurrentValue=[Environment]::GetEnvironmentVariable('PSModulePath','Machine') ;[Environment]::SetEnvironmentVariable('PSModulePath', $CurrentValue + ';c:\Scoop\modules', 'Machine')}"
