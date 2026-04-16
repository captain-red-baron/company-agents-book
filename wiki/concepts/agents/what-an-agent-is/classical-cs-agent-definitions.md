# Classical CS Agent Definitions

The concept of a software agent was formalized across multiple research groups in the early-to-mid 1990s, producing a remarkably consistent set of definitions. Despite working from different starting points — artificial intelligence, distributed systems, artificial life, programming paradigms — these researchers converged on the same structural description: an entity that perceives its environment, reasons, and acts autonomously to achieve goals.

## Sections

### Core Idea

Five foundational definitions from computer science collectively established what "agent" means in a technical context. They disagree on emphasis and details, but agree on the architecture: an agent is situated in an environment, senses that environment, acts on it autonomously, and pursues goals over time. This consensus has held for three decades and forms the backbone of every modern AI agent framework.

### Details

#### Russell & Norvig (1995, 4th edition 2020) — AIMA

Stuart Russell and Peter Norvig defined an agent in their textbook *Artificial Intelligence: A Modern Approach*:

> "An agent is anything that can be viewed as perceiving its environment through sensors and acting upon that environment through actuators."

This definition is deliberately **substrate-neutral** — "anything" includes humans, robots, thermostats, and software programs. Russell and Norvig further define a **rational agent** as one that "for each possible percept sequence, should select an action that is expected to maximize its performance measure, given the evidence provided by the percept sequence and whatever built-in knowledge the agent has."

Their key structural equation is: **Agent = Architecture + Program.** The architecture provides the hardware (sensors, actuators, compute), and the program implements the decision function mapping percept sequences to actions. They then define the entire field of AI as "the study and design of rational agents."

AIMA is the most widely used AI textbook in the world. This definition has trained multiple generations of computer scientists.

#### Wooldridge & Jennings (1995) — Properties-Based Definition

Michael Wooldridge and Nicholas Jennings, in their influential survey "Intelligent Agents: Theory and Practice," proposed a **weak notion** and a **strong notion** of agency.

The **weak notion** defines an agent as a hardware or software system with four properties:
- **Autonomy** — operates without direct human intervention; controls its own actions and internal state
- **Social ability** — interacts with other agents (and possibly humans) via some communication language
- **Reactivity** — perceives its environment and responds in a timely fashion to changes
- **Pro-activeness** — does not simply react; exhibits goal-directed behavior by taking initiative

The **strong notion** adds mentalistic properties: knowledge, belief, intention, and obligation — treating the agent as if it has a mind.

Their general definition: "A computing system situated in some environment and that is capable of flexible autonomous action in this environment in order to meet its design objectives."

The four properties of the weak notion read remarkably like a job description for a competent employee. Autonomy, social ability, reactivity, and proactiveness are exactly what you would expect from a new hire.

#### Franklin & Graesser (1996) — The Taxonomy

Stan Franklin and Art Graesser asked the question directly: "Is it an Agent, or just a Program?" Their answer was a formal definition and a taxonomy:

> "An autonomous agent is a system situated within and a part of an environment that senses that environment and acts on it, over time, in pursuit of its own agenda and so as to effect what it senses in the future."

The critical move in this definition is the phrase **"in pursuit of its own agenda."** This separates agents from tools. A tool waits to be used. An agent pursues objectives.

Franklin and Graesser then proposed a taxonomy that explicitly includes **biological agents** (humans, animals), **robotic agents**, **computational agents**, and **software agents** within the same classification framework. This is perhaps the clearest academic acknowledgment that human agents and artificial agents are instances of the same pattern.

#### Maes (1995) — Artificial Life Perspective

Pattie Maes at MIT defined autonomous agents from the artificial life perspective:

> "Autonomous agents are computational systems that inhabit some complex dynamic environment, sense and act autonomously in this environment, and by doing so realize a set of goals or tasks for which they are designed."

Maes emphasizes **complex dynamic environments** — the agent cannot rely on the world staying still. It must adapt. This maps directly onto business reality: no company operates in a static environment. Every employee (every agent) must adapt.

#### Shoham (1993) — Agent-Oriented Programming

Yoav Shoham at Stanford proposed **Agent-Oriented Programming (AOP)** as a specialization of object-oriented programming. Where objects have state and methods, agents have **mental states**: beliefs, choices, capabilities, and commitments.

A complete AOP system requires three components:
1. A logical system for defining the agent's mental state
2. An interpreted programming language for programming agents
3. An agentification process for compiling agent programs into executable systems

Shoham's insight was that the programming paradigm itself should model agency — not just use agents as a metaphor but structure the entire software system around agents with mental states. This is one of the most-cited papers in agent research.

### Source Links

- [AIMA 4th Edition — aima.cs.berkeley.edu](https://aima.cs.berkeley.edu/)
- [AIMA Chapter 2 (PDF)](http://aima.cs.berkeley.edu/4th-ed/pdfs/newchap02.pdf)
- [Wooldridge & Jennings 1995 (PDF)](https://www.cs.ox.ac.uk/people/michael.wooldridge/pubs/ker95.pdf)
- [Franklin & Graesser 1996 (PDF)](https://cse-robotics.engr.tamu.edu/dshell/cs631/papers/franklingraesser96agents.pdf)
- [Maes 1995 — Communications of the ACM](https://dl.acm.org/doi/10.1145/219717.219808)
- [Shoham 1993 — Agent Oriented Programming](https://link.springer.com/chapter/10.1007/3-540-58095-6_9)

### Why It Matters

These definitions matter for three reasons.

First, they demonstrate that the concept of an "agent" is not new to the LLM era. It has been formalized in computer science for over thirty years. Modern AI agent frameworks from Anthropic, OpenAI, and others are implementations of a pattern that Russell, Wooldridge, Franklin, Maes, and Shoham already described in the 1990s.

Second, the definitions are **substrate-neutral**. Franklin and Graesser explicitly include biological agents. Russell and Norvig say "anything." The architecture — perceive, reason, act, learn — applies regardless of whether the agent is made of carbon or silicon.

Third, Wooldridge's four properties (autonomy, social ability, reactivity, proactiveness) provide a clean checklist for evaluating both human and AI agents. When you hire an employee, you are looking for exactly these properties. When you deploy an AI agent, you are configuring exactly these properties.

### Related Pages

- [The BDI Architecture](bdi-architecture.md)
- [Industry AI Agent Definitions](industry-ai-agent-definitions.md)
- [The Human Agent](human-agent-definition.md)
- [The Perception-Reasoning-Action Loop](../agent-architectures/perception-reasoning-action-loop.md)
- [Classical Agent Architectures](../agent-architectures/classical-agent-architectures.md)

## Sources

- [raw/research/2026-04-16-agent-definitions-research.md](../../../../raw/research/2026-04-16-agent-definitions-research.md)

## Last Updated

2026-04-16
