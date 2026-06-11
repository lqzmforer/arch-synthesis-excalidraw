# Color Palette & Brand Style

This file is the single source of truth for diagram colors in `arch-synthesis-excalidraw`.

The goal is not to make diagrams colorful. The goal is to make them **readable**.

## Shape colors (semantic)

Use paired fill + stroke values. Always use a darker stroke than fill.

| Semantic Purpose | Fill | Stroke | Typical Usage |
|---|---|---|---|
| Control Plane | `#FEF3C7` | `#B45309` | governance, orchestration, policy, routing |
| Agent Layer | `#DBEAFE` | `#1D4ED8` | agents, copilots, interaction layer, planner, memory-facing logic |
| Runtime / Data Plane | `#DCFCE7` | `#15803D` | workers, execution, tools, runtime services |
| Storage / Knowledge | `#EDE9FE` | `#6D28D9` | vector stores, databases, knowledge bases, event stores |
| External / Integration | `#E2E8F0` | `#475569` | third-party APIs, platforms, external systems |
| Decision / Policy Gate | `#FDE68A` | `#B45309` | policy gate, evaluator, routing decision |
| Warning / Risk | `#FEE2E2` | `#DC2626` | risks, failure paths, unresolved concerns |
| Note / Assumption | `#F3F4F6` | `#6B7280` | assumptions, unresolved notes, TODO areas |
| Highlight / Focus | `#FED7AA` | `#C2410C` | one focal component or primary emphasis |

## Text colors (hierarchy)

| Level | Color | Use For |
|---|---|---|
| Title | `#0F172A` | diagram title |
| Section Title | `#1E293B` | layer or domain titles |
| Subtitle | `#334155` | subheadings or secondary labels |
| Body | `#475569` | card body text and annotations |
| On light fills | `#334155` | text inside most colored shapes |
| On dark fills | `#FFFFFF` | text inside dark artifacts |

## Connector colors

Use quiet connectors by default.

| Connector Type | Color | Rule |
|---|---|---|
| Top-level arrows | `#475569` | default for primary relationships |
| Structural lines | `#94A3B8` | separators, lanes, dividers |
| Highlight path | `#C2410C` | only for the single primary path if needed |
| Warning path | `#DC2626` | use sparingly for failure / exception path |

## Background

| Property | Value |
|---|---|
| Canvas background | `#FFFFFF` |
| Neutral group background | `#F8FAFC` |

## Usage rules

- Prefer semantic consistency over variety.
- Do not use every color in one diagram.
- One diagram should usually use 3–5 semantic families total.
- Keep connectors less saturated than the boxes they connect.
- Use the highlight color on at most one major flow or one focal component.
- Aim for a **60 / 30 / 10** balance:
  - 60% neutral and low-intensity area
  - 30% semantic domain color
  - 10% emphasis color
