param(
    [string]$TagName = "AutoShutdown",
    [string]$TagValue = "true"
)

Write-Host "Searching for VMs with tag $TagName=$TagValue"

$vms = Get-AzVM

$filtered = $vms | Where-Object {
    $_.Tags[$TagName] -eq $TagValue
}

foreach ($vm in $filtered) {

    Write-Host "Stopping VM: $($vm.Name) in RG $($vm.ResourceGroupName)"

    Stop-AzVM `
        -Name $vm.Name `
        -ResourceGroupName $vm.ResourceGroupName `
        -Force
}