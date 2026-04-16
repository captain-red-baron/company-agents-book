# What an Agent Is

This chapter introduces the concept of the agent as the fundamental unit of work — in any company, in any era. The core move: show the reader that human agents and AI agents are not different species. They are different implementations of the same architecture. Then use that insight to unlock a practical transfer: the management frameworks you already use for human agents work for AI agents too, with adjustments.

## Sections

### Chapter Purpose

The first chapter established what a company is — a bounded system organized to create, deliver, and capture value. This chapter zooms in on the actors inside that system. Every company runs on agents: people authorized to act on behalf of the organization, making decisions, executing tasks, and pursuing goals within their delegated scope. The reader needs to understand agents as a general concept before we can argue that AI agents are about to join the workforce as a new kind of colleague.

The chapter should leave the reader thinking: "I already know how to manage agents. I have been doing it my entire career. AI agents are a new medium, not a new discipline."

### Core Argument

The word "agent" means the same thing in business, in law, in computer science, and in AI: an entity that acts on behalf of a principal to achieve goals in an environment. This is not a loose analogy. It is a structural description. Human agents and AI agents share the same perception-reasoning-action loop, face the same principal-agent problem, and require the same management mechanisms — delegation, authority boundaries, monitoring, escalation, trust progression. The management frameworks companies have built for human agents are directly transferable to AI agents.

### Narrative Device

Continue with Hannah Schmidt. Her company has grown from the founding moment in Chapter 1. She now has a team — employees, contractors, a head of sales, an implementation lead. Every one of them is an agent acting on her behalf. The chapter uses Hannah's real management challenges to introduce the concept of agency, then shows how the same challenges appear when she starts deploying AI agents.

### Proposed Flow

#### Part 1: Definition — What Is an Agent?

Open by observing that Hannah now has a company with people in it. She is no longer the one doing all the work. She delegates. That makes her a principal. And every person she delegates to is an agent.

**Hannah's human agent example:** Her implementation lead, Jonas, is a perfect example. Hannah hires Jonas to manage the deployment of her sewing machine software at customer factories. She gives him a scope (manage implementation for mid-size customers), authority (approve on-site changes up to 2 days of effort), context (product roadmap, customer history, technical constraints), and goals (successful go-lives within timeline and budget). Jonas perceives the factory environment, reasons about what needs to happen, acts by coordinating technicians and configuring software, and learns from each deployment. He is an agent — situated in an environment, acting autonomously within boundaries, pursuing goals on Hannah's behalf.

Then introduce the formal definition: an agent is an entity that perceives its environment, reasons about what to do, acts to achieve goals on behalf of a principal, and learns from outcomes. Show this is the same definition Russell and Norvig gave in 1995, Wooldridge and Jennings formalized the same year, and every major AI company restates today. Name the key researchers. The definition has been stable for thirty years because it describes a real structural pattern.

**Hannah's AI agent example:** Six months later, Hannah deploys an AI agent to handle first-level customer support inquiries about machine configuration. The agent receives a customer message (perceives), processes it against the product documentation and past tickets (reasons), generates a response or escalates to a human (acts), and its responses are evaluated and fed back into the system (learns). It has a scope (configuration questions only), authority (can answer and close standard tickets, must escalate billing and hardware issues), context (product docs, customer history), and goals (resolve tickets accurately and quickly).

The punchline: Jonas and the support agent are running on the same architecture. Perception-reasoning-action-learn. Delegated authority within boundaries. Goals set by the principal. The medium is different. The structure is identical.

Brief tour of definitions — show the consensus across:
- **Classical CS:** Russell & Norvig (perceive-act), Wooldridge (autonomy, reactivity, proactiveness, social ability), Franklin & Graesser (situated, senses, acts, pursues agenda)
- **Industry:** Anthropic (LLM that dynamically directs its own processes), OpenAI (independently accomplishes tasks on your behalf), Google (pursues goals with reasoning, planning, memory, autonomy)
- **Business/law:** A person authorized to act on behalf of a principal, bound by fiduciary duty

The key insight: every definition converges on the same five properties — perceive, reason, act, pursue goals, adapt. These properties describe a human sales rep and an LLM customer service agent with equal accuracy.

Mention the BDI architecture (Bratman → Rao & Georgeff) as the strongest bridge: it was explicitly derived from a theory of how humans reason (beliefs, desires, intentions), then formalized into software agent design. The architecture of agency was always shared.

#### Part 2: Deep Dive — The Economics of Agency

Transition: if human agents and AI agents share the same architecture, do they also share the same problems? Yes. The biggest one has a name: the principal-agent problem.

Introduce Jensen and Meckling (1976). A firm is a nexus of contracts. Every delegation relationship generates **agency costs** — the unavoidable price of getting someone else to do work on your behalf. Three types:

**1. Monitoring costs** — what the principal spends to observe and control the agent's behavior.

*Hannah's example:* Hannah cannot be in every factory watching Jonas work. She needs reporting — weekly deployment summaries, go-live checklists, customer satisfaction scores. She does ride-alongs occasionally, sitting in on implementations to see how Jonas handles edge cases. She reviews his estimates before he commits to customers. All of this costs time, attention, and money. It is the price she pays for not doing the work herself.

*AI parallel:* When Hannah deploys the AI support agent, she builds an evaluation dashboard — ticket resolution rate, customer satisfaction, escalation frequency, hallucination checks on a random sample of responses. She sets up automated quality checks that flag responses below a confidence threshold. She reviews flagged tickets weekly. Monitoring costs do not disappear with AI agents. They change form — from management conversations to evaluation pipelines. In some ways they get cheaper (you can log every interaction). In other ways they get harder (the agent operates too fast for real-time human review).

**2. Bonding costs** — what the agent spends to assure the principal they will act faithfully.

*Hannah's example:* Jonas documents his implementation process. He sends Hannah a weekly summary before she asks for one. He proactively flags risks early rather than hiding them until they become emergencies. He builds a track record of reliable delivery so Hannah trusts him with bigger accounts. These are bonding costs — Jonas invests effort in making his work visible and trustworthy, even when that effort does not directly produce output.

*AI parallel:* The AI agent's bonding costs are structural rather than behavioral. They are built into the system by design: chain-of-thought reasoning traces that show the agent's logic, tool call logs that document every action, confidence scores on every response, explicit citation of sources. Constitutional AI training and RLHF are, in a sense, massive upfront bonding investments — teaching the agent to behave in ways that build the principal's trust. The agent cannot choose to be transparent the way Jonas can. But the system can be designed to make transparency the default.

**3. Residual loss** — the unavoidable gap between the agent's actions and what would maximize the principal's welfare.

*Hannah's example:* Even with monitoring and bonding, Jonas will sometimes make decisions that are not exactly what Hannah would have chosen. He approves a two-day scope extension that Hannah would have pushed back on. He prioritizes a customer relationship that Hannah considers lower-value. He uses a deployment approach that works but is not the one Hannah would have picked. None of this is malice or incompetence. It is the structural reality that Jonas is not Hannah. He has different judgment, different information, different instincts. The gap between what Jonas does and what Hannah would have done is residual loss. It can never be zero.

*AI parallel:* The AI support agent resolves tickets differently than Hannah would. It phrases responses in ways she would not choose. It escalates some tickets she would have handled, and handles some she would have escalated. It occasionally hallucinates a product feature that does not exist. Residual loss with AI agents takes different forms — hallucination, sycophancy, specification gaming, reward hacking — but the fundamental reality is the same: the agent is not the principal, and the gap between their actions can never be fully closed.

Close Part 2 with the strategic insight: agency costs cannot be eliminated. They can only be managed. That is true for human agents and AI agents alike. The entire history of management — incentive design, governance, reporting, culture-building — is a set of technologies for managing agency costs. The question for the AI era is not whether agency costs exist with AI agents (they do), but whether the tools for managing them transfer.

#### Part 3: Managing Agents — The Transfer Playbook

Transition: the principal-agent framework tells us the problems are the same. Now let us look at the solutions. Companies have spent decades building management practices for human agents. How well do they transfer to AI agents?

Walk through each practice with Hannah as the illustration, showing both the human and AI version side by side. This section should be the most detailed and practical part of the chapter.

**1. Onboarding**

Hannah onboards Jonas: orientation on the company, its products, its customers, its values. Training materials. Shadowing a senior colleague on two implementations. A 90-day probationary period with weekly check-ins.

Hannah onboards the AI support agent: system prompt with company context, product documentation, tone guidelines, and behavioral rules. Few-shot examples of good and bad responses. A staging environment where the agent handles simulated tickets before going live. A 30-day evaluation period with human review of every fifth response.

The function is identical. The medium changed from social to technical.

**2. Delegation**

Hannah delegates to Jonas: clear task description ("manage the Müller Textil implementation"), expected outcomes ("go-live by March 15, customer satisfaction above 8/10"), context on why it matters ("Müller is our largest customer; this sets the reference for the whole segment"), and an escalation trigger ("if scope exceeds 3 days or the customer requests hardware changes, come to me").

Hannah delegates to the AI agent: structured prompt ("handle customer configuration questions"), success criteria ("resolve accurately within company policy"), background context in the knowledge base, and programmatic escalation rules ("if confidence below 0.7 or topic is billing/hardware, hand off to human").

Same structure. Same logic. Different interface.

**3. Authority Boundaries**

Hannah defines Jonas's authority: he can approve on-site changes up to 2 days of effort, he can communicate directly with factory floor managers, he cannot approve custom pricing or commit to roadmap features.

Hannah defines the AI agent's authority: it can answer configuration questions and close tickets, it can access the product documentation and customer history, it cannot access billing data, it cannot promise features, it cannot override escalation triggers.

The concept is identical. With AI agents it must be more explicit because they lack the social intuition that helps humans infer unstated boundaries.

**4. Monitoring and Feedback**

Hannah monitors Jonas: weekly 1:1, quarterly review, project post-mortems, occasional ride-alongs, customer feedback surveys.

Hannah monitors the AI agent: real-time dashboard (resolution rate, satisfaction, escalation rate), automated quality checks, weekly review of flagged responses, monthly evaluation against a curated test set.

The shift: from periodic human judgment to continuous automated evaluation. But the purpose is the same — verify the agent is performing, catch problems early, course-correct.

**5. Trust Progression**

Hannah trusts Jonas progressively: first implementation with close supervision → solo on small customers → lead on mid-size accounts → eventually trusted with the largest accounts and mentoring junior implementers.

Hannah trusts the AI agent progressively: staging environment only → live with human review of every response → live with spot-check review → live with automated monitoring only → expanded to handle more complex ticket types.

The principle is universal: grant autonomy proportional to demonstrated competence. Start tight, expand as trust is earned.

**6. Escalation**

Hannah tells Jonas: "Come to me if the customer asks for something outside our standard scope, if you discover a hardware issue, or if you are not sure what to do."

Hannah configures the AI agent: "Escalate to human if confidence is below threshold, if the query involves billing or hardware, or if the customer expresses frustration."

The logic is the same. The implementation shifts from judgment-based ("if you are not sure") to rule-based ("if confidence below 0.7"), though modern AI agents are increasingly capable of judgment-like escalation decisions.

**What needs adjustment:** Speed mismatch (management at machine speed), absence of social norms (everything must be explicit), replicability (one configuration, many instances).

**What breaks:** Intrinsic motivation (you cannot appeal to an AI agent's career ambitions), social accountability (no peer pressure), informal knowledge transfer (no water cooler), ethical intuition in novel situations (explicit principles needed).

Close the chapter with the central claim: you are not entering a new discipline when you start managing AI agents. You are extending an existing one. The principal-agent problem is the same. The delegation challenge is the same. The trust-building process is the same. What changes is the speed, the scale, and the need for explicit specification. The entrepreneur who has built and managed a team of 10 people has practiced the core skills needed to orchestrate a fleet of AI agents.

### Draft Location

- outputs/manuscript/what-an-agent-is-draft.md (to be created)

### Related Pages

- [Agents — Hub Page](../concepts/agents/index.md)
- [What an Agent Is](../concepts/agents/what-an-agent-is/index.md)
- [Classical CS Agent Definitions](../concepts/agents/what-an-agent-is/classical-cs-agent-definitions.md)
- [The BDI Architecture](../concepts/agents/what-an-agent-is/bdi-architecture.md)
- [Industry AI Agent Definitions](../concepts/agents/what-an-agent-is/industry-ai-agent-definitions.md)
- [The Human Agent](../concepts/agents/what-an-agent-is/human-agent-definition.md)
- [Human Agents and AI Agents](../concepts/agents/human-agents-and-ai-agents/index.md)
- [Principal-Agent Theory and AI](../concepts/agents/human-agents-and-ai-agents/principal-agent-theory-and-ai.md)
- [Transferring Work Models](../concepts/agents/human-agents-and-ai-agents/transferring-work-models.md)
- [Jensen and Meckling on the Firm](../concepts/company/what-a-company-actually-is/jensen-and-meckling-on-the-firm.md)
- [Governance, Control, and Incentives](../concepts/company/how-a-company-is-built/governance-control-and-incentives.md)

### Deferred to Next Chapter

Agent architectures (classical and modern), the perception-reasoning-action loop in technical depth, multi-agent systems, and organizational design patterns for agent coordination are reserved for the next chapter.

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
