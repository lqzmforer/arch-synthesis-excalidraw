#!/bin/bash
# Block destructive rm commands at the PreToolUse stage.

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

if echo "$COMMAND" | grep -qE 'rm[[:space:]]+(-[a-zA-Z]*r[a-zA-Z]*[[:space:]]+)?(/|~|\*|\.)'; then
  jq -n '{
    hookSpecificOutput: {
      hookEventName: "PreToolUse",
      permissionDecision: "deny",
      permissionDecisionReason: "Destructive rm command blocked by arch-synthesis-excalidraw plugin."
    }
  }'
  exit 0
fi

exit 0
