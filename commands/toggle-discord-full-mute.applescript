#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title toggle discord full mute
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎧

# Documentation:
# @raycast.description discordを開いてfull muteを切り替えます。

tell application "Discord"
    activate
    tell application "System Events"
        keystroke "d" using {command down, shift down}
        log "toggled full mute"
    end tell
end tell