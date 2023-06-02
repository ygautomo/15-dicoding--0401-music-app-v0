#!/bin/bash
# /**
#  * Project: 15 Dicoding -- Back-End Developer- Fundamental Back-End
#  * Filename: 0401-project-setup-music-app-v0.sh
#  * Course: 15 Dicoding -- Back-End Developer- Fundamental Back-End
#  * Description: Module 0200 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation
#  * Description: Module 0201 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Pendahuluan Hapi Plugin dan Data Validation
#  * Description: Module 0202 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Hapi Plugin
#  * Description: Module 0203 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Hapi Plugin
#  * Description: Module 0204 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Mendaftarkan Plugin pada Hapi Server
#  * Description: Module 0205 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Plugin pada Notes API- Mengenal Struktur Proyek yang Digunakan
#  * Description: Module 0206 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menyiapkan Proyek
#  * Description: Module 0207 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat inMemory NotesService
#  * Description: Module 0208 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Router Notes
#  * Description: Module 0209 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Fungsi Handler Notes
#  * Description: Module 0210 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Menggunakan Router dan Handler pada Plugin Notes
#  * Description: Module 0211 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Mendaftarkan Notes Plugin di Server Hapi
#  * Description: Module 0212 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Memahami Kata Kunci this
#  * Description: Module 0213 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Data Validation
#  * Description: Module 0214 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Data Validation Menggunakan Joi
#  * Description: Module 0215 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API
#  * Description: Module 0216 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Menyiapkan Skenario Pengujian
#  * Description: Module 0217 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Membuat Notes Schema dan Validator
#  * Description: Module 0218 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Menggunakan NoteValidator pada Plugin Note
#  * Description: Module 0219 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Custom Exceptions- Mengenal Jenis Kesalahan Yang Terjadi di Transaksi HTTP
#  * Description: Module 0220 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Custom Exceptions- Membuat Custom Error
#  * Description: Module 0221 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Deploy Perubahan Hapi Plugin dan Data Validation
#  * Directory: D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End
#  * Linux Version:
#  *  - Ubuntu 20.04.6 LTS (Focal Fossa)
#  * Reference Link:
#  *  - https://www.dicoding.com/academies/271/tutorials/14387
#  *  - https://www.dicoding.com/academies/271/tutorials/14392
#  *  - https://www.dicoding.com/academies/271/tutorials/14397
#  *  - https://www.dicoding.com/academies/271/tutorials/14402
#  *  - https://www.dicoding.com/academies/271/tutorials/14407
#  *  - https://www.dicoding.com/academies/271/tutorials/14412
#  *  - https://www.dicoding.com/academies/271/tutorials/14417
#  *  - https://www.dicoding.com/academies/271/tutorials/14422
#  *  - https://www.dicoding.com/academies/271/tutorials/14427
#  *  - https://www.dicoding.com/academies/271/tutorials/14432
#  *  - https://www.dicoding.com/academies/271/tutorials/14433
#  *  - https://www.dicoding.com/academies/271/tutorials/14437
#  *  - https://www.dicoding.com/academies/271/tutorials/14442
#  *  - https://www.dicoding.com/academies/271/tutorials/14447
#  *  - https://www.dicoding.com/academies/271/tutorials/14452
#  *  - https://www.dicoding.com/academies/271/tutorials/14457
#  *  - https://www.dicoding.com/academies/271/tutorials/14462
#  *  - https://www.dicoding.com/academies/271/tutorials/14467
#  *  - https://www.dicoding.com/academies/271/tutorials/14472
#  *  - https://www.dicoding.com/academies/271/tutorials/14477
#  *  - https://www.dicoding.com/academies/271/tutorials/14482
#  * Repository:
#  *  - https://github.com/ygautomo/15-dicoding--0401-music-app-v0
#  * 
#  * Author: Yugo Gautomo
#  * Status: Final March 01, 2023
#  * Version 01
#  */

# Program Title
echo "15 Dicoding -- Back-End Developer- Fundamental Back-End"
echo "Module 0200 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation"
echo "Module 0201 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Pendahuluan Hapi Plugin dan Data Validation"
echo "Module 0202 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Hapi Plugin"
echo "Module 0203 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Hapi Plugin"
echo "Module 0204 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Mendaftarkan Plugin pada Hapi Server"
echo "Module 0205 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Plugin pada Notes API- Mengenal Struktur Proyek yang Digunakan"
echo "Module 0206 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menyiapkan Struktur Proyek"
echo "Module 0207 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat inMemory NotesService"
echo "Module 0208 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Router Notes"
echo "Module 0209 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Membuat Fungsi Handler Notes"
echo "Module 0210 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Membuat Notes Plugin- Menggunakan Router dan Handler pada Plugin Notes"
echo "Module 0211 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Mendaftarkan Notes Plugin di Server Hapi"
echo "Module 0212 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Memahami Kata Kunci this"
echo "Module 0213 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Data Validation"
echo "Module 0214 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Data Validation Menggunakan Joi"
echo "Module 0215 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API"
echo "Module 0216 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Menyiapkan Skenario Pengujian"
echo "Module 0217 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Membuat Notes Schema dan Validator"
echo "Module 0218 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API- Menggunakan NoteValidator pada Plugin Note"
echo "Module 0219 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Custom Exceptions- Mengenal Jenis Kesalahan Yang Terjadi di Transaksi HTTP"
echo "Module 0220 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Custom Exceptions- Membuat Custom Error"
echo "Module 0221 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Deploy Perubahan Hapi Plugin dan Data Validation"
echo "0401-project-setup-music-app-v0.sh"
echo ""

# 00 Hapi Plugin dan Data Validation- Menyiapkan Struktur Proyek
echo "Module 0215 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API"
echo "Module 0206 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menyiapkan Struktur Proyek"
echo "00 Hapi Plugin dan Data Validation- Menyiapkan Struktur Proyek"

# Running Command on Remote VPS Server (Linux)
echo -e "\nRunning Command on Remote VPS Server (Linux)"

# Step 01 Check installed Node.js version
  # echo -- display a line of text
  echo "Step 01 Check installed Node.js version"
  # if error please refer to Node.js installation file './12 Dicoding -- Back-End Developer- Belajar Dasar JavaScript/0805-nodejs-installation.sh'
  # Node.js is an open-source, cross-platform JavaScript runtime environment
  node -v                               # return v16.20.0
  node --version                        # return v16.20.0

# Step 02 Check current directory, create & change to working directory
  echo "Step 02 Check current directory, create & change to working directory"
  # pwd -- print name of current/working directory
  pwd

  # mkdir -- make directories
  # mkdir {{WORKING_DIRECTORY}}
  cd '/home/developer/15-dicoding-back-end-fundamental/'
  # mkdir '0401-music-app-v0'
  # mkdir '0401-music-app-v0/src'
  # mkdir '0401-music-app-v0/src/api'
  # mkdir '0401-music-app-v0/src/api/notes'
  # mkdir '0401-music-app-v0/src/exceptions'
  # mkdir '0401-music-app-v0/src/services'
  # mkdir '0401-music-app-v0/src/services/inMemory'
  # mkdir '0401-music-app-v0/src/validator'
  # mkdir '0401-music-app-v0/src/validator/notes'

  # cd -- change the working directory
  # cd {{WORKING_DIRECTORY}}
  cd '/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/'

  # ls -- list directory contents
  # ls {{WORKING_DIRECTORY}}
  ls -la

# Step 03 (Optional) Delete node_modules directory and package.json file
  echo "Step 03 (Optional) Delete node_modules directory and package.json file"
  # rm -- remove files or directories
  # rm -r node_modules
  # rm .eslintrc.js
  # rm .eslintrc.json
  # rm package.json
  # rm package-lock.json

# Step 04 Node Package Manager (NPM) initialization
  echo "Step 04 Node Package Manager (NPM) initialization"
  # npm is the package manager for Node.js
  # npm init --y
  npm init

# Step 05 Check created package.json file
  echo "Step 05 Check created package.json file"
  # nano -- Nano's ANOther editor, inspired by Pico
  nano package.json

  : << 'file-package.json'
    {
      "name": "0401-music-app-v0",
      "version": "1.0.0",
      "description": "Module 0215 Belajar Fundamental Aplikasi Back-End -- Hapi Plugin dan Data Validation- Menerapkan Data Validation pada Notes API",
      "main": "index.js",
      "scripts": {
        "start-prod": "NODE_ENV=production node ./src/server.js",
        "start-dev": "nodemon ./src/server.js",
        "lint": "eslint ./src",
        "test": "echo \"Error: no test specified\" && exit 1"
      },
      "keywords": [
        "dicoding"
      ],
      "repository": {
        "type": "git",
        "url": "git+https://github.com/ygautomo/15-dicoding--0401-music-app-v0.git"
      },
      "author": "ygautomo",
      "license": "ISC",
      "dependencies": {
        "@hapi/hapi": "^21.3.2",
        "joi": "^17.9.2",
        "nanoid": "^3.3.6"
      },
      "devDependencies": {
        "eslint": "^8.41.0",
        "eslint-config-airbnb-base": "^15.0.0",
        "eslint-plugin-import": "^2.27.5",
        "nodemon": "^2.0.22"
      }
    }
  file-package.json

# Step 06 Node Package Manager (NPM) hapi installation
  echo "Step 06 Node Package Manager (NPM) hapi installation"
  # Node.js Web Framework, hapi HTTP Server framework
  npm install @hapi/hapi

# Step 07 Node Package Manager (NPM) nodemon installation
  echo "Step 07 Node Package Manager (NPM) nodemon installation"
  # Node.js Tools, Simple monitor script for use during development of a Node.js app
  npm install nodemon --save-dev

# Step 08 Node Package Manager (NPM) ESLint installation
  echo "Step 08 Node Package Manager (NPM) ESLint installation"
  # JavaScript Tools, An AST-based pattern checker for JavaScript
  npm install eslint --save-dev

# Step 09 Execute NPM Package Binaries (NPX) ESLint initialization
  echo "Step 09 Execute NPM Package Binaries (NPX) ESLint initialization"
  # NPM Tools, Execute npm package binaries
  npx eslint --init

  # Option
  # 01. How would you like to use ESLint?
  # - To check syntax only
  # - To check syntax and find problems
  # - To check syntax, find problems and enforce code style [X]
  # 02. What type of modules does your project use?
  # - JavaScript modules (import/export)
  # - CommonJS (require/exports) [X]
  # - None of these
  # 03. Which framework does your project use?
  # - React
  # - Vue.js
  # - None of these [X]
  # 04. Does your project use TypeScript?
  # - Yes
  # - No [X]
  # 05. Where does your code run?
  # - Browser
  # - Node [X]
  # 06. How would you like to define a style for your project?
  # - Use a popular style guide [X]
  # - Answer questions about your style
  # 07. Which style guide do you want to follow?
  # - Airbnb: https://github.com/airbnb/javascript [X]
  # - Standard: https://github.com/standard/strandard
  # - Google: https://github.com/google/eslint-config-google
  # - XO: https://github.com/xojs/eslint-config-xo
  # 08. What format do you want your config file to be in?
  # - JavaScript
  # - YAML
  # - JSON [X]
  # 09. Would you like to install them now?
  # - No
  # - Yes [X]
  # 10. Which package manager do you want to use?
  # - npm [X]
  # - yarn
  # - pnpm

# Step 10 Check created .eslintrc.json file
  echo "Step 10 Check created .eslintrc.json file"
  nano .eslintrc.json

  : << 'file-eslintrc.json'
    {
      "env": {
          "commonjs": true,
          "es2021": true,
          "node": true
      },
      "extends": "airbnb-base",
      "overrides": [
      ],
      "parserOptions": {
          "ecmaVersion": "latest"
      },
      "rules": {
      }
    }
  file-eslintrc.json

# Step 11 Modify package.json file- add lint script
  echo "Step 11 Modify package.json file- add lint script"
  nano package.json
  npm run lint

  : << 'file-package-modified-1.json'
    {
      ...
      "scripts": {
        "start-prod": "NODE_ENV=production node ./src/server.js",
        "start-dev": "nodemon ./src/server.js",
        "lint": "eslint ./src",
        "test": "echo \"Error: no test specified\" && exit 1"
      },
      ...
    }
  file-package-modified-1.json

# Step 12 Node Package Manager (NPM) Nano ID installation
  echo "Step 12 Node Package Manager (NPM) Nano ID installation"
  # JavaScript Tools, A tiny (116 bytes), secure URL-friendly unique string ID generator
  npm install nanoid@3.x.x

# Step 13 Node Package Manager (NPM) joi installation
  echo "Step 13 Node Package Manager (NPM) joi installation"
  # JavaScript Tools, Object schema validation
  npm install joi

# Step 14 Check if node is running and stop the application
  echo "Step 14 Check if node is running and stop the application"
  # pidof -- find the process ID of a running program.
  # kill -- send a signal to a process
  pidof node
  # kill {{PROCESS_ID}}

# Step 15 (Optional) Open server port, check running files and get host ip addresses
  echo "Step 15 (Optional) Open server port, check running files and get host ip addresses"
  # hostname -- show or set the system's host name
  # iptables/ip6tables -- administration tool for IPv4/IPv6 packet filtering and NAT
  # lsof -- list open files
  # ufw -- program for managing a netfilter firewall

  # ----------
  # hostname --all-ip-addresses
  # iptables -I INPUT -p tcp -m tcp --dport 5000 -j ACCEPT
  # iptables -L -v
  # lsof -i :5000
  # ufw allow 5000
  # ufw app list
  # ufw status verbose

# Running Command on Remote VPS Server (Linux)
# cd '/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/'
# bash 0401-project-setup-music-app-v0.sh

# Dot Sourcing Operator .
# chmod a+x 0401-project-setup-music-app-v0.sh
# 0401-project-setup-music-app-v0.sh

# Copy file '.eslintrc.json' from Remote VPS Server (Linux) to Local Computer (Ms. PowerShell)
# pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
#   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/.eslintrc.json `
#   "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\.eslintrc.json"

# Copy file 'package.json' from Remote VPS Server (Linux) to Local Computer (Ms. PowerShell)
# pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
#   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/package.json `
#   "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\package.json"

# Copy file '0401-project-setup-music-app-v0.sh' to Remote VPS Server (Linux) from Local Computer (Ms. PowerShell)
# pscp -i "D:\01 My Document\01 Credentials\rsa-key-development-private.ppk" -P 22 `
#   source "D:\06 Training Course\07 JavaScript\15 Dicoding -- Back-End Developer- Fundamental Back-End\0401-music-app-v0\0401-project-setup-music-app-v0.sh" `
#   root@45.77.252.166:/home/developer/15-dicoding-back-end-fundamental/0401-music-app-v0/

# References:
# - Dicoding, Notes App Front End (http://notesapp-v1.dicodingacademy.com)
# - ESLint, JavaScript Code Analysis Tools (https://eslint.org)
# - ESLint, JavaScript Code Analysis Tools, Airbnb JavaScript Style Guide (https://github.com/airbnb/javascript)
# - ESLint, JavaScript Code Analysis Tools, Google JavaScript Style Guide (https://google.github.io/styleguide/jsguide.html)
# - ESLint, JavaScript Code Analysis Tools, JavaScript Standard Style Guide (https://standardjs.com)
# - hapi, Node.js Web Framework (https://hapi.dev)
# - hapi, Node.js Web Framework, Plugins (https://hapi.dev/plugins)
# - Nano ID, JavaScript Unique String Generatot (https://github.com/ai/nanoid)
# - Node Package Manager (NPM) (https://www.npmjs.com/about)
# - Node Package Manager (NPM), ESLint (https://www.npmjs.com/package/eslint)
# - Node Package Manager (NPM), npx (https://www.npmjs.com/package/npx)
# - Node Package Manager (NPM), hapi (https://www.npmjs.com/package/@hapi/hapi)
# - Node Package Manager (NPM), joi (https://joi.dev)
# - Node Package Manager (NPM), Nano ID (https://www.npmjs.com/package/nanoid)
# - Node Package Manager (NPM), nodemon (https://www.npmjs.com/package/nodemon)
# - Node.js (https://nodejs.org/en)
# - nodemon, Node.js Tools (https://nodemon.io)
# - Smashing Magazine, Blog Article, Taming this In JavaScript With Bind Operator e(https://www.smashingmagazine.com/2018/10/taming-this-javascript-bind-operator)
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
