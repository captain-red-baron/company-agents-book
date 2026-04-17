# Agentic Processes Research — 2026-04-17

## Purpose

Research to support the new wiki section on **Agentic Processes** — the bridge between classical business process management and the emerging world of AI-driven dynamic process execution.

---

## Business Process Management (BPM) Background

### Definition

Business Process Management (BPM) is a disciplined approach to identify, design, execute, document, measure, monitor, and control both automated and non-automated business processes to achieve consistent, targeted results aligned with an organization's strategic goals.

Gartner definition: "The discipline of managing processes (rather than tasks) as the means for improving business performance outcomes and operational agility."

### Historical Roots

- **Frederick Winslow Taylor (1911)** — scientific management, the beginning of systematic process thinking
- **W. Edwards Deming (1950s-80s)** — continuous improvement, PDCA cycle, statistical process control
- **Michael Hammer (1990)** — *Reengineering the Corporation*, radical process redesign
- **BPMN 2.0 (2011)** — standardized graphical notation for modeling processes
- **ERP era (1990s-2000s)** — processes encoded in enterprise software (SAP, Oracle)

### Classical BPM Lifecycle

1. **Design** — model the process (BPMN diagrams, swim lanes, decision nodes)
2. **Execute** — run the process through people, software, and systems
3. **Monitor** — track KPIs, completion times, error rates
4. **Optimize** — refine the process based on performance data

### Sources

- [BPMInstitute.org — What is BPM?](https://www.bpminstitute.org/resources/articles/what-bpm-anyway-business-process-management-explained/)
- [IBM — What is Business Process Management?](https://www.ibm.com/think/topics/business-process-management)
- [Business Process Management — Wikipedia](https://en.wikipedia.org/wiki/Business_process_management)

---

## The Shift to Agentic Processes

### Core Idea

Traditional BPM requires processes to be pre-defined: every step, every decision, every exception path must be mapped before execution begins. Agentic processes invert this: the agent figures out the process as it executes, reasoning about goals, observing context, and dynamically choosing actions.

### Key Contrasts

| Dimension | Traditional BPM | Agentic Processes |
|-----------|----------------|-------------------|
| **Design** | Model every step upfront (BPMN) | Define goals and constraints; let the agent plan |
| **Execution** | Fixed path through pre-defined steps | Dynamic path chosen at runtime |
| **Exceptions** | Must be anticipated and modeled | Handled by reasoning |
| **Change** | Requires redesign and redeployment | Handled by updating instructions or data |
| **Flexibility** | Low — deviations break the process | High — the agent adapts to novelty |
| **Auditability** | Known paths are auditable | Reasoning traces provide runtime audit |

### Academic Framing (2025)

"Agentic AI introduces new dynamics—autonomy, adaptability, and self-learning—that challenge traditional BPM principles centered on structure, control, and standardization." — from [Agentic Business Process Management (arXiv 2504.03693)](https://arxiv.org/pdf/2504.03693)

### Anthropic's Framing

From [Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents):

- **Workflows**: "Systems where LLMs and tools are orchestrated through predefined code paths."
- **Agents**: "Systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks."

The same post gives a spectrum of patterns: prompt chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer, autonomous agent. Each represents a different balance between pre-defined structure and runtime dynamism.

### Sources

- [Agentic Business Process Management — arXiv (2025)](https://arxiv.org/pdf/2504.03693)
- [Agentic BPMS: Autonomous Business Processes — Emergent Mind](https://www.emergentmind.com/topics/agentic-business-process-management-systems-a-bpms)
- [Towards Modeling Human-Agentic Collaborative Workflows — arXiv](https://arxiv.org/html/2412.05958v1)
- [IBM — What are Agentic Workflows?](https://www.ibm.com/think/topics/agentic-workflows)
- [Anthropic — Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents)

---

## Agentic Harnesses

### Definition

An **agentic harness** is the runtime environment around an LLM that turns it from a text generator into an executing agent. The harness implements the loop, routes tool calls, manages context, handles authentication and guardrails, and persists state. The LLM is the brain. The harness is the body.

### Components

From the industry consensus (Anthropic, Epsilla, Parallel, Harness Dev Hub):

1. **The Loop** — typically the Thought-Action-Observation (TAO) cycle, a.k.a. ReAct:
   - Assemble prompt (instructions + context + history)
   - Call the LLM
   - Parse output (reasoning + tool calls)
   - Execute any tool calls
   - Feed results back
   - Repeat until done
2. **Tool Routing** — connecting the LLM's tool calls to actual implementations
3. **Context Management** — compaction, retrieval, memory handling so the agent doesn't run out of context window
4. **Authentication and Permissions** — who the agent is acting as, what it can access
5. **Guardrails and Safety** — input/output filters, policy checks, rate limits
6. **State and Session Persistence** — maintaining continuity across turns

### The Anthropic Framing: Brain vs. Hands

Anthropic describes their runtime as "a dumb loop where all intelligence lives in the model. The harness just manages turns." The harness handles what the model cannot reliably handle on its own: authentication, permissions, rate limiting, compliance, state persistence.

Key insight from Anthropic: "Harnesses encode assumptions about what Claude can't do on its own. However, those assumptions need to be frequently questioned because they can go stale as models improve."

### Managed Agents — The Operating System Analogy

Anthropic's Managed Agents (2026) treats the agent runtime as a virtualization problem analogous to operating systems:

> "Building Managed Agents meant solving an old problem in computing: how to design a system for 'programs as yet unthought of.' Decades ago, operating systems solved this problem by virtualizing hardware into abstractions — process, file — general enough for programs that didn't exist yet. The abstractions outlasted the hardware."

Anthropic virtualized three components:
1. **Session** — the append-only log of everything that happened in an agent run
2. **Harness** — the loop that calls Claude and routes Claude's tool calls to infrastructure
3. **Sandbox** — the execution environment where Claude can run code and edit files

Each can evolve independently. The interfaces stay stable while implementations change.

### Sources

- [Anthropic — Scaling Managed Agents](https://www.anthropic.com/engineering/managed-agents)
- [Anthropic — Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents)
- [Anthropic — Effective Harnesses for Long-Running Agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents)
- [Parallel Web Systems — What is an Agent Harness?](https://parallel.ai/articles/what-is-an-agent-harness)
- [The Anatomy of an Agent Harness — Avi Chawla](https://blog.dailydoseofds.com/p/the-anatomy-of-an-agent-harness)
- [Epsilla Blog — Decoupling Brain and Hands](https://www.epsilla.com/blogs/anthropic-managed-agents-decoupling-brain-hands-enterprise-orchestration)
- [Claude Managed Agents Overview — Claude API Docs](https://platform.claude.com/docs/en/managed-agents/overview)

---

## Why This Matters for the Book

The agentic processes story is the operational payoff of the book's thesis. If one human can coordinate many agents, the question becomes: how do those agents execute the work? The answer is that they do not need explicit processes defined in advance. They need:

1. **Clear goals** (instructions/principal delegation)
2. **Access to knowledge** (what they can look up)
3. **Access to tools** (what they can do)
4. **A harness** (the runtime that lets them loop, observe, and adapt)

With these four things, the agent can construct the process on the fly. This is the inversion of the last 50 years of BPM: instead of modeling the process and then running it, you give the agent goals and let it find the process. This unlocks enormous operational leverage — and creates new management challenges around trust, oversight, and accountability.
