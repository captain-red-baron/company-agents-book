# Agentic Harnesses

The harness is the runtime layer around the LLM. It is what turns a language model from a text generator into an executing agent. When Anthropic engineers talk about "building effective agents," they are mostly talking about harness design. When they announced Managed Agents in 2026, they were offering a hosted harness as a product. Understanding the harness is understanding where the important agentic engineering is actually happening.

## Sections

### Core Idea

An **agentic harness** is the runtime infrastructure that wraps an LLM to make it capable of sustained, tool-using, goal-directed work. It implements the main agent loop (typically Thought → Action → Observation), routes tool calls to real systems, manages the context window, handles authentication and permissions, enforces guardrails, and persists state across turns. The LLM is the brain; the harness is the body, the nervous system, the senses, and the hands. In Anthropic's formulation, "all intelligence lives in the model; the harness just manages turns" — but that harness work is where production agentic systems succeed or fail.

### Details

#### What Lives Inside a Harness

From the industry consensus — Anthropic's Claude Agent SDK, OpenAI's Agents SDK, LangGraph, Microsoft Agent Framework — a modern harness typically contains:

1. **The agent loop** — the Thought-Action-Observation cycle (ReAct). Each turn:
   - Assemble a prompt from instructions + context + conversation history + tool results
   - Call the LLM
   - Parse the output (reasoning traces + tool calls)
   - Execute any requested tool calls
   - Feed results back into the next turn
   - Repeat until the agent signals completion or a stop condition triggers

2. **Tool routing** — the LLM outputs "call the `search_customer` tool with arguments X, Y." The harness translates that into a real function call, executes it, and returns the result.

3. **Context management** — LLMs have finite context windows. Long-running agents require compaction (summarizing earlier turns), retrieval (fetching relevant documents on demand), and memory (persisting state across sessions).

4. **Authentication and permissions** — the agent acts on behalf of some principal. The harness enforces what that principal is allowed to do: which tools, which data, which customers.

5. **Guardrails and safety** — input filters (block malicious prompts), output filters (block unsafe or policy-violating responses), rate limits (prevent runaway loops), cost caps (prevent token-bill explosions).

6. **Session and state persistence** — across a single task, the harness tracks what has happened. Across multiple tasks, it may persist learned context, customer history, or project state.

7. **Observability** — logs of every reasoning step, every tool call, every decision. This is the agentic equivalent of audit trails in classical workflow engines.

The LLM is the reasoning engine. The harness is everything else that makes that reasoning engine usable in production.

#### The Brain vs. Hands Distinction

Anthropic's framing, in their [Managed Agents](https://www.anthropic.com/engineering/managed-agents) post, separates two concerns:

- **What the model can do** — reasoning, planning, writing, deciding
- **What the harness does** — authentication, permissions, rate limiting, compliance, state persistence, tool execution

Their quote: "Models can't handle authentication, permissions, rate limiting, compliance. Harnesses do."

This split matters because it identifies where to invest engineering effort. The model is improving rapidly, largely outside your control. The harness is where *your* engineering work lives. A good harness is one that gives the model everything it needs to do its job and handles everything it cannot reliably do on its own.

Critical insight from Anthropic: "Harnesses encode assumptions about what Claude can't do on its own. However, those assumptions need to be frequently questioned because they can go stale as models improve."

In other words: every time you build a hardcoded workflow step because "the model isn't reliable enough for this," you are betting against model improvement. Six months later, the model may handle it fine — but your harness still has the scaffolding in place, slowing the system down and constraining its flexibility. The best harnesses are the minimal ones.

#### Managed Agents: The Operating System Analogy

Anthropic's 2026 announcement of Managed Agents made an explicit architectural claim: agent runtime is a virtualization problem analogous to operating systems.

> "Building Managed Agents meant solving an old problem in computing: how to design a system for 'programs as yet unthought of.' Decades ago, operating systems solved this problem by virtualizing hardware into abstractions — process, file — general enough for programs that didn't exist yet. The abstractions outlasted the hardware."

They virtualized three components:

1. **Session** — the append-only log of everything that happened in a single agent run. The canonical record.
2. **Harness** — the loop that calls Claude and routes Claude's tool calls to infrastructure.
3. **Sandbox** — the execution environment where Claude can run code and edit files.

Each of these can evolve independently while the interfaces stay stable. If you build your application against these abstractions, you get better models, better harnesses, and better sandboxes for free as the underlying implementations improve.

This is a big deal operationally. The equivalent shift in classical computing was when applications stopped being written to specific hardware and started being written to the operating system. Agentic applications are going through the same transition — from being bound to specific harnesses to being written against stable agent-runtime abstractions.

#### The Harness as the Chapter's Operating Artifact

For the entrepreneur or operator, the harness is the object of design. In classical BPM, you designed processes. In agentic operations, you design harnesses (or, increasingly, you configure managed harnesses). The design decisions are:

- **Which tools does the agent get access to?** (What actions can it take?)
- **What knowledge does the agent have access to?** (What can it look up?)
- **What are the instructions and guardrails?** (What is it trying to do, and what should it never do?)
- **How is the loop terminated?** (When does the agent stop and return a result?)
- **Where is human approval required?** (What escalation triggers exist?)
- **How is the run observed?** (What logs, evaluations, and audits are generated?)

These are the same questions a manager asks when hiring a new employee — just specified differently. The Marco example from the [agents chapter brief](../../../chapters/what-an-agent-is.md): Marco has a territory (tool scope), a pricing sheet (knowledge access), rules of engagement (instructions and guardrails), review checkpoints (termination conditions), escalation paths (approval triggers), and a CRM pipeline (observability). Every human management decision has a harness equivalent.

### Source Links

- [Anthropic — Scaling Managed Agents: Decoupling the Brain from the Hands](https://www.anthropic.com/engineering/managed-agents)
- [Anthropic — Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents)
- [Anthropic — Effective Harnesses for Long-Running Agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents)
- [Claude Managed Agents Overview — Claude API Docs](https://platform.claude.com/docs/en/managed-agents/overview)
- [Parallel Web Systems — What is an Agent Harness?](https://parallel.ai/articles/what-is-an-agent-harness)
- [The Anatomy of an Agent Harness — Avi Chawla](https://blog.dailydoseofds.com/p/the-anatomy-of-an-agent-harness)
- [Epsilla Blog — Decoupling Brain and Hands](https://www.epsilla.com/blogs/anthropic-managed-agents-decoupling-brain-hands-enterprise-orchestration)

### Why It Matters

The harness is where agentic operations become real. It is one thing to talk about agents that "perceive, reason, and act" — it is another thing to have them running in production, handling real customer tickets, closing real deals, writing real code. The gap between those two states is the harness.

For the book's audience, this matters because the harness is the current frontier of operational engineering. The companies that win the agentic era will not be the ones with the best LLMs — those are increasingly a commodity, available to everyone. They will be the ones with the best harnesses: the cleanest abstractions, the sharpest tool design, the tightest evaluation loops, the most thoughtful guardrails. This is where operational skill and strategic advantage will compound.

And the strategic question for the entrepreneur is whether to build the harness yourself, use an off-the-shelf framework (LangGraph, AutoGen, Agents SDK), or rent a managed service (Anthropic's Managed Agents, similar offerings from Google and AWS). The answer depends on how much control you need, how fast you want to move, and how differentiated your operations are. For most businesses, starting with a managed harness is the right default — by the same logic that you use AWS instead of operating your own data center.

### Related Pages

- [Agentic Processes — Hub](index.md)
- [Business Processes 101](business-processes-101.md)
- [Agentic Process Execution](agentic-process-execution.md)
- [Modern LLM Agent Architectures](../agent-architectures/modern-llm-agent-architectures.md)
- [Multi-Agent Systems](../agent-architectures/multi-agent-systems.md)

## Sources

- [raw/research/2026-04-17-agentic-processes-research.md](../../../../raw/research/2026-04-17-agentic-processes-research.md)

## Last Updated

2026-04-17
