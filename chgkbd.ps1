Param($opt)
if ($opt -eq "en") {
	$option = @("kbd101.dll", "PCAT_101KEY", "0")
	Write-Host "Switch to English mode"
} elseif ($opt -eq "jp") {
	$option = @("kbd106.dll", "PCAT_106KEY", "2")
	Write-Host "Switch to Japanese mode"
} else {
	Write-Host "Current status:" -NoNewLine
	Get-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters
	break
}
Set-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters -name "LayerDriver JPN" -value $option[0]
Set-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters -name "OverrideKeyboardIdentifier" -value $option[1]
Set-ItemProperty HKLM:\System\CurrentControlSet\Services\i8042prt\Parameters -name "OverridekeyboardSubtype" -value $option[2]
Write-Host "Restart computer"
