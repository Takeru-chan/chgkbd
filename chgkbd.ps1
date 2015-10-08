Param($opt)
if ($opt -eq "en") {
	$modeset = @("kbd101.dll", "PCAT_101KEY", "0", "Switch to English mode")
} elseif ($opt -eq "jp") {
	$modeset = @("kbd106.dll", "PCAT_106KEY", "2", "Switch to Japanese mode")
} else {
	Write-Host "Current status:" -NoNewLine
	Get-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters
	break
}
if (([security.principal.windowsprincipal] [security.principal.windowsidentity]::getcurrent()).isinrole([security.principal.windowsbuiltinrole] "Administrator")) {
	Set-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters -name "LayerDriver JPN" -value $modeset[0]
	Set-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters -name "OverrideKeyboardIdentifier" -value $modeset[1]
	Set-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters -name "OverridekeyboardSubtype" -value $modeset[2]
	Write-Host $modeset[3]
	Write-Host "Restart computer...`n"
} else {
	Write-Host "Run as Administrator.`n"
}
