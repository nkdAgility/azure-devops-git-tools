#Save-Module -Name VstsTaskSdk -Path ..\gitsync-task\ps_modules\


#Import-Module ..\gitsync-task\ps_modules\VstsTaskSdk


Invoke-VstsTaskScript -ScriptBlock ([scriptblock]::Create('. ..\gitsync-task\gitsync.ps1')) -Verbose