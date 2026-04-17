# Agentic Process Execution

The core shift that agentic systems enable: processes no longer need to be defined in advance. Give an agent a goal, access to knowledge, a set of tools, and a runtime environment — and it will construct the process as it executes. This page explains how that works, when it works, and what it means for how we design operations going forward.

## Sections

### Core Idea

An **agentic process** is a sequence of activities that the agent constructs at runtime rather than retrieving from a pre-defined specification. The agent reasons about the goal, observes the current state, chooses the next action, executes it, observes the result, and loops. The structure emerges from the execution. This inverts the classical BPM model, where structure had to be designed before execution could begin. The implication is enormous: the primary design artifact shifts from the BPMN diagram to the agent's instructions, tools, and guardrails.

### Details

#### The Workflow-to-Agent Spectrum

Anthropic, in their widely cited [Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents) post, draws the critical distinction:

- **Workflows**: "Systems where LLMs and tools are orchestrated through predefined code paths."
- **Agents**: "Systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks."

Workflows look like traditional BPM with LLMs slotted into the steps. Agents look like employees with goals and resources. Between them sits a spectrum:

| Pattern | Who Decides the Path? | BPM Equivalent |
|---------|----------------------|----------------|
| Hardcoded | Developer | Fully scripted workflow |
| Single LLM call with pre/post processing | Developer sets the path; LLM does one step | A classical workflow with a smart step |
| Prompt chaining | Developer defines sequence; each step feeds next | A traditional multi-step workflow |
| Routing | LLM classifies and chooses path; paths are pre-defined | A workflow with a smart router |
| Orchestrator-workers | Orchestrator LLM decides which sub-agents to invoke | Dynamic sub-process invocation |
| Autonomous agent | LLM decides every step in an open loop | No BPM equivalent — fully runtime |

The design question is no longer "what are the steps?" but "how much structure do we want, and where should the runtime decision points live?"

#### Why Agents Can Handle Undefined Processes

A traditional workflow engine breaks when it encounters a situation the designer did not anticipate. An agent handles the same situation by reasoning. This works for three reasons:

**1. General reasoning capability.** Large language models can read a situation, identify relevant facts, weigh options, and choose an action — even for inputs they have never seen before. This is not perfect judgment, but it is more than any pre-defined workflow could encode.

**2. Tool use.** Agents can call external systems to gather more information, check facts, or attempt operations. If the agent does not know something, it can look it up. If an action fails, it can try a different approach. The classical workflow has no such adaptive capacity.

**3. Observation loops.** Every action the agent takes produces a result. The result feeds back into the next reasoning step. This means the agent can correct course mid-execution — something a pre-defined workflow cannot do without explicit exception branches.

#### A Concrete Example: Hannah's Customer Support

Consider a customer support ticket: "Our Juki MF-7900 is producing uneven stitching on the last batch. Can you help?"

**The classical workflow approach:**
1. Classify the ticket (hardware issue? configuration? software bug?)
2. Route to the appropriate queue
3. Tier-1 support attempts first-line troubleshooting from a script
4. If unresolved, escalate to tier-2
5. If still unresolved, escalate to engineering
6. If it requires a part replacement, route to field service

Every branch, every classification, every escalation trigger has to be defined in advance. If the ticket does not fit a known category, the workflow stalls or routes to "general inquiries" where a human has to reclassify it manually.

**The agentic approach:**
The agent receives the ticket. It reasons: this mentions stitching quality, which could be mechanical, configuration, or thread-related. It retrieves the customer's machine model, recent service history, and the MF-7900 troubleshooting guide. It observes that this customer had a tension calibration last month and asks a clarifying question about thread weight. Based on the answer, it suggests a specific calibration adjustment and offers to schedule a technician if the fix does not work.

No pre-defined decision tree. No manually modeled branches. The agent constructed the diagnostic process on the fly based on the specific ticket and the available context.

#### What Changes for the Operator

Classical BPM gave operators a specific set of artifacts to manage: process diagrams, SOPs, approval matrices, escalation paths. Agentic execution produces different artifacts:

| Classical Operating Artifacts | Agentic Operating Artifacts |
|------------------------------|----------------------------|
| BPMN diagrams | Agent instructions (system prompts) |
| Standard operating procedures (SOPs) | Constitutional principles and guardrails |
| Approval matrices | Permission scopes and escalation triggers |
| Workflow engine configuration | Harness configuration |
| Process documentation | Reasoning traces and run logs |
| Training manuals | Few-shot examples and fine-tuning datasets |
| KPIs on process steps | Evaluation suites on agent behavior |

This is not an additive change. It is a substitution. The operator's attention moves from designing and maintaining process diagrams to curating instructions, tools, and evaluations. The skill set overlaps substantially with traditional operations work — clarity about goals, well-designed guardrails, good monitoring — but the artifacts are different.

#### When Classical Processes Still Win

Agentic execution is not universally better. Classical pre-defined processes still win when:

- **Regulatory auditability requires exact paths** — certain financial, medical, and legal processes need deterministic, replayable execution
- **Safety criticality is high** — you do not want an autonomous agent deciding how to configure a nuclear plant's cooling system
- **The task is genuinely repetitive and well-understood** — if the process really does not vary, encoding it in deterministic software is cheaper and more reliable
- **Latency matters at machine scale** — LLM-powered agents take seconds to reason; a pre-defined workflow takes milliseconds
- **Cost per execution matters** — LLM inference costs add up quickly for high-volume processes

The practical stance: use agentic execution where variability is high and judgment is needed; use workflows where the work is well-specified and high-volume. Most organizations will run both, with the boundary shifting over time as models improve and costs drop.

### Source Links

- [Anthropic — Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents)
- [Anthropic — Managed Agents](https://www.anthropic.com/engineering/managed-agents)
- [IBM — What are Agentic Workflows?](https://www.ibm.com/think/topics/agentic-workflows)
- [Agentic Business Process Management — arXiv (2025)](https://arxiv.org/pdf/2504.03693)
- [Towards Modeling Human-Agentic Collaborative Workflows — arXiv](https://arxiv.org/html/2412.05958v1)
- [Andrew Ng — Agentic AI Course](https://www.deeplearning.ai/courses/agentic-ai/)

### Why It Matters

This is the operational payoff of the book's thesis. If one human is going to coordinate many agents, the work itself has to be executed differently. Pre-defining every process that a growing company needs would consume all the founder's time. Agentic execution breaks that bottleneck by pushing the process construction *into the agent* — the founder defines goals and constraints, the agents construct the work.

For the entrepreneur, the implication is practical. You do not need a BPM consultant to map your operations before you can scale them. You need well-specified goals, a clean set of tools, clear guardrails, and good evaluations. The scaling mechanism changes from "model the process, automate the process" to "brief the agents, monitor the results, refine the instructions."

### Related Pages

- [Agentic Processes — Hub](index.md)
- [Business Processes 101](business-processes-101.md)
- [Agentic Harnesses](agentic-harnesses.md)
- [Modern LLM Agent Architectures](../agent-architectures/modern-llm-agent-architectures.md)
- [Transferring Work Models](../human-agents-and-ai-agents/transferring-work-models.md)
- [Processes, Routines, and Operating Systems](../../company/how-a-company-is-built/processes-routines-and-operating-systems.md)

## Sources

- [raw/research/2026-04-17-agentic-processes-research.md](../../../../raw/research/2026-04-17-agentic-processes-research.md)

## Last Updated

2026-04-17
