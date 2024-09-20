#!/bin/bash

# Find the default branch name
default_branch=$(git symbolic-ref refs/remotes/origin/HEAD | cut -d'/' -f3-)

# Echo the default branch name
echo "Default branch: $default_branch"

# Get today's date in the format YYYYMMDD
today_date=$(date +"%Y%m%d")

# Create a new branch name with the format abc-branch-<followedbytodays-date>
new_branch_name="abc-branch-$today_date"

# Create a new branch from the default branch
git checkout -b "$new_branch_name" "$default_branch"