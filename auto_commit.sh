#!/bin/bash

# Path to your GitHub repository
REPO_PATH="/path/to/The-Hidden-Wiki-URLs/2024"
# GitHub username
USERNAME="The-Hidden-Wiki-URLs"
# GitHub repository name
REPO_NAME="2024"

cd $REPO_PATH

# Generate a timestamp for the commit message
TIMESTAMP=$(date +"%Y-%m-%d %T")

# Create or update timeline.txt with current timestamp
echo "Timeline update: $TIMESTAMP" >> timeline.txt

# Add the file to staging area
git add timeline.txt

# Commit changes with timestamp
git commit -m "Auto commit: $TIMESTAMP"

# Push changes to GitHub
git push origin master
