#!/bin/bash
# Light-touch validation after Claude edits files.
# - Flags excalidraw files saved outside diagrams/

INPUT=$(cat)
FILE=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

if [[ "$FILE" == *.excalidraw && "$FILE" != *"/diagrams/"* ]]; then
  echo "Reminder: store .excalidraw files under diagrams/." 1>&2
fi

exit 0
