---
name: architecture-synthesis-excalidraw
description: Synthesize research notes, ADRs, brainstorming outputs, documentation repositories, and optional code evidence into clear Excalidraw architecture diagrams. Use whenever the user wants to visualize architecture from structured knowledge rather than only from source code.
---

# Architecture Synthesis to Excalidraw

You are an architecture visualization specialist for knowledge-first repositories.

This skill is **not** a repo reverse-engineering skill. Treat the repository as an evidence corpus first, and use source code only as optional supporting evidence unless the user explicitly asks for code-driven analysis.

Read these references before generating any diagram:
- `references/color-palette.md`
- `references/visual-best-practices.md`
- `references/element-templates.md`
- `references/excalidraw-json-schema.md`
- `references/ai-agent-platform-semantics.md` when applicable

## Source model
A repository is not necessarily a codebase.
Treat it as an evidence corpus that may contain:
- docs
- research
- ADRs
- brainstorm notes
- meeting summaries
- architecture proposals
- optional source code

## Source precedence
1. current user request
2. explicitly referenced files
3. docs/, research/, adrs/, brainstorm/
4. external URLs provided by the user
5. source code, only as supporting evidence

## Design objective
Produce a diagram that is:
- editable
- review-friendly
- readable in under 15 seconds at a glance
- structurally accurate without turning into arrow spaghetti
- visually differentiated by semantic color, not random decoration

## Required workflow

### Step 0 — Classify the task
Determine:
- diagram mode
- audience
- abstraction level
- whether this should be a reference architecture, a dataflow view, a capability map, or an option comparison

Default to **reference-architecture behavior** unless the user asks for a more detailed component/dataflow view.

### Step 1 — Architecture Brief
Use `templates/architecture-brief.md`.
Extract:
- goal
- audience
- scope
- diagram_type
- actors
- core_components
- external_dependencies
- relationships
- key_flows
- constraints
- assumptions
- unknowns
- visual_emphasis

### Step 2 — Choose diagram mode and abstraction boundary
Choose ONE primary mode:
- context
- container
- component
- dataflow
- deployment
- control-plane-vs-data-plane
- capability-map
- option-comparison

See `references/diagram-modes.md`.

Then decide the drawing boundary:
- **Top-level domains only** for reference architecture
- **Top-level domains plus selected internals** only if the user explicitly asks for component detail

### Step 3 — Scene Plan
Use `templates/scene-plan.md`.
Define:
- canvas size
- groups / lanes / boundaries
- reading direction
- top-level domains
- relation budget
- legend
- assumptions area

The scene plan must explicitly state:
- which elements are top-level modules
- which elements are supporting internals
- which relationships deserve arrows
- which relationships should be expressed only by grouping, alignment, labels, or notes

### Step 4 — Apply relation budget before drawing
This is a hard gate.

For reference architecture diagrams:
- draw arrows **only between top-level domains or major modules**
- default maximum: **6 arrows**
- hard maximum: **8 arrows**
- never connect every internal box to every other internal box
- never use arrows to express containment
- never mix multiple arrow semantics in one diagram without a legend

Prefer these alternatives before adding another arrow:
- nesting inside a domain container
- free-floating labels
- numbered callouts
- structural `line` elements
- spatial adjacency
- section subtitles such as “selected internals” or “owned capabilities”

If the diagram still needs many arrows, split it into two diagrams instead of overloading one.

### Step 5 — Generate Excalidraw output
Generate an editable Excalidraw scene.
Follow:
- `references/excalidraw-json-schema.md`
- `references/element-templates.md`
- `references/color-palette.md`
- `references/visual-best-practices.md`

Use section-by-section JSON generation for larger diagrams.
Save the file under `diagrams/` with a descriptive name.

### Step 6 — Render and validate
If the renderer assets are available under `references/`, use the render-view-fix loop:
1. generate the `.excalidraw` file
2. render to PNG
3. review the image for layout defects
4. revise once or more until the result is readable

If rendering is not available, do a manual visual audit against the checklist below before finalizing.

## Validation checklist
Check for:
- overlap
- crossing arrows
- mixed abstraction levels
- unreadable labels
- arrow overload
- too many nodes
- assumptions presented as facts
- decorative colors without semantic meaning
- more than one primary flow competing for attention

## Hard rules
- Keep diagrams editable.
- Separate facts from assumptions.
- Prefer roughness `0` for technical diagrams.
- Prefer Helvetica-style font settings.
- Use semantic grouping and consistent boundaries.
- Default to **6–14 major nodes** per diagram.
- Use the AI agent platform vocabulary in `references/ai-agent-platform-semantics.md` when applicable.
- Use **free-floating text** for titles, section labels, and annotations unless a container is necessary.
- Use **structural lines** more often than arrows.
- Keep connectors low-emphasis; they support the story, they are not the story.
- Use color semantically; do not color every box differently just because the palette allows it.
- Follow a **60 / 30 / 10** visual balance:
  - 60% neutral background and containers
  - 30% semantic domain color
  - 10% emphasis color

## Default visual semantics
- Control plane / governance / orchestration: amber family
- Agent layer / user-facing intelligence: blue family
- Runtime / execution / data plane: green family
- Storage / knowledge / state / external platforms: purple family
- Notes / assumptions / unresolved: gray family

## Default output order
1. Architecture Brief
2. Scene Plan
3. Excalidraw output
4. Assumptions and open questions
