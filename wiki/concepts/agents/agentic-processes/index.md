# Agentic Processes — Anchor Page

For the last half-century, organizations have been taught to operate through **business processes**: pre-defined sequences of steps, decisions, and hand-offs that turn inputs into outputs. Map the process, optimize it, automate it. This is the operating religion of modern management, from Taylor's scientific management through BPMN diagrams and ERP systems.

Agentic systems invert this pattern. An AI agent does not need the process defined in advance. Give it clear goals, access to knowledge, tools to act with, and a runtime environment to execute in — and it will construct the process as it goes. This is not an incremental improvement to BPM. It is a different way of organizing work.

---

## The Inversion

| Classical Business Process | Agentic Process |
|---------------------------|-----------------|
| Model every step upfront | Define goals and constraints |
| Fixed path through pre-defined steps | Dynamic path chosen at runtime |
| Exceptions must be anticipated | Exceptions handled by reasoning |
| Change requires redesign | Change handled by updating instructions |
| BPMN diagrams as primary artifact | Prompts, tools, and evaluations as primary artifact |
| Process is designed, then executed | Process emerges from execution |

The old model assumed that structure had to come first and intelligence had to be encoded in the structure. The new model puts intelligence inside the agent and lets the structure emerge from what the agent does.

This does not mean structure disappears. It means structure becomes lighter, faster to change, and specified at a higher level of abstraction. Instead of defining 50 process steps, you define a goal, a set of available tools, and a set of guardrails. The agent handles the rest — and leaves a reasoning trace that can be audited after the fact.

---

## Spoke Pages

### [Business Processes 101](business-processes-101.md)
What a business process is, where the concept comes from, and why organizations have spent decades modeling and automating them. The classical BPM lifecycle — design, execute, monitor, optimize — and its limits.

### [Agentic Process Execution](agentic-process-execution.md)
How AI agents construct processes on the fly without requiring them to be pre-defined. The spectrum from rigid workflows to fully autonomous agents. When to use each, and why the design question has shifted from "what are the steps?" to "what are the goals?"

### [Agentic Harnesses](agentic-harnesses.md)
The runtime layer that turns an LLM into an executing agent. The loop, the session, the sandbox. Anthropic's Managed Agents and the operating-system analogy for virtualizing agent infrastructure. Why the harness is where the most important agentic engineering is happening today.

---

## Key Claims

1. **Business processes were a workaround for missing intelligence.** Organizations modeled processes in detail because the workers executing them could not be trusted to figure out the work. The modeling effort was a substitute for judgment.

2. **Agents can carry judgment into the process.** An LLM-powered agent has enough general reasoning capability to handle novel situations, adapt to exceptions, and construct solutions that no one pre-defined. The same capability that makes an agent useful makes detailed process modeling unnecessary.

3. **The new operating artifact is the harness.** Where operations teams once built BPMN diagrams and workflow engines, agentic teams now build harnesses — the runtime environment around the LLM. The harness handles what the model cannot: authentication, permissions, persistence, guardrails.

4. **Harnesses encode assumptions that go stale.** Every capability you build into the harness is a capability you are assuming the model cannot handle on its own. As models improve, those assumptions decay. The best harnesses are the minimal ones — everything the model cannot do reliably, nothing more.

---

## Open Questions

- Where does detailed process modeling still matter, even with capable agents? (Regulated industries, safety-critical systems, audit requirements.)
- How do you evaluate an agentic process when every run may take a different path?
- What is the right balance between structure and autonomy for a given business function?
- How do you build organizational memory when processes are not pre-defined?

---

## Sources

- [raw/research/2026-04-17-agentic-processes-research.md](../../../../raw/research/2026-04-17-agentic-processes-research.md)

## Last Updated

2026-04-17
