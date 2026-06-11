# Example: Control Plane vs Data Plane (AI Agent Platform)

This example illustrates how the skill turns mixed inputs into a clear
control-plane-vs-data-plane diagram for an AI agent platform.

## Inputs (synthesized)
- Online inference must remain low-latency.
- Evaluation runs asynchronously.
- Prompt optimization and model routing belong to control logic.
- Observability is mandatory across all agent runs and tool calls.
- Multi-tenant isolation by workspace.
- External LLM providers, vector store, object storage, policy engine.

## Architecture Brief (excerpt)
- Goal: align review committee on plane separation
- Audience: platform architects
- Scope: agent runtime + governance + optimization loops
- Diagram type: control-plane-vs-data-plane
- Visual emphasis: closed-loop optimization between evaluation and routing

## Scene Plan (excerpt)
- Two top-level frames: Control Plane (yellow), Runtime Plane (green)
- Storage cluster on the right (purple)
- External providers along the top edge (purple)
- Tenant boundary as outer frame (gray dashed)
- Closed-loop arrow from Evaluation back into Model Router

## Output
diagrams/sample-control-plane-vs-data-plane.excalidraw
