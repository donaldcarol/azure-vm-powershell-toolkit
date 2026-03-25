param(
    [string]$VMName,
    [string]$ResourceGroup
)

$vm = Get-AzVM `
        -ResourceGroupName $ResourceGroup `
        -Name $VMName

$disk = Get-AzDisk `
        -ResourceGroupName $ResourceGroup `
        -DiskName $vm.StorageProfile.OsDisk.Name

$snapshotConfig = New-AzSnapshotConfig `
    -SourceUri $disk.Id `
    -CreateOption Copy `
    -Location $vm.Location

New-AzSnapshot `
    -Snapshot $snapshotConfig `
    -SnapshotName "$VMName-snapshot" `
    -ResourceGroupName $ResourceGroup