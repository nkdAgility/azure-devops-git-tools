# VSTS Git Sync Task

Ever wanted to sync two repositories? Now you can.

I often work in VSTS on Open Source projects that are published to GitHub. I wanted a way to sync the code and make sure there was visability, and the ability for others to contibute.

## Usage

1. Trigger a build from your Source repository
2. Add the Git Sync task to your build
3. Enter hour remote repo URL inlcusing any required authentication


### Example Git Repo URL'sure

For GitHub use: https://$(securityToken)@github.com/owner/repository.git
For VSTS use: push https://:$(securityToken)@account.visualstudio.com/_git/GitRepository