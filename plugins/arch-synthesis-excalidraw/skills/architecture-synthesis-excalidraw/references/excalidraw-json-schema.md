# Excalidraw JSON Schema (essentials)

A valid .excalidraw file is plaintext JSON with this top-level shape:

```json
{
  "type": "excalidraw",
  "version": 2,
  "source": "https://excalidraw.com",
  "elements": [],
  "appState": {
    "gridSize": 20,
    "viewBackgroundColor": "#ffffff"
  },
  "files": {}
}
```

## Common element types
- rectangle
- ellipse
- diamond
- text
- arrow
- line
- frame (for boundaries)

## Important conventions
- Use unique string IDs for each element.
- Bind arrows to shapes via startBinding and endBinding.
- Use groupIds to keep related elements together.
- Use frames for trust boundaries, tiers, and domains.
- Provide labels as separate text elements bound to arrows when needed.

## Minimal rectangle element example
```json
{
  "id": "node-1",
  "type": "rectangle",
  "x": 100,
  "y": 100,
  "width": 160,
  "height": 80,
  "strokeColor": "#1e1e1e",
  "backgroundColor": "#e9ecef",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "roughness": 0,
  "groupIds": [],
  "boundElements": []
}
```

## Minimal arrow element example
```json
{
  "id": "edge-1",
  "type": "arrow",
  "x": 260,
  "y": 140,
  "width": 200,
  "height": 0,
  "points": [[0, 0], [200, 0]],
  "startBinding": { "elementId": "node-1", "focus": 0, "gap": 5 },
  "endBinding": { "elementId": "node-2", "focus": 0, "gap": 5 },
  "strokeColor": "#1e1e1e",
  "strokeWidth": 2,
  "roughness": 0
}
```
