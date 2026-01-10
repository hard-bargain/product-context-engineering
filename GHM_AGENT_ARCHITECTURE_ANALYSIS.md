# GHM Agent Architecture Analysis

**Date:** 2026-01-09
**Source:** https://github.com/mattgierhart/PRD-driven-context-engineering
**Purpose:** Document complete GHM agent/sub-agent hierarchy for IBM implementation

---

## Executive Summary

The GHM repository implements a **hierarchical multi-agent system** with:
- **Primary Agents** (3 confirmed: AURA, APOLLO, JANUS)
- **Sub-Agents** (10 total: 5 under AURA + build/GTM sub-agents)
- **Sequential handoff model** through v0.1 → v1.0 gates
- **Loopback discipline** when issues discovered downstream

**Key Finding:** We have the **skills** but not the **agent/sub-agent orchestration layer**.

---

## Complete Agent Hierarchy

### Primary Agent 1: AURA (Market & Product Strategy Lead)

**Scope:** v0.1 Spark → v0.5 Red Team Review
**Role:** Orchestrates research phase, owns PRD development through strategic gates

**Sub-Agents Under AURA:**

1. **SPARK-SCOUT** (v0.1)
   - **Question:** "Is this the right problem?"
   - **Deliverables:** Problem validation, success signals (CFD-XXX)
   - **Skills Used:** prd-v01-problem-framing, prd-v01-user-value-articulation

2. **SEGMENTOR** (v0.2)
   - **Question:** "Who exactly needs this?"
   - **Deliverables:** ICP definitions, market segments (PER-XXX)
   - **Skills Used:** prd-v02-competitive-landscape-mapping, prd-v02-product-type-classification

3. **MOAT-MAPPER** (v0.3)
   - **Question:** "Why will we win?"
   - **Deliverables:** Competitive positioning, pricing model (BR-XXX)
   - **Skills Used:** prd-v03-moat-definition, prd-v03-pricing-model, prd-v03-outcome-definition, prd-v03-features-value-planning

4. **JOURNEY-SCRIBE** (v0.4)
   - **Question:** "How will users actually use this?"
   - **Deliverables:** User journeys, screen flows (UJ-XXX, SCR-XXX, DES-XXX)
   - **Skills Used:** prd-v04-persona-definition, prd-v04-user-journey-mapping, prd-v04-screen-flow-definition

5. **RISK-ORACLE** (v0.5)
   - **Question:** "What could go wrong?"
   - **Deliverables:** Risk assessment, mitigation plans (RISK-XXX, TECH-XXX)
   - **Skills Used:** prd-v05-risk-discovery-interview, prd-v05-technical-stack-selection

**Handoff:** AURA provides "targeted notes to build agents outlining implications for backlog and tests" at v0.6 transition.

---

### Primary Agent 2: APOLLO (Build Phase Lead)

**Scope:** v0.6 Architecture → v0.8 Deployment & Ops
**Role:** Executes technical implementation, owns architecture through deployment

**Sub-Agents Under APOLLO:** (Inferred from GHM agent lineup)

6. **ARCHITECT** (v0.6)
   - **Question:** "How should we build this?"
   - **Deliverables:** System architecture, technical blueprints (ARC-XXX, API-XXX, DBT-XXX)
   - **Skills Used:** prd-v06-architecture-design, prd-v06-technical-specification

7. **QA-MAESTRO** (v0.7)
   - **Question:** "How do we ensure quality?"
   - **Deliverables:** Test plans, implementation quality (EPIC-XXX, TEST-XXX)
   - **Skills Used:** prd-v07-epic-scoping, prd-v07-test-planning, prd-v07-implementation-loop

8. **AUTOMATION-RUNNER** (v0.8)
   - **Question:** "How do we deploy reliably?"
   - **Deliverables:** Release plans, runbooks, monitoring (DEP-XXX, RUN-XXX, MON-XXX)
   - **Skills Used:** prd-v08-release-planning, prd-v08-runbook-creation, prd-v08-monitoring-setup

**Handoff:** APOLLO transitions to GTM agents at v0.9 with launch readiness assessment.

---

### Primary Agent 3: JANUS (Go-to-Market Lead)

**Scope:** v0.9 Go-to-Market → v1.0 Market Adoption
**Role:** Orchestrates launch and growth, owns market success

**Sub-Agents Under JANUS:** (Inferred from GHM agent lineup)

9. **LAUNCH-CALLER** (v0.9)
   - **Question:** "Are we ready to launch?"
   - **Deliverables:** GTM strategy, launch metrics (GTM-XXX, KPI-XXX)
   - **Skills Used:** prd-v09-gtm-strategy, prd-v09-launch-metrics

10. **ADOPTION-ANALYST** (v1.0)
    - **Question:** "How do we grow?"
    - **Deliverables:** Feedback loops, growth analytics (CFD-XXX feedback)
    - **Skills Used:** prd-v09-feedback-loop-setup

**Handoff:** JANUS cycles back to AURA if market feedback reveals need for strategic pivots.

---

## Agent Coordination Patterns

### 1. Hierarchical Structure

```
Primary Agents (3)
├── AURA (Research: v0.1-v0.5)
│   ├── SPARK-SCOUT (v0.1)
│   ├── SEGMENTOR (v0.2)
│   ├── MOAT-MAPPER (v0.3)
│   ├── JOURNEY-SCRIBE (v0.4)
│   └── RISK-ORACLE (v0.5)
│
├── APOLLO (Build: v0.6-v0.8)
│   ├── ARCHITECT (v0.6)
│   ├── QA-MAESTRO (v0.7)
│   └── AUTOMATION-RUNNER (v0.8)
│
└── JANUS (GTM: v0.9-v1.0)
    ├── LAUNCH-CALLER (v0.9)
    └── ADOPTION-ANALYST (v1.0)
```

### 2. Handoff Protocol

**AURA → APOLLO (at v0.6):**
- AURA provides: Strategic context, user journeys, risk mitigation requirements
- APOLLO receives: Complete v0.1-v0.5 PRD sections + targeted backlog notes
- Gate checkpoint: "Is strategy validated and documented?"

**APOLLO → JANUS (at v0.9):**
- APOLLO provides: Architecture, test coverage, deployment readiness
- JANUS receives: Technical implementation + operational runbooks
- Gate checkpoint: "Is product built and deployable?"

**JANUS → AURA (loopback when needed):**
- JANUS provides: Market feedback, adoption metrics, strategic pivots needed
- AURA receives: Real-world validation data for strategy refinement
- Gate checkpoint: "Does market response validate strategy?"

### 3. Sub-Agent Invocation

**Primary agents invoke sub-agents via starter prompts:**

Example (AURA invoking SEGMENTOR):
```
Load: PRD v0.1 & current v0.2 notes, relevant CFD-XXX
Deliver: 1-3 ICPs with pains & urgency
Format: PER-XXX entries in PRD v0.2 section
```

**Sub-agents must:**
- Map all outputs to SoT IDs (CFD-XXX, UJ-XXX, BR-XXX, etc.)
- Provide evidence for assertions
- Signal when ready for primary agent review
- Request loopback if dependencies missing

---

## Agent vs Skills Relationship

### GHM Model: Agent-Owns-Skills

| Primary Agent | Sub-Agents | Assigned Skills (from our 31) |
|---------------|-----------|-------------------------------|
| **AURA** | 5 sub-agents | prd-v01-*, prd-v02-*, prd-v03-*, prd-v04-*, prd-v05-* (13 skills) |
| **APOLLO** | 3 sub-agents | prd-v06-*, prd-v07-*, prd-v08-* (8 skills) |
| **JANUS** | 2 sub-agents | prd-v09-* (3 skills) |
| **All Agents** | Cross-cutting | ace-context-manager, team-context-coordinator, phase-transition-manager, quality-validator, file-validator, id-tracker, markdown-processor (7 skills) |

**Total:** 3 primary agents + 10 sub-agents + 31 skills

---

## Key Architectural Principles

### 1. Lifecycle Discipline
- Primary agents enforce gate progression
- No skipping gates (must complete v0.1 before v0.2)
- Loopback allowed when evidence demands it

### 2. Source of Truth IDs
- All agent outputs must map to SoT IDs
- IDs enable traceability across agent handoffs
- ID formats: CFD-XXX, UJ-XXX, BR-XXX, API-XXX, TEST-XXX, etc.

### 3. Evidence-Based Assertions
- No unsupported claims
- Research must cite sources
- Decisions document alternatives considered

### 4. Targeted Handoffs
- Primary agents provide explicit context to next phase
- Handoff notes outline implications and constraints
- Receiving agent reviews and confirms understanding

---

## IBM Implementation Requirements

### What We Need to Build

1. **Primary Agent Definitions (3 files)**
   - `.codex/agents/primary/AURA.md`
   - `.codex/agents/primary/APOLLO.md`
   - `.codex/agents/primary/JANUS.md`

2. **Sub-Agent Definitions (10 files)**
   - `.codex/agents/sub-agents/research/` (5 files: SPARK-SCOUT, SEGMENTOR, MOAT-MAPPER, JOURNEY-SCRIBE, RISK-ORACLE)
   - `.codex/agents/sub-agents/build/` (3 files: ARCHITECT, QA-MAESTRO, AUTOMATION-RUNNER)
   - `.codex/agents/sub-agents/gtm/` (2 files: LAUNCH-CALLER, ADOPTION-ANALYST)

3. **Agent Coordination Rules**
   - Handoff protocols (AURA→APOLLO→JANUS)
   - Sub-agent invocation templates
   - Loopback procedures

4. **Integration with Existing Systems**
   - Map agents to our 31 skills
   - Integrate with IBM BOB mode constraints (Code/Plan/Advance/Ask)
   - Link to ACE methodology (WF-001, PAT-001-005)
   - Update SoT architecture to support agent workflows

5. **Documentation**
   - Update AGENTS.md with complete hierarchy
   - Create agent quick-start guides
   - Document agent selection logic
   - Provide handoff checklists

---

## Comparison: GHM vs Current IBM Implementation

| Aspect | GHM (mattgierhart) | IBM (current) | Gap |
|--------|-------------------|---------------|-----|
| **Primary Agents** | 3 (AURA, APOLLO, JANUS) | 0 | Need to implement 3 |
| **Sub-Agents** | 10 specialized | 0 | Need to implement 10 |
| **Skills** | Implicit in agents | 31 explicit skills | ✅ Complete |
| **Hierarchy** | Clear 3-tier | Flat | Need hierarchy |
| **Handoffs** | Documented protocols | No agents to hand off | Need protocols |
| **Mode Integration** | Single agent assumed | IBM BOB mode-aware | Our advantage |
| **SoT Architecture** | PRD-centric | 7 SoT files + PRD | Our advantage |
| **ID System** | CFD-, UJ-, BR-, API-, etc. | DEC-, FEAT-, TECH-, etc. | Need to merge |

---

## Recommended Implementation Path

### Phase 1: Core Agent Infrastructure (2-3 days)
1. Create `.codex/agents/` directory structure
2. Define 3 primary agent templates (AURA, APOLLO, JANUS)
3. Document agent coordination protocols
4. Map agents to existing 31 skills

### Phase 2: Sub-Agent Implementation (3-4 days)
5. Implement 5 AURA research sub-agents
6. Implement 3 APOLLO build sub-agents
7. Implement 2 JANUS GTM sub-agents
8. Create sub-agent invocation templates

### Phase 3: Integration & Testing (2-3 days)
9. Integrate agents with IBM BOB mode rules
10. Test handoff protocols (AURA→APOLLO→JANUS)
11. Validate agent-skill coordination
12. Document edge cases and loopback scenarios

### Phase 4: Documentation & Onboarding (1-2 days)
13. Update AGENTS.md with complete hierarchy
14. Create agent selection guides
15. Document multi-agent workflows
16. Prepare team training materials

**Total Estimated Time:** 8-12 days for complete implementation

---

## Next Steps

1. **Review this analysis** with team
2. **Approve implementation approach** (confirm 3 primary + 10 sub-agents)
3. **Begin Phase 1** (agent infrastructure)
4. **Map ID systems** (GHM IDs vs ACE IDs - need reconciliation)
5. **Test with real product** (apply to IBM Context Engineering or pilot product)

---

## Questions for Discussion

1. **ID System Reconciliation:** Do we keep GHM IDs (CFD-, UJ-, BR-) or map to ACE IDs (DEC-, FEAT-, TECH-)? Or support both?
2. **Agent Naming:** Keep GHM names (AURA, APOLLO, JANUS) or adapt for IBM branding?
3. **Sub-Agent Customization:** Do we adapt sub-agent behaviors for IBM context or keep GHM patterns?
4. **BOB Mode Constraints:** How do IBM BOB modes affect agent coordination? (e.g., can AURA work in Code mode?)
5. **Handoff Mechanisms:** Physical handoff (different sessions) or logical handoff (same session, role switch)?

---

## References

- GHM Repository: https://github.com/mattgierhart/PRD-driven-context-engineering
- AURA Template: https://github.com/mattgierhart/PRD-driven-context-engineering/blob/main/agents/templates/AURA_primary_agent_template.md
- Our Skills Manifest: `.codex/skills/ACE_SKILLS_MANIFEST.yaml`
- Our Current AGENTS.md: `AGENTS.md`

---

**Status:** Analysis Complete - Ready for Implementation Approval
