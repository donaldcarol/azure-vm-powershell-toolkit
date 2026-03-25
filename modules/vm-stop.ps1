param(
    [string]$VMName,
    [string]$ResourceGroup
)

Write-Host "Stopping VM $VMName"

Stop-AzVM `
  -Name $VMName `
  -ResourceGroupName $ResourceGroup `
  -Force