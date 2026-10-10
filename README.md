# Simple Antivirus Daemon 

Simple Antivirus Daemon is a simple antivirus script that scans all files in a directory for malicious keywords and malicious extensions then isolates them in a separate malicious directory. It repeats this process each interval of time and scans only when a change happens in the directory. There is also the restore tool which can either restore false positive files back to the directory or permanently deletes the file from malicious directory.

## Table of Contents

- [Hierarchy](#hierarchy)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)

## Features

- malicious_words (virus trojan malware ransomware worm) are found in an array at the top of the code
- extensions (exe bat vbs scr ps1) are found in an array bellow malicious_words

## Hierarchy

├── Makefile                
├── README.md                
├── antivirusd.sh           
├── restore.sh                    
├── dir/                     
│   └── Whitelist/           
├── malicious_dir/           
├── directory_info.last      
└── directory_info.new      

### Tech Stack

- **Bash**

## Installation

```bash
sudo apt update
sudo apt install make
```

## Usage

```bash
make antivirusd 
```

```bash
make restore
```

To run the antivirusd tool, only run the first command
To run the restore tool, only run the second command
If you want to change the parameters of both script, you can just change them in the makefile by changing the paramaters after the name of the script.

---

Made with ❤ by [FaresFouad](https://github.com/FaresFouad)