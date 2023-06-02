<# /**
 * Project: 15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Filename: 0401-git-setup-music-app-v0.ps1
 * Description: Project 15-dicoding--0401-music-app-v0 Git setup repository
 * Directory: D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End
 * Ms. PowerShell Version:
 *  - Ms. PowerShell 5.1
 * Reference Link:
 *  - N/A
 * Repository:
 *  - https://github.com/ygautomo/15-dicoding--0401-music-app-v0
 * 
 * Author: Yugo Gautomo
 * Status: Final March 01, 2023
 * Version 01
 */ #>

# Program Title
Write-Host ("15 Dicoding -- Back-End Developer- Fundamental Back-End")
Write-Host ("Project 15-dicoding--0401-music-app-v0 Git setup repository")
Write-Host ("0401-git-setup-music-app-v0.ps1")
Write-Host ("")

# 00 Project 15-dicoding--0401-music-app-v0 Git setup repository
Write-Host ("00 Project 15-dicoding--0401-music-app-v0 Git setup repository")

# Running Command on Local Computer (Git Bash)
Write-Host ("`nRunning Command on Local Computer (Git Bash)")
Write-Host ("`nGit setup local repository")

# Step 01 Check installed Git version
  # Write-Host -- Writes customized output to a host
  Write-Host ("Step 01 Check installed Git version")
  # if error please refer to Git installation file 'N/A'
  # git -- the stupid content tracker
  git --version                         # return 2.28.0.windows.1

# Step 02 Get GitHub account credentials and create/set working repository
  Write-Host ("Step 02 Get GitHub account credentials and create/set working repository")
  ../0000-github-config.ps1
  $Global:PSGITHUB_REPO="15-dicoding--0401-music-app-v0"
  Write-Host ($PSGITHUB_REPO)
  Write-Host ($PSGITHUB_USER)
  Write-Host ($PSGITHUB_EMAIL)
  Write-Host ($PSGITHUB_TOKEN)

# Step 03 Check current directory, create & change to working directory
  Write-Host ("Step 03 Check current directory, create & change to working directory")
  # Get-Location -- Gets information about the current working location or a location stack
  Get-Location

  # Set-Location -- Sets the current working location to a specified location
  # Set-Location {{WORKING_DIRECTORY}}
  Set-Location 'D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\'

  # Get-ChildItem -- Gets the items and child items in one or more specified locations
  # Get-ChildItem {{WORKING_DIRECTORY}}
  Get-ChildItem -Force

# Step 04 Create Git local repository and set configuration
  Write-Host ("SStep 04 Create Git local repository and set configuration")
  # git-init -- Create an empty Git repository or reinitialize an existing one
  git init

  # git-config -- Get and set repository or global options
  git config --local user.name $PSGITHUB_USER
  git config --local user.email $PSGITHUB_EMAIL
  git config --local core.editor "code --wait"
  git config --list

  # git-status -- Show the working tree status
  git status

  # git-branch -- List, create, or delete branches
  git branch -M master

# Step 05 Create README.md file
  Write-Host ("Step 05 Create README.md file")
  # Notepad -- This fast and simple editor has been a staple of Windows for years. Use it to view, edit, and search through plain text documents instantly
  notepad.exe .README.md

  <# :<< 'file-README.md'
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
    git commit -m "setup:project" -m "Project 15-dicoding Module -- 0401 MusicApp v0
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
  file-README.md #>

# Step 06 Create .gitignore file
  Write-Host ("Step 06 Create .gitignore file")
  # gitignore -- Specifies intentionally untracked files to ignore
  notepad.exe .gitignore

  <# : << 'file-.gitignore'
    # /**
    #  * Project: 15 Dicoding -- Back-End Developer- Fundamental Back-End
    #  * Filename: .gitignore.sh

    ...
    # ignore node_modules directories
    node_modules/

    # ignore files
    .eslintrc.json
    package.json
  file-.gitignore #>


# Step 07 Check Git remote repository
  Write-Host ("Step 07 Check Git remote repository")
  # Invoke-WebRequest -- Gets content from a web page on the internet
  # Get the Zen of GitHub
  Invoke-WebRequest `
    -Method GET `
    -Headers @{'X-GitHub-Api-Version'='2022-11-28'} `
    -Uri "https://api.github.com/zen"

  # Get a user
  $keyPair = "$($PSGITHUB_USER):$($PSGITHUB_TOKEN)"
  $encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($keyPair))
  $headers=@{
    "X-GitHub-Api-Version" = "2022-11-28";
    "Accept" = "application/vnd.github.json";
    "Authorization" = "Basic $encodedCreds";
  }
  Invoke-WebRequest `
    -Method GET `
    -Headers $headers `
    -Uri "https://api.github.com/users/$PSGITHUB_USER"

  # List Repositories for the authenticated user
  $keyPair = "$($PSGITHUB_USER):$($PSGITHUB_TOKEN)"
  $encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($keyPair))
  $headers = @{
    "X-GitHub-Api-Version" = "2022-11-28";
    "Accept" = "application/vnd.github.json";
    "Authorization" = "Basic $encodedCreds";
  }
  Invoke-WebRequest `
    -Method GET `
    -Headers $headers `
    -Uri "https://api.github.com/users/$PSGITHUB_USER/repos"

# Step 08 (Optional) Create Git remote repository
  Write-Host ("Step 08 (Optional) Create Git remote repository")
  # Sends an HTTP or HTTPS request to a RESTful web service
  # Create a repository for the authenticated user
  $keyPair = "$($PSGITHUB_USER):$($PSGITHUB_TOKEN)"
  $encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($keyPair))
  $body = @{
    "name" = $PSGITHUB_REPO;
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

# Step 09 Add and track files to Git local repository
  Write-Host ("Step 09 Add and track files to Git local repository")
  # git-add -- Add file contents to the index
  git add README.md
  git add .gitignore
  git add .

  # git-status -- Show the working tree status
  git status

  # git-commit -- Record changes to the repository
  git commit -m "setup:project" -m "Project 15-dicoding Module -- 0401 MusicApp v0"
  git commit -m "setup:project" -m "Update README.md"

  # git-log -- Show commit logs
  git log --pretty=medium

# Step 10 Upload tracked files and update Git remote repository
  Write-Host ("Step 10 Upload tracked files and update Git remote repository")
  # git-remote -- Manage set of tracked repositories
  git remote add origin "https://$($PSGITHUB_USER):$($PSGITHUB_TOKEN)@github.com/$PSGITHUB_USER/$PSGITHUB_REPO.git"
  git remote -v
  git remote --verbose

  # if error message "fatal: remote origin already exists."
  # git remote delete origin
  # git remote add origin "https://$($PSGITHUB_USER):$($PSGITHUB_TOKEN)@github.com/$PSGITHUB_USER/$PSGITHUB_REPO.git"

  # git-push -- Update remote refs along with associated objects
  git push -u origin master

# Running Command on Remote VPS Server (Linux)
Write-Host ("`nRunning Command on Remote VPS Server (Linux)")
Write-Host ("`nGit setup Remote VPS Server local repository")

<# # Running Command on Remote VPS Server (Linux)
# Step 11 Check installed Git version
  # echo -- display a line of text
  echo "Step 11 Check installed Git version"
  # if error please refer to Git installation file 'N/A'
  # git -- the stupid content tracker
  git --version                         # return v2.25.1

# Step 12 Check current directory, create & change to working directory
  echo "Step 12 Check current directory, create & change to working directory"
  # pwd -- print name of current/working directory
  pwd

  # mkdir -- make directories
  # mkdir {{WORKING_DIRECTORY}}
  cd '/home/developer/15-dicoding-back-end-fundamental/'
  # mkdir '0401-music-app-v0'

  # cd -- change the working directory
  # cd {{WORKING_DIRECTORY}}
  cd '/home/developer/15-dicoding-back-end-fundamental/'

  # ls -- list directory contents
  # ls {{WORKING_DIRECTORY}}
  ls -la

# Step 13 (Optional) Clone Git remote repository
  echo "Step 13 (Optional) Clone Git remote repository"
  # git-clone -- Clone a repository into a new directory
  git clone "https://github.com/{{GitHubUser}}/{{GitHubRepo}}.git"

# Step 14 (Optional) Rename working directory
  echo "Step 14 (Optional) Rename working directory"
  # mv -- move (rename) files
  mv '15-dicoding--0401-music-app-v0' '0401-music-app-v0'

# Step 15 (Optional) Pull Git remote repository
  echo "Step 15 (Optional) Pull Git remote repository"
  # git-pull -- Fetch from and integrate with another repository or a local branch
  git pull origin
#>

# Running Command on Ms. PowerShell
# cd 'D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\'
# .\0401-git-setup-music-app-v0.ps1
# ./0401-git-setup-music-app-v0.ps1
# & 'D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\0401-git-setup-music-app-v0.ps1'
# . 'D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\0401-git-setup-music-app-v0.ps1'
# Invoke-Expression "D:\06' Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0'\0401-git-setup-music-app-v0.ps1"
# "D:\06' Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0'\0401-git-setup-music-app-v0.ps1" | Invoke-Expression

# Copy file '.eslintrc.json' from Remote Server (Linux) to Local Computer (Ms. PowerShell)
# pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
#   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/.eslintrc.json `
#   "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\.eslintrc.json"

# Copy file 'package.json' from Remote Server (Linux) to Local Computer (Ms. PowerShell)
# pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
#   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/package.json `
#   "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\package.json"

# Copy file '0401-git-setup.sh' to Remote Server (Linux) from Local Computer (Ms. PowerShell)
# pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
#   source "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\0401-git-setup.sh" `
#   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/

# References:
# - Curl converter (https://curlconverter.com/powershell-webrequest/)
# - Digital Ocean, Blog Article, Tutorial- How To Read and Set Environmental and Shell Variables on Linux (https://www.digitalocean.com/community/tutorials/how-to-read-and-set-environmental-and-shell-variables-on-linux)
# - Git distributed version control system (https://git-scm.com)
# - Git, Documentation, Reference (https://git-scm.com/docs)
# - Git, Documentation, Reference, git (https://git-scm.com/docs/git)
# - Git, Documentation, Reference, git-add (https://git-scm.com/docs/git-add)
# - Git, Documentation, Reference, git-branch (https://git-scm.com/docs/git-branch)
# - Git, Documentation, Reference, git-clone (https://git-scm.com/docs/git-clone)
# - Git, Documentation, Reference, git-commit (https://git-scm.com/docs/git-commit)
# - Git, Documentation, Reference, git-config (https://git-scm.com/docs/git-config)
# - Git, Documentation, Reference, git-fetch (https://git-scm.com/docs/git-fetch)
# - Git, Documentation, Reference, git-init (https://git-scm.com/docs/git-init)
# - Git, Documentation, Reference, git-log (https://git-scm.com/docs/git-log)
# - Git, Documentation, Reference, git-pull (https://git-scm.com/docs/git-pull)
# - Git, Documentation, Reference, git-push (https://git-scm.com/docs/git-push)
# - Git, Documentation, Reference, git-remote (https://git-scm.com/docs/git-remote)
# - Git, Documentation, Reference, git-status (https://git-scm.com/docs/git-status)
# - Git, Documentation, Reference, .gitignore (https://git-scm.com/docs/gitignore)
# - GitHub Docs, GitHub Documentation (https://docs.github.com/en)
# - GitHub Docs, REST API (https://docs.github.com/en/rest?apiVersion=2022-11-28)
# - GitHub Docs, REST API, Reference, Meta, Get the Zen of GitHub (https://docs.github.com/en/rest/meta?apiVersion=2022-11-28#get-the-zen-of-github)
# - GitHub Docs, REST API, Reference, Repositories, Create a repository for the authenticated user (https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#create-a-repository-for-the-authenticated-user)
# - GitHub Docs, REST API, Reference, Repositories, List Repositories for the authenticated user (https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#list-repositories-for-the-authenticated-user)
# - GitHub Docs, REST API, Reference, Users, Users, Get a user (https://docs.github.com/en/rest/users/users?apiVersion=2022-11-28#get-a-user)
# - Ms. PowerShell Documentation (https://learn.microsoft.com/en-us/powershell/?view=powershell-5.1)
# - Ms. PowerShell Documentation, Reference,  Microsoft.PowerShell.Management, Get-ChildItem (https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-5.1)
# - Ms. PowerShell Documentation, Reference,  Microsoft.PowerShell.Management, Get-Location (https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-location?view=powershell-5.1)
# - Ms. PowerShell Documentation, Reference,  Microsoft.PowerShell.Management, Set-Location (https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-location?view=powershell-5.1)
# - Ms. PowerShell Documentation, Reference,  Microsoft.PowerShell.Utility, Invoke-RestMethod (https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-5.1)
# - Ms. PowerShell Documentation, Reference,  Microsoft.PowerShell.Utility, Invoke-WebRequest (https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-webrequest?view=powershell-5.1)
# - Ms. PowerShell Documentation, Reference,  Microsoft.PowerShell.Utility, Write-Host (https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-5.1)
# - Ms. Windows, Notepad (https://apps.microsoft.com/store/detail/windows-notepad/9MSMLRH6LZF3)
# - Ubuntu Manuals (https://manpages.ubuntu.com)
# - Ubuntu Manuals, Focal 20.04 LTS, bash (https://manpages.ubuntu.com/manpages/focal/en/man1/bash.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, cd (https://manpages.ubuntu.com/manpages/focal/en/man1/cd.1posix.html)
# - Ubuntu Manuals, Focal 20.04 LTS, curl (https://manpages.ubuntu.com/manpages/focal/en/man1/curl.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, echo (https://manpages.ubuntu.com/manpages/focal/en/man1/echo.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, hostname (https://manpages.ubuntu.com/manpages/focal/en/man1/hostname.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, iptables (https://manpages.ubuntu.com/manpages/focal/en/man8/iptables.8.html)
# - Ubuntu Manuals, Focal 20.04 LTS, kill (https://manpages.ubuntu.com/manpages/focal/en/man1/kill.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, ls (https://manpages.ubuntu.com/manpages/focal/en/man1/ls.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, mkdir (https://manpages.ubuntu.com/manpages/focal/en/man1/mkdir.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, nano (https://manpages.ubuntu.com/manpages/focal/en/man1/nano.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, pidof (https://manpages.ubuntu.com/manpages/focal/en/man8/pidof.8.html)
# - Ubuntu Manuals, Focal 20.04 LTS, pwd (https://manpages.ubuntu.com/manpages/focal/man1/pwd.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, rm (https://manpages.ubuntu.com/manpages/focal/en/man1/rm.1.html)
# - Ubuntu Manuals, Focal 20.04 LTS, ufw (https://manpages.ubuntu.com/manpages/focal/en/man8/ufw.8.html)
# - Ubuntu Manuals, Impish 21.10 LTS, lsof (https://manpages.ubuntu.com/manpages/impish/en/man8/lsof.8.html)
