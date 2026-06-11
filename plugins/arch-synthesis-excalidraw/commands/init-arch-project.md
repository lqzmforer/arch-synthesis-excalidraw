---
name: init-arch-project
description: Initialize a knowledge-repo-friendly architecture project. Creates CLAUDE.md, diagrams/ directory, and a starter input packet. Use this after installing the arch-synthesis-excalidraw plugin in a fresh repo.
---

# Initialize Architecture Project

Bootstrap the current working directory for use with the architecture-synthesis-excalidraw skill.

## Behavior
1. Inspect the current working directory.
2. Create the following structure if missing:
   - CLAUDE.md (knowledge-repo working rules)
   - diagrams/ (output folder, with .gitkeep)
   - docs/ (optional placeholder)
   - research/ (optional placeholder)
   - adrs/ (optional placeholder)
   - brainstorm/ (optional placeholder)
   - .arch-input.md (a starter input packet)
3. Do NOT overwrite existing files. Skip any file that already exists and report which ones were skipped.
4. After creation, print:
   - files created
   - files skipped
   - next steps: "Use /arch-synthesis-excalidraw:arch-whiteboard to start a session."

## File contents

### CLAUDE.md
```
# Project Working Rules

This repository is primarily a knowledge repository.
It may contain documentation, ADRs, research notes, brainstorming outputs, architecture proposals, and optional source code.

## Primary corpus
Use these directories as the primary evidence source:
- docs/
- research/
- adrs/
- brainstorm/
- diagrams/

## Source precedence
1. current user request
2. explicitly referenced files (@path/to/file)
3. docs/, research/, adrs/, brainstorm/
4. external URLs the user provides
5. source code, only as supporting evidence

## Default behavior
- Do not assume this repository is a codebase.
- Treat architecture notes and ADRs as authoritative inputs.
- When information conflicts across documents, surface the conflict explicitly.
- Separate facts, assumptions, and open questions in every architectural answer.

## Diagram workflow
- For Excalidraw architecture work, first build an Architecture Brief.
- Then build a Scene Plan.
- Then generate editable Excalidraw output.
- Save generated diagrams to diagrams/.

## Output preferences
- Respond in zh-CN unless the user switches language.
- Be concise, answer-first, then expand.
- Avoid filler. Avoid restating the question.

## Safety
- Never run rm -rf.
- Never push to remote without explicit instruction.
- Confirm destructive operations.
```

### .arch-input.md
```
# Architecture Input Packet

## Goal


## Audience


## Scope


## Inputs
Paste notes, ADR snippets, research findings, or workshop outcomes here.

## Core building blocks


## Relationships


## Constraints


## Unknowns


## Preferred diagram mode


## Visual emphasis
```
