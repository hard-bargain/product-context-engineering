# Repository Catalog: PRD-Driven Context Engineering

**Repository:** https://github.com/mattgierhart/PRD-driven-context-engineering
**Methodology Name:** Gear Heart Methodology (GHM)
**Size:** 1.7MB
**Total Markdown Files:** 77
**Python Tools:** 10 automation scripts
**Cataloged:** 2025-12-18

---

## Executive Summary

The Gear Heart Methodology (GHM) is a **PRD-driven context engineering workflow** designed for AI-led and AI-only software development. It treats the PRD, README, and Source-of-Truth (SoT) library as long-term memory for AI agents and a shared contract for humans.

### Core Innovation
GHM solves the problem of **context continuity** in AI-powered product development by creating a structured, ID-based knowledge graph that allows AI agents to:
- Re-enter work sessions without extensive context dumps
- Reference precise specifications via unique IDs (BR-XXX, UJ-XXX, API-XXX)
- Collaborate across multiple specialized agents
- Maintain a single source of truth without document sprawl

---

## Repository Structure

### 1. Navigation Layer (3 Core Files)
The "3" in the 3+1+SoT+Temp pattern:

| File | Purpose | Role |
|------|---------|------|
| `CLAUDE.md` | AI Instructions | How AI agents should behave in this project |
| `PRD.md` | Product Definition | What we're building and why (progressive, living document) |
| `README.md` | Status & Navigation | Current state, metrics, and navigation to SoT |

### 2. Active Work Directory (`active/`)
**Live project files** - the instantiated version of templates:

```
active/
├── agents/          # Specialized agent briefs (AURA, APOLLO, etc.)
├── epics/           # Current work windows with ID tracking
├── source_of_truth/ # Canonical specs with unique IDs
│   ├── USER_JOURNEYS.md
│   ├── BUSINESS_RULES.md
│   ├── customer_feedback.md
│   └── ...
└── temp/            # Short-lived scratchpads (must be harvested)
```

### 3. Methodology Documentation (`methodology/`)
**How GHM works** - the methodology itself:

#### Workflows (`methodology/workflows/`)
- `PRD_VERSION_LIFECYCLE.md` - 10-stage progression (v0.1 → v1.0)
- `UNIQUE_ID_SYSTEM.md` - ID naming, lifecycle, automation hooks
- `WORKFLOW_MASTER.md` - Master workflow orchestration
- `PROGRESSIVE_DOCUMENTATION_GUIDE.md` - How docs evolve with the product
- `MODEL_USAGE_GUIDE.md` - When to use which AI model
- `AGENT_TOOLS.md` - Tools available to agents
- `SUBAGENT_REGISTRY.md` - Registry of specialized agents

#### Guides (`methodology/guides/`)
- `context_engineering_manifesto.md` - Philosophy and principles
- `REPO_ORGANIZATION.md` - How to structure a GHM-based repo
- `ID_KNOWLEDGE_GRAPH.md` - ID-based knowledge graph system
- `ghm_visualization_suite_plan.md` - Visualization architecture
- `PROMPT_PHASES_2_4.md` - Prompt engineering guidance
- PRD instruction versions (`prd/instructions/v0.1/` through `v0.6/`)

### 4. Templates Directory (`templates/`)
**Blank forms** to copy into `active/`:

```
templates/
├── agents/          # Agent brief templates
├── epics/           # EPIC templates (feature, deployment, testing, etc.)
├── product/         # PRD, README, CLAUDE templates
├── source_of_truth/ # SoT file templates
├── testing/         # Test plan templates
├── design/          # Design brief templates
└── hooks/           # Session protocol hooks
```

### 5. Automation Tools (`tools/`)
**Python scripts** for visualization and validation:

| Script | Purpose |
|--------|---------|
| `generate_visuals.py` | Generate ID knowledge graphs and validation reports |
| `validate_sessions.py` | Audit Session State compliance in EPICs |
| `parsers/sot_parser.py` | Parse Source-of-Truth files |
| `generators/graph_generator.py` | Generate graph visualizations |
| `utils/id_extractor.py` | Extract IDs from markdown files |
| `utils/provenance.py` | Track git SHA, config hash, build metadata |
| `utils/attribution.py` | Attribution tracking for generated artifacts |

### 6. Documentation (`docs/`)
- `AI_EVALUATOR_GUIDE.md` - How to evaluate AI-generated work
- `getting_started.md` - Onboarding guide

---

## The 3+1+SoT+Temp Documentation Stack

| Layer | Files | Purpose | ID Usage |
|-------|-------|---------|----------|
| **3 — Navigation** | CLAUDE.md, PRD.md, README.md | Onboard agents in minimal tokens | Point to SoT anchors (BR-112, UJ-014) |
| **+1 — Active EPIC** | `active/epics/*.md` | Current work window | Section 3A tracks ID deltas |
| **SoT — Source of Truth** | `active/source_of_truth/*.md` | Authoritative specs | Each entry is an ID card |
| **Temp — Scratchpads** | `active/temp/*.md` | Exploration before extraction | Must be harvested into SoT |

---

## PRD Version Lifecycle (10 Stages)

The methodology defines a **progressive PRD lifecycle** from spark to market adoption:

| Version | Focus | Key Question |
|---------|-------|--------------|
| **v0.1** | Spark | Do we agree on the problem? |
| **v0.2** | Market Definition | Who is this NOT for? |
| **v0.3** | Commercial Model | How do we win vs. competitors? |
| **v0.4** | User Journeys | Do these solve real pains? |
| **v0.5** | Red Team Review | What breaks first? |
| **v0.6** | Architecture | Is the stack feasible? |
| **v0.7** | Build Execution | Do we have a realistic plan? |
| **v0.8** | Deployment & Ops | Can we safely release? |
| **v0.9** | Go-to-Market | How do we attract users? |
| **v1.0** | Market Adoption | Are customers using and paying? |

---

## Unique ID System

GHM uses **durable IDs** for cross-referencing without duplication:

| ID Prefix | Entity Type | Example |
|-----------|-------------|---------|
| `BR-XXX` | Business Rules | BR-112: Free plan limited to 5 projects |
| `UJ-XXX` | User Journeys | UJ-014: New user onboarding flow |
| `API-XXX` | API Contracts | API-007: Authentication endpoint |
| `DBT-XXX` | Database/Schema | DBT-003: User table schema |
| `CFD-XXX` | Customer Feedback | CFD-010: Feature request for dark mode |
| `TC-XXX` | Test Cases | TC-021: Integration test for login |
| `DS-XXX` | Datasets | DS-005: Golden dataset for regression |

---

## Key Principles

### 1. Single Source of Truth via ID Graph
Eliminate doc sprawl by converging on one PRD and one README, backed by an SoT ID library.

### 2. Cross-Session Predictability for AI
AI agents can re-enter work at any time and quickly reconstruct context from stable structures.

### 3. Multi-Agent Collaboration
Specialized agents (research, architecture, GTM) join mid-stream using the same navigation files.

### 4. ID-Based Context vs. Context-Window Overload
Use IDs to reference exactly what an agent needs instead of pasting entire documents.

### 5. Human-AI Collaboration
Encode who does what, where work moves next, and how AI output is validated.

---

## Session Protocols (NEW!)

Based on Anthropic's research on effective harnesses for long-running agents:

- **EPIC Section 0** - Session State tracking at the top of every EPIC
- **Session Start/End Protocols** - Mandatory handoff procedures
- **Validation Script** - Audit Session State compliance
- **Hook Templates** - Enforce protocols via git hooks or agent harnesses

---

## Visualization Suite (NEW!)

Inspired by Hephaestus, built from scratch for GHM:

- **ID Knowledge Graph** - See how IDs interconnect
- **Validation Reports** - Identify orphaned IDs and missing references
- **Provenance Tracking** - Git SHA, config hash, build metadata

```bash
python tools/generate-visuals.py --all
# View results in docs/generated/index.md
```

---

## Testing & Validation Philosophy

- **Unit Tests** - Fast checks for logic boundaries
- **Integration Tests** - Validate seams (auth, data access, external systems)
- **E2E Tests** - User-journey validation mapped to UJ-XXX IDs
- **Golden Datasets** - Curated truth for AI and deterministic checks
- **Performance Benchmarks** - Thresholds aligned to product targets

---

## Context Governance

### Authority Hierarchy
Product README + SoT library = **single source of truth**

### Stable Paths
- `templates/product/` - PRD/README/CLAUDE templates
- `templates/epics/` - EPIC templates
- `templates/source_of_truth/` - SoT structures

### No Mystery Files
If it isn't in the graph, it doesn't exist.

---

## Key Differentiators

### vs. Waterfall
- Maintains adaptability while restoring coherence
- Living documents instead of frozen plans

### vs. Agile
- Preserves agility while preventing knowledge fragmentation
- Structured memory instead of scattered tickets

### vs. Traditional Documentation
- Dynamic memory for AI instead of static reference
- ID-based retrieval instead of full-text search
- Progressive documentation that evolves with product stages

---

## Use Cases for This Methodology

1. **AI-First Product Development**
   - Building products where AI agents are primary contributors
   - Maintaining context across long development cycles

2. **Cross-Functional Team Alignment**
   - Single source of truth for PMs, engineers, designers
   - Clear handoffs and validation gates

3. **Rapid Prototyping to Production**
   - Progressive PRD lifecycle supports evolution
   - Architecture and deployment planning built into workflow

4. **Multi-Agent AI Systems**
   - Specialized agents (research, architecture, testing, GTM)
   - Common navigation and ID language

5. **Knowledge Management**
   - Prevent tribal knowledge loss
   - Enable seamless onboarding and offboarding

---

## Presentation Angles

### For Product Development
- **"The Third Epoch"** - Waterfall → Agile → Context Engineering
- Progressive PRD lifecycle as product evolution framework
- Gate-based execution with built-in quality checks

### For AI/ML Teams
- Structured context for long-running AI agents
- Multi-agent collaboration framework
- ID-based knowledge graph as AI memory

### For Leadership
- Reduce onboarding time from days to minutes
- Single source of truth prevents decision drift
- Clear validation gates and progress tracking

### For Engineering
- Template-driven consistency
- Test-first approach with golden datasets
- Automated validation and visualization tools

---

## Files to Explore for Deep Dive

### Philosophy & Vision
1. `methodology/guides/context_engineering_manifesto.md`
2. `README.md` (sections on Mission and Principles)

### Practical Implementation
3. `methodology/workflows/PRD_VERSION_LIFECYCLE.md`
4. `methodology/workflows/UNIQUE_ID_SYSTEM.md`
5. `methodology/guides/REPO_ORGANIZATION.md`

### Templates & Examples
6. `templates/epics/EPIC_template.md`
7. `templates/product/PRD_template.md` (if exists)
8. `templates/source_of_truth/BUSINESS_RULES.md`

### Automation & Tools
9. `tools/generate_visuals.py`
10. `methodology/guides/ghm_visualization_suite_plan.md`

---

## Next Steps for Analysis

### 1. Content Mapping
- [ ] Create visual diagram of the 3+1+SoT+Temp stack
- [ ] Map the PRD lifecycle to traditional SDLC stages
- [ ] Identify unique value propositions vs. existing methodologies

### 2. Use Case Development
- [ ] Define 3-5 concrete scenarios where GHM adds value
- [ ] Map to specific industries or company sizes
- [ ] Identify pain points GHM solves

### 3. Presentation Structure
- [ ] Problem statement (context sprawl in AI-powered development)
- [ ] Solution overview (3+1+SoT+Temp stack)
- [ ] Methodology walkthrough (PRD lifecycle)
- [ ] Practical examples (templates, tools, workflows)
- [ ] Call to action (how to adopt)

### 4. Deep Dives
- [ ] Analyze the session protocols implementation
- [ ] Review visualization suite architecture
- [ ] Examine ID system in practice (look at examples)
- [ ] Study agent collaboration patterns

---

## Questions to Explore

1. **How does GHM compare to existing frameworks?**
   - Confluence/Notion for documentation
   - Jira/Linear for project management
   - Shape Up for product development

2. **What's the adoption path?**
   - Can teams adopt incrementally?
   - What's the minimum viable implementation?

3. **What tools/integrations would enhance it?**
   - IDE plugins for ID navigation
   - CI/CD integration for validation
   - Visualization dashboards

4. **What evidence exists for effectiveness?**
   - Has it been used in production?
   - What were the results?

---

## License & Attribution

- **License:** MIT (Gear Heart AI, LLC)
- **Author:** Matt Gierhart
- **Catalog Created:** 2025-12-18
