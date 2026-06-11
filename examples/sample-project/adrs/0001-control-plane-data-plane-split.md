# ADR-0001: Split control plane from data plane

## Status
Accepted

## Context
The AI agent platform must serve low-latency online inference while also
running optimization loops (prompt tuning, model selection, evaluation).
Mixing these on one plane creates contention and unclear ownership.

## Decision
Separate the platform into two top-level planes:

- **Runtime plane**: agent execution, tool calls, model invocations,
  telemetry emission. Low-latency, horizontally scalable.
- **Control plane**: policy, routing decisions, optimization, evaluation
  orchestration. Asynchronous, batch-friendly.

A governance layer (identity, audit, tenant isolation) cross-cuts both.

## Consequences
- Telemetry flows from runtime to control plane via async channels.
- Model routing decisions are computed in control plane and pushed to
  runtime as configuration.
- Optimization closes the loop by updating routing config based on
  evaluation results.
