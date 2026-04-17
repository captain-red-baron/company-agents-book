# Agents — Hub Page

An agent is an entity that acts on behalf of a principal to achieve goals in an environment. This definition holds whether the agent is a human employee, a legal representative, a software program, or a large language model. The consistency of this definition across centuries of law, decades of computer science, and the current wave of AI is not a coincidence — it reflects a deep structural pattern in how work gets delegated and executed.

This research cluster explores what agents are, how they are built, and what it means that human agents and AI agents share the same fundamental architecture.

---

![The Agent Architecture Loop](../../outputs/assets/agent-architecture-loop.png)

## Working Definition

An **agent** is a bounded entity that (1) perceives its environment, (2) reasons about what to do, (3) acts to achieve goals on behalf of a principal, and (4) learns from outcomes. This perception-reasoning-action loop is the universal pattern — it appears in Russell and Norvig's textbook, in the BDI model of practical reasoning, in every modern LLM agent framework, and in how any competent human employee operates.

The critical insight for this book: the word "agent" already means the same thing in business and in AI. The opportunity is not to invent a new concept, but to recognize that the management frameworks companies already use for human agents — delegation, authority boundaries, accountability, performance evaluation, trust-building — are directly transferable to AI agents, with adjustments.

---

## Research Structure

### [What an Agent Is](what-an-agent-is/index.md)
Definitions of agents across computer science, the AI industry, and business/law. The surprising consensus across all these fields.

### [Agent Architectures](agent-architectures/index.md)
How agents are built — from the classical perception-reasoning-action loop to BDI, to modern LLM agent patterns. The structural commonality across decades of design.

### [Human Agents and AI Agents](human-agents-and-ai-agents/index.md)
The bridge chapter. Why human agents and AI agents face the same fundamental problems, and why the management practices for one can inform the design of the other.

### [Agentic Processes](agentic-processes/index.md)
The operational payoff. How agents invert the classical business process management model — instead of modeling processes in advance, agents construct them at runtime. Includes the harness layer where modern agentic engineering actually happens.

---

## Key Claims

1. **The definition of "agent" has been stable for decades.** Russell and Norvig (1995), Wooldridge (1995), Maes (1995), and Franklin and Graesser (1996) all converge on the same core: an entity situated in an environment, sensing and acting autonomously to achieve goals. Modern industry definitions from Anthropic, OpenAI, Google, Microsoft, IBM, and AWS say the same thing in updated vocabulary.

2. **The perception-reasoning-action loop is universal.** Every agent — human or AI — perceives its environment, reasons about what to do, acts, and learns from outcomes. This is not a metaphor. It is a structural description that applies equally to a human sales agent and an LLM-powered customer service agent.

3. **Principal-agent theory applies to both.** The fundamental challenge of delegation — that the agent may not perfectly align with the principal's goals — is the same whether you are managing a human team or deploying an AI agent fleet. The mechanisms differ (social norms vs. guardrails), but the problem is identical.

4. **The transfer opportunity is real and large.** Companies have spent decades developing management frameworks for human agents. Most of these frameworks — delegation protocols, authority boundaries, escalation procedures, performance metrics, accountability structures — can be adapted for AI agents. This is not just an analogy. It is a practical operating playbook.

---

## Open Questions

- Where exactly does the analogy between human and AI agents break? What aspects of human agency resist transfer?
- How does the principal-agent problem change when the agent operates faster than the principal can monitor?
- What management practices need the most adjustment when applied to AI agents?
- Is the BDI model (beliefs, desires, intentions) a useful framework for designing AI agent behavior, or is it a historical curiosity?

---

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
