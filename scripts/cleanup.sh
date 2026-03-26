#!/bin/bash

# Define the target path to keep the script clean and reusable
TARGET_DIR="/usr/share/tomcat/webapps"
WAR_FILE="nextwork-web-project.war"
EXTRACTED_DIR="nextwork-web-project"

echo "Starting pre-install cleanup..."

# 1. Remove the existing .war file if it exists
if [ -f "$TARGET_DIR/$WAR_FILE" ]; then
    echo "Removing existing WAR file: $TARGET_DIR/$WAR_FILE"
    rm -f "$TARGET_DIR/$WAR_FILE"
fi

# 2. Remove the exploded (unpacked) directory created by Tomcat
if [ -d "$TARGET_DIR/$EXTRACTED_DIR" ]; then
    # FIXED: Added the missing closing quote at the end of the echo line below
    echo "Removing exploded application directory: $TARGET_DIR/$EXTRACTED_DIR"
    rm -rf "$TARGET_DIR/$EXTRACTED_DIR"
fi

echo "Cleanup complete. Ready for installation."
