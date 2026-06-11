# Diagram Modes

| Mode | Best for | Typical audience |
|------|----------|------------------|
| context | system boundaries and external actors | execs, PMs |
| container | services, databases, queues, caches | architects, tech leads |
| component | internal modules of one service | engineers |
| dataflow | how data moves between components | architects, data eng |
| deployment | runtime topology across environments | infra, SRE |
| control-plane-vs-data-plane | governance vs runtime split | platform architects |
| capability-map | high-level capability inventory | leadership, strategy |
| option-comparison | A/B/C architecture comparison | review committees |

## Selection guidance
- Use context when audience is non-technical or scope is broad.
- Use container when you need to discuss services and tech stack.
- Use component only when scoped to one service.
- Use dataflow when latency, throughput, or sequence matters.
- Use deployment when discussing infra and operability.
- Use control-plane-vs-data-plane for platforms where governance and runtime must be separated visually.
- Use capability-map when the architecture is not yet finalized.
- Use option-comparison when documenting tradeoff decisions.
