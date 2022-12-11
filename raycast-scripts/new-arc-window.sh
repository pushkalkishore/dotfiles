#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New Arc window
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description New Arc Browser Window
# @raycast.author Lohit
# @raycast.authorURL https://github.com/lohit244

osascript <<EOD
    tell application "Arc" to make new window
    return
EOD


