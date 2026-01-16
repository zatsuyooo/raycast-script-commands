#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title add worktree
# @raycast.mode silent

# @raycast.argument1 { "type": "text", "placeholder": "feature/auth"}
# @raycast.icon 🤖

# Documentation:
# @raycast.description wtpコマンドを使って指定されたブランチのワークツリーを追加します。

# cd {workspace_path}

# 引数に濁点付きの日本語があると変になるので正規化
branch_name="$(iconv -f utf-8 -t utf-8-mac | iconv -f utf-8-mac -t utf-8 <<< $1)"

wtp add $branch_name
wtp cd $branch_name | xargs code
