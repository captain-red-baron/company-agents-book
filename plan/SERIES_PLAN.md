# SERIES PLAN v3.1: "The 1 Human 100 Agent Company" (book + jadenx.com series)

Status: plan only, nothing published. v3 prepared 3 Nov 2026 for Dr. Marcel Müller; v3.1 (4 Nov 2026) adds keyword clusters per article and language, SEO titles and /post/ slugs. Earlier versions: SERIES_PLAN_v1.md (web only), SERIES_PLAN_v2.md (10 chapters, no SERP evidence).
**Core table:** section 3 below. It's also at /workspace/book/core-series-plan.csv and on the Page linked in the report.
**Raw data:** /workspace/book/seo-data/ (keyword overviews EN/DE/FR, keyword suggestions, 108 Google top-10 SERPs with People Also Ask and AI Overview flags, parsed serp_summary.json, build scripts).

Rules applied: no em or en dashes; the product is always "Flowhive.ai"; no entAIngine pitch; no ISO or SOC claims; "Dr. Marcel Müller"; every chapter and article is drafted only from Marcel's German voice notes; references plus the CTA footer on every article.

---

## 0. Method (what was actually run in DataForSEO)
- **Keyword overview** (volume, KD, intent): 4 batches US/en (about 130 terms), 4 batches DE/de (about 130), 4 batches FR/fr (about 130). Files: `overview*_en_us.json`, `overview*_de.json`, `overview*_fr.json`.
- **Keyword suggestions:** "ai agents" (US), "ki agenten" (DE), "agent ia" and "ia agentique" (FR), 100 to 150 long-tails each. **Keyword ideas** for four EN seeds (mostly noise, kept for the record). **Related keywords** for "ki einführung unternehmen" returned nothing.
- **SERP analysis:** Google live top 10 with People Also Ask (click depth 1): **52 EN (US), 42 DE, 14 FR**, 108 in total. For each I logged who ranks, the content type, the dates and whether an AI Overview shows. An AI Overview appears on almost every query, so the answer-first and quotable-claim pattern (GEO) is mandatory.
- **Keyword clusters (4 Nov 2026):** keyword suggestions for about 120 seeds across US/en, DE/de and FR/fr (raw files in `seo-data/clusters/`), then keyword overview batches for volume, KD and intent (`overview4_*` to `overview7_*`). Build scripts: `spec.py`, `final.py`, `geo_terms.py`, `titles.py`, `build_plan.py`, `build_md.py`; result in `clusters_final.json`.
- **Market-wide pattern:** the top 10s are (a) vendor listicles ("12 best AI sales agents"), (b) vendor glossaries (IBM, Salesforce, SAP, Databricks), (c) academic pages with no AI link, or (d) training and certification sellers (IHK, Haufe, Cegos). **Almost nobody writes from the operator side: how a company actually runs with agents, with controls, roles and numbers.** That's the gap the whole series fills, and every article states its own gap in the core table.
- **Dropped or merged, with evidence:**
  - "model context protocol": EN 12.1k at KD 58, DE KD 65. The top 10 is official (modelcontextprotocol.io, Anthropic, Wikipedia, GitHub), so it's merged into 18.1 Harness.
  - "chief ai officer", DE "ki manager" (2.4k/KD 5) and "ki beauftragter": the SERPs are certification courses, IHK programmes and job ads. These are merged into 8.1 Agent Owner, with "ki beauftragter" as its DE target.
  - "ai product management": the SERP is courses and certifications, so it's dropped (merged into 17.1).
  - "ai literacy" / DE "ki kompetenz": the SERP is Stanford, Wikipedia, the EU Commission and the Bundesnetzagentur, so it becomes a section of 21.1 EU AI Act.
  - "ai liability" (90/mo, law firms): becomes a section of 21.1.
  - "agency costs" (590/mo) and FR "coûts d'agence" (50): merged into 5.1.
  - "ai sdr": merged into 10.1.
  - DE "ki einführung": the SERP is beginner AI courses (wrong intent), so it's replaced by "ki im unternehmen" for 24.2.
- **Caveats:** KD is missing ("n/a") for many DE and FR terms, so their difficulty was judged from the SERP itself. FR volumes are small for most B2B terms, so FR is a long-tail and GEO play, not a traffic play. Volumes are the Google Ads monthly averages as of Oct 2026.

## 1. Book structure: 8 parts, 25 chapters
Story thread: Hannah Schmidt (the founder of industrial sewing machine software, from the draft) runs through every chapter. The open decision (section 7) is whether to keep her as written or rework her. Book voice: Marcel's article voice with mostly medium explainer sentences and rare short bursts (style note from v2, kept). Reuse refers to the draft at /workspace/book/company-agents-book.

| Part | Ch | Chapter | Story beat | Reused from draft | New research needed |
|---|---|---|---|---|---|
| I Why Now | 1 | The 1 Human, 100 Agents Company | Hannah's 3 side-project agents outpace her 9-person agency team | author notes, book thesis | real tiny-team companies 2025 to 2026 |
| I Why Now | 2 | Why It Is Happening Now | The night her agents ship a working prototype | agent-definitions research (industry section) | cost per task and reliability trends 2024 to 2026 |
| II Foundations | 3 | What a Company Is | Founding: legal shell, first customer | full manuscript chapter, Coase/Williamson/Penrose/Chandler notes, BPM notes | AI and firm-boundary papers |
| II Foundations | 4 | What an Agent Is | Lukas, Marco and the first support agent (the MF-7900 ticket) | chapter brief Part 1, definitions, BDI, architectures, diagrams | re-verify vendor definitions |
| II Foundations | 5 | The Price of Delegation | Lukas over-engineers, Marco over-discounts, the agent answers billing | chapter brief Part 2, principal-agent notes | alignment as agency research, reviewer-deference study |
| III Economics | 6 | The Economics of Agent Labour | Hannah prices her first 10 agents against one hire | little | cost data from Marcel's projects, LLM price curves |
| IV Organisation Design | 7 | Org Design for a Hybrid Workforce | The org chart gets agent rows | structure, roles, spans-of-control notes | hybrid org examples |
| IV Organisation Design | 8 | The Job of the One Human | Hannah's week: reviews, escalations, evals | transfer playbook (reviews) | agent-owner role practice |
| IV Organisation Design | 9 | Hiring and Onboarding Agents | Onboarding the support agent like Lukas | transfer playbook (onboarding, delegation, authority) | none |
| V The Functions | 10 | Sales | Marco gets a research agent | Marco storyline | B2B sales agent cases |
| V The Functions | 11 | Marketing | One person runs content and SEO | none | JadenX's own stack as a case |
| V The Functions | 12 | Finance and Accounting | The invoice agent and the month-end close | none | DATEV and ERP workflows, GoBD |
| V The Functions | 13 | Operations, Supply Chain and Procurement | A supplier delay handled overnight | none | exception-handling cases |
| V The Functions | 14 | HR and Recruiting | The first hire screened with an agent, and the legal stop | none | AI Act Annex III, AGG |
| V The Functions | 15 | Legal and Contracts | A customer contract reviewed with a lawyer in the loop | legal-shell notes | RDG limits in DE |
| V The Functions | 16 | Customer Support | The support agent scales to 300 tickets a day | the MF-7900 scene | support KPIs |
| V The Functions | 17 | Product and Engineering | Lukas and the coding agents | Lukas storyline | coding agent practice 2026 |
| VI Tooling, Harness and Data | 18 | The Harness and Orchestration | Agents step on each other, so one orchestrator | harness chapter brief (7 components, OS analogy, build/buy), multi-agent notes | MCP and A2A status, platform landscape |
| VI Tooling, Harness and Data | 19 | Data, Memory and Evaluation | The agent misdiagnoses an error code | "learn" step, observability notes | eval practice |
| VII Governance and Law | 20 | Human Oversight | Reviewers start rubber-stamping | governance notes | reviewer-deference research |
| VII Governance and Law | 21 | The Law: EU AI Act, Works Council, GDPR | The enterprise customer's works council asks questions | legal-personhood notes | AI Act timeline (Digital Omnibus), §87 BetrVG, GDPR Art. 22 |
| VII Governance and Law | 22 | Security | A prompt injection in a supplier email | guardrails section | injection cases |
| VIII Failure, Transformation and Future | 23 | Failure Cases | The pilot that went wrong | none | Marcel's failed projects; 23.2 pilot purgatory (PoC in 8 weeks, then a year in integration, QA and procurement) |
| VIII Failure, Transformation and Future | 24 | The Transformation Path | A Mittelstand textile customer asks Hannah how | build/buy/rent | Marcel's package phases |
| VIII Failure, Transformation and Future | 25 | The Future of the Firm | Hannah five years on | thesis | labour-market data |

## 2. Three languages: localized, not translated
- Each article gets its own EN (US data), DE (Germany) and FR (France) target keyword, picked from local suggestions and SERPs. Examples: "how to build an ai agent" maps to DE "ki agenten erstellen" (1,900/KD 6) and FR "comment créer un agent ia" (720). "ai agents for customer service" maps to DE "ki im kundenservice" (KD 4). The works council article is **DE-first** ("betriebsrat ki"), with FR "ia et cse" as its local equivalent.
- DE carries the most commercial weight, FR adds long-tail and GEO coverage, and EN carries the volume. Where a language shows no demand, the core table says "none" and the article still ships translated for completeness, but nobody optimises it there.
- German articles: no Sie/du address of the reader (standing rule). French: neutral impersonal style, same rule.
- Each language has its own title and slug (e.g. /de/post/ki-agenten-erstellen, categorySlug 1-human-100-agents), plus hreflang between the three.

## 3. Core table: part > chapter > articles (48 articles)
Funnel key: TOFU means the "get the next chapter" signup, MOFU means a content upgrade template, BOFU means the readiness check or a sparring call. P1 is the first wave.
URLs follow the jadenx-website routing: /post/<slug>, /de/post/<slug>, /fr/post/<slug>, all with categorySlug `1-human-100-agents`. Titles are written around the primary keyword in the words people search; academic concepts (Coase, Williamson, principal-agent theory, Jensen and Meckling) stay in the body only.
Cluster vol = primary + secondaries, monthly Google volume (US / DE / FR). Full clusters per language are in section 3a and in the CSV columns kw_xx_primary, kw_xx_secondary (term|vol|KD|intent), kw_xx_cluster_vol, kw_xx_geo_only.

| ID | Part | Chapter | Article (EN title) | EN slug | EN primary | DE primary | FR primary | Cluster vol EN/DE/FR | Total | Funnel stage/CTA | Priority | Priority suggestion |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1.1 | I Why Now | 1. The 1 Human, 100 Agents Company | AI-Native Company: How One Person Runs a Business With 100 AI Agents | /post/ai-native-company | ai native company (390/KD 38) | ki-agenten für unternehmen (90/KD n/a) | agent ia entreprise (90/KD 4) | 6,960 / 170 / 320 | 7,450 | TOFU: next-chapter signup | P1 |  |
| 1.2 | I Why Now | 1. The 1 Human, 100 Agents Company | Solopreneur With AI Agents: What One Person Can Really Run in 2026 | /post/solopreneur-ai-agents | solopreneur (4400/KD 26) | solopreneur (720/KD 1) | solopreneur (590/KD n/a) | 5,340 / 790 / 650 | 6,780 | TOFU: next-chapter signup | P2 |  |
| 2.1 | I Why Now | 2. Why It Is Happening Now | Agentic AI vs Generative AI: What Is the Difference for Your Business? | /post/agentic-ai-vs-generative-ai | agentic ai vs generative ai (4400/KD 20) | agentische ki (880/KD n/a) | ia agentique (5400/KD n/a) | 146,600 / 1,030 / 7,810 | 155,440 | TOFU: next-chapter signup | P2 | P1: cluster 155k/mo, primary KD 20 (head term "agentic ai" 90.5k is a stretch goal) |
| 2.2 | I Why Now | 2. Why It Is Happening Now | Autonomous AI Agents in 2026: What They Can Do and What They Cost | /post/autonomous-ai-agents | autonomous ai agents (6600/KD 22) | autonome ki agenten (70/KD n/a) | agents ia autonomes (140/KD n/a) | 6,850 / 100 / 300 | 7,250 | TOFU: next-chapter signup | P2 |  |
| 3.1 | II Foundations | 3. What a Company Is | AI Impact on Business: Why AI Agents Make Companies Smaller | /post/ai-impact-on-business | ai impact on business (170/KD 33) | transaktionskostentheorie (480/KD n/a) | coûts de transaction (170/KD n/a) | 2,280 / 1,450 / 360 | 4,090 | TOFU: next-chapter signup | P1 | P2: only 4.1k/mo across 3 languages; keep as book chapter, lower web priority |
| 3.2 | II Foundations | 3. What a Company Is | Business Process Management With AI Agents: What Changes and What Stays | /post/business-process-management-ai-agents | business process management (1900/KD 16) | prozessmanagement (2400/KD 1) | gestion des processus métier (90/KD n/a) | 11,700 / 3,240 / 880 | 15,820 | TOFU: next-chapter signup | P2 |  |
| 4.1 | II Foundations | 4. What an Agent Is | What Is an AI Agent? A Plain Definition With Business Examples | /post/what-is-an-ai-agent | what is an ai agent (22200/KD 49) | was ist ein ki agent (1600/KD 35) | agent ia (8100/KD n/a) | 77,540 / 7,570 / 9,540 | 94,650 | TOFU: next-chapter signup | P2 |  |
| 4.2 | II Foundations | 4. What an Agent Is | AI Agent vs Chatbot: 3 Tests to Tell Them Apart | /post/ai-agent-vs-chatbot | ai agent vs chatbot (320/KD 12) | ki chatbot (4400/KD 27) | chatbots ia (1600/KD n/a) | 710 / 7,310 / 3,670 | 11,690 | TOFU: next-chapter signup | P2 |  |
| 4.3 | II Foundations | 4. What an Agent Is | How Do AI Agents Work? The Loop Behind Every Agent, Explained | /post/how-do-ai-agents-work | how do ai agents work (720/KD 49) | wie funktionieren ki agenten (70/KD 35) | comment fonctionne un agent ia (30/KD n/a) | 2,300 / 4,520 / 420 | 7,240 | TOFU: next-chapter signup | P3 |  |
| 5.1 | II Foundations | 5. The Price of Delegation | AI Agent Governance: How to Keep Agents Working in Your Interest | /post/ai-agent-governance | ai agent governance (260/KD 7) | ki governance (480/KD 4) | gouvernance ia (210/KD n/a) | 6,020 / 4,600 / 1,070 | 11,690 | MOFU: content upgrade (template) | P1 |  |
| 6.1 | III Economics | 6. The Economics of Agent Labour | AI Agent Cost: What Build, Run and Supervision Really Cost (and the ROI) | /post/ai-agent-cost | ai agent cost (110/KD 9) | ki kosten (260/KD n/a) | roi ia (50/KD n/a) | 1,030 / 270 / 80 | 1,380 | MOFU: content upgrade (template) | P2 |  |
| 6.2 | III Economics | 6. The Economics of Agent Labour | AI Employees vs Human Employees: Where the Numbers Work | /post/ai-employees-vs-human-employees | ai employees (1600/KD 7) | ki mitarbeiter (260/KD n/a) | employé numérique (10/KD 3) | 4,890 / 290 / 60 | 5,240 | MOFU: content upgrade (template) | P1 |  |
| 7.1 | IV Organisation Design | 7. Org Design for a Hybrid Workforce | AI Workforce: How to Design an Org Chart for People and AI Agents | /post/ai-workforce-org-chart | ai workforce (1000/KD 8) | digitale mitarbeiter (40/KD n/a) | ia et travail (110/KD 16) | 1,200 / 60 / 250 | 1,510 | TOFU: next-chapter signup | P2 |  |
| 8.1 | IV Organisation Design | 8. The Job of the One Human | Managing AI Agents: The Daily Job of the Person in Charge | /post/managing-ai-agents | managing ai agents (90/KD n/a) | ki beauftragter (480/KD n/a) | manager ia (50/KD n/a) | 1,750 / 2,880 / 230 | 4,860 | MOFU: content upgrade (template) | P1 |  |
| 8.2 | IV Organisation Design | 8. The Job of the One Human | AgentOps: The Daily and Weekly Routine for Running AI Agents | /post/agentops | agentops (590/KD 13) | ki automatisierung (1300/KD n/a) | automatisation ia (720/KD 2) | 1,160 / 1,390 / 1,140 | 3,690 | MOFU: content upgrade (template) | P2 |  |
| 9.1 | IV Organisation Design | 9. Hiring and Onboarding Agents | How to Build an AI Agent Without Code: Start With the Job Description | /post/how-to-build-an-ai-agent | how to build an ai agent (2900/KD 31) | ki agenten erstellen (1900/KD 6) | créer un agent ia (390/KD n/a) | 21,980 / 4,390 / 1,680 | 28,050 | MOFU: content upgrade (template) | P1 |  |
| 9.2 | IV Organisation Design | 9. Hiring and Onboarding Agents | System Prompt: How to Write an AI Agent Brief That Works | /post/system-prompt | system prompt (1000/KD 3) | system prompt (590/KD n/a) | prompt système (GEO/KD n/a) | 1,280 / 7,190 / 3,710 | 12,180 | MOFU: content upgrade (template) | P2 |  |
| 10.1 | V The Functions | 10. Sales | AI Sales Agent for B2B: What to Automate and Where a Human Closes | /post/ai-sales-agent | ai sales agent (1300/KD 15) | ki im vertrieb (320/KD n/a) | agent ia prospection (70/KD n/a) | 7,750 / 410 / 220 | 8,380 | BOFU: readiness check / sparring call | P2 |  |
| 11.1 | V The Functions | 11. Marketing | AI Marketing Agent: How One Person Runs Content and SEO | /post/ai-marketing-agent | ai marketing agent (1900/KD 10) | ki im marketing (320/KD 25) | ia marketing (260/KD 30) | 12,300 / 390 / 2,820 | 15,510 | BOFU: readiness check / sparring call | P1 |  |
| 12.1 | V The Functions | 12. Finance and Accounting | Accounts Payable Automation With AI Agents: From Invoice to Payment | /post/accounts-payable-automation-ai | accounts payable automation (1600/KD 27) | ki buchhaltung (390/KD 4) | ia comptabilité (390/KD n/a) | 5,740 / 540 / 1,040 | 7,320 | BOFU: readiness check / sparring call | P2 |  |
| 12.2 | V The Functions | 12. Finance and Accounting | AI Agents in Finance: Month-End Close and Controlling With a Human in Charge | /post/ai-agents-in-finance | ai agents in finance (140/KD 12) | ki im controlling (260/KD n/a) | ia finance (390/KD n/a) | 10,360 / 370 / 500 | 11,230 | BOFU: readiness check / sparring call | P3 | P2: EN cluster 10k/mo at KD 12 |
| 13.1 | V The Functions | 13. Operations, Supply Chain and Procurement | AI in Supply Chain: How Agents Handle Exceptions Overnight | /post/ai-in-supply-chain | ai in supply chain (2400/KD 10) | ki in der logistik (260/KD n/a) | ia logistique (90/KD n/a) | 2,930 / 310 / 160 | 3,400 | BOFU: readiness check / sparring call | P2 |  |
| 13.2 | V The Functions | 13. Operations, Supply Chain and Procurement | AI in Procurement: What Purchasing Agents Can Do Today | /post/ai-in-procurement | ai in procurement (590/KD 28) | ki im einkauf (390/KD n/a) | ia achats (30/KD n/a) | 880 / 410 / 40 | 1,330 | BOFU: readiness check / sparring call | P3 |  |
| 14.1 | V The Functions | 14. HR and Recruiting | AI in HR: Where Agents Help and Where the Law Says Stop | /post/ai-in-hr | ai in hr (2900/KD 20) | ki im personalwesen (210/KD 12) | ia rh (390/KD 6) | 3,200 / 450 / 810 | 4,460 | BOFU: readiness check / sparring call | P2 |  |
| 14.2 | V The Functions | 14. HR and Recruiting | AI Recruiting: Screening Candidates With Agents, Legally | /post/ai-recruiting | ai recruiting (4400/KD 43) | ki recruiting (110/KD n/a) | ia recrutement (480/KD n/a) | 7,210 / 750 / 600 | 8,560 | BOFU: readiness check / sparring call | P3 |  |
| 15.1 | V The Functions | 15. Legal and Contracts | AI Contract Review: How to Use Agents With a Lawyer in the Loop | /post/ai-contract-review | ai contract review (880/KD 19) | ki für anwälte (320/KD n/a) | ia avocat (390/KD 8) | 19,960 / 900 / 430 | 21,290 | BOFU: readiness check / sparring call | P3 | P2: EN cluster 20k/mo at KD 19 |
| 16.1 | V The Functions | 16. Customer Support | AI Agents for Customer Service: Scaling to 300 Tickets a Day | /post/ai-agents-for-customer-service | ai agents for customer service (720/KD 8) | ki im kundenservice (170/KD 4) | ia service client (70/KD n/a) | 8,480 / 1,630 / 270 | 10,380 | BOFU: readiness check / sparring call | P1 |  |
| 17.1 | V The Functions | 17. Product and Engineering | AI Coding Agents: How a Small Team Ships Software With Them | /post/ai-coding-agents | ai coding agents (8100/KD 30) | ki softwareentwicklung (210/KD n/a) | ia développeur (140/KD n/a) | 85,990 / 2,310 / 1,060 | 89,360 | TOFU: next-chapter signup | P3 | P2: EN cluster 86k/mo, primary KD 30 |
| 18.1 | VI Tooling, Harness and Data | 18. The Harness and Orchestration | Agent Harness: What It Is and How to Build One for Your Company | /post/agent-harness | agent harness (2900/KD 25) | agent harness (880/KD 9) | orchestration agents ia (GEO/KD n/a) | 4,390 / 2,190 / 310 | 6,890 | MOFU: content upgrade (template) | P1 |  |
| 18.2 | VI Tooling, Harness and Data | 18. The Harness and Orchestration | Multi-Agent Systems: When One Orchestrator Beats Many Agents | /post/multi-agent-systems | multi agent systems (2400/KD 35) | multi agenten system (720/KD 6) | systèmes multi agents (140/KD n/a) | 5,120 / 1,900 / 740 | 7,760 | MOFU: content upgrade (template) | P1 |  |
| 18.3 | VI Tooling, Harness and Data | 18. The Harness and Orchestration | Agentic Workflows: When to Use a Workflow and When an Agent | /post/agentic-workflows | agentic workflows (3600/KD 25) | agentic workflow (590/KD 33) | workflow ia (320/KD n/a) | 4,890 / 850 / 990 | 6,730 | MOFU: content upgrade (template) | P2 |  |
| 18.4 | VI Tooling, Harness and Data | 18. The Harness and Orchestration | AI Agent Platform: How to Choose Between n8n, No-Code and Custom Builds | /post/ai-agent-platform | ai agent platform (2400/KD 27) | n8n ki agenten (90/KD n/a) | agent ia n8n (170/KD n/a) | 6,210 / 2,840 / 510 | 9,560 | BOFU: readiness check / sparring call | P2 |  |
| 19.1 | VI Tooling, Harness and Data | 19. Data, Memory and Evaluation | AI Agent Memory: RAG, Context and What Agents Should Remember | /post/ai-agent-memory | ai agent memory (210/KD 31) | rag ki (1000/KD 25) | rag ia (2400/KD n/a) | 12,840 / 4,800 / 3,310 | 20,950 | MOFU: content upgrade (template) | P3 | P2: RAG cluster 21k/mo across 3 languages |
| 19.2 | VI Tooling, Harness and Data | 19. Data, Memory and Evaluation | AI Agent Evaluation: How to Test an Agent Before It Goes Live | /post/ai-agent-evaluation | ai agent evaluation (260/KD 27) | ki agenten evaluieren (GEO/KD n/a) | évaluation agent ia (GEO/KD n/a) | 1,200 / 140 / 20 | 1,360 | MOFU: content upgrade (template) | P3 |  |
| 20.1 | VII Governance and Law | 20. Human Oversight | Human in the Loop AI: Where People Must Approve Agent Decisions | /post/human-in-the-loop-ai | human in the loop ai (1000/KD 25) | human in the loop (2400/KD 35) | human in the loop (590/KD 28) | 9,340 / 3,290 / 700 | 13,330 | MOFU: content upgrade (template) | P1 |  |
| 20.2 | VII Governance and Law | 20. Human Oversight | Automation Bias: Why Reviewers Start Rubber-Stamping AI Output | /post/automation-bias | automation bias (1000/KD 40) | automation bias (480/KD 20) | biais d'automatisation (90/KD n/a) | 1,320 / 570 / 150 | 2,040 | TOFU: next-chapter signup | P2 |  |
| 21.1 | VII Governance and Law | 21. The Law: EU AI Act, Works Council, GDPR | EU AI Act High Risk Rules: What Companies Using AI Agents Must Do | /post/eu-ai-act-high-risk | eu ai act high risk (90/KD 32) | ki verordnung (3600/KD 54) | règlement ia (390/KD 15) | 9,480 / 27,880 / 6,760 | 44,120 | BOFU: readiness check / sparring call | P2 | P1: DE cluster 27.9k/mo, DE-first commercial topic |
| 21.2 | VII Governance and Law | 21. The Law: EU AI Act, Works Council, GDPR | Works Council and AI in Germany: How to Get Agents Approved | /post/works-council-ai-germany | works council germany (260/KD 2) | betriebsrat ki (590/KD 28) | ia et cse (20/KD n/a) | 1,380 / 720 / 40 | 2,140 | BOFU: readiness check / sparring call | P1 |  |
| 21.3 | VII Governance and Law | 21. The Law: EU AI Act, Works Council, GDPR | GDPR and AI: How to Run GDPR-Compliant AI Agents | /post/gdpr-ai | gdpr ai (170/KD 19) | ki und datenschutz (320/KD 18) | rgpd ia (110/KD 15) | 11,030 / 740 / 740 | 12,510 | BOFU: readiness check / sparring call | P3 |  |
| 22.1 | VII Governance and Law | 22. Security | AI Agent Security: Prompt Injection and How to Stop It | /post/ai-agent-security | ai agent security (480/KD 21) | prompt injection (2900/KD 24) | prompt injection (590/KD n/a) | 9,460 / 4,400 / 770 | 14,630 | MOFU: content upgrade (template) | P2 |  |
| 23.1 | VIII Failure, Transformation and Future | 23. Failure Cases | AI Failures: Why AI Projects Fail and What to Learn From Them | /post/ai-failures | ai failures (210/KD 8) | ki projekte (90/KD n/a) | échec ia (110/KD 8) | 400 / 140 / 250 | 790 | MOFU: content upgrade (template) | P2 | P3: smallest cluster (790/mo); fold into 23.2 links |
| 23.2 | VIII Failure, Transformation and Future | 23. Failure Cases | AI Proof of Concept to Production: Why Pilots Get Stuck and How to Ship | /post/ai-proof-of-concept-to-production | proof of concept (8100/KD 15) | proof of concept (5400/KD n/a) | proof of concept (1900/KD n/a) | 15,610 / 8,780 / 4,000 | 28,390 | BOFU: sparring call | P1 |  |
| 24.1 | VIII Failure, Transformation and Future | 24. The Transformation Path | AI Readiness Assessment: Is Your Company Ready for AI Agents? | /post/ai-readiness-assessment | ai readiness assessment (720/KD 13) | ki readiness (210/KD 4) | diagnostic ia (140/KD 4) | 1,840 / 470 / 460 | 2,770 | BOFU: readiness check / sparring call | P1 |  |
| 24.2 | VIII Failure, Transformation and Future | 24. The Transformation Path | AI Transformation: A Step-by-Step Path for Mid-Sized Companies | /post/ai-transformation | ai transformation (1600/KD 8) | ki im unternehmen (390/KD n/a) | transformation ia (70/KD n/a) | 4,410 / 980 / 280 | 5,670 | BOFU: readiness check / sparring call | P1 |  |
| 24.3 | VIII Failure, Transformation and Future | 24. The Transformation Path | AI Change Management: How to Get Teams to Adopt AI Agents | /post/ai-change-management | ai change management (170/KD 18) | ki schulung mitarbeiter (40/KD n/a) | formation ia entreprise (480/KD 9) | 1,850 / 1,150 / 12,970 | 15,970 | MOFU: content upgrade (template) | P3 |  |
| 24.4 | VIII Failure, Transformation and Future | 24. The Transformation Path | AI Consulting: What a Good AI Consultant Does (and What to Avoid) | /post/ai-consulting | ai consulting (8100/KD 26) | ki beratung (2400/KD 6) | consultant ia (480/KD n/a) | 15,300 / 2,540 / 2,380 | 20,220 | BOFU: readiness check / sparring call | P1 |  |
| 25.1 | VIII Failure, Transformation and Future | 25. The Future of the Firm | Future of Work and AI: What Happens to Jobs in an Agent-Run Company | /post/future-of-work-ai | future of work ai (390/KD 23) | zukunft der arbeit (590/KD n/a) | ia emploi (1300/KD n/a) | 2,150 / 1,240 / 2,190 | 5,580 | TOFU: next-chapter signup | P3 |  |
| 25.2 | VIII Failure, Transformation and Future | 25. The Future of the Firm | AI for Small Business: Where to Start With AI Agents | /post/ai-for-small-business | ai for small business (3600/KD 31) | ki für kmu (70/KD n/a) | ia pme (50/KD n/a) | 9,550 / 300 / 110 | 9,960 | BOFU: readiness check / sparring call | P2 |  |

### 3a. Keyword clusters per article and language
Format: term (monthly volume, KD, intent). **GEO** = no measurable search volume in DataForSEO (zero or not in the database), or a People Also Ask question; these are answer-first targets for AI Overviews and LLM answers, not traffic targets. A keyword belongs to one article only (see 3b).

**1.1 AI-Native Company: How One Person Runs a Business With 100 AI Agents**  
DE: KI-Agenten für Unternehmen: Wie eine Person eine Firma mit 100 Agenten führt (/de/post/ki-agenten-fuer-unternehmen) · FR: Agent IA en entreprise : comment une seule personne pilote 100 agents (/fr/post/agent-ia-entreprise)  
- EN (US) primary: ai native company (390/KD 38); cluster 6,960/mo. Secondary: ai agent for business (3,600, KD 14, commercial); enterprise ai agents (2,900, KD 12, commercial); ai native company meaning (40, KD 4, informational); what is ai native company (30, informational)
- DE primary: ki-agenten für unternehmen (90/KD n/a); cluster 170/mo. Secondary: ki im unternehmen nutzen (50, informational); ki im unternehmen einsetzen (20, informational); ki agenten unternehmenssoftware (10, commercial); was ist ein ki-natives unternehmen (GEO)
- FR primary: agent ia entreprise (90/KD 4); cluster 320/mo. Secondary: ia en entreprise (210, KD 29, informational); intégrer l'ia en entreprise (10, transactional); adoption agents ia entreprise (10, transactional); risques ia entreprise (GEO, informational); entreprise ia native (GEO)

**1.2 Solopreneur With AI Agents: What One Person Can Really Run in 2026**  
DE: Solopreneur mit KI-Agenten: Was eine Person 2026 wirklich schafft (/de/post/solopreneur-ki-agenten) · FR: Solopreneur et agents IA : ce qu'une seule personne peut gérer en 2026 (/fr/post/solopreneur-agents-ia)  
- EN (US) primary: solopreneur (4400/KD 26); cluster 5,340/mo. Secondary: solopreneur meaning (390, KD 12, informational); what is a solopreneur (390, KD 8, informational); solopreneur vs entrepreneur (140, KD 4, informational); solopreneur ai (20, KD 7, informational)
- DE primary: solopreneur (720/KD 1); cluster 790/mo. Secondary: solopreneur deutsch (30, informational); was ist ein solopreneur (30, informational); solopreneur vs entrepreneur (10, informational); solopreneur ki (GEO)
- FR primary: solopreneur (590/KD n/a); cluster 650/mo. Secondary: solopreneur définition (30, informational); solopreneur vs entrepreneur (20, informational); solopreneur ai (10, informational); C'est quoi un solopreneur ? (GEO, informational (PAA))

**2.1 Agentic AI vs Generative AI: What Is the Difference for Your Business?**  
DE: Agentische KI: Definition, Beispiele und der Unterschied zu generativer KI (/de/post/agentische-ki) · FR: IA agentique : définition, exemples et différence avec l'IA générative (/fr/post/ia-agentique)  
- EN (US) primary: agentic ai vs generative ai (4400/KD 20); cluster 146,600/mo. Secondary: agentic ai (90,500, KD 57, informational); what is agentic ai (33,100, KD 55, informational); agentic ai definition (12,100, KD 55, informational); agentic ai meaning (3,600, KD 56, informational); agentic ai example (1,600, KD 33, informational); ai agents vs agentic ai (1,300, KD 15, commercial)
- DE primary: agentische ki (880/KD n/a); cluster 1,030/mo. Secondary: agentic ai beispiele (50, informational); agentische ki definition (50, KD 31, informational); agentische ki-systeme (40, commercial); agentische ki-tools (10, commercial); agentische ki beispiele (GEO, informational); agentische ki agentic ai (GEO, informational); agentische ki vs generative ki (GEO, commercial)
- FR primary: ia agentique (5400/KD n/a); cluster 7,810/mo. Secondary: ia agentique définition (880, KD 2, informational); ia agentique c'est quoi (720, informational); l ia agentique (260, KD 9, informational); ia agentique exemple (260, informational); qu est ce que l ia agentique (170, KD 9, informational); ia agentique def (70, KD 9, informational); ia agentique vs générative (40, informational); ia agentique applications pme (10, commercial)

**2.2 Autonomous AI Agents in 2026: What They Can Do and What They Cost**  
DE: Autonome KI-Agenten 2026: Was sie können und was sie kosten (/de/post/autonome-ki-agenten) · FR: Agents IA autonomes en 2026 : ce qu'ils savent faire et ce qu'ils coûtent (/fr/post/agents-ia-autonomes)  
- EN (US) primary: autonomous ai agents (6600/KD 22); cluster 6,850/mo. Secondary: what are autonomous ai agents (170, KD 23, informational); best autonomous ai agents (40, commercial); fully autonomous ai agents (20, informational); autonomous ai agents examples (20, informational)
- DE primary: autonome ki agenten (70/KD n/a); cluster 100/mo. Secondary: autonome agenten (30); was sind autonome ki agenten (GEO); autonome ki agenten beispiele (GEO); autonome ki systeme (GEO)
- FR primary: agents ia autonomes (140/KD n/a); cluster 300/mo. Secondary: ia autonome (140); agents ia planification autonome (20, navigational); qu'est-ce qu'un agent ia autonome (GEO); agents autonomes (GEO)

**3.1 AI Impact on Business: Why AI Agents Make Companies Smaller**  
DE: Transaktionskosten einfach erklärt: Warum KI-Agenten Unternehmen kleiner machen (/de/post/transaktionskosten-ki-agenten) · FR: Coûts de transaction : pourquoi les agents IA rendent les entreprises plus petites (/fr/post/couts-de-transaction-agents-ia)  
- EN (US) primary: ai impact on business (170/KD 33); cluster 2,280/mo. Secondary: transaction cost (880, KD 8, informational); theory of the firm (320, KD 1, informational); what is transaction cost (320, KD 7, informational); transaction cost meaning (210, KD 6, informational); transaction cost economics (210, KD 15, informational); transaction cost theory (140, KD 4, informational); how ai is changing business (20, KD 36, informational); how ai will change business (10, KD 40, informational)
- DE primary: transaktionskostentheorie (480/KD n/a); cluster 1,450/mo. Secondary: transaktionskosten (720, informational); was sind transaktionskosten (170, informational); definition transaktionskosten (50, informational); transaktionskosten beispiel (30, informational)
- FR primary: coûts de transaction (170/KD n/a); cluster 360/mo. Secondary: théorie des coûts de transaction (140, informational); analyse des coûts de transaction (10, informational); économie des coûts de transaction (10, informational); théorie des coûts de transaction coase (10, informational); williamson théorie des coûts de transaction (10, commercial); théorie des coûts de transaction définition (10, informational)

**3.2 Business Process Management With AI Agents: What Changes and What Stays**  
DE: Prozessmanagement mit KI-Agenten: Was bleibt und was sich ändert (/de/post/prozessmanagement-ki-agenten) · FR: Gestion des processus métier avec des agents IA : ce qui change (/fr/post/gestion-processus-metier-agents-ia)  
- EN (US) primary: business process management (1900/KD 16); cluster 11,700/mo. Secondary: business process management notation (4,400, KD 56); bpm business process management (1,900, KD 18, informational); business process management process (1,900, KD 16, informational); business process management softwares (1,600, KD 25, commercial)
- DE primary: prozessmanagement (2400/KD 1); cluster 3,240/mo. Secondary: geschäftsprozessmanagement (390, informational); prozessmanagement tool (210, commercial); software prozessmanagement (210, commercial); ki im prozessmanagement (30, informational)
- FR primary: gestion des processus métier (90/KD n/a); cluster 880/mo. Secondary: processus métier (390, informational); automatisation processus métier (210, informational); processus métier définition (70, informational); cartographie processus métier (70, informational); modéliser processus métier (50, informational)

**4.1 What Is an AI Agent? A Plain Definition With Business Examples**  
DE: Was ist ein KI-Agent? Einfach erklärt, mit Beispielen aus Unternehmen (/de/post/was-ist-ein-ki-agent) · FR: Agent IA : définition simple et exemples en entreprise (/fr/post/agent-ia-definition)  
- EN (US) primary: what is an ai agent (22200/KD 49); cluster 77,540/mo. Secondary: agent ai (49,500, KD 70, informational); ai agent explained (2,400, KD 50, informational); ai agents example (1,600, KD 18, informational); ai agents definition (880, KD 70, informational); ai agents meaning (480, KD 70, informational); what are ai agents and how do they work (480, KD 49, informational)
- DE primary: was ist ein ki agent (1600/KD 35); cluster 7,570/mo. Secondary: ki agenten (4,400, KD 35, informational); was sind ki agenten (880, KD 35, informational); ki-agenten beispiele (390, informational); ki-agenten definition (140, KD 15, informational); was ist ein ki-agent einfach erklärt (110, informational); was sind ki agenten beispiele (30, informational); ki agenten erklärt (20, informational)
- FR primary: agent ia (8100/KD n/a); cluster 9,540/mo. Secondary: qu est ce qu un agent ia (720, KD 13, informational); c'est quoi un agent ia (480, KD 11, informational); agent ia exemple (170, informational); agent ia définition (70, KD 2, informational)

**4.2 AI Agent vs Chatbot: 3 Tests to Tell Them Apart**  
DE: KI-Chatbot oder KI-Agent? Drei Tests, die den Unterschied zeigen (/de/post/ki-chatbot-vs-ki-agent) · FR: Chatbots IA ou agent IA : 3 tests pour faire la différence (/fr/post/chatbot-ia-vs-agent-ia)  
- EN (US) primary: ai agent vs chatbot (320/KD 12); cluster 710/mo. Secondary: ai chatbot agents (390, KD 40, commercial); Is ChatGPT a chatbot or virtual assistant? (GEO, informational (PAA)); Is a virtual agent AI? (GEO, informational (PAA)); What are the 5 types of agent in AI? (GEO, informational (PAA))
- DE primary: ki chatbot (4400/KD 27); cluster 7,310/mo. Secondary: was ist ein chatbot (2,900, KD 15, informational); unterschied ki agent und chatbot (10, informational); ki agent vs chatbot (GEO, informational); ki agent oder chatbot (GEO)
- FR primary: chatbots ia (1600/KD n/a); cluster 3,670/mo. Secondary: chatbot définition (1,900, KD 23, informational); agent conversationnel ia (170, KD 1, navigational); différence agent ia et chatbot (GEO); chatbot vs agent ia (GEO)

**4.3 How Do AI Agents Work? The Loop Behind Every Agent, Explained**  
DE: Wie funktionieren KI-Agenten? Der Ablauf hinter jedem Agenten (/de/post/wie-funktionieren-ki-agenten) · FR: Comment fonctionne un agent IA ? La boucle expliquée simplement (/fr/post/comment-fonctionne-un-agent-ia)  
- EN (US) primary: how do ai agents work (720/KD 49); cluster 2,300/mo. Secondary: ai agent architecture (720, KD 9, navigational); how does ai agents work (720, KD 49); ai agent loop (140, KD 11, informational); how ai agents work step by step (GEO)
- DE primary: wie funktionieren ki agenten (70/KD 35); cluster 4,520/mo. Secondary: wie funktioniert ki (4,400, KD 19, informational); wie funktioniert ein ki-agent (50, informational); ki agent architektur (GEO); wie arbeitet ein ki agent (GEO, informational)
- FR primary: comment fonctionne un agent ia (30/KD n/a); cluster 420/mo. Secondary: à quoi sert l intelligence artificielle (320, KD 24); à quoi sert un agent ia (70, informational); architecture agent ia (GEO); comment marche un agent ia (GEO)

**5.1 AI Agent Governance: How to Keep Agents Working in Your Interest**  
DE: KI-Governance: So arbeiten KI-Agenten im Interesse des Unternehmens (/de/post/ki-governance-ki-agenten) · FR: Gouvernance IA : comment garder les agents IA alignés sur l'entreprise (/fr/post/gouvernance-ia-agents)  
- EN (US) primary: ai agent governance (260/KD 7); cluster 6,020/mo. Secondary: principal agent problem (4,400, KD 14, informational); agency costs (590, informational); what is principal-agent problem (480, KD 17, informational); principal-agent problem example (170, KD 10, informational); ai agent guardrails (90, navigational); ai agent risks (30, KD 17, informational)
- DE primary: ki governance (480/KD 4); cluster 4,600/mo. Secondary: prinzipal-agent (1,300, navigational); prinzipal agent problem (1,300, KD 6, informational); prinzipal agent theorie (1,300, informational); prinzipal agent modell (70, informational); prinzipal-agent konflikt (50, informational); prinzipal agent ansatz (40, informational); prinzipal agent-beziehung (30, informational); prinzipal agent-theorie einfach erklärt (30, KD 4, informational)
- FR primary: gouvernance ia (210/KD n/a); cluster 1,070/mo. Secondary: théorie de l'agence (720, informational); coûts d'agence (50, commercial); théorie de l'agence jensen et meckling (40, informational); théorie de l'agence def (30, informational); théorie de l'agence exemple (10, informational); théorie de l'agence management (10, informational)

**6.1 AI Agent Cost: What Build, Run and Supervision Really Cost (and the ROI)**  
DE: KI-Kosten: Was ein KI-Agent in Aufbau, Betrieb und Aufsicht kostet (/de/post/ki-kosten-ki-agent) · FR: ROI IA : combien coûte vraiment un agent IA (/fr/post/roi-ia-cout-agent-ia)  
- EN (US) primary: ai agent cost (110/KD 9); cluster 1,030/mo. Secondary: ai roi (590, KD 27, informational); ai agent pricing (90, KD 6, commercial); how much does an ai agent cost (90, KD 1, informational); ai roi calculator (70, informational); agentic ai roi (40, transactional); ai agent cost per month (40, KD 8, commercial)
- DE primary: ki kosten (260/KD n/a); cluster 270/mo. Secondary: ki agenten kosten (10, commercial); Wie viel kostet eine KI? (GEO, informational (PAA)); Kann man KI kostenlos nutzen? (GEO, informational (PAA)); was kostet ein ki agent (GEO)
- FR primary: roi ia (50/KD n/a); cluster 80/mo. Secondary: agent ia prix (30, commercial); coût agent ia (GEO); combien coûte un agent ia (GEO); prix d'un agent ia (GEO)

**6.2 AI Employees vs Human Employees: Where the Numbers Work**  
DE: KI-Mitarbeiter: Wann sich ein KI-Agent statt einer Neueinstellung rechnet (/de/post/ki-mitarbeiter) · FR: Employé numérique : quand un agent IA remplace une embauche, chiffres à l'appui (/fr/post/employe-numerique-ia)  
- EN (US) primary: ai employees (1600/KD 7); cluster 4,890/mo. Secondary: ai worker (2,900, KD 30); digital employees (320, KD 16); hire ai employees (70, KD 4, commercial); ai employees vs human employees (GEO)
- DE primary: ki mitarbeiter (260/KD n/a); cluster 290/mo. Secondary: virtuelle mitarbeiter (30, KD 66, informational); ki mitarbeiter einstellen (GEO); ki ersetzt mitarbeiter (GEO); digitale mitarbeiter ki (GEO)
- FR primary: employé numérique (10/KD 3); cluster 60/mo. Secondary: employé ia (50); salarié ia (GEO); employé virtuel (GEO); ia remplace salarié (GEO, transactional)

**7.1 AI Workforce: How to Design an Org Chart for People and AI Agents**  
DE: Digitale Mitarbeiter im Organigramm: So plant man eine Organisation mit KI-Agenten (/de/post/digitale-mitarbeiter-organigramm) · FR: IA et travail : construire un organigramme avec des humains et des agents IA (/fr/post/ia-et-travail-organigramme)  
- EN (US) primary: ai workforce (1000/KD 8); cluster 1,200/mo. Secondary: ai org chart (110, KD 5, informational); ai workforce management (90, commercial); hybrid workforce ai (GEO); ai workforce planning (GEO)
- DE primary: digitale mitarbeiter (40/KD n/a); cluster 60/mo. Secondary: ki organisation (20); hybride belegschaft (GEO); ki im organigramm (GEO); ki organisationsstruktur (GEO)
- FR primary: ia et travail (110/KD 16); cluster 250/mo. Secondary: organigramme ia (140); organisation ia entreprise (GEO); main d'oeuvre hybride ia (GEO); travail hybride ia (GEO)

**8.1 Managing AI Agents: The Daily Job of the Person in Charge**  
DE: KI-Beauftragter: Aufgaben der Person, die KI-Agenten führt (/de/post/ki-beauftragter-aufgaben) · FR: Manager IA : le vrai rôle de la personne qui pilote les agents IA (/fr/post/manager-ia-role)  
- EN (US) primary: managing ai agents (90/KD n/a); cluster 1,750/mo. Secondary: chief ai officer (1,300, KD 22, informational); ai agent management platform (210, KD 13, commercial); ai agent manager (140, navigational); managing ai agents as employees is (10)
- DE primary: ki beauftragter (480/KD n/a); cluster 2,880/mo. Secondary: ki manager (2,400, KD 5, informational); ki verantwortlicher (GEO); ki beauftragter pflicht (GEO); ki beauftragter aufgaben (GEO)
- FR primary: manager ia (50/KD n/a); cluster 230/mo. Secondary: chief ai officer (140, informational); responsable ia (40); référent ia entreprise (GEO); rôle chief ai officer (GEO)

**8.2 AgentOps: The Daily and Weekly Routine for Running AI Agents**  
DE: KI-Automatisierung im Betrieb: Der Tages- und Wochenrhythmus mit KI-Agenten (/de/post/ki-automatisierung-betrieb) · FR: Automatisation IA : la routine quotidienne pour piloter des agents IA (/fr/post/automatisation-ia-pilotage)  
- EN (US) primary: agentops (590/KD 13); cluster 1,160/mo. Secondary: ai agent observability (320, KD 22, informational); ai agent monitoring (110, KD 3); agentops ai (90, KD 7, informational); what is agentops (50, KD 8, informational)
- DE primary: ki automatisierung (1300/KD n/a); cluster 1,390/mo. Secondary: ki prozessautomatisierung (90, commercial); automatisierung ki agenten (GEO, commercial); Was ist KI-Automatisierung? (GEO, informational (PAA)); ki agenten automatisierung (GEO)
- FR primary: automatisation ia (720/KD 2); cluster 1,140/mo. Secondary: agence automatisation ia (390, commercial); agent ia automatisation (30, navigational); Quelle est la définition de l'automatisation des processus ? (GEO, informational (PAA)); automatiser avec l ia (GEO)

**9.1 How to Build an AI Agent Without Code: Start With the Job Description**  
DE: KI-Agenten erstellen ohne Code: Mit der Stellenbeschreibung anfangen (/de/post/ki-agenten-erstellen) · FR: Créer un agent IA sans code : commencer par la fiche de poste (/fr/post/creer-un-agent-ia)  
- EN (US) primary: how to build an ai agent (2900/KD 31); cluster 21,980/mo. Secondary: ai agent builder (6,600, KD 35, commercial); no-code ai agent builder (5,400, KD 10, commercial); how to create an ai agent (2,400, KD 22, informational); build ai agents (1,900, KD 27, commercial); building ai agents (1,900, KD 20, commercial); create ai agents (880, KD 43, commercial)
- DE primary: ki agenten erstellen (1900/KD 6); cluster 4,390/mo. Secondary: ki agent erstellen (1,900, KD 6, commercial); ki-agent bauen (480, transactional); eigenen ki-agenten erstellen (70, transactional); ki-agenten programmieren (30, informational); ki agenten erstellen n8n (10, transactional)
- FR primary: créer un agent ia (390/KD n/a); cluster 1,680/mo. Secondary: comment créer un agent ia (720, informational); creer un agent ia (390, informational); créer son agent ia (70, commercial); construire un agent ia (40, transactional); comment créer son agent ia (40, informational); comment construire un agent ia (30, informational)

**9.2 System Prompt: How to Write an AI Agent Brief That Works**  
DE: System Prompt schreiben: So entsteht ein Briefing für KI-Agenten (/de/post/system-prompt-schreiben) · FR: Prompt système : comment rédiger le brief d'un agent IA (/fr/post/prompt-systeme-agent-ia)  
- EN (US) primary: system prompt (1000/KD 3); cluster 1,280/mo. Secondary: what is a system prompt (210, informational); system prompt examples (70, KD 10, informational); What is an example of a prompt? (GEO, informational (PAA)); Is prompt engineering a real job? (GEO, informational (PAA))
- DE primary: system prompt (590/KD n/a); cluster 7,190/mo. Secondary: prompt engineering (6,600, KD 16, navigational); system prompt beispiel (GEO); prompt schreiben (GEO); system prompt schreiben (GEO)
- FR primary: prompt système (GEO/KD n/a); cluster 3,710/mo. Secondary: prompt engineering (3,600, KD 17, navigational); exemple de prompt (110, KD 17); prompt système exemple (GEO); écrire un bon prompt (GEO)

**10.1 AI Sales Agent for B2B: What to Automate and Where a Human Closes**  
DE: KI im Vertrieb: Was KI-Agenten im B2B übernehmen und wo der Mensch abschließt (/de/post/ki-im-vertrieb) · FR: Agent IA de prospection : ce qu'il automatise en B2B et où l'humain conclut (/fr/post/agent-ia-prospection)  
- EN (US) primary: ai sales agent (1300/KD 15); cluster 7,750/mo. Secondary: sales ai (2,900, KD 22, commercial); ai sdr (1,600, KD 27, informational); ai powered sales platform (1,000, KD 31, commercial); sales ai tools (880, KD 21, commercial); ai for b2b sales (70, KD 17, commercial)
- DE primary: ki im vertrieb (320/KD n/a); cluster 410/mo. Secondary: ki im vertrieb beispiele (30, informational); ki im b2b-vertrieb (20, commercial); ki agenten verkaufen (20, commercial); ki im vertrieb nutzen (20, transactional)
- FR primary: agent ia prospection (70/KD n/a); cluster 220/mo. Secondary: ia prospection (50, informational); agent ia commercial (30, navigational); agent ia prospection commerciale (30, navigational); ia vente (20, informational); agent ia prospection linkedin (20, navigational)

**11.1 AI Marketing Agent: How One Person Runs Content and SEO**  
DE: KI im Marketing: Wie eine Person Content und SEO mit Agenten betreibt (/de/post/ki-im-marketing) · FR: IA marketing : comment une seule personne gère contenu et SEO avec des agents (/fr/post/ia-marketing-agents)  
- EN (US) primary: ai marketing agent (1900/KD 10); cluster 12,300/mo. Secondary: ai marketing (4,400, KD 36, commercial); ai marketing tools (3,600, KD 26, commercial); ai powered marketing platform (2,400, KD 46, commercial); ai marketing agent examples (GEO)
- DE primary: ki im marketing (320/KD 25); cluster 390/mo. Secondary: ki im content marketing (30, commercial); ki im marketing beispiele (30, KD 16, informational); ki agenten marketing (10, informational); ki marketing tools (GEO)
- FR primary: ia marketing (260/KD 30); cluster 2,820/mo. Secondary: automatisation du marketing (2,400, KD 38, commercial); ia marketing digital (90, KD 2); agent ia marketing (50, commercial); intelligence artificielle marketing (20, KD 46)

**12.1 Accounts Payable Automation With AI Agents: From Invoice to Payment**  
DE: KI in der Buchhaltung: Rechnungseingang bis Zahlung mit KI-Agenten (/de/post/ki-buchhaltung) · FR: IA comptabilité : de la facture au paiement avec des agents IA (/fr/post/ia-comptabilite)  
- EN (US) primary: accounts payable automation (1600/KD 27); cluster 5,740/mo. Secondary: accounts payable automation software (2,900, KD 29, commercial); accounts payable automation tools (590, KD 30, commercial); best accounts payable automation software (390, KD 6, commercial); what is accounts payable automation (260, KD 25, informational)
- DE primary: ki buchhaltung (390/KD 4); cluster 540/mo. Secondary: ki im rechnungswesen (110, informational); rechnungseingang automatisieren (20, commercial); ki im rechnungswesen und controlling (20, informational); ki rechnungsverarbeitung (GEO)
- FR primary: ia comptabilité (390/KD n/a); cluster 1,040/mo. Secondary: intelligence artificielle comptabilité (390, commercial); ia comptable (110, informational); expert comptable ia (70, informational); agent ia comptable (50, navigational); automatisation comptabilité (30, KD 5, commercial); ia agentique expertise comptable (GEO, commercial)

**12.2 AI Agents in Finance: Month-End Close and Controlling With a Human in Charge**  
DE: KI im Controlling: Monatsabschluss mit KI-Agenten und klarer Verantwortung (/de/post/ki-im-controlling) · FR: IA finance : clôture mensuelle et contrôle de gestion avec des agents IA (/fr/post/ia-finance)  
- EN (US) primary: ai agents in finance (140/KD 12); cluster 10,360/mo. Secondary: ai in finance (9,900, KD 35, commercial); agentic ai in finance (140, KD 7, navigational); generative ai in finance (110, KD 6, commercial); how to use ai in finance (70, KD 31, informational)
- DE primary: ki im controlling (260/KD n/a); cluster 370/mo. Secondary: ki im finanzwesen (70, KD 1, informational); ki im controlling beispiele (30, informational); ki im finanzbereich (10); ki finanzabteilung (GEO)
- FR primary: ia finance (390/KD n/a); cluster 500/mo. Secondary: ia dans la finance (40, KD 12, informational); meilleur ia pour la finance (30, commercial); agent ia finance (20, navigational); meilleure ia finance (20)

**13.1 AI in Supply Chain: How Agents Handle Exceptions Overnight**  
DE: KI in der Logistik: Wie KI-Agenten Lieferprobleme über Nacht lösen (/de/post/ki-in-der-logistik) · FR: IA logistique : comment les agents IA gèrent les imprévus de la supply chain (/fr/post/ia-logistique)  
- EN (US) primary: ai in supply chain (2400/KD 10); cluster 2,930/mo. Secondary: ai in supply chain management (320, KD 9, informational); agentic ai in supply chain (90, KD 20, commercial); ai agent in supply chain (70, KD 16, navigational); ai in supply chain examples (50, KD 9, informational)
- DE primary: ki in der logistik (260/KD n/a); cluster 310/mo. Secondary: ki in der logistik beispiele (40, informational); ki roboter in der logistik (10, informational); ki anwendung logistik (GEO, informational); ki logistik unternehmen (GEO, navigational); ki in der logistik studie (GEO, informational)
- FR primary: ia logistique (90/KD n/a); cluster 160/mo. Secondary: ia supply chain (50, informational); intelligence artificielle logistique (20); ia chaîne d'approvisionnement (GEO); ia transport logistique (GEO)

**13.2 AI in Procurement: What Purchasing Agents Can Do Today**  
DE: KI im Einkauf: Was KI-Agenten heute im Einkauf leisten (/de/post/ki-im-einkauf) · FR: IA achats : ce que les agents IA font déjà pour les acheteurs (/fr/post/ia-achats)  
- EN (US) primary: ai in procurement (590/KD 28); cluster 880/mo. Secondary: ai procurement software (140, KD 16, commercial); ai agent for procurement (70, KD 3, commercial); ai procurement tool (50, KD 21, commercial); generative ai in procurement (30, KD 32, commercial)
- DE primary: ki im einkauf (390/KD n/a); cluster 410/mo. Secondary: ki im einkauf beispiele (20, informational); ki gestützter einkauf (GEO, commercial); strategischer einkauf ki (GEO, transactional); generative ki im einkauf (GEO, informational); ki im operativen einkauf (GEO, informational)
- FR primary: ia achats (30/KD n/a); cluster 40/mo. Secondary: intelligence artificielle achats (10, commercial); assistant achat ia (GEO, transactional); ia et fonction achat (GEO, informational); agent ia achats (GEO)

**14.1 AI in HR: Where Agents Help and Where the Law Says Stop**  
DE: KI im Personalwesen: Wo KI-Agenten helfen und wo das Recht Grenzen setzt (/de/post/ki-im-personalwesen) · FR: IA RH : où les agents IA aident et où la loi fixe des limites (/fr/post/ia-rh)  
- EN (US) primary: ai in hr (2900/KD 20); cluster 3,200/mo. Secondary: generative ai in hr (90, KD 27, informational); how to use ai in hr (90, KD 14, informational); ai in hr examples (70, KD 9, informational); agentic ai in hr (50, commercial)
- DE primary: ki im personalwesen (210/KD 12); cluster 450/mo. Secondary: ki im hr (70, KD 1, informational); ki in der personalentwicklung (70, informational); ki im hr-bereich (40, informational); ki in der personalabteilung (30, informational); ki im personalwesen beispiele (30, informational)
- FR primary: ia rh (390/KD 6); cluster 810/mo. Secondary: ia ressources humaines (390, KD 6, informational); agent ia rh (30, navigational); Quels sont les 3 métiers qui survivront à l'IA ? (GEO, informational (PAA)); ia et rh exemples (GEO)

**14.2 AI Recruiting: Screening Candidates With Agents, Legally**  
DE: KI-Recruiting: Bewerbungen mit KI-Agenten rechtssicher vorsortieren (/de/post/ki-recruiting) · FR: IA recrutement : trier les candidatures avec des agents IA, en restant dans la loi (/fr/post/ia-recrutement)  
- EN (US) primary: ai recruiting (4400/KD 43); cluster 7,210/mo. Secondary: ai recruiting platform (1,000, KD 39, commercial); ai recruiting tools (880, KD 36, commercial); ai recruiting software (720, KD 34, commercial); best ai recruiting software (210, KD 7, commercial)
- DE primary: ki recruiting (110/KD n/a); cluster 750/mo. Secondary: ki für bewerbungsschreiben (320, KD 8); ki für bewerbungen (210, KD 9, informational); ki im bewerbungsprozess (70, KD 5, informational); ki in der personalauswahl (40, informational)
- FR primary: ia recrutement (480/KD n/a); cluster 600/mo. Secondary: outils ia recrutement (40, commercial); ia dans le recrutement (40, informational); agent ia recrutement (20, transactional); l ia et le recrutement (10, informational); ia recrutement entreprise (10, informational)

**15.1 AI Contract Review: How to Use Agents With a Lawyer in the Loop**  
DE: KI für Anwälte und Verträge: Vertragsprüfung mit KI-Agenten und Anwalt (/de/post/ki-fuer-anwaelte-vertragspruefung) · FR: IA avocat : relire des contrats avec un agent IA et un juriste (/fr/post/ia-avocat-contrats)  
- EN (US) primary: ai contract review (880/KD 19); cluster 19,960/mo. Secondary: ai for legal (18,100, KD 38, commercial); ai contract review software (720, KD 27, commercial); ai contract review tool (170, KD 28, informational); ai legal contract review (90, KD 31, commercial)
- DE primary: ki für anwälte (320/KD n/a); cluster 900/mo. Secondary: ki recht (260, informational); ki für rechtsfragen (260, KD 3, informational); ki vertragsprüfung (50, informational); ki vertragsanalyse (10, informational)
- FR primary: ia avocat (390/KD 8); cluster 430/mo. Secondary: intelligence artificielle avocat (40, KD 7, commercial); ia juridique (GEO, KD 16, informational); ia analyse de contrat (GEO); ia contrat (GEO)

**16.1 AI Agents for Customer Service: Scaling to 300 Tickets a Day**  
DE: KI im Kundenservice: Mit KI-Agenten auf 300 Tickets am Tag (/de/post/ki-im-kundenservice) · FR: IA service client : passer à 300 tickets par jour avec des agents IA (/fr/post/ia-service-client)  
- EN (US) primary: ai agents for customer service (720/KD 8); cluster 8,480/mo. Secondary: ai customer service (4,400, KD 38, informational); ai chatbots for customer service (1,600, KD 38, commercial); ai customer support (880, KD 35, informational); customer service ai software (880, KD 35, commercial)
- DE primary: ki im kundenservice (170/KD 4); cluster 1,630/mo. Secondary: chatbot kundenservice (1,300, navigational); klarna ki kundenservice (110, KD 8, navigational); ki chatbot kundenservice (30, informational); ki kundenservice telefon (10, informational); ki im kundenservice beispiele (10, informational); ki ersetzt kundenservice (GEO, informational)
- FR primary: ia service client (70/KD n/a); cluster 270/mo. Secondary: automatisation service client (110, commercial); chatbot service client (50, navigational); ia relation client (40, navigational); ia dans le service client (GEO, informational); solution ia pour service client (GEO, commercial)

**17.1 AI Coding Agents: How a Small Team Ships Software With Them**  
DE: KI in der Softwareentwicklung: Wie ein kleines Team mit Coding-Agenten liefert (/de/post/ki-softwareentwicklung) · FR: IA pour développeur : livrer du logiciel avec des agents de code (/fr/post/ia-developpeur)  
- EN (US) primary: ai coding agents (8100/KD 30); cluster 85,990/mo. Secondary: ai coding (49,500, KD 20, informational); agentic ai coding tool (18,100, KD 21, commercial); best ai for coding (9,900, KD 20, commercial); best ai coding agents (390, KD 14, commercial)
- DE primary: ki softwareentwicklung (210/KD n/a); cluster 2,310/mo. Secondary: ki programmieren (1,000, KD 11, informational); ki coding (390, informational); ki für programmierung (390, informational); beste ki für programmierung (320, commercial)
- FR primary: ia développeur (140/KD n/a); cluster 1,060/mo. Secondary: meilleure ia pour coder (880, KD 4); agent ia code (30, informational); ia développement logiciel (10, informational); agent ia développeur (GEO)

**18.1 Agent Harness: What It Is and How to Build One for Your Company**  
DE: Agent Harness: Was es ist und wie man es im Unternehmen aufbaut (/de/post/agent-harness) · FR: Orchestration d'agents IA : le harness expliqué pour l'entreprise (/fr/post/orchestration-agents-ia)  
- EN (US) primary: agent harness (2900/KD 25); cluster 4,390/mo. Secondary: what is agent harness (590, KD 21, informational); ai agent harness (480, KD 25, transactional); agent harness engineering (170, KD 48, commercial); what is an ai agent harness (140, KD 19, informational); open source agent harness (110, KD 22, commercial)
- DE primary: agent harness (880/KD 9); cluster 2,190/mo. Secondary: harness engineering (1,300); ki agent harness (10); was ist ein agent harness (GEO); agent orchestrierung (GEO)
- FR primary: orchestration agents ia (GEO/KD n/a); cluster 310/mo. Secondary: agent harness (210, KD 9, transactional); orchestration ia (70, informational); multi agent orchestration (30, commercial); harness agent ia (GEO)

**18.2 Multi-Agent Systems: When One Orchestrator Beats Many Agents**  
DE: Multi-Agenten-Systeme: Wann ein Orchestrator mehr bringt als viele Agenten (/de/post/multi-agenten-system) · FR: Systèmes multi-agents : quand un orchestrateur vaut mieux que dix agents (/fr/post/systemes-multi-agents)  
- EN (US) primary: multi agent systems (2400/KD 35); cluster 5,120/mo. Secondary: multi agent (1,000, KD 39, informational); multi agent orchestration (880, KD 22, commercial); multi agent architecture (320, KD 13, informational); multi-agent workflows (260, KD 11, commercial); multi-agent framework (260, KD 30, informational)
- DE primary: multi agenten system (720/KD 6); cluster 1,900/mo. Secondary: multi agent system (720, KD 6, informational); multi agent (170, KD 22, informational); multi agent orchestration (110, commercial); multi-agent framework (70, KD 22, informational); multi agent architecture (70, KD 22, informational); multi-agenten-systeme ki (40, commercial)
- FR primary: systèmes multi agents (140/KD n/a); cluster 740/mo. Secondary: multi-agent systems (260, informational); multi-agent (170, informational); systeme multi agent (140, informational); multi-agent ia (30, informational)

**18.3 Agentic Workflows: When to Use a Workflow and When an Agent**  
DE: Agentic Workflow: Wann ein Workflow reicht und wann ein Agent nötig ist (/de/post/agentic-workflow) · FR: Workflow IA : quand un workflow suffit et quand il faut un agent (/fr/post/workflow-ia)  
- EN (US) primary: agentic workflows (3600/KD 25); cluster 4,890/mo. Secondary: agentic ai workflow (590, KD 22, commercial); what is an agentic workflow (390, KD 20, informational); agentic workflow example (170, KD 20, informational); how to build agentic workflow (140, KD 29, informational)
- DE primary: agentic workflow (590/KD 33); cluster 850/mo. Secondary: ki workflow (260, informational); What is an agentic workflow? (GEO, informational (PAA)); What is agentic workflow design? (GEO, informational (PAA)); What is agentic AI vs agentic workflow? (GEO, informational (PAA))
- FR primary: workflow ia (320/KD n/a); cluster 990/mo. Secondary: workflow automatisation (260, informational); automatisation des processus metiers (210, commercial); automatisation des processus (170, informational); workflow agent ia (30, transactional); ia agentique workflow (GEO, informational)

**18.4 AI Agent Platform: How to Choose Between n8n, No-Code and Custom Builds**  
DE: n8n und KI-Agenten: Welche Plattform für welches Unternehmen (/de/post/n8n-ki-agenten) · FR: Agent IA avec n8n : choisir la bonne plateforme d'agents (/fr/post/agent-ia-n8n)  
- EN (US) primary: ai agent platform (2400/KD 27); cluster 6,210/mo. Secondary: n8n ai agents (1,600, KD 37, navigational); ai agent framework (1,000, KD 27, commercial); no code ai agent platform (1,000, KD 16, commercial); best ai agent platform (210, KD 19, commercial)
- DE primary: n8n ki agenten (90/KD n/a); cluster 2,840/mo. Secondary: n8n ai (1,900, KD 20, informational); n8n ai agent (590, KD 44); n8n ki (260, KD 17); ki agenten plattform (GEO); ki agent plattform (GEO)
- FR primary: agent ia n8n (170/KD n/a); cluster 510/mo. Secondary: automatisation n8n (210, KD 10, informational); make agent ia (90, KD 19, transactional); plateforme agent ia (40, navigational); ia agentique make (GEO, transactional)

**19.1 AI Agent Memory: RAG, Context and What Agents Should Remember**  
DE: RAG und KI: Wie KI-Agenten auf Firmenwissen zugreifen (/de/post/rag-ki) · FR: RAG IA : comment les agents IA utilisent la mémoire de l'entreprise (/fr/post/rag-ia)  
- EN (US) primary: ai agent memory (210/KD 31); cluster 12,840/mo. Secondary: what is rag (12,100, KD 42, informational); long term memory ai (320, KD 9, informational); memory in the age of ai agents (210, KD 17); rag ai agents (GEO)
- DE primary: rag ki (1000/KD 25); cluster 4,800/mo. Secondary: rag ai (1,900, KD 28, informational); rag system (1,900, KD 5, informational); Was ist ein RAG bei AI? (GEO, informational (PAA)); rag ki erklärt (GEO)
- FR primary: rag ia (2400/KD n/a); cluster 3,310/mo. Secondary: rag llm (590, KD 16); rag définition (320, KD 3); qu'est-ce que le rag (GEO); rag intelligence artificielle (GEO)

**19.2 AI Agent Evaluation: How to Test an Agent Before It Goes Live**  
DE: KI-Agenten evaluieren: So testet man einen Agenten vor dem Livegang (/de/post/ki-agenten-evaluieren) · FR: Évaluation d'un agent IA : tester avant la mise en production (/fr/post/evaluation-agent-ia)  
- EN (US) primary: ai agent evaluation (260/KD 27); cluster 1,200/mo. Secondary: agent evaluation (590, KD 34, informational); agent evaluation framework (260, KD 27, informational); ai agent evaluation tools (50, commercial); llm agent evaluation (40, KD 36, navigational)
- DE primary: ki agenten evaluieren (GEO/KD n/a); cluster 140/mo. Secondary: llm evaluation (140, KD 25, informational); ki agenten bewerten (GEO); ki evaluation (GEO); ki agenten testen (GEO)
- FR primary: évaluation agent ia (GEO/KD n/a); cluster 20/mo. Secondary: évaluation ia (20); évaluation llm (GEO); évaluer un agent ia (GEO); tester un agent ia (GEO)

**20.1 Human in the Loop AI: Where People Must Approve Agent Decisions**  
DE: Human in the Loop: Wo Menschen KI-Entscheidungen freigeben müssen (/de/post/human-in-the-loop) · FR: Human in the loop : où l'humain doit valider les décisions des agents IA (/fr/post/human-in-the-loop)  
- EN (US) primary: human in the loop ai (1000/KD 25); cluster 9,340/mo. Secondary: human-in-the-loop (6,600, KD 35, informational); human in the loop artificial intelligence (1,000, KD 35); human in the loop vs human on the loop (480, KD 8, informational); what is human in the loop (260, KD 48, informational)
- DE primary: human in the loop (2400/KD 35); cluster 3,290/mo. Secondary: human-in the-loop deutsch (390, navigational); human-in the-loop bedeutung (170, KD 4, informational); human in the loop ai (90, KD 39, informational); n8n human in the loop (70, KD 19, transactional); was bedeutet human in the loop (70, KD 3, informational); human in the loop prinzip (50, informational); human in the-loop vs human on the-loop (50, informational)
- FR primary: human in the loop (590/KD 28); cluster 700/mo. Secondary: human-in-the-loop ai (50, informational); n8n human in the loop (20, transactional); human in the loop vs human on the loop (20, informational); ai act human in the loop (10, informational); human-in-the-loop examples (10, informational)

**20.2 Automation Bias: Why Reviewers Start Rubber-Stamping AI Output**  
DE: Automation Bias: Warum Prüfer KI-Ergebnisse irgendwann blind freigeben (/de/post/automation-bias) · FR: Biais d'automatisation : pourquoi les validateurs finissent par tout approuver (/fr/post/biais-automatisation)  
- EN (US) primary: automation bias (1000/KD 40); cluster 1,320/mo. Secondary: what is automation bias (210, KD 41, informational); automation bias in ai (50, KD 41, informational); automation bias definition (40, informational); automation bias example (20, KD 18, informational)
- DE primary: automation bias (480/KD 20); cluster 570/mo. Secondary: automation bias deutsch (40, informational); automation bias definition (20, informational); automation bias ki (10, informational); automation bias ai (10, informational); automation bias example (10, informational)
- FR primary: biais d'automatisation (90/KD n/a); cluster 150/mo. Secondary: automation bias (50, KD 55); biais d'automatisation ia (10, informational); biais d'automatisation définition (GEO); excès de confiance ia (GEO)

**21.1 EU AI Act High Risk Rules: What Companies Using AI Agents Must Do**  
DE: KI-Verordnung (EU AI Act): Was Unternehmen mit KI-Agenten jetzt tun müssen (/de/post/ki-verordnung-eu-ai-act) · FR: Règlement IA (AI Act) : ce que les entreprises qui utilisent des agents IA doivent faire (/fr/post/reglement-ia-ai-act)  
- EN (US) primary: eu ai act high risk (90/KD 32); cluster 9,480/mo. Secondary: eu ai act (8,100, KD 71, informational); eu ai act summary (590, KD 41, informational); what is the eu ai act (320, KD 71, informational); eu ai act compliance (210, KD 26, informational); eu ai act article 50 (170, KD 16, informational)
- DE primary: ki verordnung (3600/KD 54); cluster 27,880/mo. Secondary: eu ai act (14,800, KD 81, informational); ai act (5,400, informational); ai act europe (1,300, KD 81, informational); eu ki verordnung (1,300, KD 54, informational); eu ai act deutsch (1,000, KD 56, informational); eu ai act zusammenfassung (480, KD 37, informational)
- FR primary: règlement ia (390/KD 15); cluster 6,760/mo. Secondary: ai act (4,400, informational); eu ai act (1,600, KD 54, informational); ai act européen (260, KD 53, informational); l ai act (110, KD 52, informational)

**21.2 Works Council and AI in Germany: How to Get Agents Approved**  
DE: Betriebsrat und KI: So bekommt man KI-Agenten durch die Mitbestimmung (/de/post/betriebsrat-ki) · FR: IA et CSE : comment associer les représentants du personnel aux agents IA (/fr/post/ia-et-cse)  
- EN (US) primary: works council germany (260/KD 2); cluster 1,380/mo. Secondary: works council (720, informational); german works council (260, KD 4, informational); european works council (70, KD 3, informational); france works council (70)
- DE primary: betriebsrat ki (590/KD 28); cluster 720/mo. Secondary: betriebsvereinbarung ki muster (70); ki betriebsvereinbarung (40, commercial); ki mitbestimmung betriebsrat (20, informational); ki mitbestimmung (GEO)
- FR primary: ia et cse (20/KD n/a); cluster 40/mo. Secondary: ia et dialogue social (20, informational); consultation cse ia (GEO); cse intelligence artificielle (GEO); ia représentants du personnel (GEO)

**21.3 GDPR and AI: How to Run GDPR-Compliant AI Agents**  
DE: KI und Datenschutz: KI-Agenten DSGVO-konform betreiben (/de/post/ki-und-datenschutz) · FR: RGPD et IA : faire tourner des agents IA conformes au RGPD (/fr/post/rgpd-ia)  
- EN (US) primary: gdpr ai (170/KD 19); cluster 11,030/mo. Secondary: gdpr compliant ai (5,400, informational); gdpr compliance ai (5,400, KD 9, informational); gdpr ai regulation (40, KD 31, informational); gdpr ai act (20, KD 22)
- DE primary: ki und datenschutz (320/KD 18); cluster 740/mo. Secondary: dsgvo ki (210, KD 11, informational); welche ki hat den besten datenschutz (70, KD 6, commercial); ki mit datenschutz (50, KD 20, commercial); ki datenschutz probleme (50, KD 9, informational); datenschutz bei ki (40, KD 20, informational)
- FR primary: rgpd ia (110/KD 15); cluster 740/mo. Secondary: cnil ia (210, KD 46, navigational); pia rgpd (170, KD 8, informational); rgpd compliant (140, KD 11); dpia rgpd (110, KD 9, informational)

**22.1 AI Agent Security: Prompt Injection and How to Stop It**  
DE: Prompt Injection: Wie man KI-Agenten gegen Angriffe absichert (/de/post/prompt-injection) · FR: Prompt injection : comment sécuriser ses agents IA (/fr/post/prompt-injection)  
- EN (US) primary: ai agent security (480/KD 21); cluster 9,460/mo. Secondary: prompt injection (5,400, KD 46, transactional); prompt injection attack (1,300, KD 46, informational); what is prompt injection (1,300, KD 46, informational); prompt injection examples (480, KD 17, informational); indirect prompt injection (390, KD 39, informational); ai agent security risks (110, KD 18, commercial)
- DE primary: prompt injection (2900/KD 24); cluster 4,400/mo. Secondary: ki sicherheit (720, KD 25, informational); was ist prompt injection (170, informational); prompt injection deutsch (170, transactional); prompt injection examples (170, KD 39, informational); prompt injection attack (110, KD 33, informational); prompt injection beispiele (90, informational); indirect prompt injection (70, KD 39, informational)
- FR primary: prompt injection (590/KD n/a); cluster 770/mo. Secondary: sécurité ia (90, informational); cybersécurité ia (90); sécurité agent ia (GEO); prompt injection ia (GEO)

**23.1 AI Failures: Why AI Projects Fail and What to Learn From Them**  
DE: KI-Projekte: Warum sie scheitern und was man daraus lernt (/de/post/ki-projekte-scheitern) · FR: Échec IA : pourquoi les projets IA échouent et quoi en retenir (/fr/post/echec-ia)  
- EN (US) primary: ai failures (210/KD 8); cluster 400/mo. Secondary: what percentage of ai projects fail (70, KD 33, informational); what is a common reason for ai project failure (50, KD 27); why do ai projects fail (40, KD 43, informational); ai failure rate (30, informational)
- DE primary: ki projekte (90/KD n/a); cluster 140/mo. Secondary: ki projekt (40, KD 15); ki projekte scheitern (10); warum ki projekte scheitern (GEO); ki misserfolge (GEO)
- FR primary: échec ia (110/KD 8); cluster 250/mo. Secondary: projet ia (140, informational); échec projet ia (GEO); pourquoi les projets ia échouent (GEO); projets ia échec (GEO)

**23.2 AI Proof of Concept to Production: Why Pilots Get Stuck and How to Ship**  
DE: Proof of Concept für KI: Warum Piloten hängen bleiben und wie sie live gehen (/de/post/proof-of-concept-ki) · FR: Proof of concept IA : pourquoi les pilotes bloquent et comment passer en production (/fr/post/proof-of-concept-ia)  
- EN (US) primary: proof of concept (8100/KD 15); cluster 15,610/mo. Secondary: proof of concept meaning (2,900, KD 16, informational); ai pilot (2,400, KD 40, transactional); what is a proof of concept (1,600, KD 15, informational); proof of concept example (320, KD 16, informational); ai proof of concept (170, informational); pilot purgatory (90, informational); ai agents in production (30, KD 5, informational)
- DE primary: proof of concept (5400/KD n/a); cluster 8,780/mo. Secondary: proof of concept bedeutung (1,000, informational); proof of concept deutsch (720, informational); was ist ein proof of concept (590, informational); was bedeutet proof of concept (590, informational); ki pilot (480, informational)
- FR primary: proof of concept (1900/KD n/a); cluster 4,000/mo. Secondary: proof of concept définition (1,000, KD 2, informational); proof of concept def (390, KD 2, informational); pilote ia (390, KD 46, informational); proof of concept en français (170, KD 3, informational); poc ia (110, informational); proof of concept vs mvp (40, informational)

**24.1 AI Readiness Assessment: Is Your Company Ready for AI Agents?**  
DE: KI-Readiness: Ist das Unternehmen bereit für KI-Agenten? (/de/post/ki-readiness) · FR: Diagnostic IA : votre entreprise est-elle prête pour les agents IA ? (/fr/post/diagnostic-ia)  
- EN (US) primary: ai readiness assessment (720/KD 13); cluster 1,840/mo. Secondary: ai readiness (880, KD 27, informational); what is ai readiness (70, KD 6, informational); ai readiness assessment tool (70, informational); ai readiness checklist (50, KD 8, informational); ai readiness framework (50, KD 7, informational)
- DE primary: ki readiness (210/KD 4); cluster 470/mo. Secondary: ki readiness check (140); ki reifegradmodell (90); ki reifegrad (30); ki readiness assessment (GEO)
- FR primary: diagnostic ia (140/KD 4); cluster 460/mo. Secondary: audit ia (320); maturité ia (GEO); diagnostic ia entreprise (GEO); évaluation maturité ia (GEO)

**24.2 AI Transformation: A Step-by-Step Path for Mid-Sized Companies**  
DE: KI im Unternehmen einführen: Der Weg für den Mittelstand in Schritten (/de/post/ki-im-unternehmen) · FR: Transformation IA : la feuille de route pour les PME et ETI (/fr/post/transformation-ia)  
- EN (US) primary: ai transformation (1600/KD 8); cluster 4,410/mo. Secondary: ai strategy (1,600, KD 43, commercial); ai implementation (1,000, KD 22, informational); ai implementation strategy (140, KD 25, informational); ai implementation roadmap (70, KD 1, informational)
- DE primary: ki im unternehmen (390/KD n/a); cluster 980/mo. Secondary: ki strategie (320, KD 5, informational); ki einführung (140, KD 8, informational); ki im unternehmen einführen (70, KD 1, commercial); ki im unternehmen beispiele (20, informational); ki im unternehmen datenschutz (20, commercial); einsatz von ki im unternehmen (20, informational)
- FR primary: transformation ia (70/KD n/a); cluster 280/mo. Secondary: stratégie ia (210, KD 14, informational); stratégie ia entreprise (GEO); transformation ia entreprise (GEO); intégrer l'ia dans son entreprise (GEO)

**24.3 AI Change Management: How to Get Teams to Adopt AI Agents**  
DE: KI-Schulung für Mitarbeiter: So nimmt das Team KI-Agenten an (/de/post/ki-schulung-mitarbeiter) · FR: Formation IA en entreprise : faire adopter les agents IA par les équipes (/fr/post/formation-ia-entreprise)  
- EN (US) primary: ai change management (170/KD 18); cluster 1,850/mo. Secondary: ai adoption (1,300, KD 35, informational); ai training for employees (320, KD 3, commercial); ai change management tools (40); change management for ai adoption (20, informational)
- DE primary: ki schulung mitarbeiter (40/KD n/a); cluster 1,150/mo. Secondary: ki kompetenz (590, KD 26, informational); ki schulungen für mitarbeiter (390, informational); ki kompetenz pflicht (90, informational); ki agenten schulung (40, commercial)
- FR primary: formation ia entreprise (480/KD 9); cluster 12,970/mo. Secondary: formation ia (9,900, KD 30, informational); formation intelligence artificielle (1,900, KD 21, informational); formation agent ia (480, informational); formation automatisation ia (210, informational)

**24.4 AI Consulting: What a Good AI Consultant Does (and What to Avoid)**  
DE: KI-Beratung: Was gute KI-Berater leisten und worauf man achten sollte (/de/post/ki-beratung) · FR: Consultant IA : ce que fait un bon consultant et les pièges à éviter (/fr/post/consultant-ia)  
- EN (US) primary: ai consulting (8100/KD 26); cluster 15,300/mo. Secondary: ai consulting firm (2,400, KD 11, commercial); ai consulting services (1,900, KD 8, commercial); ai consulting agency (1,000, KD 24, commercial); ai strategy consulting (720, KD 3, commercial); ai implementation consulting (590, KD 9, commercial); ai consulting for small businesses (590, commercial)
- DE primary: ki beratung (2400/KD 6); cluster 2,540/mo. Secondary: ki beratung mittelstand (140, informational); ki berater (GEO); ki unternehmensberatung (GEO); ki beratung kmu (GEO)
- FR primary: consultant ia (480/KD n/a); cluster 2,380/mo. Secondary: agence ia (1,900, KD 7, navigational); conseil ia (GEO); consultant ia entreprise (GEO); cabinet conseil ia (GEO)

**25.1 Future of Work and AI: What Happens to Jobs in an Agent-Run Company**  
DE: Zukunft der Arbeit: Was KI-Agenten mit Jobs und Rollen machen (/de/post/zukunft-der-arbeit-ki) · FR: IA et emploi : ce que les agents IA changent pour les métiers (/fr/post/ia-emploi)  
- EN (US) primary: future of work ai (390/KD 23); cluster 2,150/mo. Secondary: future of work (1,000, KD 31, informational); future of work artificial intelligence (390, KD 35); what is future of work (260, KD 13, informational); future of work automation (110, KD 13, informational)
- DE primary: zukunft der arbeit (590/KD n/a); cluster 1,240/mo. Secondary: ki arbeitsmarkt (320); ki ersetzt jobs (260, KD 7, informational); ki und arbeitsplätze (40, informational); ki zukunft der arbeit (30, informational)
- FR primary: ia emploi (1300/KD n/a); cluster 2,190/mo. Secondary: intelligence artificielle travail (390, KD 7, informational); emploi intelligence artificielle (260, informational); ia destruction emploi (70, informational); ia suppression emploi (70, KD 3, informational); impact ia emploi france (40, informational); ia perte emploi (30, informational); impact ia emploi (30, informational)

**25.2 AI for Small Business: Where to Start With AI Agents**  
DE: KI für KMU: Wo kleine Unternehmen mit KI-Agenten anfangen (/de/post/ki-fuer-kmu) · FR: IA pour PME : par où commencer avec les agents IA (/fr/post/ia-pme)  
- EN (US) primary: ai for small business (3600/KD 31); cluster 9,550/mo. Secondary: ai receptionist for small business (3,600, KD 32); best ai for small business (880, KD 11, commercial); ai tool for small business (880, KD 22, commercial); ai consultant for small business (590)
- DE primary: ki für kmu (70/KD n/a); cluster 300/mo. Secondary: ki im mittelstand (170, informational); ki für kleine unternehmen (50); ki mittelstand beispiele (10); ki für kleinunternehmen (GEO, commercial)
- FR primary: ia pme (50/KD n/a); cluster 110/mo. Secondary: intelligence artificielle pme (50); ia tpe (10); agents ia pour pme (GEO, commercial); ia petite entreprise (GEO)

### 3b. Cannibalization fixes
Each term was assigned to one article only, processed P1 first; primaries were reserved before any secondaries. Overlaps found and resolved:

- EN 'autonomous ai agents examples': fits 4.1 too, kept on 2.2
- EN 'ai agents vs agentic ai': fits 4.2 too, kept on 2.1
- EN 'ai consulting for small businesses': fits 25.2 too, kept on 24.4
- EN 'what are ai agents and how do they work': fits 4.3 too, kept on 4.1
- DE 'ki im unternehmen nutzen': fits 24.2 too, kept on 1.1
- DE 'ki im unternehmen einsetzen': fits 24.2 too, kept on 1.1
- DE 'ki beratung mittelstand': fits 25.2 too, kept on 24.4
- DE 'ki im rechnungswesen und controlling': fits 12.2 too, kept on 12.1
- DE 'ki-agenten programmieren': fits 17.1 too, kept on 9.1
- DE 'ki im unternehmen datenschutz': fits 21.3 too, kept on 24.2
- DE 'ki ersetzt kundenservice': fits 25.1 too, kept on 16.1
- FR 'multi agent orchestration': fits 18.2 too, kept on 18.1
- FR 'intégrer l'ia en entreprise': fits 24.2 too, kept on 1.1
- FR 'n8n human in the loop': fits 18.4 too, kept on 20.1
- FR 'ai act human in the loop': fits 21.1 too, kept on 20.1
- FR 'ia agentique applications pme': fits 25.2 too, kept on 2.1
- FR 'transformation ia': fits 24.3 too, kept on 24.2
- FR 'ia et travail': fits 25.1 too, kept on 7.1
- 5.1: primary moved from "principal agent problem" to "ai agent governance" (EN), "ki governance" (DE), "gouvernance ia" (FR); the principal-agent terms stay as secondaries for the body. "ai agent governance" therefore left 8.1.
- 3.1: EN primary moved from "theory of the firm" to "ai impact on business" (title rule); transaction-cost terms stay as secondaries.
- 23.2: EN primary is "proof of concept" (8,100/KD 15) with "ai proof of concept", "ai pilot", "pilot purgatory" as secondaries; DE "proof of concept" + "ki pilot"; FR "proof of concept" + "pilote ia", "poc ia".
- "ki im mittelstand" kept on 25.2 (not 24.2); "stratégie ia entreprise" kept on 24.2 (not 1.1); "biais d'automatisation ia" kept on 20.2 (not 8.2).
- Dropped as wrong intent: "ki checker" (AI text checkers), "global workforce ai", bare "rag" (cloth/doll noise), bare "n8n" and "bpm" (navigational / beats per minute).

## 4. Lead capture (jadenx.com: Next.js on Vercel, currently mailto only)
**Three mechanisms**
1. **"Get the next chapter" signup** (TOFU). An inline box after the second H2 and at the end of every article: "The book is written in public. Get each new chapter by email." This is the main list builder.
2. **Lead magnet: the book itself.** Offer chapters 1 to 4 as a PDF preview plus the "Agent Readiness Checklist" (one page). It sits on the hub page for categorySlug 1-human-100-agents and on the 24.x articles.
3. **Per-article content upgrades** (MOFU), one template per cluster: the agent brief template (9.x), the approval-gate matrix (20.x), the works council checklist / Betriebsvereinbarung outline (21.2), the agent cost calculator sheet (6.x) and the vendor scorecard (24.4).
- BOFU articles keep the mailto or calendar CTA ("readiness check / sparring call"). The mailto stays as it is.

**Free tool comparison** (limits per the vendors' pricing pages as remembered; **verify before any signup**, none was made)
| Tool | Free plan | EU hosting / company | Double opt-in | Next.js fit | Verdict |
|---|---|---|---|---|---|
| **Brevo** | unlimited contacts, about 300 emails/day | French company, EU data | yes, native DOI template via API | REST API from a route handler | **recommended** |
| MailerLite | up to 1,000 subscribers, about 12k emails/month | Lithuanian company, data partly in the US | yes | API, embeds | good backup |
| Kit (ConvertKit) | up to 10k subscribers, limited features | US | yes | API | US transfer, weaker for DE/FR B2B |
| Buttondown | up to 100 subscribers | US | yes | very simple API | too small |
| Listmonk (self-hosted) | free, unlimited | wherever you host it | yes | API | needs a server and an SMTP provider, too much ops |
| Resend | the old keys were cancelled | US | DIY | good | don't revive it for the list |

**Recommendation: Brevo free.** Add a Next.js route handler `app/api/subscribe/route.ts` that posts to Brevo's double opt-in endpoint (`/v3/contacts/doubleOptinConfirmation`) with a list id and a language attribute (EN/DE/FR), plus a honeypot field and a simple rate limit. Keep the API key in a Vercel env var only, use a small client form component, and add a thank-you page and a confirmed page per language. Running costs: 0 €.

**Legal (DE/FR), to be checked by Marcel's lawyer**
- Double opt-in is required in practice in DE (UWG §7 and BGH case law on proof of consent), and best practice in FR.
- Use an unticked consent checkbox with clear purpose text ("chapter updates and occasional JadenX news"), log the consent (timestamp, IP, form version; Brevo stores the DOI confirmation) and put an unsubscribe link in every mail.
- Update the privacy policy: name Brevo as processor, legal basis Art. 6(1)(a) GDPR, storage period. Sign Brevo's DPA (AVV). Include the imprint in every mail.
- Lead magnet gating: coupling a download to newsletter consent is risky under Art. 7(4) GDPR. The safer pattern: the PDF is delivered by mail after DOI, and the text says clearly that the subscription is the price, with unsubscribe possible at any time. Alternatively, keep the preview chapters ungated and gate only the templates.
- FR: CNIL requires prior consent for B2C. B2B soft opt-in for related offers exists but doesn't apply to cold signups, so use the same DOI flow.
- No tracking pixels without cookie consent: switch off Brevo open tracking, or cover it in the banner.

## 5. Sync workflow and style (kept from v2)
- One research pack and one German voice-note round per chapter feed both the book chapter and its articles. Articles are drafted only from Marcel's voice notes.
- Book style note 0b: Marcel's article voice, mostly medium explainer sentences, short punch sentences rare. Articles use the same rule where it fits.
- Hub page for categorySlug 1-human-100-agents with chapter clusters; each article links to its chapter hub, its two siblings and the next-chapter signup. Schema: Article + FAQPage (built from the PAA questions in the CSV) + BreadcrumbList. GEO: an answer-first paragraph under each H2, quotable definitions, dated sources.
- Every article: references section plus the CTA footer.

## 6. Cadence
- Wave 1: the 16 P1 articles, 2 per week (about 8 weeks). EN and DE publish together, FR follows within 2 weeks.
- Wave 2: the 21 P2 articles, 2 per week. Wave 3: the 11 P3 articles, 1 per week, alongside the book chapters.
- Book: one chapter every 2 weeks, released through the "next chapter" mail.

## 7. Open decisions for Dr. Marcel Müller
1. Keep the Hannah Schmidt story as written, or rework it for the broader 25-chapter scope (e.g. a second company for the Mittelstand angle)?
2. Packages and pricing to name on the BOFU articles (readiness check, sparring call)?
3. Newsletter tool: confirm Brevo, and who sets up the account and DPA (I've signed up for nothing).
4. Lead magnet gating: gated PDF via DOI, or an ungated preview with gated templates?
5. FR scope: full FR versions of all 48, or only the P1 set plus the strong FR terms (agent ia entreprise, comment créer un agent ia, ia agentique)?
6. Book title wording and visibility: public chapters on the site, or mail-only?
7. Which real cases (anonymised client projects) can be used in chapters 6, 10 to 17 and 23?
8. Cadence: is 2 articles per week realistic with the voice-note rounds?
9. Start with the P1 set as proposed?
