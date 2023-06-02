# 15-dicoding-0401-music-app-v0
15 Dicoding -- Back-End Developer- Fundamental Back-End \
0401-music-app-v0

## Git initialization
```Git
git --version
git init
git config --local user.name {{GitHubUser}}
git config --local user.email {{GitHubEmail}}
git config --local core.editor "code --wait"
git config --list
git status
git branch -M master
git add README.md
git add .gitignore
git add .
git status
git commit -m "setup:project" -m "Project 15-dicoding Module -- 0401 MusicApp v0"
git log --pretty=medium
```
## Check Git remote repository
### Linux command
Get the Zen of GitHub
```Shell
curl [-X GET] [-i][-v]
    -H "X-GitHub-Api-Version:2022-11-28"
    "https://api.github.com/zen"
```

Get a user
```Shell
curl [-X GET] [-i][-L][-v]
    -H "X-GitHub-Api-Version:2022-11-28"
    -H "Accept:application/vnd.github.json"
    -u "{{GitHubUser}}:{{GitHubToken}}"
    "https://api.github.com/users/{{GitHubUser}}"
```
List Repositories for the authenticated user
```Shell
curl [-X GET] [-i][-L][-v]
    -H "X-GitHub-Api-Version:2022-11-28"
    -H "Accept:application/vnd.github.json"
    -u "{{GitHubUser}}:{{GitHubToken}}"
    "https://api.github.com/users/{{GitHubUser}}/repos"
```
-----
### Ms. PowerShell command
Get the Zen of GitHub
```PowerShell
Invoke-WebRequest `
    -Method GET `
    -Headers @{'X-GitHub-Api-Version'='2022-11-28'} `
    -Uri "https://api.github.com/zen"
```
Get a user
```PowerShell
$keyPair = "$({{GitHubUser}}):$({{GitHubToken}})"
$encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($keyPair))
$headers=@{
    "X-GitHub-Api-Version" = "2022-11-28";
    "Accept" = "application/vnd.github.json";
    "Authorization" = "Basic $encodedCreds";
}
Invoke-WebRequest `
    -Method GET `
    -Headers $headers `
    -Uri "https://api.github.com/users/{{GitHubUser}}"
```
List Repositories for the authenticated user
```PowerShell
$keyPair = "$({{GitHubUser}}):$({{GitHubToken}})"
$encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($keyPair))
$headers = @{
    "X-GitHub-Api-Version" = "2022-11-28";
    "Accept" = "application/vnd.github.json";
    "Authorization" = "Basic $encodedCreds";
}
Invoke-WebRequest `
    -Method GET `
    -Headers $headers `
    -Uri "https://api.github.com/users/{{GitHubUser}}/repos"
```

## Create Git remote repository
### Linux command
Create a repository for the authenticated user
```Shell
curl -X POST
    -H "X-GitHub-Api-Version:2022-11-28"
    -H "Accept:application/vnd.github.json"
    -u "{{GitHubUser}}:{{GitHubToken}}"
    "https://api.github.com/user/repos?autoinit=true"
    -d '{"name":{{GitHubRepo}}, description" = "Project 15-dicoding Module -- 0401 MusicApp v0 Git setup repository (Git Bash)", "private":false}'
```
-----
### Ms. PowerShell command
Create a repository for the authenticated user
```PowerSHell
$keyPair = "$({{GitHubUser}}):$({{GitHubToken}})"
$encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($keyPair))
$body = @{
    "name" = {{GitHubRepo}};
    "description" = "Project 15-dicoding Module -- 0401 MusicApp v0 Git setup repository (Ms. PowerShell)";
}
$headers = @{
    "X-GitHub-Api-Version" = "2022-11-28";
    "Accept" = "application/vnd.github.json";
    "Authorization" = "Basic $encodedCreds";
}
Invoke-RestMethod `
    -Method POST `
    -Headers $headers `
    -Body ($body | ConvertTo-Json) `
    -Uri "https://api.github.com/user/repos?autoinit=true"
```

## Git update (push) to remote repository
### Linux command
```Git
git remote add origin "https://{{GitHubUser}}:{{GitHubToken}}@github.com/{{GitHubUser}}/{{GitHubRepo}}.git"
git remote -v
git remote --verbose
git push -u origin master
```
-----
### Ms. PowerShell command
```Shell
git remote add origin "https://$({{GitHubUser}}):$({{GitHubToken}})@github.com/{{GitHubUser}}/{{GitHubRepo}}.git"
git remote -v
git remote --verbose
git push -u origin master
```

> Written with [StackEdit](https://stackedit.io/)
