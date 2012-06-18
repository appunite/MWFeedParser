#!/bin/bash
# This script copies the headers from the configuration
# build directory to their legacy location at Build/MWParserLib
# under the project root. This is the include path for Xcode
# 3 projects and Xcode 4 projects not using derived data

IFS=$'\n'
echo ${TARGET_BUILD_DIR}

if [ -d "${TARGET_BUILD_DIR}/include/MWFeedParser" ]; then
    rsync -av --delete "${TARGET_BUILD_DIR}/include/MWFeedParser" "${SOURCE_ROOT}/Build"
else
    echo "Target Build Directory '${TARGET_BUILD_DIR}' do not exist, skipping..."
fi
