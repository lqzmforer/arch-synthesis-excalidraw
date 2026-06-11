# Changelog

All notable changes to this plugin will be documented in this file.

## [0.2.0] - 2026-06-11

### Added
- Added `references/color-palette.md` as the single source of truth for semantic diagram colors.
- Added `references/element-templates.md` for reusable Excalidraw element patterns.
- Added optional renderer assets under `references/`:
  - `render_excalidraw.py`
  - `render_template.html`
  - `pyproject.toml`
- Added README credits and documentation for the new visual design model.

### Changed
- Tightened the skill to default to **top-level module arrows only** for reference architecture diagrams.
- Introduced an explicit arrow budget: 6 by default, 8 hard maximum.
- Shifted visual guidance from simple accent colors to a semantic color system with fill/stroke pairs.
- Updated `arch-whiteboard` to prefer grouping, alignment, structural lines, and labels over extra connectors.
- Updated the plugin description to emphasize clarity, semantic palette usage, and render-validate review.

### Notes
- This version selectively adopts visual-system ideas inspired by `coleam00/excalidraw-diagram-skill` while retaining the knowledge-repo-first synthesis workflow.

## [0.1.0] - 2026-06-11

### Added
- Initial release of `arch-synthesis-excalidraw` plugin.
- Skill: `architecture-synthesis-excalidraw` with brief → scene-plan → excalidraw pipeline.
- Commands: `arch-whiteboard`, `init-arch-project`.
- Hooks: `block-rm.sh` (PreToolUse), `post-edit-check.sh` (PostToolUse).
- References: excalidraw JSON schema, visual best practices, diagram modes, AI agent platform semantics.
- Templates: architecture-brief, scene-plan, input-packet.
- Example: control-plane-vs-data-plane sample.
