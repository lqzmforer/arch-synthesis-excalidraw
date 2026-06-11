# Excalidraw Visual Best Practices

## Layout
- Align elements on a grid; use multiples of 50.
- Keep consistent spacing between related elements.
- Prefer horizontal or vertical arrows.
- Use elbow connectors for complex routing.
- Avoid crossing arrows.

## Visual style for technical diagrams
- roughness: 0
- fontFamily: Helvetica-like (2)
- strokeWidth: 2
- fillStyle: solid
- Use 2–3 accent colors maximum.

## Semantic colors
- blue: user / ingress / client
- green: core services / data plane runtime
- purple: external systems / storage
- yellow: control plane / orchestration / policy
- gray: notes / assumptions / unresolved

## Hierarchy
- Larger nodes = more important.
- Use frames to enclose tiers, domains, or trust boundaries.
- Include a legend if multiple colors or shapes are used.

## Anti-patterns
- More than 20 nodes in one diagram.
- Mixing C2 and C3 in one diagram.
- Unlabeled connectors when semantics are non-obvious.
- Tiny text (< 14px).
- Decorative variation without semantic meaning.

## Recommended defaults
```json
{
  "strokeColor": "#1e1e1e",
  "backgroundColor": "#e9ecef",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "fontFamily": 2,
  "fontSize": 16
}
```

## Highlight style (for emphasized nodes)
```json
{
  "backgroundColor": "#a5d8ff",
  "strokeColor": "#1971c2"
}
```
