# Transferring Work Models

The central practical claim of this chapter: the management frameworks companies use for human agents are directly transferable to AI agents, with specific adjustments. This is not a theoretical proposition. It is an operating playbook. Delegation protocols, authority boundaries, onboarding processes, performance evaluation, escalation procedures, and trust-building mechanisms all have direct AI agent equivalents. The entrepreneur who already knows how to manage people has a decisive advantage in the AI agent era.

## Sections

### Core Idea

Companies have spent decades — centuries, really — developing frameworks for making human agency work at scale. These frameworks solve the fundamental problems of delegation: how to communicate what you want, how to verify it is being done correctly, how to expand scope progressively, and how to intervene when things go wrong. AI agents face the same problems. The frameworks transfer. What changes is the implementation — from conversations and social norms to prompts and guardrails — not the underlying logic.

### Details

#### The Transfer Map

Below is a systematic mapping of management practices from human agents to AI agents, with notes on what transfers directly, what needs adjustment, and what breaks.

**1. Onboarding**

| Human Agent | AI Agent |
|-------------|----------|
| Orientation, training materials, mentorship | System prompt, few-shot examples, reference documentation |
| "Here's how we do things here" | Constitutional principles, style guides, behavioral specifications |
| Shadowing experienced colleagues | Fine-tuning on successful interaction examples |
| Probationary period with close supervision | Staging environment, evaluation suite, human-in-the-loop review |

**Transfer quality:** High. The function is identical — equip the agent with enough context and examples to operate effectively. The implementation shifts from social to technical.

**2. Delegation**

| Human Agent | AI Agent |
|-------------|----------|
| Clear task description, expected outcomes | Structured prompt, success criteria, output format |
| Context on why the task matters | Background information in context window |
| Deadline and priority | Token budget, latency requirements, priority queue |
| "Ask me if you get stuck" | Confidence thresholds, human handoff triggers |

**Transfer quality:** Very high. Delegation is delegation. The same principles that make delegation effective with human teams — clear objectives, sufficient context, defined escalation paths — apply directly to AI agents.

**3. Authority Boundaries**

| Human Agent | AI Agent |
|-------------|----------|
| Job description, decision authority matrix | Permission scopes, tool access controls |
| Spending limits, approval hierarchies | Rate limits, action confirmations, cost caps |
| "You can decide X, but escalate Y" | Conditional logic in agent prompts, guardrail triggers |
| Employment contract, NDA | Terms of service, data access policies, safety filters |

**Transfer quality:** High. The concept is identical. The implementation is more explicit with AI agents because they lack the social context that helps human agents infer boundaries.

**4. Monitoring and Feedback**

| Human Agent | AI Agent |
|-------------|----------|
| 1:1 meetings, stand-ups, status reports | Logging, tracing, dashboards, evaluation suites |
| Peer review, code review | Automated evaluation, LLM-as-judge, output quality checks |
| Customer feedback, NPS scores | User satisfaction metrics, task completion rates |
| Performance improvement plans | Prompt refinement, fine-tuning, architecture changes |

**Transfer quality:** High with important differences. AI agents can be monitored at far greater granularity than human agents (every reasoning step can be logged). But the volume of monitoring data requires automated analysis — you cannot review every interaction manually.

**5. Trust Progression**

| Human Agent | AI Agent |
|-------------|----------|
| Junior → senior → lead → director | Narrow scope → broader scope → full autonomy |
| "Prove yourself on small tasks before we give you big ones" | Start with low-stakes tasks, expand to high-stakes as reliability is demonstrated |
| Annual reviews, promotion cycles | Continuous evaluation metrics, progressive permission unlocking |
| Earned autonomy through track record | Earned autonomy through demonstrated reliability scores |

**Transfer quality:** Very high. Trust progression is one of the most directly transferable management practices. The principle is identical: grant autonomy proportional to demonstrated competence. The implementation shifts from periodic human judgment to continuous automated evaluation.

**6. Escalation**

| Human Agent | AI Agent |
|-------------|----------|
| "Escalate to your manager when..." | Confidence thresholds, exception handling, human-in-the-loop triggers |
| Defined escalation criteria and paths | Programmatic escalation rules based on uncertainty, risk, or novelty |
| Judgment calls on when to ask for help | Explicit classification of when to proceed vs. when to defer |

**Transfer quality:** High. The challenge is that AI agents need more explicit escalation criteria than humans, who can use social judgment to sense when they are out of their depth.

#### What Needs Adjustment

Three areas require significant adaptation rather than direct transfer:

**Speed mismatch.** Human managers can observe employees over days and weeks. AI agents make decisions in milliseconds. Management practices designed for human timescales need to be reimplemented as automated systems that operate at machine speed. The weekly 1:1 becomes a real-time dashboard. The quarterly review becomes a continuous evaluation pipeline.

**Absence of social context.** Human agents operate within a web of relationships, professional norms, and cultural expectations. These implicit constraints reduce the need for explicit rules. AI agents have no such context. Everything that matters must be explicitly specified in the system prompt, guardrails, or architecture. The cultural values that go unwritten in human organizations must be written down for AI agents.

**Replicability and consistency.** When you train a human employee, you train one person. When you configure an AI agent, you configure a template that can be instantiated thousands of times. This changes the economics of management: the upfront investment in "training" (prompt engineering, evaluation design) pays off at much greater scale, but errors also propagate at scale.

#### What Breaks

Some management practices do not transfer:

- **Intrinsic motivation.** You cannot appeal to an AI agent's career ambitions or sense of professional pride. Motivation must come entirely from the objective function and instructions.
- **Social accountability.** Peer pressure, team identity, and reputation effects do not apply to AI agents. Accountability must be structural, not social.
- **Informal knowledge transfer.** The "water cooler" learning that happens between human colleagues has no direct AI agent equivalent. Knowledge must be explicitly documented and shared through memory systems.
- **Ethical judgment in novel situations.** Human agents can draw on moral intuition, empathy, and social norms to navigate situations their training did not cover. AI agents need explicit principles and escalation triggers for novel ethical situations.

#### The Entrepreneur's Advantage

The key insight for the book's audience: if you already know how to manage people, you know most of what you need to manage AI agents. The skills are:

1. **Defining clear objectives** — you already do this when you write job descriptions and set OKRs
2. **Setting authority boundaries** — you already do this when you define decision rights and approval processes
3. **Building trust progressively** — you already do this when you onboard new employees
4. **Designing escalation protocols** — you already do this when you define management escalation paths
5. **Evaluating performance** — you already do this when you run performance reviews
6. **Coordinating multiple agents** — you already do this when you design your org chart

The entrepreneur who has built and managed a team of 10 people has practiced the core skills needed to orchestrate a fleet of AI agents. The vocabulary is different. The implementation is faster. The underlying competence is the same.

### Source Links

- [Jarrahi, M. & Ritala, P. (2025). Rethinking AI Agents: A Principal-Agent Perspective — California Management Review](https://cmr.berkeley.edu/2025/07/rethinking-ai-agents-a-principal-agent-perspective/)
- [Intelligent AI Delegation — arXiv (2026)](https://arxiv.org/html/2602.11865v1)
- [Anthropic: Building Effective Agents](https://www.anthropic.com/research/building-effective-agents)
- [OpenAI: A Practical Guide to Building Agents](https://openai.com/business/guides-and-resources/a-practical-guide-to-building-ai-agents/)
- [Bridging Human Delegation and AI Agent Autonomy — Medium](https://medium.com/@FrankGoortani/bridging-human-delegation-and-ai-agent-autonomy-9ff3619aa78b)

### Why It Matters

This page is the practical payoff of the entire agents research cluster. The theoretical argument — that human agents and AI agents share the same fundamental architecture — is important but not sufficient. What matters for the book's audience is the practical implication: management experience transfers.

The entrepreneur who reads this chapter should close it thinking not "AI agents are like employees" (a loose analogy) but "I already know how to manage agents, and now I know how to adapt that skill to a new medium" (a practical operating insight). The management frameworks are the same. The delegation problems are the same. The trust-building process is the same. What changes is the speed, the scale, and the need for explicit specification.

This is the core story of the chapter: you are not entering a new discipline. You are extending an existing one.

### Related Pages

- [Principal-Agent Theory and AI](principal-agent-theory-and-ai.md)
- [The Human Agent](../what-an-agent-is/human-agent-definition.md)
- [Industry AI Agent Definitions](../what-an-agent-is/industry-ai-agent-definitions.md)
- [Modern LLM Agent Architectures](../agent-architectures/modern-llm-agent-architectures.md)
- [Multi-Agent Systems](../agent-architectures/multi-agent-systems.md)
- [Company as a Coordination System](../../company/what-a-company-does/company-as-a-coordination-system.md)
- [Governance, Control, and Incentives](../../company/how-a-company-is-built/governance-control-and-incentives.md)
- [Structure, Roles, and Spans of Control](../../company/how-a-company-is-built/structure-roles-and-spans-of-control.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
