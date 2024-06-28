#!/bin/bash

# Path to the public key file
KEY_FILE=/keys/public-key.asc

# Check if the key has been imported
if gpg --list-keys | grep -q "your-key-id"; then
    echo "Key already imported. You're ready encrypt data for HealthVerity Safe Harbor Ingestion service!"
else
    if [ -f "$KEY_FILE" ]; then
        echo "Importing GPG key..."
        gpg --import "$KEY_FILE"
        echo "Key imported successfully. You're ready encrypt data for HealthVerity Safe Harbor Ingestion service!"
    else
        echo "Error: Public key file not found in /keys directory. Please add the key file and restart the container."
        exit 1
    fi
fi