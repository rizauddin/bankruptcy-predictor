#!/bin/bash

# Navigate to the project directory (if not already in it)
cd "$(dirname "$0")"

# Check if browser-sync is installed
if ! command -v browser-sync &> /dev/null
then
    echo "browser-sync could not be found. Installing..."
    npm install -g browser-sync
fi

# Start browser-sync with the given configuration
echo "Starting browser-sync..."
browser-sync start --config bs-config.json


