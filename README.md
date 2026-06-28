# Git Project Dashboard

A simple Bash script that scans a directory containing Git repositories and displays useful information about each repository.

## Features

* Detects Git repositories automatically.
* Displays the repository name.
* Shows the current branch.
* Checks whether the repository is clean or has uncommitted changes.
* Displays the latest commit message.

## Requirements

* Linux / WSL
* Git
* Bash

## Usage

Make the script executable:

```bash
chmod +x git_dashboard.sh
```

Run the script:

```bash
./git_dashboard.sh
```

When prompted, enter the path to the directory containing your Git repositories.

Example:

```text
/home/username/projects
```

## Example Output

```text
repository: calculator
branch: main
status: clean
last commit: Update README

repository: git-practice
branch: main
status: modified
last commit: Add shell script
```

## Technologies Used

* Bash
* Git
* Linux (WSL)

## Author

Houssam LOTFI
