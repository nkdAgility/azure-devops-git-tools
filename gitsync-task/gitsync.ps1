[CmdletBinding()]
param(
    [string] $GitRepoUrl
)

$GitRepoUrl = Get-VstsInput -Name GitRepoUrl -Require 
Write-VstsTaskVerbose "GitRepoUrl: $GitRepoUrl" 


git remote add target $GitRepoUrl

git pull target $Env:Build_SourceBranchName --tags
git push target --all
git push target HEAD:$Env:Build_SourceBranchName --tags

#git pull --all
#git pull target $env:Build_SourceBranchName --tags
#git remote prune target 
#git push target --all
#git push target --tags
