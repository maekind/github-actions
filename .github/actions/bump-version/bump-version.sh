#!/bin/bash

set -e
set -x  # Enable debugging

file="$1"

# Check if the file exists, if not create it and add version=0.0.0
if [ ! -f "$file" ]; then
  echo 'version = "0.0.0"' > "$file"
fi

# Read current version
current_version=$(grep 'version =' "$file" | sed -E 's/version = "(.*)"/\1/') || {
  echo "Error: Failed to read the current version from $file" >&2
  exit 1
}

# Split the version into components
IFS='.' read -r major minor patch <<< "$current_version" || {
  echo "Error: Failed to split the version components" >&2
  exit 1
}

# Increment minor version or handle rollover
if (( minor < 999 )); then
  ((minor++))
else
  minor=0
  ((major++))
fi

new_version="$major.$minor.$patch"

# Update the version in the input file
sed -i.bak "s/version = \"$current_version\"/version = \"$new_version\"/" "$file" || {
  echo "Error: Failed to update the version in $file" >&2
  exit 1
}
rm "$file.bak"  # Remove backup file

echo "Bumped version to $new_version 🔼"

# Output the new version
echo "new_version=$new_version" >> $GITHUB_OUTPUT || {
  echo "Error: Failed to output the new version" >&2
  exit 1
}