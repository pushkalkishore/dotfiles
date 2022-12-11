#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Another Safari
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description New Safari Window
# @raycast.author Lohit
# @raycast.authorURL https://github.com/lohit244

osascript <<EOD
    tell application "Safari" to make new document
    return
EOD


