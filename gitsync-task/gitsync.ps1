[CmdletBinding()]
param(
    [string] $GitRepoUrl
)

$GitRepoUrl = Get-VstsInput -Name GitRepoUrl -Require 
Write-VstsTaskVerbose "GitRepoUrl: $GitRepoUrl" 

Set-Location $Env:BUILD_SOURCESDIRECTORY

### Add teh URL
Write-VstsTaskVerbose ">>git remote add target $GitRepoUrl"
git remote add target $GitRepoUrl
## Checkout the Branch
Write-VstsTaskVerbose ">>git checkout $Env:Build_SourceBranchName"
git checkout $Env:Build_SourceBranchName
## Pull stuff
Write-VstsTaskVerbose ">>git pull target $Env:Build_SourceBranchName --tags"
git pull target $Env:Build_SourceBranchName --tags
## Push stuff
Write-VstsTaskVerbose ">>git push target --all"
git push target --all
Write-VstsTaskVerbose "??git push target HEAD:$Env:Build_SourceBranchName --tags"
git push target HEAD:$Env:Build_SourceBranchName --tags

#git pull --all
#git pull target $env:Build_SourceBranchName --tags
#git remote prune target 
#git push target --all
#git push target --tags
