# Classical Agent Architectures

Russell and Norvig's *Artificial Intelligence: A Modern Approach* defines five agent architectures arranged in a progression from simple to sophisticated. This progression — from reactive scripts to learning systems — maps onto a familiar organizational reality: the progression from a new hire following a manual to a senior leader exercising independent judgment. Understanding the classical architectures is understanding the design space for any agent, whether human or artificial.

## Sections

### Core Idea

The five classical agent architectures are: (1) **simple reflex agents** that react to current percepts via condition-action rules, (2) **model-based reflex agents** that maintain internal state to handle partial observability, (3) **goal-based agents** that act to achieve explicit goals, (4) **utility-based agents** that maximize a utility function to choose among competing goals, and (5) **learning agents** that improve their own performance over time. Each architecture adds a capability the previous one lacks. Together they define a spectrum from fully reactive to fully adaptive.

### Details

#### 1. Simple Reflex Agents

The simplest architecture. The agent has condition-action rules: *if* the environment looks like X, *then* do Y. No memory, no model of the world, no goals — just pattern-matching on the current percept.

**Strengths:** Fast, simple, predictable.
**Limitations:** Only works in fully observable environments. Cannot handle situations that require memory of past events. Brittle when conditions fall outside the rule set.

**Human parallel:** A new call center employee following a strict script. If the customer says X, respond with Y. No judgment, no context, no memory of the customer's history.

**AI parallel:** A simple chatbot with hard-coded responses. A rule-based automation that fires on specific triggers.

#### 2. Model-Based Reflex Agents

Adds an **internal state** that tracks aspects of the environment the agent cannot currently perceive. The agent maintains a model of how the world works and how its own actions affect the world.

**Strengths:** Can handle partially observable environments. Can track changes over time.
**Limitations:** Still reactive — responds to current state rather than pursuing goals. The internal model may be inaccurate.

**Human parallel:** An experienced employee who remembers past interactions with a client, tracks the status of ongoing projects, and knows the organizational context. They react more intelligently because they have context, but they are not yet proactively pursuing strategic objectives.

**AI parallel:** A stateful chatbot that remembers conversation history. An RAG system that retrieves relevant past documents before responding.

#### 3. Goal-Based Agents

Adds explicit **goals** — desired states of the world the agent tries to achieve. The agent can now reason about the consequences of its actions in terms of whether they move toward or away from the goal. This enables planning.

**Strengths:** Can handle complex tasks that require multiple steps. Can choose among different action sequences based on which achieves the goal.
**Limitations:** When goals conflict, the agent has no basis for choosing between them. Goals are binary (achieved or not).

**Human parallel:** A project manager with a clear objective: ship the product by June. They plan backward from the goal, break it into milestones, assign tasks, and make decisions based on whether each action moves toward the deadline. But when two goals conflict (quality vs. speed), they lack a framework for deciding.

**AI parallel:** An LLM agent given an explicit task — "research this topic and produce a report." The agent plans steps, calls tools, and evaluates progress against the goal.

#### 4. Utility-Based Agents

Adds a **utility function** — a measure of how desirable different states of the world are. When goals conflict, the agent can make trade-offs. When outcomes are uncertain, the agent can calculate expected utility and choose the action with the highest expected value.

**Strengths:** Can handle goal conflicts, uncertainty, and competing priorities. Makes rational decisions under imperfect conditions.
**Limitations:** Requires a well-defined utility function, which is hard to specify correctly. The agent optimizes for the utility function it has, not necessarily for what the principal actually wants.

**Human parallel:** A senior executive who balances revenue growth against profitability, customer satisfaction against operational efficiency, short-term wins against long-term positioning. They make trade-offs constantly, using judgment as their utility function.

**AI parallel:** An agent with an evaluation function that scores different outcomes and chooses the highest-scoring path. This is where RLHF (Reinforcement Learning from Human Feedback) enters — it trains the model to approximate human preferences as a utility function.

#### 5. Learning Agents

Adds the ability to **improve from experience**. The agent has four conceptual components:
- **Performance element** — selects actions (the agent architecture so far)
- **Critic** — evaluates how well the agent is doing, given feedback from the environment
- **Learning element** — uses feedback from the critic to modify the performance element
- **Problem generator** — suggests exploratory actions that may lead to new learning

**Strengths:** Can improve over time without being reprogrammed. Can adapt to new situations. Can exceed the capability of its initial design.
**Limitations:** Learning may be slow, require large amounts of data, or converge on suboptimal behaviors.

**Human parallel:** Any experienced professional. A doctor who develops clinical intuition over years of practice. A sales rep who learns which approaches work with which customer types. A manager who gets better at reading team dynamics.

**AI parallel:** An LLM agent that incorporates feedback from evaluations, maintains memory of what worked and what did not, and adjusts its approach over time. Agent frameworks with reflection and self-improvement loops.

#### The Progression as an Organizational Metaphor

The five architectures form a spectrum that maps onto organizational roles:

| Architecture | Organizational Role | Autonomy Level |
|-------------|-------------------|----------------|
| Simple reflex | Entry-level employee following scripts | Minimal |
| Model-based reflex | Experienced worker with context and memory | Low-moderate |
| Goal-based | Project manager with clear objectives | Moderate |
| Utility-based | Senior executive balancing trade-offs | High |
| Learning | Seasoned leader with continuous improvement | Full |

This is not just an analogy. It describes the same design trade-off in both domains: more autonomy enables more complex behavior but requires more trust, better alignment mechanisms, and more sophisticated oversight.

### Source Links

- [Russell, S. & Norvig, P. (2020). *Artificial Intelligence: A Modern Approach*, 4th ed., Chapter 2](https://aima.cs.berkeley.edu/)
- [AIMA Chapter 2 (PDF)](http://aima.cs.berkeley.edu/4th-ed/pdfs/newchap02.pdf)
- [Berkeley AIMA 1st ed. Chapter 2 (PDF)](https://people.eecs.berkeley.edu/~russell/aima1e/chapter02.pdf)

### Why It Matters

The classical agent architectures provide a shared vocabulary for describing both human and AI agents on the same spectrum. When a company deploys an AI agent that follows strict rules, they are deploying a simple reflex agent. When they deploy one that maintains memory and context, they are deploying a model-based agent. When they give it explicit goals and planning capability, they have a goal-based agent. And so on.

The progression also illuminates the management challenge. Managing a simple reflex agent (human or AI) is easy — just define the rules. Managing a learning agent is hard — it requires trust, alignment, monitoring, and the willingness to let the agent make mistakes in order to improve. This is exactly the progression a manager goes through with a new hire: start with clear rules, progressively expand autonomy as trust builds.

### Related Pages

- [The Perception-Reasoning-Action Loop](perception-reasoning-action-loop.md)
- [Modern LLM Agent Architectures](modern-llm-agent-architectures.md)
- [Classical CS Agent Definitions](../what-an-agent-is/classical-cs-agent-definitions.md)
- [Transferring Work Models](../human-agents-and-ai-agents/transferring-work-models.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
