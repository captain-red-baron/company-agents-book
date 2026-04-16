# Multi-Agent Systems

When one agent is not enough, you need coordination between multiple agents. This is not a new problem — it is the fundamental challenge of organizational design. Companies have been coordinating multiple human agents for centuries, using hierarchies, teams, processes, and communication protocols. Multi-agent AI systems face the same design choices and the same trade-offs: centralized vs. decentralized control, specialization vs. generalization, tight coupling vs. loose coordination. The patterns look familiar because they are.

## Sections

### Core Idea

Multi-agent systems (MAS) involve multiple agents interacting to accomplish tasks that exceed the capability of a single agent. Three primary coordination patterns have emerged: **supervisor/orchestrator** (one agent delegates and assembles), **hierarchical** (multiple levels of supervision), and **swarm/peer-to-peer** (no centralized control, coordination emerges from local rules). These patterns map directly onto organizational structures: a manager directing a team, a divisional hierarchy, and a self-organizing agile squad. The choice between them depends on the same factors in both domains: task complexity, need for consistency, speed requirements, and trust in individual agent capability.

### Details

#### The Three Primary Patterns

**1. Supervisor / Orchestrator**

A single orchestrator agent receives a task, breaks it down, delegates sub-tasks to specialized worker agents, collects results, and assembles the final output.

Architecture:
```
         ┌──────────────┐
         │ Orchestrator  │
         └──┬───┬───┬───┘
            │   │   │
            ▼   ▼   ▼
         ┌──┐ ┌──┐ ┌──┐
         │W1│ │W2│ │W3│
         └──┘ └──┘ └──┘
```

**Strengths:** Clear accountability, consistent output, easy to monitor and debug.
**Weaknesses:** Single point of failure, bottleneck at the orchestrator, limited scalability.

**Human parallel:** A project manager who receives a brief from a client, breaks it into work packages, assigns them to team members, collects deliverables, and assembles the final product. This is the most common organizational pattern.

**AI implementations:** Anthropic's orchestrator-workers pattern, AWS Bedrock's supervisor-based multi-agent architecture, OpenAI's multi-agent handoff pattern.

**2. Hierarchical**

Multiple levels of supervision — orchestrators managing other orchestrators. Strategic decisions at the top, tactical decisions distributed to lower levels.

Architecture:
```
              ┌────────────────┐
              │ Strategic Agent │
              └───┬────────┬───┘
                  │        │
          ┌───────┴──┐ ┌──┴───────┐
          │ Tactical1 │ │ Tactical2 │
          └──┬───┬───┘ └──┬───┬───┘
             │   │        │   │
             ▼   ▼        ▼   ▼
            W1  W2       W3  W4
```

**Strengths:** Scales to complex tasks, distributes cognitive load, enables specialization at each level.
**Weaknesses:** Communication overhead, coordination complexity, slower response time.

**Human parallel:** A divisional corporate structure. The CEO sets strategy, VPs manage functions, directors manage teams, team leads manage individual contributors. Alfred Chandler's argument that "management is a productive technology" applies here — the hierarchical structure itself creates value through coordination.

**AI implementations:** Microsoft Agent Framework's hierarchical patterns, multi-level LangGraph workflows.

**3. Swarm / Peer-to-Peer**

No centralized control. Agents operate as autonomous peers making local decisions based on shared state. Coordination emerges from simple local rules rather than top-down direction.

Architecture:
```
         ┌──┐ ←→ ┌──┐
         │A1│     │A2│
         └──┘ ←→ └──┘
           ↕       ↕
         ┌──┐ ←→ ┌──┐
         │A3│     │A4│
         └──┘     └──┘
```

**Strengths:** Resilient (no single point of failure), adaptive, scales horizontally.
**Weaknesses:** Hard to predict emergent behavior, difficult to debug, may produce inconsistent outputs.

**Human parallel:** A self-organizing agile team, an open-source project, or a market where independent actors coordinate through price signals. Also: ant colonies, bird flocks — coordination without central control.

**AI implementations:** OpenAI's Swarm framework (experimental), decentralized multi-agent research systems.

#### The Organizational Design Connection

The choice between these patterns depends on the same factors in both human and AI multi-agent systems:

| Factor | Supervisor | Hierarchical | Swarm |
|--------|-----------|-------------|-------|
| **Task structure** | Well-decomposable | Complex, multi-level | Emergent, exploration |
| **Need for consistency** | High | Moderate | Low |
| **Speed** | Moderate (bottleneck at supervisor) | Slower (communication overhead) | Fast (parallel) |
| **Trust in individual agents** | Low-moderate | Moderate | High |
| **Debugging difficulty** | Low | Moderate | High |
| **Scalability** | Limited | Good | Excellent |

Companies have been making these trade-offs with human teams for decades. The same frameworks that inform organizational design — span of control, specialization, coordination costs — apply directly to multi-agent AI system design.

#### Communication and Coordination

Multi-agent systems require communication protocols. In human organizations, these are meetings, email, shared documents, and reporting structures. In AI multi-agent systems, they are message passing, shared state, and structured outputs.

Emerging standards:
- **Agent2Agent (A2A)** — Google's open standard for inter-agent communication (2025)
- **Model Context Protocol (MCP)** — Anthropic's standard for agent-tool interaction (2024)
- **Microsoft Actor Model** — event-driven message passing between agents (AutoGen v0.4)

The convergence toward standardized communication protocols mirrors the historical development of organizational communication: from ad hoc to structured to standardized.

### Source Links

- [Microsoft AutoGen — Multi-Agent Conversation](https://microsoft.github.io/autogen/stable/index.html)
- [Amazon Bedrock Multi-Agent Orchestration](https://aws.amazon.com/bedrock/)
- [LangGraph: Multi-Agent Systems](https://www.langchain.com/langgraph)
- [Multi-Agent Architecture Guide (2025)](https://collabnix.com/multi-agent-and-multi-llm-architecture-complete-guide-for-2025/)
- [Google: Agent2Agent Protocol](https://blog.google/technology/google-deepmind/google-gemini-ai-update-december-2024/)

### Why It Matters

Multi-agent systems are where AI agent design meets organizational design most directly. Every multi-agent pattern — supervisor, hierarchy, swarm — has a direct human organizational equivalent. The design trade-offs are the same: centralization vs. decentralization, consistency vs. speed, control vs. adaptability.

This is the strongest practical argument for the book's thesis. If you already know how to design human organizations — if you understand span of control, specialization, coordination costs, reporting structures, and communication protocols — then you already have most of the knowledge needed to design multi-agent AI systems. The concepts transfer. The vocabulary needs translation. The underlying problems are identical.

### Related Pages

- [Modern LLM Agent Architectures](modern-llm-agent-architectures.md)
- [Classical Agent Architectures](classical-agent-architectures.md)
- [The Perception-Reasoning-Action Loop](perception-reasoning-action-loop.md)
- [Transferring Work Models](../human-agents-and-ai-agents/transferring-work-models.md)
- [Company as a Coordination System](../../company/what-a-company-does/company-as-a-coordination-system.md)
- [Structure, Roles, and Spans of Control](../../company/how-a-company-is-built/structure-roles-and-spans-of-control.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
