# Agent Coordination Protocols

**Version:** 1.0
**Updated:** 2026-01-09
**Purpose:** Define handoff, loopback, and quality gate procedures for multi-agent workflows

---

## Overview

This document specifies how agents coordinate across the product development lifecycle:
- **Handoff Protocols** - How primary agents transition work between phases
- **Loopback Procedures** - How to handle issues requiring earlier gate revisitation
- **Quality Gates** - Validation requirements before transitions
- **Sub-Agent Coordination** - How primary agents invoke and manage sub-agents

---

## Handoff Protocols

### AURA → APOLLO Handoff (v0.5 → v0.6)

**Trigger:** Research phase complete (v0.1-v0.5 PRD sections finished)

**AURA Responsibilities:**
1. Complete all v0.1-v0.5 PRD sections
2. Validate all SoT IDs documented (CFD-XXX, PER-XXX, FEA-XXX, UJ-XXX, TECH-XXX)
3. Run `quality-validator` skill for research phase
4. Prepare handoff notes with:
   - Feature priorities and constraints (FEA-XXX references)
   - User journey dependencies (UJ-XXX references)
   - Technical stack decisions (TECH-XXX references)
   - Risk mitigations required (RISK-XXX references)
5. Update DECISIONS.md with strategic decisions made
6. Update FEATURES.md with complete feature definitions
7. Signal readiness: "Research phase complete - ready for APOLLO"

**APOLLO Pre-Handoff Checklist:**
- [ ] All v0.1-v0.5 PRD sections exist and populated
- [ ] SoT files updated (DECISIONS.md, FEATURES.md, MARKET.md, TECHNICAL.md)
- [ ] IDs cross-referenced correctly (no broken links)
- [ ] Quality validator passed
- [ ] Handoff notes documented in PRD v0.5 or active/epics/

**APOLLO Acceptance:**
1. Review handoff notes from AURA
2. Load context: PRD v0.1-v0.5 + FEATURES.md + TECHNICAL.md
3. Confirm understanding of:
   - Feature priorities to build
   - User journeys to support
   - Technical constraints to honor
4. Identify any missing dependencies (trigger loopback if critical)
5. Signal acceptance: "Handoff received - beginning architecture (v0.6)"

**Handoff Artifacts:**
- PRD sections: v0.1, v0.2, v0.3, v0.4, v0.5 (complete)
- SoT files: DECISIONS.md, FEATURES.md, MARKET.md, TECHNICAL.md (updated)
- Handoff notes: In PRD v0.5 or active/epics/AURA-APOLLO-handoff.md

---

### APOLLO → JANUS Handoff (v0.8 → v0.9)

**Trigger:** Build phase complete (v0.6-v0.8 PRD sections finished, product deployable)

**APOLLO Responsibilities:**
1. Complete all v0.6-v0.8 PRD sections
2. Validate all SoT IDs documented (ARC-XXX, API-XXX, TEST-XXX, DEP-XXX, RUN-XXX)
3. Run `quality-validator` skill for build phase
4. Prepare handoff notes with:
   - Architecture decisions and rationale (ARC-XXX references)
   - API specifications and integration points (API-XXX references)
   - Test coverage and quality status (TEST-XXX references)
   - Deployment procedures and constraints (DEP-XXX, RUN-XXX references)
   - Known technical debt or limitations
5. Update TECHNICAL.md with complete architecture and stack
6. Update RELEASES.md with deployment readiness status
7. Signal readiness: "Build phase complete - ready for JANUS"

**JANUS Pre-Handoff Checklist:**
- [ ] All v0.6-v0.8 PRD sections exist and populated
- [ ] SoT files updated (TECHNICAL.md, RELEASES.md)
- [ ] Product deployed to staging/production
- [ ] Runbooks documented (RUN-XXX)
- [ ] Monitoring configured (MON-XXX)
- [ ] Quality validator passed
- [ ] Handoff notes documented

**JANUS Acceptance:**
1. Review handoff notes from APOLLO
2. Load context: PRD v0.1-v0.8 + FEATURES.md + TECHNICAL.md + METRICS.md
3. Confirm understanding of:
   - What's built and ready to launch
   - Technical limitations to communicate
   - Monitoring and operational procedures
4. Validate product functionality in staging
5. Identify any launch blockers (trigger loopback if critical)
6. Signal acceptance: "Handoff received - beginning GTM planning (v0.9)"

**Handoff Artifacts:**
- PRD sections: v0.6, v0.7, v0.8 (complete)
- SoT files: TECHNICAL.md, RELEASES.md (updated)
- Deployments: Staging environment ready, production runbooks complete
- Handoff notes: In PRD v0.8 or active/epics/APOLLO-JANUS-handoff.md

---

### JANUS → AURA Loopback (v1.0 → v0.1+)

**Trigger:** Market feedback reveals strategic issues requiring product pivot

**JANUS Responsibilities:**
1. Document market feedback with evidence (customer quotes, metrics, analytics)
2. Create CFD-XXX entries for feedback insights
3. Identify which strategic assumptions failed:
   - Wrong problem (requires v0.1 revisit)
   - Wrong customer segment (requires v0.2 revisit)
   - Wrong positioning/pricing (requires v0.3 revisit)
   - Wrong user workflows (requires v0.4 revisit)
4. Run `quality-validator` to assess impact severity
5. Prepare loopback request with:
   - Evidence of strategic issue (data, quotes, metrics)
   - Hypothesized root cause and gate to revisit
   - Impact assessment (minor tweak vs. major pivot)
6. Signal loopback: "Market feedback requires strategy review - requesting AURA"

**AURA Loopback Acceptance:**
1. Review market feedback and evidence from JANUS
2. Load context: PRD v1.0 + MARKET.md + METRICS.md + original strategy docs
3. Assess validity of loopback request:
   - Is evidence substantial? (not anecdotal)
   - Is timing appropriate? (sufficient market data collected)
   - Is root cause analysis sound?
4. Determine scope of revisit:
   - Single gate (e.g., just v0.3 pricing)
   - Multiple gates (e.g., v0.2-v0.4 ICP + journeys)
   - Full strategic reset (v0.1-v0.5)
5. Re-invoke affected sub-agents with updated context
6. Signal acceptance: "Loopback accepted - revisiting [gates] based on market feedback"

**Loopback Artifacts:**
- Market feedback: CFD-XXX entries in MARKET.md, METRICS.md
- Root cause analysis: In DECISIONS.md or active/epics/loopback-analysis.md
- Updated PRD sections: Revised gates based on new learnings
- Propagation plan: How changes flow forward to build/GTM

---

## Sub-Agent Invocation Protocols

### Primary Agent → Sub-Agent Invocation

**Standard Invocation Pattern:**

1. **Context Loading:**
   - Primary agent loads relevant PRD sections and SoT files
   - Identifies dependencies from earlier gates
   - Reviews current gate requirements

2. **Sub-Agent Prompting:**
   ```
   [Primary Agent invokes Sub-Agent]

   Sub-Agent: [NAME]
   Gate: [v0.X]
   Context: Load PRD [sections], SoT files [list]
   Dependencies: [ID references from earlier gates]
   Objective: [Specific deliverable]
   Output Format: [ID types, PRD sections, SoT files]
   ```

3. **Sub-Agent Execution:**
   - Sub-agent loads specified context
   - Executes assigned skills
   - Produces deliverables with SoT IDs
   - Updates relevant SoT files
   - Signals completion to primary agent

4. **Primary Agent Review:**
   - Validates sub-agent outputs
   - Checks ID integrity with `id-tracker`
   - Runs `file-validator` on updated files
   - Synthesizes outputs into PRD section
   - Either: accepts and moves to next gate, or requests revisions

### Example: AURA Invoking SPARK-SCOUT

```
AURA: I need to validate the product problem for v0.1 Spark gate.

Sub-Agent: SPARK-SCOUT
Gate: v0.1
Context: Load any existing problem notes, competitive analysis, user research
Dependencies: None (first gate)
Objective: Produce validated problem statement with success signals
Output Format:
  - CFD-XXX problem statement in PRD v0.1
  - CFD-XXX success signals in PRD v0.1
  - DEC-XXX strategic decision in DECISIONS.md

SPARK-SCOUT: [Executes prd-v01-problem-framing and prd-v01-user-value-articulation skills]

[SPARK-SCOUT produces outputs]

AURA: [Reviews outputs, validates IDs, synthesizes into PRD v0.1]
AURA: SPARK-SCOUT work accepted - proceeding to v0.2
```

### Sub-Agent Request for Loopback

**When Sub-Agents Should Request Loopback:**
- Missing critical dependencies from earlier gates
- Discovering contradictions in earlier decisions
- Finding evidence that invalidates earlier assumptions
- Unable to proceed without resolving upstream issues

**Loopback Request Pattern:**

```
[Sub-Agent signals issue]

Sub-Agent: [NAME]
Issue: Unable to complete [deliverable] due to [specific problem]
Dependency: Missing or invalid [ID references]
Evidence: [Specific contradiction or gap]
Recommendation: Loopback to [gate] to resolve [specific issue]

[Primary Agent reviews]

Primary Agent: Loopback approved - re-invoking [earlier sub-agent]
OR
Primary Agent: Loopback denied - proceed with [workaround/assumption]
```

---

## Quality Gates

### Gate Readiness Criteria

Each gate must meet quality standards before advancement:

**v0.1 Spark Readiness:**
- [ ] Problem statement documented (CFD-XXX)
- [ ] Success signals defined (CFD-XXX)
- [ ] Evidence collected supporting problem validity
- [ ] DECISIONS.md updated with problem validation

**v0.2 Market Definition Readiness:**
- [ ] 1-3 ICPs defined (PER-XXX)
- [ ] Competitive landscape mapped (CFD-XXX or BR-XXX)
- [ ] Product type classified (Fast Follow/Slice/Innovation)
- [ ] MARKET.md updated with target customers

**v0.3 Commercial Model Readiness:**
- [ ] Features prioritized with value traceability (FEA-XXX)
- [ ] Pricing model selected (BR-XXX)
- [ ] Competitive moat defined (BR-XXX, CFD-XXX)
- [ ] KPIs and metrics defined (KPI-XXX)
- [ ] FEATURES.md and METRICS.md updated

**v0.4 User Journeys Readiness:**
- [ ] Personas defined behaviorally (PER-XXX)
- [ ] User journeys mapped (UJ-XXX)
- [ ] Screen flows documented (SCR-XXX, DES-XXX)
- [ ] FEATURES.md updated with UX requirements

**v0.5 Red Team Review Readiness:**
- [ ] Risks identified and assessed (RISK-XXX)
- [ ] Technical stack selected (TECH-XXX)
- [ ] Mitigation plans documented
- [ ] TECHNICAL.md and DECISIONS.md updated

**v0.6 Architecture Readiness:**
- [ ] System architecture designed (ARC-XXX)
- [ ] API contracts specified (API-XXX)
- [ ] Data models defined (DBT-XXX)
- [ ] TECHNICAL.md updated with complete architecture

**v0.7 Build Execution Readiness:**
- [ ] Epics scoped (EPIC-XXX)
- [ ] Test plans defined (TEST-XXX)
- [ ] Implementation traceability established
- [ ] active/epics/ updated with work packages

**v0.8 Deployment & Ops Readiness:**
- [ ] Release plan documented (DEP-XXX)
- [ ] Runbooks created (RUN-XXX)
- [ ] Monitoring configured (MON-XXX)
- [ ] RELEASES.md updated with deployment status

**v0.9 Go-to-Market Readiness:**
- [ ] GTM strategy planned (GTM-XXX)
- [ ] Launch metrics defined (KPI-XXX)
- [ ] Launch readiness validated
- [ ] MARKET.md and METRICS.md updated

**v1.0 Market Adoption Readiness:**
- [ ] Feedback loops established (CFD-XXX)
- [ ] Growth analytics configured
- [ ] Adoption metrics tracked (KPI-XXX)
- [ ] METRICS.md updated with live data

### Quality Validation Process

**Pre-Transition Validation:**

1. **Sub-Agent Self-Check:**
   - Sub-agent runs `file-validator` on updated SoT files
   - Sub-agent runs `id-tracker` to verify ID integrity
   - Sub-agent confirms all deliverables complete

2. **Primary Agent Review:**
   - Primary agent loads sub-agent outputs
   - Primary agent runs `quality-validator` skill
   - Primary agent checks gate readiness criteria
   - Primary agent validates cross-references

3. **Go/No-Go Decision:**
   - **GO:** All criteria met → advance to next gate
   - **REVISE:** Minor issues → sub-agent fixes and resubmits
   - **LOOPBACK:** Major issues → revisit earlier gate

---

## Coordination Edge Cases

### Multiple Sub-Agents Working in Parallel

**Scenario:** AURA wants SEGMENTOR and MOAT-MAPPER to work concurrently

**Protocol:**
1. AURA identifies independent workstreams (v0.2 and v0.3 can overlap)
2. AURA invokes both sub-agents with clear boundaries
3. Sub-agents work independently on their gates
4. If MOAT-MAPPER needs v0.2 outputs, requests them from AURA
5. AURA coordinates any cross-dependencies
6. AURA synthesizes both outputs into PRD

**Constraint:** Sub-agents should not directly communicate - always through primary agent

---

### Sub-Agent Disagreement with Earlier Work

**Scenario:** ARCHITECT disagrees with RISK-ORACLE's tech stack choice

**Protocol:**
1. ARCHITECT documents disagreement with evidence
2. ARCHITECT signals to APOLLO: "Tech stack issue - recommend loopback to v0.5"
3. APOLLO reviews evidence and severity
4. APOLLO decides:
   - **Critical:** Loopback to AURA → re-invoke RISK-ORACLE with new constraints
   - **Non-Critical:** Document as technical debt, proceed with ARCHITECT's recommendation
5. Update DECISIONS.md and TECHNICAL.md with resolution

---

### Primary Agent Handoff Rejection

**Scenario:** JANUS reviews APOLLO handoff and finds product not ready to launch

**Protocol:**
1. JANUS documents specific launch blockers with evidence
2. JANUS signals to APOLLO: "Handoff rejected - [specific issues]"
3. APOLLO reviews issues and determines:
   - Which sub-agent needs to address (ARCHITECT, QA-MAESTRO, AUTOMATION-RUNNER)
   - Whether loopback to earlier phase needed
4. APOLLO re-invokes relevant sub-agents
5. APOLLO re-runs quality validation
6. APOLLO re-submits handoff when issues resolved
7. JANUS reviews again

**Escalation:** If 3+ handoff rejections occur, escalate to human review for process/scope issues

---

## IBM BOB Mode Considerations

### Code Mode Coordination
- Sub-agents can update SoT files locally
- Primary agents coordinate file-based work
- No external research (use Advance mode for that)

### Plan Mode Coordination
- Primary agents can design coordination strategies
- Sub-agents can plan approaches
- No file execution (design only)

### Advance Mode Coordination
- Full agent capabilities (MCP, Browser, files)
- Recommended for research sub-agents (SPARK-SCOUT, SEGMENTOR, MOAT-MAPPER)
- Recommended for validation sub-agents (RISK-ORACLE, LAUNCH-CALLER)

### Ask Mode Coordination
- Explain agent responsibilities and protocols
- No active work - guidance only

---

## Troubleshooting

### Handoff Stuck
**Symptoms:** Primary agent A says ready, primary agent B won't accept

**Diagnosis:**
1. Run `quality-validator` to identify missing criteria
2. Check SoT files for incomplete IDs
3. Review handoff notes for clarity

**Resolution:**
- Complete missing gate criteria
- Update SoT files with all IDs
- Enhance handoff notes with specific context

---

### Circular Loopback
**Symptoms:** Agent keeps looping back to same gate repeatedly

**Diagnosis:**
1. Review loopback evidence - is it new information each time?
2. Check if root cause is being addressed or symptoms only
3. Assess if scope is appropriate (should we reset fully?)

**Resolution:**
- Human review to break loop
- Broader scope reset if incremental fixes not working
- Document decision rationale in DECISIONS.md

---

### ID Conflicts
**Symptoms:** Multiple agents creating same ID or conflicting IDs

**Diagnosis:**
1. Run `id-tracker` to identify conflicts
2. Check which agent created each ID
3. Review ID naming conventions

**Resolution:**
- Use `id-tracker` to generate next available ID
- Update AGENT_SKILL_MATRIX.md if ID ownership unclear
- Merge or rename conflicting IDs with cross-references

---

## Version History

**v1.0 (2026-01-09):** Initial coordination protocols with handoff, loopback, and quality gates

---

## References

- **Agent Directory:** `.codex/agents/`
- **Skills Directory:** `.codex/skills/`
- **SoT Files:** `active/source_of_truth/`
- **Agent-Skill Matrix:** `.codex/agents/AGENT_SKILL_MATRIX.md`
