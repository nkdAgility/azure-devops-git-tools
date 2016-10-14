#Save-Module -Name VstsTaskSdk -Path ..\gitsync-task\ps_modules\
Save-Module -Name posh-git -Path .\gitsync-task\ps_modules\

 Install-Module posh-git -


#Import-Module ..\gitsync-task\ps_modules\VstsTaskSdk
Import-Module .\gitsync-task\ps_modules\posh-git

Get-GitStatus
Get-GitDirectory
#Update-AllBranches

Invoke-VstsTaskScript -ScriptBlock ([scriptblock]::Create('. ..\gitsync-task\gitsync.ps1')) -Verbose