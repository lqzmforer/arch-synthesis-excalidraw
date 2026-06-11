# Brainstorm: Platform Review (2026-06)

## Capabilities to highlight
- Observability (mandatory for every agent run)
- Evaluation (offline regression + online sampling)
- Optimization (prompt + model + hyperparameter)
- Model gateway (provider routing, failover, key management)
- Tool registry (sandboxed execution, MCP-like adapters)
- Memory: vector store + object store + telemetry store

## Pain points raised
- Eval store and observability store are currently coupled. Should split?
- Multi-tenant isolation is workspace-level, not yet row-level.
- Cost attribution is unclear for shared model gateway.

## Visual asks
- Show the closed-loop optimization clearly.
- Make tenant boundary visible.
- Distinguish external LLM providers from internal services.
