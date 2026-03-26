param(
    [string]$TagName = "AutoShutdown",
    [string]$TagValue = "true"
)

$vms = Get-AzVM

$filtered = $vms | Where-Object {
    $_.Tags[$TagName] -eq $TagValue
}

foreach ($vm in $filtered) {

    Write-Host "Starting VM: $($vm.Name)"

    Start-AzVM `
        -Name $vm.Name `
        -ResourceGroupName $vm.ResourceGroupName
}