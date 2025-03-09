$theVM="(DT)_SurviveStorageSpacesWindowsServer(2019--2025)"
$drPath="C:\Hyper-V\Samsung-870-QVO-8TB_Striped\(Darien's Tips)\(DT)_SurviveStorageSpacesWindowsServer(2019--2025)\Virtual Hard Disks"
$dataDr="(DT)_SurviveStorageSpacesWindowsServer(2019--2025)_DataDisk"
$numOfDisk=1..10
foreach ($diskNum in $numOfDisk) {
    $vhdFullFilename="$drPath\$dataDr-$diskNum.vhdx" 
    # Write-Host $vhdFullFilename
    New-VHD -Path $vhdFullFilename -SizeBytes 12TB -Dynamic
    Start-Sleep -Seconds .25
    Add-VMHardDiskDrive -VMName $theVM -Path $vhdFullFilename
    }
