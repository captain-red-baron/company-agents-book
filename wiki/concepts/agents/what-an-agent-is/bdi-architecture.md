# The BDI Architecture

The Belief-Desire-Intention (BDI) model is the single most important bridge between human cognition and agent design. It was explicitly derived from a philosophical theory of how humans actually reason and make decisions, then formalized into a computational architecture for software agents. The BDI model says: the way we should build rational artificial agents mirrors the way humans operate. This is not a metaphor — it is a design principle.

## Sections

### Core Idea

The BDI architecture models an agent through three mental attitudes: **Beliefs** (what the agent knows about the world), **Desires** (what the agent wants to achieve), and **Intentions** (what the agent has committed to doing). The agent continuously cycles through perceiving the environment to update beliefs, generating options based on desires, filtering options into committed intentions, and executing plans. This architecture was derived from Michael Bratman's 1987 philosophical theory of human practical reasoning and formalized into a computational model by Anand Rao and Michael Georgeff in 1995.

### Details

#### The Philosophical Foundation — Bratman (1987)

Michael Bratman, a philosopher at Stanford, argued in *Intention, Plans, and Practical Reason* that human practical reasoning cannot be explained by beliefs and desires alone. Intentions, he argued, are an **irreducible** mental attitude with distinct functional properties:

- **Temporal persistence** — once you form an intention, it persists and constrains your future planning. You do not reconsider every decision from scratch at every moment.
- **Means-end reasoning** — intentions drive you to figure out *how* to achieve what you have committed to doing.
- **Consistency constraint** — you attempt to keep your intentions consistent with each other and with your beliefs about the world.
- **Filtering function** — current intentions filter out options that would conflict with existing commitments.

Bratman's key insight is that rational human behavior is not just about having the right beliefs and wanting the right things. It is about *committing* to plans and following through — while remaining open to revising those commitments when the world changes enough to warrant it.

This is exactly how a competent employee operates: they understand the situation (beliefs), know their goals (desires), commit to a plan of action (intentions), and execute — adjusting when circumstances change, but not abandoning every plan at the first obstacle.

#### The Computational Model — Rao & Georgeff (1995)

Anand Rao and Michael Georgeff formalized Bratman's philosophical model into a computational architecture in their paper "BDI Agents: From Theory to Practice" at the First International Conference on Multi-Agent Systems (ICMAS 1995).

The BDI agent loop works as follows:

1. **Perceive** the environment and update **beliefs**
2. **Generate options** — based on current beliefs and existing intentions, determine what new desires are relevant
3. **Filter** — select which desires to commit to as **intentions** (this is the deliberation step)
4. **Execute** — carry out the intended plan
5. **Loop** — return to step 1

The key implementation was the **Procedural Reasoning System (PRS)**, originally developed by Georgeff and Lansky in 1987 at SRI International. PRS-style agents were deployed in real-world systems including air traffic control, space shuttle fault management, and business process management.

#### BDI as a Bridge Between Human and AI Agency

The BDI architecture is the strongest academic evidence that human agents and AI agents share the same fundamental operating structure:

| BDI Component | Human Agent | AI Agent |
|---------------|-------------|----------|
| **Beliefs** | Knowledge, training, experience, context | Model weights, retrieved context, memory |
| **Desires** | Goals from management, personal ambition, KPIs | System prompt objectives, user instructions |
| **Intentions** | Committed plans, current projects, next actions | Selected tool calls, chosen reasoning path |
| **Deliberation** | Judgment, prioritization, weighing trade-offs | LLM inference, planning algorithms |
| **Plan execution** | Work output, communication, decisions | Tool execution, API calls, code generation |

The BDI model was not designed as an analogy. Bratman developed it to describe how humans actually think. Rao and Georgeff then built it into software. The fact that it works in both domains is evidence that the underlying architecture of agency is shared.

#### Relevance to Modern LLM Agents

Modern LLM agents do not typically use formal BDI implementations. But the conceptual structure persists:

- **Beliefs** → the agent's context window, retrieved documents, memory modules (Wang et al.'s "memory module")
- **Desires** → the system prompt, user instructions, and goal descriptions (Wang et al.'s "profile module")
- **Intentions** → the agent's current plan, chosen next step, committed action sequence (Wang et al.'s "planning module")
- **Action** → tool calls, code execution, message generation (Wang et al.'s "action module")

The vocabulary changed. The architecture did not.

### Source Links

- [Bratman, M. (1987). *Intention, Plans, and Practical Reason*. Harvard University Press](https://www.hup.harvard.edu/books/9780674458185)
- [Rao, A. & Georgeff, M. (1995). BDI Agents: From Theory to Practice (PDF)](https://cdn.aaai.org/ICMAS/1995/ICMAS95-042.pdf)
- [BDI Software Model — Wikipedia](https://en.wikipedia.org/wiki/Belief%E2%80%93desire%E2%80%93intention_software_model)
- [Georgeff, M. et al. The Belief-Desire-Intention Model of Agency — Springer](https://link.springer.com/chapter/10.1007/3-540-49057-4_1)

### Why It Matters

The BDI model matters for this book because it collapses the distance between human and AI agents to zero at the architectural level. If you accept Bratman's argument that humans reason through beliefs, desires, and intentions — and this argument is well-established in philosophy of mind — then any agent (human or artificial) that implements the same pattern is operating on the same fundamental architecture.

This has practical implications for company design. When you delegate a task to a human employee, you are implicitly populating their BDI state: giving them context (beliefs), setting goals (desires), and expecting them to form and execute a plan (intentions). When you deploy an AI agent, you are explicitly doing the same thing: providing context, defining objectives, and expecting autonomous execution. The management challenge is the same: how do you ensure the agent's beliefs are accurate, its desires are aligned with yours, and its intentions lead to effective action?

### Related Pages

- [Classical CS Agent Definitions](classical-cs-agent-definitions.md)
- [The Human Agent](human-agent-definition.md)
- [The Perception-Reasoning-Action Loop](../agent-architectures/perception-reasoning-action-loop.md)
- [Principal-Agent Theory and AI](../human-agents-and-ai-agents/principal-agent-theory-and-ai.md)
- [Transferring Work Models](../human-agents-and-ai-agents/transferring-work-models.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
