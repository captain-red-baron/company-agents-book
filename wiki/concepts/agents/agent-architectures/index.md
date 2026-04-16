# Agent Architectures — Anchor Page

How you build an agent determines what it can do. Every agent architecture — from a 1990s software agent to a modern LLM-powered system — must answer the same questions: How does the agent perceive its environment? How does it decide what to do? How does it act? How does it learn? The answers to these questions produce different architectures, but the questions themselves are universal.

---

## The Universal Pattern

Every agent architecture implements some version of the **perception-reasoning-action loop**:

1. **Perceive** — Gather information from the environment
2. **Reason** — Process information, update internal state, decide on action
3. **Act** — Execute the chosen action in the environment
4. **Learn** — Observe the outcome and update future behavior

This loop appears in Russell and Norvig's textbook diagrams, in the BDI deliberation cycle, in every modern LLM agent's tool-calling pattern, and in how a human employee processes a task from their manager. The implementation varies enormously. The structure does not.

---

## Spoke Pages

### [The Perception-Reasoning-Action Loop](perception-reasoning-action-loop.md)
The foundational pattern shared by all agents. How it maps across classical AI, modern LLM systems, and human cognition.

### [Classical Agent Architectures](classical-agent-architectures.md)
Russell and Norvig's five agent types: simple reflex, model-based, goal-based, utility-based, and learning agents. The progression from reactive to deliberative to adaptive.

### [Modern LLM Agent Architectures](modern-llm-agent-architectures.md)
The new patterns enabled by large language models: ReAct, tool-use agents, Anthropic's workflow patterns, LangChain's cognitive architecture spectrum. What changed and what didn't.

### [Multi-Agent Systems](multi-agent-systems.md)
When one agent is not enough. Supervisor architectures, peer-to-peer coordination, the actor model, and the organizational design questions that arise when agents must collaborate.

---

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
