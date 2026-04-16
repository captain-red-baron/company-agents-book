# The Perception-Reasoning-Action Loop

The perception-reasoning-action loop is the universal pattern of agency. Every agent — a human employee, a 1990s software agent, a modern LLM system — operates by perceiving its environment, reasoning about what to do, acting, and observing the outcome. This is not a metaphor. It is a structural description that has remained stable across thirty years of agent research and centuries of organizational practice.

## Sections

### Core Idea

The **Perception-Reasoning-Action (PRA) loop** describes the fundamental cycle of agent behavior: (1) **Perceive** — gather information from the environment, (2) **Reason** — process information, update internal state, decide on action, (3) **Act** — execute the chosen action, (4) **Learn** — observe the outcome and update future behavior. The cycle then repeats. This pattern appears in Russell and Norvig's agent diagrams, in the BDI deliberation cycle, in every modern LLM agent's tool-calling pattern, in the military OODA loop, and in how any competent human worker processes a task.

### Details

#### The Pattern Across Domains

The PRA loop manifests differently depending on the substrate, but the structure is identical:

**In Russell & Norvig's AIMA:**
Sensors → Agent Function → Actuators → Environment → (feedback loop)

The agent receives percepts from sensors, maps them through its agent function (the decision-making logic) to actions, executes those actions through actuators, and the environment changes as a result — generating new percepts.

**In the BDI Architecture:**
Perceive → Update Beliefs → Generate Options (Desires) → Filter to Intentions → Execute Plan → (loop)

The BDI cycle is a richer version of the PRA loop, adding explicit internal structure to the "reasoning" phase. But the outer loop is the same.

**In Modern LLM Agents:**
Receive input/context → LLM inference (reasoning) → Tool call or response (action) → Observe result → (loop)

Every LLM agent framework — OpenAI's run loop, Anthropic's agentic patterns, LangGraph's state machines — implements this cycle. The agent receives context (perception), the LLM processes it (reasoning), the agent calls a tool or produces output (action), and the result feeds back in (learning).

**In the OODA Loop (John Boyd, 1970s):**
Observe → Orient → Decide → Act → (feedback loop)

Colonel John Boyd's military decision-making framework, originally developed for fighter pilot combat, maps directly onto the PRA loop. "Orient" adds an explicit step for contextualizing observations against existing mental models — which is what "reasoning" does in the PRA loop. The OODA loop has been explicitly applied to agentic AI systems in 2024–2025 literature. The key insight from Boyd: "If Act doesn't feed back into Observe, you just have a pipeline, not an agent."

**In Human Work:**
Notice situation → Think about it → Do something → See what happened → Adjust

A sales rep notices a customer hesitating (perceive), considers what objection might be in play (reason), adjusts their pitch (act), and watches the customer's reaction (learn). A manager reads a project update (perceive), identifies a risk (reason), reassigns resources (act), and monitors the outcome (learn). The loop is the same.

#### Why the Loop Matters

The PRA loop matters for three reasons:

**1. It is substrate-neutral.** The same loop describes carbon-based agents (humans) and silicon-based agents (software) with equal accuracy. This is not a coincidence or a loose analogy. It reflects a structural requirement: any entity that operates autonomously in an environment must sense that environment, decide what to do, and act. There is no alternative architecture for agency.

**2. It defines the management interface.** Every intervention a manager makes on an agent — human or AI — targets one of the four phases:
- Improve **perception**: give the agent better data, clearer context, more relevant information
- Improve **reasoning**: train the agent, provide frameworks, improve its decision-making logic
- Improve **action**: give the agent better tools, more authority, clearer execution paths
- Improve **learning**: provide feedback, create evaluation loops, enable reflection

This framework works for managing human teams and for configuring AI agents.

**3. It explains failure modes.** When an agent fails, it fails at one of the four phases:
- **Perception failure**: the agent did not have the right information (human: out of the loop; AI: missing context)
- **Reasoning failure**: the agent had the information but made the wrong decision (human: poor judgment; AI: hallucination)
- **Action failure**: the agent decided correctly but could not execute (human: blocked by process; AI: tool failure)
- **Learning failure**: the agent did not update from the outcome (human: repeating mistakes; AI: no feedback loop)

Diagnosing which phase failed is the first step in fixing any agent — human or artificial.

#### Visual Description

The canonical PRA diagram is a circle with four nodes:

```
    ┌──────────┐
    │ PERCEIVE │
    └────┬─────┘
         │
         ▼
    ┌──────────┐
    │  REASON  │
    └────┬─────┘
         │
         ▼
    ┌──────────┐
    │   ACT    │
    └────┬─────┘
         │
         ▼
    ┌──────────┐
    │  LEARN   │
    └────┬─────┘
         │
         └──────── (back to PERCEIVE)
```

The environment sits outside this loop. Perception draws from the environment. Action affects the environment. Learning closes the feedback loop.

### Source Links

- [Russell, S. & Norvig, P. (2020). *Artificial Intelligence: A Modern Approach*, 4th ed., Chapter 2](https://aima.cs.berkeley.edu/)
- [AWS Prescriptive Guidance: The Agent Function — Perceive, Reason, Act](https://docs.aws.amazon.com/prescriptive-guidance/latest/agentic-ai-foundations/perceive-reason-act.html)
- [AWS Prescriptive Guidance: Traditional Agent Architecture](https://docs.aws.amazon.com/prescriptive-guidance/latest/agentic-ai-foundations/traditional-agents.html)
- [Sogeti: Harnessing the OODA Loop for Agentic AI](https://www.sogeti.com/featured-articles/harnessing-the-ooda-loop-for-agentic-ai/)
- [NVIDIA: OODA Loop and AI Agents](https://developer.nvidia.com/blog/optimizing-data-center-performance-with-ai-agents-and-the-ooda-loop-strategy/)

### Why It Matters

The PRA loop is the Rosetta Stone for this book's thesis. It is the pattern that connects human agents, classical software agents, and modern AI agents into a single framework. If you understand that all agents operate through the same cycle — perceive, reason, act, learn — then you understand why management practices designed for human agents can be transferred to AI agents.

The loop also provides a practical diagnostic tool. When an agent (human or AI) underperforms, you can systematically check each phase: Does it have the right information? Is it reasoning correctly? Can it execute? Is it learning from outcomes? This diagnostic works the same for a struggling employee and a misfiring AI agent.

### Related Pages

- [Classical CS Agent Definitions](../what-an-agent-is/classical-cs-agent-definitions.md)
- [The BDI Architecture](../what-an-agent-is/bdi-architecture.md)
- [Classical Agent Architectures](classical-agent-architectures.md)
- [Modern LLM Agent Architectures](modern-llm-agent-architectures.md)
- [Transferring Work Models](../human-agents-and-ai-agents/transferring-work-models.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
