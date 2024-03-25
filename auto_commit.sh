#!/bin/bash

# Configure Git
git config --global user.email "thehiddenwiki2024@proton.me"
git config --global user.name "The-Hidden-Wiki-URLs"

# Navigate to the directory where the script is located
cd "$(dirname "$0")"

# Generate a timestamp for the commit message
TIMESTAMP=$(date +"%Y-%m-%d %T")

# Check if timeline.txt exists
if [ -f "timeline.txt" ]; then
    # Update timeline.txt with current timestamp
    echo "Timeline update: $TIMESTAMP" >> timeline.txt

    # Add the file to staging area
    git add timeline.txt

    # Commit changes with timestamp
    git commit -m "Auto commit: $TIMESTAMP"

    # Push changes to GitHub
    git push origin master
else
    echo "Error: timeline.txt not found."
fi
