# Agent Definitions Research — 2026-04-16

## Purpose

Research into how agents are defined across computer science, AI industry, and business/legal contexts. The goal is to build a foundation for a chapter that argues human agents and AI agents are not that different, and that there is a major opportunity to transfer but adjust management and work models between them.

---

## Classical Computer Science Definitions

### Russell & Norvig — Artificial Intelligence: A Modern Approach (1995, 4th ed. 2020)

- "An agent is anything that can be viewed as perceiving its environment through sensors and acting upon that environment through actuators."
- Agent = architecture + program
- A **rational agent** is one that "for each possible percept sequence, should select an action that is expected to maximize its performance measure, given the evidence provided by the percept sequence and whatever built-in knowledge the agent has."
- Agent types: simple reflex, model-based reflex, goal-based, utility-based, learning agents
- Source: [AIMA 4th Edition Chapter 2](http://aima.cs.berkeley.edu/4th-ed/pdfs/newchap02.pdf)

### Wooldridge & Jennings (1995) — Intelligent Agents: Theory and Practice

- **Weak definition**: "A computing system situated in an environment, capable of flexible and autonomous action to meet its design objectives."
- Required properties (weak): autonomy, social ability, reactivity, proactiveness
- **Strong definition**: adds mobility, rationality, learning and adaptation
- Published in *The Knowledge Engineering Review*, Vol. 10, pp. 115–152
- Source: [Intelligent Agents: Theory and Practice](https://www.cs.ox.ac.uk/people/michael.wooldridge/pubs/ker95.pdf)

### Franklin & Graesser (1996) — Is It an Agent, or Just a Program?

- "An autonomous agent is a system situated within and a part of an environment that senses that environment and acts on it, over time, in pursuit of its own agenda and so as to effect what it senses in the future."
- Taxonomy distinguishes real-world agents, software agents, and artificial life agents
- Every agent satisfies: situated in environment, senses environment, acts autonomously, pursues own agenda
- Source: [Is It an Agent, or Just a Program?](https://cse-robotics.engr.tamu.edu/dshell/cs631/papers/franklingraesser96agents.pdf)

### Maes (1995) — Artificial Life Meets Entertainment

- "Autonomous agents are computational systems that inhabit some complex dynamic environment, sense and act autonomously in this environment, and by doing so realize a set of goals or tasks for which they are designed."
- Published in *Communications of the ACM*, Vol. 38, No. 11
- Source: [Artificial Life Meets Entertainment](https://dl.acm.org/doi/10.1145/219717.219808)

### Shoham (1993) — Agent-Oriented Programming

- Proposed AOP as a specialization of object-oriented programming
- Agent state = beliefs, choices, capabilities, commitments (the agent's "mental state")
- AOP requires: a logical system for defining mental state, an interpreted programming language, an agentification process
- Source: [Agent Oriented Programming](https://link.springer.com/chapter/10.1007/3-540-58095-6_9)

### BDI Architecture — Bratman (1987), Rao & Georgeff (1995)

- Based on Bratman's philosophical model of human practical reasoning
- Agent modeled through: Beliefs (knowledge about world), Desires (goals/preferences), Intentions (committed plans)
- Rao & Georgeff formalized this into computational architecture
- Key insight: explicitly modeled on how humans actually reason and decide
- Source: [BDI Agents: From Theory to Practice](https://cdn.aaai.org/ICMAS/1995/ICMAS95-042.pdf)

---

## Industry Definitions (2024–2026)

### Anthropic (2024) — Building Effective Agents

- Distinguishes **workflows** (LLMs + tools orchestrated through predefined code paths) from **agents** (LLMs that dynamically direct their own processes and tool usage)
- Building block: LLM enhanced with retrieval, tools, and memory
- "Agentic systems" is the umbrella covering both workflows and agents
- Design philosophy: simple, composable patterns over complex frameworks
- Workflow patterns: chain, routing, parallelization, orchestrator-workers, evaluator-optimizer
- Source: [Building Effective Agents](https://www.anthropic.com/research/building-effective-agents)

### OpenAI (2025) — A Practical Guide to Building Agents

- "Agents are systems that independently accomplish tasks on your behalf. They use an LLM to execute instructions and make decisions, have access to tools to gather context and take actions, always operating within clearly defined guardrails."
- Agents SDK primitives: agents (models with instructions and tools), handoffs (control passing), guardrails (validation)
- Orchestration patterns: single-agent loop, multi-agent coordination
- Source: [A Practical Guide to Building Agents](https://openai.com/business/guides-and-resources/a-practical-guide-to-building-ai-agents/)

### Google Cloud

- "AI agents are software systems that use AI to pursue goals and complete tasks on behalf of users. They show reasoning, planning, and memory and have a level of autonomy to make decisions, learn, and adapt."
- Six capabilities: reasoning, acting, observing, planning, collaborating, self-refining
- Architecture components: persona, memory (short-term, long-term, episodic), tools, model
- Distinguishes agents from assistants from bots by autonomy, complexity, and learning
- Source: [What Are AI Agents? — Google Cloud](https://cloud.google.com/discover/what-are-ai-agents)

### Microsoft (AutoGen → Agent Framework, 2024–2025)

- Agent as actor model: computational building blocks that exchange messages and perform work
- Event-driven, asynchronous architecture
- Multi-agent orchestration built on actor model
- AutoGen → maintenance mode in 2025, replaced by unified Microsoft Agent Framework
- Source: [AutoGen — Microsoft Research](https://www.microsoft.com/en-us/research/project/autogen/)

### IBM (2025)

- "The true definition [of an AI agent] is an intelligent entity with reasoning and planning capabilities that can autonomously take action."
- "Agentic AI is an artificial intelligence system that can accomplish a specific goal with limited supervision, consisting of AI agents—machine learning models that mimic human decision-making to solve problems in real time."
- Source: [What Are AI Agents? — IBM](https://www.ibm.com/think/topics/ai-agents)

### AWS / Amazon Bedrock (2025)

- Perceive-reason-act loop as foundational agent function
- AgentCore: build, deploy, operate agents at scale
- Supervisor-based multi-agent architecture
- Source: [Amazon Bedrock](https://aws.amazon.com/bedrock/)

### LangChain / LangGraph (2024)

- "A system that determines and performs a series of actions based on an LLM, where the LLM functions as a reasoning engine by choosing what to do and when to do it."
- **Cognitive architecture** = how a system processes inputs and generates outputs through structured flow of code, prompts, and LLM calls
- Levels of cognitive architecture: hardcoded → single LLM call → chain → router → autonomous agent
- Source: [What Is a Cognitive Architecture? — LangChain Blog](https://blog.langchain.com/what-is-a-cognitive-architecture/)

---

## Human Agent Definitions

### Business / Legal Definition

- "A person who has the legal right to act on behalf of another person or business (the principal)."
- Types: general agent, special agent, employee-agent
- Bound by fiduciary duties: act in best interests of principal, adhere to legal and ethical standards
- Authority: express, implied, or apparent
- Source: [Agent Definition — UpCounsel](https://www.upcounsel.com/agent-definition-business)

### Principal-Agent Theory

- Examines delegation under information asymmetry and goal divergence
- The agent optimizes for what it is rewarded for, not necessarily what the principal wants
- AI agents fit the same framework: users as principals, AI as agents
- Key challenge: AI operates at speeds/scales humans cannot fully audit
- Source: [Rethinking AI Agents: A Principal-Agent Perspective — California Management Review](https://cmr.berkeley.edu/2025/07/rethinking-ai-agents-a-principal-agent-perspective/)
- Source: [When AI Becomes an Agent of the Firm — Journal of Management Studies (2026)](https://onlinelibrary.wiley.com/doi/10.1111/joms.13274)

---

## Key Architectural Patterns

### Perception-Reasoning-Action Loop

- Universal across all agent definitions, classical and modern
- "Agents observe their environment, think about what to do next, act, and then learn from the outcome"
- Directly parallels human cognition
- Source: [AWS Prescriptive Guidance — Agentic AI Foundations](https://docs.aws.amazon.com/prescriptive-guidance/latest/agentic-ai-foundations/perceive-reason-act.html)

### Classical Agent Architectures (AIMA)

1. Simple reflex agents — react to current percept only
2. Model-based reflex agents — maintain internal state
3. Goal-based agents — act to achieve goals
4. Utility-based agents — maximize a utility function
5. Learning agents — improve from experience

### Modern LLM Agent Patterns

- **ReAct**: interleave reasoning and action
- **Tool-use agents**: LLM calls external tools/APIs
- **Workflow patterns** (Anthropic): chain, routing, parallelization, orchestrator-workers, evaluator-optimizer
- **Cognitive architecture spectrum** (LangChain): hardcoded → chain → router → autonomous
- **Multi-agent systems**: supervisor, peer-to-peer, actor model

---

## Key Diagrams and Visual Concepts

1. **Russell & Norvig perception-action diagram**: Sensors → Agent → Actuators → Environment (loop)
2. **BDI architecture diagram**: Beliefs + Desires → Deliberation → Intentions → Action
3. **Anthropic workflow patterns**: Visual patterns for chain, routing, parallelization, orchestrator-workers
4. **Google's agent-assistant-bot comparison table**: Autonomy × Complexity × Learning matrix
5. **AIMA agent type hierarchy**: Simple reflex → model-based → goal-based → utility-based → learning
6. **LangChain cognitive architecture spectrum**: Hardcoded → single call → chain → router → autonomous agent
7. **Multi-agent architecture patterns**: Supervisor, peer-to-peer, broker, actor model
8. **Principal-agent framework diagram**: Principal → delegation → Agent → action → Environment → feedback

---

## Cross-Cutting Insight: The Human-AI Agent Parallel

The word "agent" in both human and AI contexts fundamentally means the same thing: **an entity that acts on behalf of a principal to achieve goals in an environment**.

Common ground:
- Both operate in a perception-reasoning-action loop
- Both face the principal-agent problem (alignment, monitoring, trust, scope)
- Both have knowledge (beliefs), goals (desires), and plans (intentions)
- Both require delegation of authority with boundaries
- Both are evaluated by performance against objectives
- Both need monitoring and feedback mechanisms

Key differences:
- Human agents have shared evolutionary and social context; AI agents require explicit technical boundaries
- AI agents can operate at speeds and scales humans cannot audit
- Human agents have implicit understanding of norms; AI agents need explicit guardrails
- AI agents can be replicated, parallelized, and scaled; human agents cannot

The transfer opportunity: management practices for human agents (delegation frameworks, authority boundaries, performance evaluation, accountability structures, trust-building mechanisms) can inform AI agent design — and vice versa.
