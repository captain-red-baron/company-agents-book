DRAFT

# Agentic Systems and the Harness

By now you know what a company is, and you know what an agent is. You have met Hannah, Lukas, Marco, and the first AI support agent running in her company. The next question is the one that separates people who talk about agents from people who actually operate them: **how do you run one?**

Not conceptually. Operationally. In production. Handling real customers, real money, real consequences.

This chapter is about the answer. It is about agentic systems — the way work actually gets executed when an LLM is in the loop — and about the piece of engineering that makes the whole thing go: the **harness**.

If you only remember one thing from this chapter, remember this: the harness is the new operating artifact of your company. It is to agentic operations what the BPMN diagram and the workflow engine were to classical operations. That is where your differentiation will live. That is where your strategic work sits.

## From Processes to Agents

For the last fifty years, the operating religion of modern management has been the business process. Take any complex piece of work, break it into steps, draw the steps as boxes and arrows, define the hand-offs, encode the approvals, automate what you can, and train humans to execute the rest. Frederick Taylor started it. Michael Hammer and James Champy evangelized it in the 1990s with Reengineering the Corporation. BPMN diagrams, ERP systems, workflow engines, and an entire consulting industry grew up around it.

And it worked. It still works. If you are running payroll for a company of ten thousand people, you want that process modeled, automated, and boring. You do not want intelligence in the loop. You want determinism.

But most of the work inside a company is not payroll. Most of it is messy. Customer support tickets that do not fit the decision tree. Sales conversations that go sideways. Engineering bugs that require judgment. Operational exceptions that nobody anticipated when the process was designed. Every company I have ever worked with has the same joke: the real work is the work that does not fit the process.

Classical BPM handled that in the cheapest way it could: escalate to a human. When the workflow engine hits a case it cannot handle, it routes the ticket to a queue, and somebody reads it and figures out what to do. The human is the exception handler of last resort. That is why large operations departments exist — not to execute the designed processes, but to handle everything the designed processes cannot.

Agents invert this. Give an LLM-powered agent a goal, a set of tools, a knowledge base, and a runtime environment, and it will construct the process as it goes. It does not need the decision tree. It reasons about the specific situation in front of it and picks the next action. When the situation is novel, it adapts. When a tool fails, it tries another. When it hits its limits, it escalates — not because the workflow told it to, but because it understood that it should.

This is a different way of organizing work. Anthropic put the distinction cleanly in their [Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents) post:

> **Workflows** are systems where LLMs and tools are orchestrated through predefined code paths. **Agents** are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks.

Workflows look like traditional BPM with LLMs slotted into the steps. Agents look like employees with goals and resources. The spectrum between them matters, and you will operate all along it. But the real shift — the one that changes how you design your company — is the move toward agents. Because agents absorb the exception cases that classical BPM has to escalate to humans. And that is where most of the managerial and operational cost of your company actually lives.

## The Old Artifact and the New One

Here is the substitution you need to see clearly.

In classical operations, your primary design artifacts were things like:

- BPMN process diagrams
- Standard operating procedures
- Approval matrices and decision tables
- Workflow engine configurations
- Process documentation and training manuals
- KPIs on individual process steps

In agentic operations, your primary design artifacts are different:

- Agent instructions and system prompts
- A curated set of tools the agent can call
- A knowledge base the agent can retrieve from
- Guardrails, permissions, and escalation triggers
- Evaluation suites that measure the agent's behavior
- Reasoning traces and run logs

This is not an additive change. It is a substitution. The shape of your operations work changes. You stop drawing process diagrams. You start writing prompts, curating tools, and running evaluations. The underlying skills are related — clarity about goals, well-designed guardrails, good monitoring — but the outputs are different, and the rhythm of the work is different.

That matters because it tells you where to invest engineering effort. If you are running a company in 2026, the single most valuable thing an operator can learn how to do is design an agentic system. Not a workflow with an LLM step. An actual agent, with judgment, acting inside your business.

And the object that makes that agent real is called the harness.

## What a Harness Is

I want to introduce the harness with an image you already have.

Imagine you hire Marco, your sales rep. He is smart and capable. He has good instincts. But the moment you hire him, you wrap him in a set of company-specific infrastructure: an email account, access to the CRM, a pricing sheet, a demo environment, a calendar, expense policies, approval workflows for discounts, an onboarding document, a weekly review with you. None of that is Marco. All of it is the scaffolding around Marco that lets him do his job inside your company.

The same is true for an LLM agent. The model is Marco. The harness is everything else.

Formally: an **agentic harness** is the runtime infrastructure that wraps an LLM to make it capable of sustained, tool-using, goal-directed work. It implements the main loop — perceive, reason, act, observe, repeat. It routes tool calls to real systems. It manages the context window. It handles authentication and permissions. It enforces guardrails. It persists state across turns. It produces logs.

Anthropic has a phrase for this, and it is worth adopting: "all intelligence lives in the model; the harness just manages turns." The model does the thinking. The harness does everything else.

That distinction is strategic. Let me spell it out, because it changes where you invest.

The model is improving rapidly. GPT and Claude and Gemini are getting smarter every quarter. You do not control that, you do not build it, you rent it. Any bet you place on model capability is going to get better over time without you doing anything.

The harness is yours. It is the code, the configuration, the tools, the prompts, the guardrails, the evaluations. It is where your engineering work lives. It is where your company's operational knowledge is encoded. It is where the specific shape of your business shows up. The harness is the artifact.

From Anthropic's [Managed Agents](https://www.anthropic.com/engineering/managed-agents) announcement, there is a line that captures this cleanly:

> Models can't handle authentication, permissions, rate limiting, compliance. Harnesses do.

Read that line and map it onto your company. Everything in your business that is company-specific — who has access to what, who can approve what, what your policies are, which tools are available, which data the agent can see, when to escalate, how to audit — lives in the harness. None of it lives in the model. And none of it will be solved for you by the next model release.

## What Lives Inside a Harness

Let me get more concrete. A production-grade harness has roughly seven moving parts. You do not have to build all of them from scratch — and later in this chapter I will argue you probably should not — but you have to understand them, because the design choices you make here are the design choices that shape how your agents actually behave.

**1. The agent loop.** This is the heart. On every turn, the harness assembles a prompt from the system instructions plus the conversation so far plus the latest observation, calls the model, parses what the model produces (some reasoning, maybe a tool call or two, maybe a final answer), executes any tool calls, feeds the results back in, and loops. The canonical pattern is Thought → Action → Observation, sometimes called ReAct. Every serious agent framework implements some version of this.

**2. Tool routing.** The model outputs something like *"call the `search_customer` tool with customer_id=4421."* The harness translates that into an actual function call — a database query, an API request, a file read — executes it, and returns the result. The set of tools the agent has access to is one of the most important design decisions you will make. Too few and the agent is useless. Too many and it gets lost.

**3. Context management.** The model's context window is finite. A long-running agent will overflow it quickly. The harness handles this by compacting earlier turns into summaries, retrieving only the documents the agent needs at the moment it needs them, and persisting memory across sessions. If you have ever watched an agent forget something it knew three turns ago, that is a harness problem, not a model problem.

**4. Authentication and permissions.** The agent is acting on behalf of some principal — your company, a specific user, a specific role. The harness is what enforces that principal's scope. Which tools can it call? Which customers can it see? Which data is off-limits? In a well-designed harness, these scopes are declarative and auditable, not buried inside prompts.

**5. Guardrails and safety.** Input filters that block prompt injection attempts. Output filters that block unsafe or policy-violating responses. Rate limits that keep a runaway agent from spending your API budget in an hour. Cost caps, concurrency limits, blocklists on tools that touch money or production systems without approval. This is the part where your risk tolerance becomes code.

**6. Session and state persistence.** Across a single task, the harness tracks what has happened. Across many tasks, it may persist learned context, customer history, or project state. In Anthropic's formulation, the *session* is an append-only log of everything the agent did. That log is your audit trail, your debugging tool, and your evaluation dataset rolled into one.

**7. Observability.** Logs of every reasoning step, every tool call, every decision. This is the agentic equivalent of an audit trail in a classical workflow engine, but richer. You can replay any run. You can measure any metric. You can catch regressions. If you are serious about running agents, observability is not a nice-to-have. It is the thing that lets you trust what is happening when you are not watching.

Seven parts. Each one is a design decision. Together they are the operating artifact of your company.

## The Operating System Analogy

In late 2026, Anthropic announced something called Managed Agents, and they framed it explicitly in operating-system terms. The framing is the clearest I have seen, so I want to put it directly in front of you:

> Building Managed Agents meant solving an old problem in computing: how to design a system for "programs as yet unthought of." Decades ago, operating systems solved this problem by virtualizing hardware into abstractions — process, file — general enough for programs that didn't exist yet. The abstractions outlasted the hardware.

They virtualized three things for agents:

1. **Session** — the append-only log of an entire agent run. The canonical record.
2. **Harness** — the loop that calls the model and routes tool calls to infrastructure.
3. **Sandbox** — the execution environment where the agent can run code and edit files.

Each one can evolve independently while the interfaces stay stable. If you build your application against these abstractions, you get better models, better harnesses, and better sandboxes for free as the underlying implementations improve.

If you have been around computing long enough, you will recognize what is happening here. It is the same transition applications went through in the eighties and nineties, when they stopped being written to specific hardware and started being written to the operating system. Agentic applications are going through that transition now. The companies that make that transition early will benefit from every subsequent improvement in the stack without rewriting their code.

The practical implication for you is simple: write your agentic systems against stable abstractions, not against specific frameworks. Do not couple your business logic tightly to LangGraph, or to a specific version of the OpenAI Assistants API, or to any single vendor's idea of what a harness should look like. The abstractions are settling. Bet on them.

## The Design Questions You Will Actually Answer

Everything above is orientation. Here is the part that matters operationally: when you sit down to design an agentic system for a specific function in your company, you will answer a specific set of questions. These are the agentic equivalent of the questions you used to answer when you designed a business process. They are not that different.

**Which tools does the agent get access to?** What actions can it take in the world? Can it read the CRM? Can it write to the CRM? Can it send an email? Can it charge a card? Every tool you add is capability plus risk. Start narrow.

**What knowledge does the agent have access to?** What can it look up? The product documentation, the customer history, the internal policy manual, the contract database. Knowledge access drives quality. Most agent failures I have seen are knowledge failures dressed up as reasoning failures.

**What are the instructions and guardrails?** What is the agent trying to do? What should it never do? What is its tone? What is its escalation threshold? This is the system prompt, plus any structured policy documents. Think of it as the employee handbook compressed into text the model will read on every turn.

**How is the loop terminated?** When does the agent stop and return a result? After a final answer? After N turns? After a specific tool is called? After a confidence threshold is crossed? A badly terminated agent will either quit too early (missing work) or loop forever (burning tokens).

**Where is human approval required?** Every agent you deploy will have a boundary between "act autonomously" and "ask a human first." Drawing that boundary is a risk decision. Refunds above a threshold, emails to specific VIP customers, any write to a production database, any action that costs more than X. Pick the triggers. Encode them.

**How is the run observed?** What logs come out? What evaluations run? What dashboards exist? What gets sampled for human review? What gets replayed when something goes wrong? If you cannot answer these questions, you do not have an agentic system. You have a liability.

Every single one of these questions has a direct analogue in how you hire and manage a human employee. Marco has a territory (tool scope). Marco has a pricing sheet (knowledge access). Marco has rules of engagement (instructions and guardrails). Marco has review checkpoints (termination and escalation). Marco shows up in the CRM pipeline every week (observability). If you have ever hired someone, you have already done this design exercise in a different medium. You just called it onboarding.

## Build, Buy, or Rent

The last practical question is where your harness comes from. You have three options, and the honest advice is different for each type of company.

**Build your own.** Roll the loop, the tool routing, the context management, and the observability yourself. Maximum control. Maximum flexibility. Maximum engineering cost. Worth it if your operations are genuinely differentiated and the harness itself is part of your moat. For most companies, this is a trap. You will reinvent infrastructure that somebody else has already built better than you will.

**Use an off-the-shelf framework.** LangGraph, Claude Agent SDK, OpenAI's Agents SDK, Microsoft Agent Framework, plus the open-source ecosystem around them. You get the loop, tool routing, and often some observability out of the box. You still run the infrastructure. This is the sensible default for a technical team that wants real control without reinventing basic agent plumbing.

**Rent a managed service.** Anthropic's Managed Agents, similar offerings emerging from Google, AWS, and specialized vendors. The provider operates the harness and the sandbox. You bring the instructions, tools, and knowledge. This is where the industry is moving for most commercial use cases, and the logic is the same as why you use AWS instead of running your own data center. The operational competence required to run a harness well is real, and you probably have better uses for that engineering time.

My working recommendation for most readers of this book: start with a managed harness. Get agents into production. Learn what your business actually needs from them. Move to an off-the-shelf framework if you hit a wall. Build your own only if you have concrete evidence that your harness itself is a differentiating asset — and most companies never will.

This recommendation will shift over time. Managed services will get more capable and more flexible. Off-the-shelf frameworks will get more polished. The boundary between them will move. But the principle stays: do not confuse operating a harness with differentiating through a harness. Those are very different things, and most companies only need the first one.

## What This Chapter Changes for You

If the previous chapter convinced you that agents are just a new medium for work, this chapter is where that claim meets the ground. The medium has a specific shape. It is not just an LLM sitting on a server. It is a loop, a session, a sandbox, a tool set, a knowledge base, a guardrail layer, an evaluation pipeline. All of that, together, is the harness. All of that is the thing you design, deploy, monitor, and improve.

The shift is real. Classical operations were organized around the process diagram. Agentic operations are organized around the harness. If you are an entrepreneur thinking about how to scale from one human to a hundred agents, your job description just changed. You are no longer the person who designs processes. You are the person who designs harnesses — or who chooses and configures the right one and puts your business logic on top of it.

In the next chapter we will take a harness we have designed for Hannah and put it to work. We will give it specific tools, a specific knowledge base, specific guardrails, specific evaluations — and watch what happens when a single agent starts doing the work of a team.

That is where one human and one hundred agents starts to become a real operating model rather than a thought experiment.

## Sources

- [wiki/concepts/agents/agentic-processes/index.md](../../wiki/concepts/agents/agentic-processes/index.md)
- [wiki/concepts/agents/agentic-processes/business-processes-101.md](../../wiki/concepts/agents/agentic-processes/business-processes-101.md)
- [wiki/concepts/agents/agentic-processes/agentic-process-execution.md](../../wiki/concepts/agents/agentic-processes/agentic-process-execution.md)
- [wiki/concepts/agents/agentic-processes/agentic-harnesses.md](../../wiki/concepts/agents/agentic-processes/agentic-harnesses.md)
- [Anthropic — Building Effective Agents](https://www.anthropic.com/engineering/building-effective-agents)
- [Anthropic — Scaling Managed Agents: Decoupling the Brain from the Hands](https://www.anthropic.com/engineering/managed-agents)
- [Anthropic — Effective Harnesses for Long-Running Agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents)

## Last Updated

2026-04-17
