# Excalidraw Visual Best Practices

This plugin is optimized for **reference architecture clarity**, not maximal connector density.

## Core principle
A strong architecture diagram should let a reviewer identify:
- the top-level domains
- the primary flow
- the ownership boundaries
- the unresolved assumptions

within a few seconds.

If the viewer's first reaction is “why are there so many arrows?”, the diagram failed the review.

## Layout
- Align elements on a grid; prefer multiples of 40 or 50.
- Keep consistent spacing between peers.
- Prefer left-to-right or top-to-bottom reading, not both at once.
- Use broad domain containers before adding internal component cards.
- Prefer horizontal or vertical connectors.
- Use elbow connectors only when needed to avoid collisions.
- Avoid diagonal arrows crossing multiple lanes.
- Keep a dedicated notes / assumptions area instead of sprinkling notes everywhere.

## Arrow budget
For most reference architecture diagrams:
- default maximum: **6 arrows**
- hard maximum: **8 arrows**
- arrows should connect **top-level modules only**
- internal components should rarely have arrows unless the user explicitly asked for a component or sequence view

Use arrows only for one of these purposes per diagram:
- primary control flow
- primary data flow
- top-level dependency direction

Do **not** mix all three in one diagram unless the diagram includes a clear legend and truly needs it.

## Prefer structure over connectors
Before drawing another arrow, ask whether the same meaning is already visible from:
- containment inside a colored domain
- vertical layering
- horizontal sequencing
- section titles
- numbered callouts
- structural line dividers
- adjacency of grouped cards

When in doubt:
- use `line` for structure
- use `arrow` only for meaning that really depends on direction

## Containers vs free-floating text
Use containers for:
- domains
- major modules
- focal components
- evidence artifacts

Use free-floating text for:
- section titles
- subtitles
- annotations
- capability lists
- assumptions
- relationship labels that do not need a dedicated card

A title does not need a box just because boxes are available.

## Visual style for technical diagrams
- `roughness: 0`
- `fontFamily: 2` for Excalidraw technical output
- `strokeWidth: 2` for cards and connectors
- `fillStyle: solid`
- card corner radius should be consistent
- keep opacity at `100`
- use low-emphasis connector colors by default

## Semantic color system
Use the palette from `color-palette.md` as the source of truth.

Recommended semantic mapping:
- control plane / governance / orchestration → amber family
- agent layer / interaction / reasoning → blue family
- runtime / workers / execution / data plane → green family
- storage / state / knowledge / external platforms → purple family
- notes / assumptions / unresolved → gray family
- warning / risk / failure path → red family

## Color usage rules
- Color should encode role, not decoration.
- Use lighter fills with darker strokes.
- Avoid rainbow diagrams with one random color per box.
- Reserve the highest-contrast accent color for the single most important path or focal area.
- Keep connector colors more neutral than container colors.
- Aim for a **60 / 30 / 10** balance:
  - 60% neutral and low-intensity background or containers
  - 30% semantic domain color
  - 10% emphasis color

## Typography hierarchy
- diagram title: 24–28 px
- section title: 18–22 px
- card title: 15–18 px
- annotation / metadata: 13–15 px
- avoid text below 14 px for normal cards

Text hierarchy should do as much work as shape hierarchy.

## Abstraction rules
- Do not mix top-level platform domains and deep component internals without a reason.
- A reference architecture should usually stop at the domain / major module level.
- If internal details are important, show only a **selected internals** strip, not every subcomponent.
- If the story requires too many details, split into two diagrams.

## Anti-patterns
- More than 14–18 major nodes in one architecture view.
- Cross-layer diagonal arrows everywhere.
- One card per sentence from the input notes.
- Unlabeled connectors with non-obvious meaning.
- Tiny text or overly narrow boxes.
- Different stroke widths for no semantic reason.
- Multiple emphasis colors competing at once.
- Decorative variation without semantic meaning.

## Review checklist
Before finalizing, verify:
- Can a reviewer identify the top-level domains immediately?
- Is there one obvious primary flow?
- Are connectors limited and readable?
- Are colors semantically consistent?
- Are notes separated from facts?
- Would the diagram still make sense if half the arrows disappeared?

If the answer to the last question is no, the structure is under-designed.
