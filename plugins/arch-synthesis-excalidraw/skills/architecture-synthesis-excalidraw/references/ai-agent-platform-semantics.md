# AI Agent Platform Visual Semantics

Use this vocabulary when the system is an AI agent platform.

## Planes
- Runtime plane: agent execution, tool calls, model invocations, telemetry emission
- Control plane: policy, routing, optimization, evaluation orchestration
- Governance plane: identity, audit, multi-tenant isolation, safety

## Core capabilities
- Observability: traces, metrics, logs, evals on live traffic
- Evaluation: offline and online evaluators, datasets, scoring, regression detection
- Optimization: prompt optimization, model selection, hyperparameter search
- Memory / storage: vector store, object store, telemetry store
- Tooling: tool registry, sandboxed execution, MCP-like adapters
- Model gateway: provider routing, key management, failover

## Default color mapping
- yellow: control plane and policy
- green: runtime plane and core services
- purple: storage and external dependencies
- blue: user-facing ingress and client experiences
- gray: assumptions or unresolved items

## Default boundaries
- Tenant boundary
- Trust boundary between runtime and external providers
- Boundary between control and data planes
- Boundary between evaluation environment and production

## Recommended frames for a typical diagram
- outer frame: tenant boundary (gray dashed)
- top inner frame: control plane (yellow)
- bottom inner frame: runtime plane (green)
- right side: storage cluster (purple)
- top edge: external providers (purple)
- closed-loop arrow from evaluation back into model router or prompt optimizer
