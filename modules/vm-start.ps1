param(
    [string]$VMName,
    [string]$ResourceGroup
)

Write-Host "Starting VM $VMName"

$vm = Get-AzVM -Name $VMName -ResourceGroupName $ResourceGroup -Status

$state = $vm.Statuses[-1].DisplayStatus

if ($state -eq "VM running") {
    Write-Host "VM already running"
}
else {
    Start-AzVM -Name $VMName -ResourceGroupName $ResourceGroup
}
