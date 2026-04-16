# Industry AI Agent Definitions

Every major technology company now has an official definition of what an AI agent is. Despite the competitive pressure to differentiate, these definitions are strikingly similar. Beneath the marketing vocabulary, Anthropic, OpenAI, Google, Microsoft, IBM, AWS, and LangChain all describe the same thing: a system that perceives, reasons, acts, and learns on behalf of a user. The consensus is not accidental — it reflects the same underlying architecture that computer scientists described in the 1990s, now implemented with large language models.

## Sections

### Core Idea

Industry definitions of AI agents from 2024–2026 converge on five properties: (1) the agent perceives or senses its environment, (2) it reasons or decides what to do, (3) it acts autonomously, (4) it pursues goals on behalf of a user, and (5) it operates over time, learning and adapting. The main points of differentiation are in emphasis — Anthropic stresses simplicity and composability, OpenAI emphasizes guardrails and tools, Google highlights the "agentic era" of multimodal reasoning, Microsoft focuses on enterprise orchestration, and LangChain introduces the concept of "cognitive architecture" as a spectrum.

### Details

#### Anthropic (December 2024) — "Building Effective Agents"

Anthropic draws a key distinction within what they call **agentic systems**:

- **Workflows**: "Systems where LLMs and tools are orchestrated through predefined code paths."
- **Agents**: "Systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks."

The building block of any agentic system is an **augmented LLM** — a language model enhanced with retrieval, tools, and memory. Anthropic then defines a progression of patterns: prompt chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer, and fully autonomous agents.

The design philosophy: "The most successful implementations weren't using complex frameworks or specialized libraries. Instead, they were building with simple, composable patterns."

In early 2026, Anthropic renamed the Claude Code SDK to the **Claude Agent SDK**, signaling a broader ambition for agents beyond code.

#### OpenAI (April 2025) — "A Practical Guide to Building Agents"

> "Agents are systems that independently accomplish tasks on your behalf."

OpenAI defines three core components: **Model** (the LLM powering reasoning), **Tools** (external functions/APIs the agent can call), and **Instructions** (explicit guidelines and guardrails defining behavior).

The agent operates in a **run loop** — cycling through: evaluate what it knows, determine if more context or action is needed, compare progress with its goal.

OpenAI's Agents SDK provides primitives: agents (models with instructions and tools), handoffs (passing control between agents), and guardrails (input/output validation).

Orchestration falls into two categories: **single-agent systems** (one model with tools in a loop) and **multi-agent systems** (distributed across coordinated agents).

#### Google Cloud & DeepMind (2024–2025)

> "AI agents are software systems that use AI to pursue goals and complete tasks on behalf of users. They show reasoning, planning, and memory and have a level of autonomy to make decisions, learn, and adapt."

Google identifies six essential capabilities: **reasoning**, **acting**, **observing**, **planning**, **collaborating**, and **self-refining**.

Architecture components include: **persona** (consistent character), **memory** (short-term, long-term, episodic), **tools** (functions and external resources), and **model** (LLM foundation).

Google provides a useful comparison table distinguishing agents from assistants from bots:

| Aspect | AI Agent | AI Assistant | Bot |
|--------|----------|--------------|-----|
| **Autonomy** | High — operates independently | Medium — requires user direction | Low — follows pre-programmed rules |
| **Complexity** | Complex, multi-step tasks | Simple task assistance | Basic interactions |
| **Interaction** | Proactive, goal-oriented | Reactive, request-based | Reactive, trigger-based |
| **Learning** | Learns and adapts over time | Some learning capability | Limited or no learning |

Google declared 2025 the beginning of the "agentic era" with Gemini 2.0, and released the **Agent Development Kit (ADK)** and the **Agent2Agent (A2A)** protocol for inter-agent communication.

#### Microsoft (2024–2026)

> "An AI agent is a software entity designed to perform tasks autonomously or semi-autonomously by receiving input, processing information, and taking actions to achieve specific goals."

Microsoft's architectural journey is instructive. They converged two separate frameworks — **AutoGen** (research-oriented multi-agent framework using the actor model) and **Semantic Kernel** (production SDK) — into the unified **Microsoft Agent Framework** (v1.0 shipped April 2026).

AutoGen v0.4 adopted an event-driven **actor model** for agent orchestration: agents as computational building blocks that exchange messages asynchronously and perform work in response. The architecture has three layers: **Core** (actor model), **AgentChat** (rapid prototyping API), and **Extensions** (integrations).

#### IBM (2024–2025)

> "The true definition [of an AI agent] is an intelligent entity with reasoning and planning capabilities that can autonomously take action."

IBM frames agentic AI as "an artificial intelligence system that can accomplish a specific goal with limited supervision, consisting of AI agents — machine learning models that mimic human decision-making to solve problems in real time."

IBM distinguishes agents from generative AI: "Gen AI models focus on creating content based on learned patterns; agents use that content to interact with each other and other tools to make decisions, solve problems, and complete tasks."

#### AWS / Amazon Bedrock (2024–2025)

> "AI agents are a new class of software applications that use foundation models (FMs) to reason, plan, act, learn, and adapt in pursuit of user-defined goals with limited human oversight."

AWS emphasizes the **perceive-reason-act** loop as the foundational agent function. Amazon Bedrock AgentCore (GA October 2025) provides infrastructure for building, deploying, and operating agents at scale with a supervisor-based multi-agent architecture.

#### LangChain (2024–2025)

> "An AI agent is a system that uses an LLM to decide the control flow of an application."

LangChain introduced the concept of **cognitive architecture** — "how a system processes inputs and generates outputs through a structured flow of code, prompts, and LLM calls." The term was coined by Flo Crivello.

LangChain describes a spectrum of cognitive architecture levels:
1. **Hardcoded** — everything predetermined
2. **Single LLM call** — one model call with pre/post-processing
3. **Chain** — sequential LLM calls breaking a problem into steps
4. **Router** — LLM decides which path to take
5. **Autonomous agent** — the system itself decides what steps are available and what instructions to follow

Harrison Chase, LangChain's founder, references Andrew Ng's perspective: "Rather than arguing over which work to include or exclude as being a true AI agent, we can acknowledge that there are different degrees to which systems can be agentic."

#### Andrew Ng (2024) — The Agentic Spectrum

Andrew Ng frames agency as a **spectrum rather than a binary**:
- Less autonomous: fixed, hard-coded steps
- More autonomous: reflection, tool use, planning, multi-agent collaboration

He identifies four design patterns for agentic workflows:
1. **Reflection** — agent examines its own output and improves it
2. **Tool Use** — agent decides which external functions to call
3. **Planning** — agent breaks complex tasks into executable steps
4. **Multi-Agent Collaboration** — multiple specialized agents coordinate

Key finding: even weaker models (GPT-3.5) wrapped in agentic workflows can outperform stronger models (GPT-4) used in single-shot style. Architecture matters more than raw model capability.

### Source Links

- [Anthropic: Building Effective Agents](https://www.anthropic.com/research/building-effective-agents)
- [OpenAI: A Practical Guide to Building Agents](https://openai.com/business/guides-and-resources/a-practical-guide-to-building-ai-agents/)
- [Google Cloud: What Are AI Agents?](https://cloud.google.com/discover/what-are-ai-agents)
- [Microsoft Agent Framework Overview](https://learn.microsoft.com/en-us/agent-framework/overview/)
- [AutoGen — Microsoft Research](https://www.microsoft.com/en-us/research/project/autogen/)
- [IBM: What Are AI Agents?](https://www.ibm.com/think/topics/ai-agents)
- [IBM: What is Agentic AI?](https://www.ibm.com/think/topics/agentic-ai)
- [AWS Bedrock Agents](https://aws.amazon.com/bedrock/agents/)
- [LangChain: What Is a Cognitive Architecture?](https://blog.langchain.com/what-is-a-cognitive-architecture/)
- [Andrew Ng — Agentic AI Course](https://www.deeplearning.ai/courses/agentic-ai/)

### Why It Matters

The convergence of industry definitions is remarkable given the competitive dynamics. When Anthropic, OpenAI, Google, Microsoft, IBM, AWS, and LangChain all independently describe agents using the same five properties — perceive, reason, act, pursue goals, adapt — they are confirming a stable architectural pattern. This is not marketing agreement; it is structural agreement.

For the book's thesis, this matters because the same five properties describe a human employee with equal accuracy. A sales agent perceives customer signals, reasons about what product to recommend, acts by making the pitch, pursues a quota, and adapts their approach based on results. The architecture is identical. What changes is the substrate.

The industry also confirms a key operational insight: agency is a spectrum, not a binary. Just as employees range from junior staff following scripts to senior leaders exercising full judgment, AI agents range from simple rule-followers to fully autonomous systems. The management challenge scales with autonomy in both cases.

### Related Pages

- [Classical CS Agent Definitions](classical-cs-agent-definitions.md)
- [The BDI Architecture](bdi-architecture.md)
- [The Human Agent](human-agent-definition.md)
- [Modern LLM Agent Architectures](../agent-architectures/modern-llm-agent-architectures.md)
- [Transferring Work Models](../human-agents-and-ai-agents/transferring-work-models.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
