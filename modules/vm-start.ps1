param(
    [string]$VMName,
    [string]$ResourceGroup
)

Write-Host "Starting VM $VMName"

Start-AzVM `
  -Name $VMName `
  -ResourceGroupName $ResourceGroup