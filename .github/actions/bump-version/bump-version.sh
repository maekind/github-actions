#!/bin/bash

set -e

file="$1"

# Check if the file exists, if not create it and add version=0.0.0
if [ ! -f "$file" ]; then
  echo 'version = "0.0.0"' > "$file"
fi

# Read current version
current_version=$(grep 'version =' "$file" | sed -E 's/version = "(.*)"/\1/')

# Split the version into components
IFS='.' read -r major minor patch <<< "$current_version"

# Increment minor version or handle rollover
if (( minor < 999 )); then
  ((minor++))
else
  minor=0
  ((major++))
fi

new_version="$major.$minor.$patch"

# Update the version in the input file
sed -i.bak "s/version = \"$current_version\"/version = \"$new_version\"/" "$file"
rm "$file.bak"  # Remove backup file

echo "Bumped version to $new_version 🔼"

# Output the new version
echo "new_version=$new_version" >> $GITHUB_OUTPUT
