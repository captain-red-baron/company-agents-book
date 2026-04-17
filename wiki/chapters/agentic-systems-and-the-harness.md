# Agentic Systems and the Harness

This chapter moves the reader from the concept of an agent to the operating reality of running one. It introduces agentic systems as the substitute for classical business processes, and frames the **harness** as the new primary design artifact of an agent-era company. The goal: give the reader a mental model and a concrete set of design questions they can take back into their own business.

## Sections

### Chapter Purpose

The previous chapter established that human agents and AI agents share the same architecture and the same management discipline. This chapter answers the operator's next question: *how do I actually run one?* It describes the shift from business-process thinking to agentic thinking, introduces the harness as the runtime artifact that makes an LLM into a working agent, and walks through the design decisions the reader will actually make when they deploy an agent inside their own company.

The chapter should leave the reader thinking: "The harness is the new BPMN. It is the thing I design, own, and improve. And I can start designing one on Monday."

### Core Argument

Classical operations were organized around the business process — the diagram, the SOP, the workflow engine. Agentic operations are organized around the harness — the runtime infrastructure that wraps an LLM and turns it into a goal-directed, tool-using, auditable executor. The harness is where company-specific operational knowledge now lives, where the important engineering effort now goes, and where competitive differentiation in the agent era will compound. Understanding harness design — its seven components, the brain-vs-hands split, the operating-system-style abstractions emerging around it — is the new core operational literacy for entrepreneurs and operators.

### Narrative Device

Continue with Hannah Schmidt. The customer support agent introduced in the previous chapter becomes the recurring example: she is moving from the first deployment into a serious operational setup. The chapter uses her decisions — what tools the agent gets, what knowledge it can see, what guardrails apply, how it is monitored, whether to build, buy, or rent — to ground the harness concept. Marco reappears briefly as the human analogue: hiring Marco already required choosing tool scope, knowledge access, rules of engagement, and review checkpoints. Every harness design decision has a management analogue Hannah has already made.

### Proposed Flow

#### Part 1: From Processes to Agents

Open by reminding the reader what classical operations look like: fifty years of BPM, from Taylor through Hammer and Champy, through BPMN and ERP. It worked, and for deterministic, high-volume work it still does. But most of the work inside a company is the work that does not fit the process. Classical BPM handled that by escalating to a human — which is why operations departments exist at scale.

Agents invert this. Give an LLM-powered agent a goal, tools, knowledge, and a runtime, and it constructs the process as it executes. Exceptions stop being the problem — they are the normal case the agent handles. Quote Anthropic's [Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents) distinction between workflows ("predefined code paths") and agents ("LLMs dynamically directing their own processes").

Close Part 1 with the substitution: the primary operational design artifact has changed.

| Classical | Agentic |
|-----------|---------|
| BPMN diagrams | Agent instructions / system prompts |
| SOPs | Constitutional principles and guardrails |
| Approval matrices | Permission scopes and escalation triggers |
| Workflow engine configuration | Harness configuration |
| Training manuals | Few-shot examples and evaluation suites |
| KPIs on process steps | Evaluation suites on agent behavior |

This is a substitution, not an addition. The reader's attention has to move accordingly.

#### Part 2: What a Harness Is

Introduce the harness with a Marco analogy. When Hannah hired Marco, she wrapped him in infrastructure: email, CRM, pricing sheet, demo environment, calendar, expense policy, approval flow, weekly review. None of that is Marco. All of it is the scaffolding around Marco that lets him do the job inside Hannah's company. The same is true for an LLM agent. The model is Marco. The harness is everything else.

Formal definition: a harness is the runtime infrastructure that wraps an LLM to make it capable of sustained, tool-using, goal-directed work. Quote Anthropic: *"all intelligence lives in the model; the harness just manages turns."* And: *"Models can't handle authentication, permissions, rate limiting, compliance. Harnesses do."*

State the strategic split clearly:
- The model is rented, improving outside your control.
- The harness is yours. It encodes your company's operational knowledge, risk tolerance, and differentiation.
- Investing in harness design is investing in your own operating capability. Betting on model capability is betting on a rising tide.

#### Part 3: What Lives Inside a Harness

Walk through the seven components with a one-paragraph description each:

1. **The agent loop** — Thought → Action → Observation (ReAct). Assemble prompt, call model, parse output, execute tool calls, feed results back, repeat until completion or stop condition.
2. **Tool routing** — translating the model's tool-call outputs into real function calls and returning results. The choice of tool set is one of the most important design decisions.
3. **Context management** — compaction, retrieval, and memory across a finite context window.
4. **Authentication and permissions** — enforcing what the principal the agent acts for is allowed to see and do.
5. **Guardrails and safety** — input filters, output filters, rate limits, cost caps, tool blocklists.
6. **Session and state persistence** — the append-only log of a run, plus persistent memory across runs.
7. **Observability** — reasoning traces, tool-call logs, replay, evaluation, audit. The agentic equivalent of workflow audit trails, but richer.

Emphasize: each of these is a design decision. Together they are the operating artifact of the company.

#### Part 4: The Operating System Analogy

Introduce Anthropic's [Managed Agents](https://www.anthropic.com/engineering/managed-agents) framing: agent runtime is a virtualization problem like operating systems were. Three stable abstractions — **session**, **harness**, **sandbox** — allow models, harnesses, and execution environments to evolve independently while application logic stays put.

Draw the parallel to the 1980s–1990s shift from hardware-specific applications to OS-targeted applications. The companies that made that transition early benefited from every downstream improvement without rewriting code. Agentic applications are going through the same transition now. Practical advice: write your agentic systems against stable abstractions, not against specific frameworks or vendors.

#### Part 5: The Design Questions You Will Actually Answer

This is the practical payoff section. Every agent deployment requires answering the same six questions:

1. **Which tools does the agent get access to?** (What actions can it take?)
2. **What knowledge does the agent have access to?** (What can it look up?)
3. **What are the instructions and guardrails?** (What is it trying to do, and what should it never do?)
4. **How is the loop terminated?** (When does it stop and return?)
5. **Where is human approval required?** (What escalation triggers exist?)
6. **How is the run observed?** (What logs, evaluations, audits?)

Show the direct human-management analogue for each using Marco: territory, pricing sheet, rules of engagement, review checkpoints, escalation paths, CRM pipeline. Point: the reader has already done this design exercise in a different medium. They called it onboarding.

#### Part 6: Build, Buy, or Rent

The sourcing question. Three honest options:

- **Build your own.** Maximum control, maximum cost. Trap for most companies. Worth it only if the harness itself is part of the moat.
- **Off-the-shelf frameworks** — LangGraph, Claude Agent SDK, OpenAI Agents SDK, Microsoft Agent Framework. Sensible default for technical teams that want real control without reinventing agent plumbing.
- **Managed services** — Anthropic Managed Agents, similar offerings from Google, AWS, specialized vendors. The industry direction for most commercial use cases. Logic: same as using AWS instead of running your own data center.

Working recommendation for most readers: start with a managed harness; move to a framework when you hit a wall; build only with concrete evidence that the harness is a differentiating asset.

Emphasize the principle: do not confuse *operating* a harness with *differentiating through* one. Very different things. Most companies only need the first.

#### Closing Beat

Name the shift cleanly. Classical operations were organized around the process diagram. Agentic operations are organized around the harness. The entrepreneur who once modeled processes now designs (or configures) harnesses. Set up the next chapter, which takes one of Hannah's harnesses and puts it to work on actual business functions, showing what "one human, many agents" looks like in practice.

### Draft Location

- outputs/manuscript/agentic-systems-and-the-harness-draft.md (to be created)

### Related Pages

- [Agentic Processes — Hub](../concepts/agents/agentic-processes/index.md)
- [Business Processes 101](../concepts/agents/agentic-processes/business-processes-101.md)
- [Agentic Process Execution](../concepts/agents/agentic-processes/agentic-process-execution.md)
- [Agentic Harnesses](../concepts/agents/agentic-processes/agentic-harnesses.md)
- [What an Agent Is (chapter brief)](what-an-agent-is.md)
- [Modern LLM Agent Architectures](../concepts/agents/agent-architectures/modern-llm-agent-architectures.md)

### Deferred to Next Chapter

Multi-agent systems and agent-to-agent coordination, detailed evaluation methodology, specific harness implementations for specific business functions (sales, support, engineering, operations), and the economics of agent fleets at scale.

## Sources

- [raw/research/2026-04-17-agentic-processes-research.md](../../raw/research/2026-04-17-agentic-processes-research.md)
- [Anthropic — Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents)
- [Anthropic — Scaling Managed Agents: Decoupling the Brain from the Hands](https://www.anthropic.com/engineering/managed-agents)
- [Anthropic — Effective Harnesses for Long-Running Agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents)

## Last Updated

2026-04-17
