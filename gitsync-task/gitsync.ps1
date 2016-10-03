[CmdletBinding()]
param(
    [string] $GitRepoUrl
)

git pull $GitRepoUrl $env:Build_SourceBranchName --tags
git push $GitRepoUrl $env:Build_SourceBranchName --tags