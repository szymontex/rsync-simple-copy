#!/bin/bash

# Define lock file path
LOCK_FILE="/tmp/rsync_copy.lock"

# Check if rsync is already running
if [ -f "${LOCK_FILE}" ]; then
    echo "rsync is already running. Exiting."
    exit 1
fi

# Create lock file
echo $$ > "${LOCK_FILE}"

# Run rsync
rsync -avzu '/put/your/original/path/' '/put/your/destination/path'

# Remove lock file
rm -f "${LOCK_FILE}"
