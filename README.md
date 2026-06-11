# arch-synthesis-excalidraw

A Claude Code **plugin marketplace** that ships a single plugin for turning
research notes, ADRs, brainstorming outputs, and documentation repositories
into editable Excalidraw architecture diagrams.

Designed for **knowledge repositories**, not only codebases.

## What's in this repo

```
.
├── .claude-plugin/
│   └── marketplace.json              # Marketplace manifest
├── plugins/
│   └── arch-synthesis-excalidraw/    # The plugin itself
│       ├── .claude-plugin/plugin.json
│       ├── skills/
│       │   └── architecture-synthesis-excalidraw/
│       ├── commands/
│       │   ├── arch-whiteboard.md
│       │   └── init-arch-project.md
│       └── hooks/
│           ├── hooks.json
│           ├── block-rm.sh
│           └── post-edit-check.sh
└── examples/
    └── sample-project/               # A demo knowledge repo you can play with
```

Both the marketplace and the plugin are named `arch-synthesis-excalidraw`,
so once installed you'll reference it simply as
`@arch-synthesis-excalidraw`.

## Install (from GitHub)

In any Claude Code session:

```
/plugin marketplace add <your-username>/arch-synthesis-excalidraw
/plugin install arch-synthesis-excalidraw@arch-synthesis-excalidraw
```

Replace `<your-username>` with your actual GitHub username (or org).

To verify the install:

```
/plugin
```

You should see `arch-synthesis-excalidraw` listed.

## Install (local, for development)

If you're iterating on the plugin locally:

```
/plugin marketplace add /absolute/path/to/arch-synthesis-excalidraw
/plugin install arch-synthesis-excalidraw@arch-synthesis-excalidraw
```

## Usage

### First time in a new knowledge repo

```
cd /path/to/your/knowledge-repo
claude
```

Inside Claude Code:

```
/arch-synthesis-excalidraw:init-arch-project
```

This creates `CLAUDE.md`, `diagrams/`, and a starter `.arch-input.md`.

### Generate a diagram

```
/arch-synthesis-excalidraw:arch-whiteboard
```

Then paste notes, or reference files with `@docs/foo.md`,
`@adrs/0007-eval-loop.md`, etc.

The skill will produce:

1. Architecture Brief
2. Scene Plan
3. Editable Excalidraw output saved into `diagrams/`
4. Assumptions and open questions

## Why a marketplace and not just a skill?

- **Cross-project reuse**: install once, available in every repo.
- **Versioning**: bump `version` in `plugin.json` to ship updates.
- **Team distribution**: teammates run two commands, done.
- **Namespacing**: commands and skills are prefixed with the plugin name,
  so they won't collide with other plugins.

## Customization

The plugin is intentionally opinionated but easy to adjust:

- `plugins/arch-synthesis-excalidraw/skills/architecture-synthesis-excalidraw/references/ai-agent-platform-semantics.md`
  — change to match your platform's vocabulary.
- `references/visual-best-practices.md` — adjust default colors / style.
- `references/diagram-modes.md` — add or remove diagram modes.
- `commands/arch-whiteboard.md` — change the default diagram mode.

After editing, bump the plugin version and reinstall.

## License

MIT
