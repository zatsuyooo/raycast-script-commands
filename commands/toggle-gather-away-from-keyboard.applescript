#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Gather Away From Keyboard
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎤

# Documentation:
# @raycast.description Gatherを開いて離席中にするかどうかを切り替えます。

tell application "Gather"
    activate
    tell application "System Events"
        keystroke "u" using {command down}
        log "toggled Away From Keyboard"
    end tell
end tell