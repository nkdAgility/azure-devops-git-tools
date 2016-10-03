[CmdletBinding()]
param(
    [string] $GitRepoUrl
)

git remote add target $GitRepoUrl

git pull --all
git pull target $env:Build_SourceBranchName --tags
git remote prune target 
git push target --all
git push target --tags
