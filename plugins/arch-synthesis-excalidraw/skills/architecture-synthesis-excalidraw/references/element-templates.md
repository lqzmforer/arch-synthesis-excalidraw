# Element Templates

These are reusable Excalidraw JSON templates for this plugin.

Always pull actual colors from `color-palette.md`.
Use `line` for structure and `arrow` only for directional meaning that matters.

## Free-floating text
```json
{
  "type": "text",
  "id": "label1",
  "x": 100,
  "y": 100,
  "width": 240,
  "height": 28,
  "text": "Section Title",
  "originalText": "Section Title",
  "fontSize": 20,
  "fontFamily": 2,
  "textAlign": "left",
  "verticalAlign": "top",
  "strokeColor": "<title color from palette>",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 1,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 11111,
  "version": 1,
  "versionNonce": 22222,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": null,
  "link": null,
  "locked": false,
  "containerId": null,
  "lineHeight": 1.25
}
```

## Structural line
```json
{
  "type": "line",
  "id": "line1",
  "x": 100,
  "y": 100,
  "width": 0,
  "height": 200,
  "strokeColor": "<structural line color from palette>",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 44444,
  "version": 1,
  "versionNonce": 55555,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": null,
  "link": null,
  "locked": false,
  "points": [[0, 0], [0, 200]]
}
```

## Domain container
```json
{
  "type": "rectangle",
  "id": "domain1",
  "x": 100,
  "y": 100,
  "width": 420,
  "height": 240,
  "strokeColor": "<domain stroke from palette>",
  "backgroundColor": "<domain fill from palette>",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 12345,
  "version": 1,
  "versionNonce": 67890,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": [],
  "link": null,
  "locked": false,
  "roundness": {"type": 3}
}
```

## Major module card
```json
{
  "type": "rectangle",
  "id": "module1",
  "x": 140,
  "y": 150,
  "width": 220,
  "height": 96,
  "strokeColor": "<module stroke from palette>",
  "backgroundColor": "<module fill from palette>",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 10101,
  "version": 1,
  "versionNonce": 20202,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": [{"id": "module1_text", "type": "text"}],
  "link": null,
  "locked": false,
  "roundness": {"type": 3}
}
```

## Text inside card
```json
{
  "type": "text",
  "id": "module1_text",
  "x": 165,
  "y": 183,
  "width": 170,
  "height": 28,
  "text": "Planner / Orchestrator",
  "originalText": "Planner / Orchestrator",
  "fontSize": 16,
  "fontFamily": 2,
  "textAlign": "center",
  "verticalAlign": "middle",
  "strokeColor": "<text color from palette>",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 1,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 30303,
  "version": 1,
  "versionNonce": 40404,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": null,
  "link": null,
  "locked": false,
  "containerId": "module1",
  "lineHeight": 1.25
}
```

## Top-level arrow
```json
{
  "type": "arrow",
  "id": "top_arrow_1",
  "x": 362,
  "y": 198,
  "width": 180,
  "height": 0,
  "strokeColor": "<top-level arrow color from palette>",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 2,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 50505,
  "version": 1,
  "versionNonce": 60606,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": null,
  "link": null,
  "locked": false,
  "points": [[0, 0], [180, 0]],
  "startBinding": {"elementId": "module1", "focus": 0, "gap": 2},
  "endBinding": {"elementId": "module2", "focus": 0, "gap": 2},
  "startArrowhead": null,
  "endArrowhead": "arrow"
}
```

## Arrow label
```json
{
  "type": "text",
  "id": "top_arrow_1_label",
  "x": 420,
  "y": 172,
  "width": 90,
  "height": 20,
  "text": "control APIs",
  "originalText": "control APIs",
  "fontSize": 14,
  "fontFamily": 2,
  "textAlign": "center",
  "verticalAlign": "middle",
  "strokeColor": "<body text color from palette>",
  "backgroundColor": "transparent",
  "fillStyle": "solid",
  "strokeWidth": 1,
  "strokeStyle": "solid",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 70707,
  "version": 1,
  "versionNonce": 80808,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": null,
  "link": null,
  "locked": false,
  "containerId": null,
  "lineHeight": 1.25
}
```

## Assumption / note card
```json
{
  "type": "rectangle",
  "id": "note1",
  "x": 100,
  "y": 380,
  "width": 300,
  "height": 88,
  "strokeColor": "<note stroke from palette>",
  "backgroundColor": "<note fill from palette>",
  "fillStyle": "solid",
  "strokeWidth": 1,
  "strokeStyle": "dashed",
  "roughness": 0,
  "opacity": 100,
  "angle": 0,
  "seed": 90909,
  "version": 1,
  "versionNonce": 10101,
  "isDeleted": false,
  "groupIds": [],
  "boundElements": [],
  "link": null,
  "locked": false,
  "roundness": {"type": 3}
}
```

## Usage notes
- Keep titles and section labels free-floating whenever possible.
- Use domain containers and major module cards sparingly.
- Use top-level arrows only where direction materially matters.
- If you feel tempted to draw arrow number 9, the diagram wants a sequel, not another connector.
