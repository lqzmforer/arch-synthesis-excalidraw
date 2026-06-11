---
name: arch-whiteboard
description: Turn research, ADRs, docs, and brainstorming artifacts into an Excalidraw architecture diagram. Default to knowledge-repo evidence, not source code.
---

# Architecture Whiteboard

Trigger the architecture-synthesis-excalidraw skill.

Default behavior:
- Do not assume this repository is a source-code repository.
- Begin from explicit user input and referenced files.
- Then consult docs/, research/, adrs/, brainstorm/.
- Treat source code as optional supporting evidence only.

Required output order:
1. Architecture Brief
2. Scene Plan
3. Excalidraw output
4. Assumptions and open questions

Default diagram mode: control-plane-vs-data-plane unless otherwise specified.
Default output format: editable Excalidraw JSON.
Save the resulting diagram into diagrams/.
