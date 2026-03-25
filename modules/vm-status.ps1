param(
    [string]$VMName,
    [string]$ResourceGroup
)

$vm = Get-AzVM `
        -Name $VMName `
        -ResourceGroupName $ResourceGroup `
        -Status

$vm.Statuses