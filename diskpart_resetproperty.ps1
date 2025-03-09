# DISKPART Commands can be run in either CMD or PowerShell
DISKPART
LIST DISK
SELECT DISK [n]
CLEAN
EXIT

# Change the “IsManualAttach” property to false
$virtDiskName=[StoragePoolVirtualDiskName]
Set-VirtualDisk -FriendlyName $virtDiskName -IsManualAttach $False
