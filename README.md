# arch-synthesis-excalidraw

> Claude Code plugin marketplace for turning **research notes, ADRs, workshop outputs, and knowledge repositories** into **editable Excalidraw architecture diagrams**.

Designed for teams who have already done the thinking — and are tired of re-explaining it with hand-drawn boxes every sprint.

## Why this exists

Most AI architecture helpers assume your repo is a codebase and try to reverse-engineer structure from source files.

This plugin takes the opposite stance:

- your repo may be a **knowledge repo**, not an application repo
- architecture inputs often live in **docs, ADRs, research notes, brainstorming artifacts, and meeting summaries**
- the right flow is **synthesize first, draw second**

In other words: don't make the model cosplay as a compiler when what you really need is a whiteboard-savvy architect.

## What you get

`arch-synthesis-excalidraw` gives Claude Code a reusable workflow for:

- reading **knowledge-first repositories**
- synthesizing inputs into an **Architecture Brief**
- producing a **Scene Plan** before drawing
- generating **editable Excalidraw-ready output**
- separating **facts, assumptions, and open questions**
- defaulting to **information repos first**, with code as optional supporting evidence

## Best-fit use cases

This plugin works especially well for:

- AI agent platforms
- control-plane vs data-plane architecture reviews
- platform capability maps
- option-comparison diagrams
- architecture decision reviews from ADR collections
- turning workshop notes into diagrams the team can actually debate

## Install from GitHub

Inside any Claude Code session:

```text
/plugin marketplace add lqzmforer/arch-synthesis-excalidraw
/plugin install arch-synthesis-excalidraw@arch-synthesis-excalidraw
```

Then verify the plugin is installed:

```text
/plugin
```

## Local install for development

If you are iterating on the plugin itself:

```text
/plugin marketplace add /absolute/path/to/arch-synthesis-excalidraw
/plugin install arch-synthesis-excalidraw@arch-synthesis-excalidraw
```

## Quick start

### 1) Bootstrap a new knowledge repo

```text
cd /path/to/your/knowledge-repo
claude
/arch-synthesis-excalidraw:init-arch-project
```

This creates a starter project shape including:

- `CLAUDE.md`
- `diagrams/`
- `.arch-input.md`

### 2) Generate your first diagram

```text
/arch-synthesis-excalidraw:arch-whiteboard
```

Then provide any combination of:

- pasted notes
- referenced files like `@docs/platform-overview.md`
- ADRs like `@adrs/0007-eval-loop.md`
- workshop notes under `brainstorm/`
- research under `research/`

## Output model

The workflow always aims to produce output in this order:

1. **Architecture Brief**
2. **Scene Plan**
3. **Editable Excalidraw output** saved into `diagrams/`
4. **Assumptions and open questions**

This keeps the model from jumping straight to pretty nonsense.

## Default behavior

The plugin assumes the repository is an **evidence corpus**, not necessarily a codebase.

Source priority is:

1. current user request
2. explicitly referenced files
3. `docs/`, `research/`, `adrs/`, `brainstorm/`
4. external URLs the user provides
5. source code, only as supporting evidence unless explicitly requested

## Supported diagram modes

The skill is optimized for synthesis-heavy diagram types such as:

- `context`
- `container`
- `component`
- `dataflow`
- `deployment`
- `control-plane-vs-data-plane`
- `capability-map`
- `option-comparison`

For AI platform work, `control-plane-vs-data-plane` is the default favorite for obvious reasons: it stops everything from collapsing into one giant "misc service" rectangle.

## What is inside this repository

```text
.
├── .claude-plugin/
│   └── marketplace.json
├── plugins/
│   └── arch-synthesis-excalidraw/
│       ├── .claude-plugin/plugin.json
│       ├── commands/
│       │   ├── arch-whiteboard.md
│       │   └── init-arch-project.md
│       ├── hooks/
│       │   ├── hooks.json
│       │   ├── block-rm.sh
│       │   └── post-edit-check.sh
│       └── skills/
│           └── architecture-synthesis-excalidraw/
│               ├── SKILL.md
│               ├── references/
│               ├── templates/
│               └── examples/
└── examples/
    └── sample-project/
```

## Included components

### Commands

- **`/arch-synthesis-excalidraw:init-arch-project`**  
  Bootstraps a repo for knowledge-first architecture work.

- **`/arch-synthesis-excalidraw:arch-whiteboard`**  
  Runs the diagramming workflow using repo documents and current chat input.

### Hooks

- **`block-rm.sh`**  
  Blocks destructive `rm` usage.

- **`post-edit-check.sh`**  
  Reminds Claude to keep `.excalidraw` outputs under `diagrams/`.

### Skill assets

- **references/** — visual semantics, diagram modes, Excalidraw schema notes
- **templates/** — architecture brief, scene plan, input packet
- **examples/** — a ready sample for control-plane vs data-plane use cases

## Example workflow

Imagine a repo with:

- `research/agent-observability.md`
- `adrs/0001-control-plane-data-plane-split.md`
- `brainstorm/2026-06-platform-review.md`

You run:

```text
/arch-synthesis-excalidraw:arch-whiteboard
```

Then ask Claude to synthesize those files into a control-plane vs data-plane view.

The plugin is designed to:

- identify the key architecture forces
- separate runtime concerns from governance and optimization
- preserve uncertainty instead of hallucinating certainty
- generate a diagram artifact your team can actually iterate on

## Customization

You can adapt the plugin without changing the core workflow.

Most useful files to edit:

- `plugins/arch-synthesis-excalidraw/skills/architecture-synthesis-excalidraw/references/ai-agent-platform-semantics.md`
- `plugins/arch-synthesis-excalidraw/skills/architecture-synthesis-excalidraw/references/visual-best-practices.md`
- `plugins/arch-synthesis-excalidraw/skills/architecture-synthesis-excalidraw/references/diagram-modes.md`
- `plugins/arch-synthesis-excalidraw/commands/arch-whiteboard.md`

If you change behavior materially, bump the plugin version in:

```text
plugins/arch-synthesis-excalidraw/.claude-plugin/plugin.json
```

## Development notes

This repo includes:

- a plugin marketplace manifest
- the plugin itself
- a sample project
- a GitHub Actions workflow that validates JSON manifests and required files

So yes, it is opinionated. No, it is not trying to be a lifestyle brand.

## License

MIT
