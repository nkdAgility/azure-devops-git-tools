[CmdletBinding()]
param(
    [string] $GitRepoUrl
)

git pull $GitRepoUrl $(Build.SourceBranchName) --tags
git push $GitRepoUrl  $(Build.SourceBranchName) --tags