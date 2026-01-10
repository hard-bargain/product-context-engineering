# Agent-Skill Matrix

**Version:** 1.0
**Updated:** 2026-01-09
**Purpose:** Complete mapping of agents to skills showing invocation patterns

---

## Overview

This matrix documents which of our **31 skills** each agent uses, showing:
- Primary skills (core to agent's mission)
- Supporting skills (used as needed)
- Infrastructure skills (used by all agents)

**Total Skills:** 31 (24 PRD workflow + 4 ACE-native + 3 infrastructure)
**Total Agents:** 13 (3 primary + 10 sub-agents)

---

## Primary Agent Skill Assignments

### AURA (Research Phase Orchestrator)

**Phase:** v0.1 Spark → v0.5 Red Team Review
**Role:** Market & Product Strategy Lead

**Primary Skills Used:**
- `ace-context-manager` - Extract strategic context into DECISIONS.md, MARKET.md
- `team-context-coordinator` - Coordinate PM/Designer/Strategist collaboration
- `phase-transition-manager` - Manage transitions v0.1→v0.2→v0.3→v0.4→v0.5
- `quality-validator` - Validate research phase completion

**Sub-Agent Skills (invoked through sub-agents):**
- All v0.1-v0.5 PRD workflow skills (13 total)

**Total Skills:** 4 direct + 13 via sub-agents = 17 skills

---

### APOLLO (Build Phase Orchestrator)

**Phase:** v0.6 Architecture → v0.8 Deployment & Ops
**Role:** Technical Implementation Lead

**Primary Skills Used:**
- `ace-context-manager` - Extract technical context into TECHNICAL.md
- `team-context-coordinator` - Coordinate Designer/Developer/DevOps collaboration
- `phase-transition-manager` - Manage transitions v0.6→v0.7→v0.8
- `quality-validator` - Validate build phase completion

**Sub-Agent Skills (invoked through sub-agents):**
- All v0.6-v0.8 PRD workflow skills (8 total)

**Total Skills:** 4 direct + 8 via sub-agents = 12 skills

---

### JANUS (GTM Phase Orchestrator)

**Phase:** v0.9 Go-to-Market → v1.0 Market Adoption
**Role:** Go-to-Market & Growth Lead

**Primary Skills Used:**
- `ace-context-manager` - Extract market context into MARKET.md, METRICS.md
- `team-context-coordinator` - Coordinate PM/Marketing/Sales collaboration
- `phase-transition-manager` - Manage transitions v0.9→v1.0→loopback
- `quality-validator` - Validate GTM phase completion

**Sub-Agent Skills (invoked through sub-agents):**
- All v0.9 PRD workflow skills (3 total)

**Total Skills:** 4 direct + 3 via sub-agents = 7 skills

---

## Sub-Agent Skill Assignments

### Research Sub-Agents (Under AURA)

#### SPARK-SCOUT (v0.1 Spark)

**Guiding Question:** "Is this the right problem?"

**Primary Skills:**
1. `prd-v01-problem-framing` - Transform raw ideas into testable problem statements
2. `prd-v01-user-value-articulation` - Convert pain points into value statements

**Supporting Skills:**
- `ace-context-manager` - Populate DECISIONS.md with problem validation
- `file-validator` - Validate CFD-XXX cross-references
- `id-tracker` - Create and manage CFD-XXX IDs

**Outputs:** CFD-XXX entries in PRD v0.1, problem validation in DECISIONS.md

---

#### SEGMENTOR (v0.2 Market Definition)

**Guiding Question:** "Who exactly needs this?"

**Primary Skills:**
1. `prd-v02-competitive-landscape-mapping` - Map competitive landscape and feature matrix
2. `prd-v02-product-type-classification` - Classify as Fast Follow/Slice/Innovation

**Supporting Skills:**
- `ace-context-manager` - Populate MARKET.md with ICP definitions
- `file-validator` - Validate PER-XXX and BR-XXX references
- `id-tracker` - Create and manage PER-XXX, BR-XXX IDs

**Outputs:** PER-XXX personas, BR-XXX classification in PRD v0.2, MARKET.md entries

---

#### MOAT-MAPPER (v0.3 Commercial Model)

**Guiding Question:** "Why will we win?"

**Primary Skills:**
1. `prd-v03-moat-definition` - Define defensibility strategy
2. `prd-v03-pricing-model` - Select pricing structure
3. `prd-v03-outcome-definition` - Define measurable KPIs
4. `prd-v03-features-value-planning` - Prioritize features with traceability

**Supporting Skills:**
- `ace-context-manager` - Populate FEATURES.md, METRICS.md, DECISIONS.md
- `file-validator` - Validate FEA-XXX, KPI-XXX, BR-XXX references
- `id-tracker` - Create and manage FEA-XXX, KPI-XXX, BR-XXX IDs

**Outputs:** FEA-XXX features, KPI-XXX metrics, BR-XXX moat in PRD v0.3, multiple SoT files

---

#### JOURNEY-SCRIBE (v0.4 User Journeys)

**Guiding Question:** "How will users actually use this?"

**Primary Skills:**
1. `prd-v04-persona-definition` - Create behavioral personas
2. `prd-v04-user-journey-mapping` - Map user missions with step flows
3. `prd-v04-screen-flow-definition` - Define screen inventory with navigation

**Supporting Skills:**
- `ace-context-manager` - Populate FEATURES.md with UX requirements
- `team-context-coordinator` - Coordinate PM→Designer handoff
- `file-validator` - Validate UJ-XXX, SCR-XXX, DES-XXX references
- `id-tracker` - Create and manage UJ-XXX, SCR-XXX, DES-XXX IDs

**Outputs:** UJ-XXX journeys, SCR-XXX screens, DES-XXX designs in PRD v0.4, FEATURES.md

---

#### RISK-ORACLE (v0.5 Red Team Review)

**Guiding Question:** "What could go wrong?"

**Primary Skills:**
1. `prd-v05-risk-discovery-interview` - Surface risks through guided interview
2. `prd-v05-technical-stack-selection` - Select technical stack

**Supporting Skills:**
- `ace-context-manager` - Populate TECHNICAL.md, DECISIONS.md with risks
- `file-validator` - Validate RISK-XXX, TECH-XXX references
- `id-tracker` - Create and manage RISK-XXX, TECH-XXX IDs

**Outputs:** RISK-XXX assessments, TECH-XXX stack in PRD v0.5, TECHNICAL.md

---

### Build Sub-Agents (Under APOLLO)

#### ARCHITECT (v0.6 Architecture)

**Guiding Question:** "How should we build this?"

**Primary Skills:**
1. `prd-v06-architecture-design` - Define system architecture
2. `prd-v06-technical-specification` - Create API contracts and data models

**Supporting Skills:**
- `ace-context-manager` - Populate TECHNICAL.md with architecture
- `team-context-coordinator` - Coordinate Designer→Developer handoff
- `file-validator` - Validate ARC-XXX, API-XXX, DBT-XXX references
- `id-tracker` - Create and manage ARC-XXX, API-XXX, DBT-XXX IDs

**Outputs:** ARC-XXX architecture, API-XXX contracts, DBT-XXX models in PRD v0.6, TECHNICAL.md

---

#### QA-MAESTRO (v0.7 Build Execution)

**Guiding Question:** "How do we ensure quality?"

**Primary Skills:**
1. `prd-v07-epic-scoping` - Create context-window-sized work packages
2. `prd-v07-test-planning` - Define test cases before implementation
3. `prd-v07-implementation-loop` - Execute implementation with traceability

**Supporting Skills:**
- `ace-context-manager` - Populate TECHNICAL.md with test strategy
- `phase-transition-manager` - Manage epic transitions
- `quality-validator` - Validate implementation quality
- `file-validator` - Validate EPIC-XXX, TEST-XXX references
- `id-tracker` - Create and manage EPIC-XXX, TEST-XXX IDs

**Outputs:** EPIC-XXX work packages, TEST-XXX plans in PRD v0.7, active/epics/

---

#### AUTOMATION-RUNNER (v0.8 Deployment & Ops)

**Guiding Question:** "How do we deploy reliably?"

**Primary Skills:**
1. `prd-v08-release-planning` - Plan deployment environments and rollback
2. `prd-v08-runbook-creation` - Create operational playbooks
3. `prd-v08-monitoring-setup` - Configure metrics, alerts, dashboards

**Supporting Skills:**
- `ace-context-manager` - Populate TECHNICAL.md with ops strategy
- `file-validator` - Validate DEP-XXX, RUN-XXX, MON-XXX references
- `id-tracker` - Create and manage DEP-XXX, RUN-XXX, MON-XXX IDs

**Outputs:** DEP-XXX deployment plans, RUN-XXX runbooks, MON-XXX monitoring in PRD v0.8, TECHNICAL.md

---

### GTM Sub-Agents (Under JANUS)

#### LAUNCH-CALLER (v0.9 Go-to-Market)

**Guiding Question:** "Are we ready to launch?"

**Primary Skills:**
1. `prd-v09-gtm-strategy` - Plan launch activities and messaging
2. `prd-v09-launch-metrics` - Define launch success criteria

**Supporting Skills:**
- `ace-context-manager` - Populate MARKET.md, METRICS.md with launch plans
- `quality-validator` - Validate launch readiness
- `file-validator` - Validate GTM-XXX, KPI-XXX references
- `id-tracker` - Create and manage GTM-XXX, KPI-XXX IDs

**Outputs:** GTM-XXX strategy, KPI-XXX metrics in PRD v0.9, MARKET.md, METRICS.md

---

#### ADOPTION-ANALYST (v1.0 Market Adoption)

**Guiding Question:** "How do we grow?"

**Primary Skills:**
1. `prd-v09-feedback-loop-setup` - Establish feedback channels

**Supporting Skills:**
- `ace-context-manager` - Populate METRICS.md with growth data
- `quality-validator` - Validate growth metrics
- `file-validator` - Validate CFD-XXX feedback references
- `id-tracker` - Create and manage feedback CFD-XXX IDs

**Outputs:** Feedback CFD-XXX in PRD v1.0, METRICS.md growth analytics

---

## Infrastructure Skills (Used by All Agents)

### file-validator
**Purpose:** Validate markdown files and check cross-references
**Users:** All agents when updating SoT files
**When:** Before committing SoT updates, during quality validation

### id-tracker
**Purpose:** Manage ID-based knowledge graph integrity
**Users:** All agents when creating or referencing IDs
**When:** Creating new IDs, validating cross-references, generating reports

### markdown-processor
**Purpose:** Process and format markdown content
**Users:** All agents when generating documentation
**When:** Creating PRD sections, formatting SoT entries, generating templates

---

## Skill Invocation Patterns

### Pattern 1: Primary Agent Orchestration

```
Primary Agent (e.g., AURA)
    ↓ invokes
Sub-Agent (e.g., SPARK-SCOUT)
    ↓ uses
Primary Skills (prd-v01-problem-framing, prd-v01-user-value-articulation)
    ↓ uses
Supporting Skills (ace-context-manager, id-tracker)
    ↓ produces
SoT Updates (DECISIONS.md with CFD-XXX entries)
    ↓ returns to
Primary Agent (AURA synthesizes into PRD v0.1)
```

### Pattern 2: Cross-Gate Coordination

```
Sub-Agent A (e.g., MOAT-MAPPER at v0.3)
    ↓ creates
FEA-XXX feature definitions
    ↓ referenced by
Sub-Agent B (e.g., JOURNEY-SCRIBE at v0.4)
    ↓ creates
UJ-XXX journeys using FEA-XXX
    ↓ validated by
id-tracker skill (ensures FEA-XXX exists)
```

### Pattern 3: Loopback Pattern

```
Sub-Agent (e.g., ARCHITECT at v0.6)
    ↓ discovers
Missing UJ-XXX user journey
    ↓ requests via
Primary Agent (APOLLO)
    ↓ loops back to
Previous Primary Agent (AURA)
    ↓ re-invokes
Sub-Agent (JOURNEY-SCRIBE)
    ↓ updates
UJ-XXX in PRD v0.4
    ↓ propagates to
ARCHITECT continues v0.6 work
```

---

## Skill Coverage by Phase

### Research Phase (v0.1-v0.5) - AURA

| Gate | Sub-Agent | PRD Skills | ACE Skills | Infrastructure | Total |
|------|-----------|-----------|------------|----------------|-------|
| v0.1 | SPARK-SCOUT | 2 | 1 | 2 | 5 |
| v0.2 | SEGMENTOR | 2 | 1 | 2 | 5 |
| v0.3 | MOAT-MAPPER | 4 | 1 | 2 | 7 |
| v0.4 | JOURNEY-SCRIBE | 3 | 2 | 2 | 7 |
| v0.5 | RISK-ORACLE | 2 | 1 | 2 | 5 |
| **Phase Total** | **5 sub-agents** | **13** | **4** | **3** | **20** |

### Build Phase (v0.6-v0.8) - APOLLO

| Gate | Sub-Agent | PRD Skills | ACE Skills | Infrastructure | Total |
|------|-----------|-----------|------------|----------------|-------|
| v0.6 | ARCHITECT | 2 | 2 | 2 | 6 |
| v0.7 | QA-MAESTRO | 3 | 3 | 2 | 8 |
| v0.8 | AUTOMATION-RUNNER | 3 | 1 | 2 | 6 |
| **Phase Total** | **3 sub-agents** | **8** | **4** | **3** | **15** |

### GTM Phase (v0.9-v1.0) - JANUS

| Gate | Sub-Agent | PRD Skills | ACE Skills | Infrastructure | Total |
|------|-----------|-----------|------------|----------------|-------|
| v0.9 | LAUNCH-CALLER | 2 | 2 | 2 | 6 |
| v1.0 | ADOPTION-ANALYST | 1 | 2 | 2 | 5 |
| **Phase Total** | **2 sub-agents** | **3** | **4** | **3** | **10** |

---

## Skill Specialization Matrix

### High Specialization (1 agent uses)

Skills used by only one sub-agent:
- v0.1, v0.2 skills (SPARK-SCOUT, SEGMENTOR specific)
- v0.6 architecture skills (ARCHITECT specific)
- v0.8 deployment skills (AUTOMATION-RUNNER specific)
- v1.0 adoption skills (ADOPTION-ANALYST specific)

### Medium Specialization (2-3 agents use)

Skills used by multiple sub-agents in same phase:
- v0.3 commercial model skills (MOAT-MAPPER)
- v0.4 UX skills (JOURNEY-SCRIBE)
- v0.7 quality skills (QA-MAESTRO)

### Universal Skills (all agents use)

Infrastructure and ACE-native skills:
- `ace-context-manager` (all agents)
- `team-context-coordinator` (all agents)
- `phase-transition-manager` (primary agents)
- `quality-validator` (primary agents + QA-MAESTRO)
- `file-validator` (all agents)
- `id-tracker` (all agents)
- `markdown-processor` (all agents)

---

## Usage Recommendations

### For Primary Agents
- Always use `phase-transition-manager` for gate transitions
- Use `quality-validator` before handoffs
- Invoke `ace-context-manager` to synthesize sub-agent outputs
- Use `team-context-coordinator` for cross-discipline work

### For Sub-Agents
- Focus on primary skills for your gate
- Use `ace-context-manager` to update relevant SoT files
- Always use `id-tracker` when creating IDs
- Use `file-validator` before signaling completion

### For Multi-Gate Work
- Sub-agents can reference IDs from earlier gates
- Use `id-tracker` to verify ID existence
- Loopback through primary agent if dependencies missing
- Update all affected SoT files consistently

---

## Version History

**v1.0 (2026-01-09):** Initial agent-skill matrix with complete 13 agent × 31 skill mapping

---

## References

- **Skills Directory:** `.codex/skills/`
- **Skills Manifest:** `.codex/skills/ACE_SKILLS_MANIFEST.yaml`
- **Agents Directory:** `.codex/agents/`
- **Coordination Protocols:** `.codex/agents/COORDINATION_PROTOCOLS.md`
