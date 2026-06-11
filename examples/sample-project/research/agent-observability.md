# Research: AI Agent Observability

## Findings
- Traces must capture every model call, tool call, and agent step.
- Latency budget for online inference: P95 < 800ms end-to-end.
- Evaluation runs both online (sampling) and offline (regression suites).
- Telemetry volume estimated at ~5TB/month at target scale.

## Open questions
- Should observability storage be unified with evaluation storage?
- Trace sampling rate during peak load?

## Implications
- Telemetry collection must be non-blocking on the runtime path.
- Evaluation should not contend with runtime resources.
