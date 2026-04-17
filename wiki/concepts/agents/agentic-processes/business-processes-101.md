# Business Processes 101

Before we can talk about how agents change process execution, we need a shared understanding of what a business process is and why organizations have spent more than a century refining the concept. A business process is the operating unit of the company — the thing that actually does the work. BPM (Business Process Management) is the discipline of designing, running, monitoring, and improving these processes systematically.

## Sections

### Core Idea

A **business process** is a repeatable sequence of activities that transforms inputs into outputs to deliver value to a customer or fulfill an organizational goal. Business Process Management (BPM) is the discipline that treats processes — not tasks, not functions, not projects — as the primary unit of organizational execution and improvement. The field has developed over a century from Frederick Taylor's scientific management to modern BPMN-based workflow engines, and the core idea has remained remarkably stable: if you can model the process, you can measure it, optimize it, and scale it.

### Details

#### What Makes Something a Process

A business process has six structural elements:

1. **Inputs** — materials, information, requests that enter the process
2. **Activities** — the steps that transform inputs into outputs
3. **Outputs** — the products, services, or decisions that leave the process
4. **Actors** — the people, systems, or agents who perform each activity
5. **Control flow** — the sequencing, branching, and parallelism between activities
6. **Exception paths** — what happens when something goes wrong

Examples Hannah Schmidt would recognize: onboarding a new customer, deploying software to a factory, closing a deal, processing a support ticket, reconciling invoices at month-end. Each of these is a repeatable sequence with defined inputs, outputs, and steps.

#### The Historical Arc of BPM

Process thinking did not start with software. It started with factories.

**Frederick Winslow Taylor (1911)** — *The Principles of Scientific Management.* Taylor observed factory work and argued that every task could be analyzed, broken into elementary motions, timed, and optimized. The best way to do any job could be discovered scientifically and taught to workers. This is the origin of process thinking in management: the belief that work itself is an object of study, not just a thing people do.

**W. Edwards Deming (mid-20th century)** — Deming brought statistical thinking to process work through his PDCA cycle (Plan-Do-Check-Act) and his emphasis on continuous improvement. He argued processes should be measured, variation should be studied, and improvement should be a permanent organizational discipline. His work shaped Japanese manufacturing and later the global quality movement.

**Michael Hammer (1990)** — *Reengineering the Corporation.* Hammer argued that many corporate processes were inefficient not because workers were underperforming but because the processes themselves were designed for a pre-computer era. He pushed organizations to fundamentally redesign processes to exploit information technology. "Reengineering" became the defining business concept of the 1990s.

**BPMN 2.0 (2011)** — The Business Process Model and Notation standard gave organizations a shared visual language for describing processes. Swim lanes, gateways, tasks, events — these are the BPMN primitives that filled corporate walls and PowerPoint decks for two decades.

**ERP and workflow engines (1990s–2020s)** — Enterprise software embedded processes into code. SAP, Oracle, Salesforce, ServiceNow — these systems took the BPMN diagrams and turned them into executable workflows. Organizations stopped merely describing their processes and started running them as software.

#### The Classical BPM Lifecycle

Most BPM frameworks describe the same four-phase lifecycle:

1. **Design** — map the process. Interview stakeholders, document the current state, model the future state, build the BPMN diagram.
2. **Execute** — run the process through people, software, and systems. Hand-offs happen, forms get filled, approvals are routed.
3. **Monitor** — track KPIs. Cycle time, throughput, error rate, cost per instance. Dashboards light up when something is off.
4. **Optimize** — analyze the data, identify bottlenecks, propose changes, re-enter the design phase.

This is the operating rhythm of a mature organization's process function. It assumes that processes can and should be fully specified in advance.

#### Why Organizations Built This

Pre-AI, if you wanted work to be done consistently at scale, you had three options:

1. **Hire really good people and trust their judgment** — expensive, not scalable, inconsistent
2. **Hire average people and script their work in detail** — cheaper, scalable, consistent
3. **Automate the work with software** — cheapest at scale, most consistent, but only works for work you can fully specify

Most organizations chose option 2 or 3 for anything that needed to happen at scale. That is why BPM exists. The detailed process was a substitute for worker judgment. The modeling effort compensated for the fact that the people (or systems) executing the work could not reliably figure it out themselves.

#### The Limits of the Classical Model

By the 2010s, most sophisticated operators understood the limits:

- **Rigidity** — processes encoded in software are expensive to change. A regulatory update or a new product variant can require months of re-design.
- **Exception blindness** — real work is full of edge cases. Every exception you did not anticipate is a broken process.
- **Modeling debt** — processes evolve faster than documentation. The BPMN diagram on the wall rarely matches reality after two years.
- **Loss of tacit knowledge** — skilled workers know things the process diagram does not capture. When you replace them with scripted workers, you lose that knowledge.
- **Cost of detailed design** — modeling a complex end-to-end process well can take months of expensive consulting.

These limits were tolerated because there was no better alternative. That is what is changing.

### Source Links

- [Business Process Management — Wikipedia](https://en.wikipedia.org/wiki/Business_process_management)
- [What is BPM Anyway? — BPMInstitute.org](https://www.bpminstitute.org/resources/articles/what-bpm-anyway-business-process-management-explained/)
- [IBM — What is Business Process Management?](https://www.ibm.com/think/topics/business-process-management)
- [Frederick Winslow Taylor — *The Principles of Scientific Management* (1911)](https://www.gutenberg.org/ebooks/6435)
- [W. Edwards Deming — *Out of the Crisis* (1982), MIT Press](https://mitpress.mit.edu/9780262541152/out-of-the-crisis/)
- [Michael Hammer — *Reengineering the Corporation* (1993)](https://www.harpercollins.com/products/reengineering-the-corporation-michael-hammerjames-champy)
- [BPMN 2.0 Specification — Object Management Group](https://www.omg.org/spec/BPMN/2.0/)

### Why It Matters

You cannot understand what agentic processes change if you do not understand what classical processes are. Every entrepreneur and operator reading this book has been trained — implicitly or explicitly — in the classical model. Org charts, process diagrams, SOPs, runbooks, playbooks, ERP systems — all of these are artifacts of the assumption that processes must be pre-defined to be executable.

This page establishes the baseline. The next page shows how agentic systems break it.

### Related Pages

- [Agentic Processes — Hub](index.md)
- [Agentic Process Execution](agentic-process-execution.md)
- [Agentic Harnesses](agentic-harnesses.md)
- [Company as a Coordination System](../../company/what-a-company-does/company-as-a-coordination-system.md)
- [Processes, Routines, and Operating Systems](../../company/how-a-company-is-built/processes-routines-and-operating-systems.md)

## Sources

- [raw/research/2026-04-17-agentic-processes-research.md](../../../../raw/research/2026-04-17-agentic-processes-research.md)

## Last Updated

2026-04-17
