#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title toggle discord mic
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎤

# Documentation:
# @raycast.description discordを開いてマイクをミュート/アンミュートします。

tell application "Discord"
    activate
    tell application "System Events"
        keystroke "m" using {command down, shift down}
        log "toggled mic"
    end tell
end tell