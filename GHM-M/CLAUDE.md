---
title: "CLAUDE Agent Operating Guide for GHM-M"
ghm_variant: "GHM-M (Methodologies)"
ghm_stack: "3+1+SoT+Temp"
lifecycle_focus: "v0.6–v0.9"
updated: "2025-12-26"
version: "1.0-M"
---

# CLAUDE.md — GHM-M Operating Guide

This file directs Claude (and other agents) when collaborating inside a repository that implements **GHM-M** (Gear Heart Methodology for Methodologies).

> **Note:** This is an adapted variant of GHM for methodology development (not product development). Core principles remain the same, but terminology reflects methodology context.

---

## 1. Mission & Scope
- **Mission**: Develop and maintain methodology artifacts in lockstep with the MRD Version Lifecycle (v0.1 → v1.0).
- **Primary Focus**: Methodology structure through publication (v0.6 → v0.9) with support for strategy revisions when loopbacks occur.
- **Authority Stack**: Always load the navigation files in order — `README.md` → `MRD.md` → this `CLAUDE.md` → active EPIC.

When instructions conflict, defer to `README.md` for status, then `MRD.md` for requirements, then SoT IDs for specifics.

---

## 2. Repository Load Order
1. **`README.md`** — Command Center. Confirms lifecycle gate, active EPIC, metrics, and critical alerts.
2. **`MRD.md`** — Lifecycle narrative. Identify the current gate, open questions, and referenced IDs.
3. **`CLAUDE.md` (this file)** — How you should behave while executing.
4. **Active EPIC (`active/epics/EPIC-XX-*.md`)** — Execution plan, Section 3A ID tracking, validation strategy.
5. **SoT Files (`active/source_of_truth/*.md`)** — Load only the IDs referenced in the EPIC/MRD.

Use the Unique ID System (`methodology/workflows/UNIQUE_ID_SYSTEM.md`) to resolve any unfamiliar prefixes.

---

## 3. Execution Rules
- **Respect lifecycle gates**: Do not advance a gate without satisfying the checklist in [`methodology/workflows/MRD_VERSION_LIFECYCLE.md`](methodology/workflows/MRD_VERSION_LIFECYCLE.md).
- **Operate from IDs**: When creating or editing documentation, reference the relevant IDs in commit messages, EPIC updates, and PR comments.
- **Ground work in SoT**: Before drafting methodology artifacts, translate requirements into explicit acceptance criteria tied to existing or planned IDs so the work mirrors reality.
- **Prefer existing artifacts**: Update the current MRD section or SoT entry instead of creating parallel documents.
- **Document changes**: Record decisions in the active EPIC, Section 3A. Link new/updated IDs explicitly.
- **Surface blockers fast**: If a gate cannot be cleared, note the blocker in the EPIC and alert the README "Critical Alerts".

---

## 4. Collaboration with Other Agents
- **AURA (Strategy Lead)** owns v0.1–v0.5. Treat her briefs in `active/agents/` as authoritative for practitioner context.
- **Build Leads (e.g., APOLLO)** own v0.6–v0.9. Align on methodology structure and validation strategy before creating artifacts.
- **Publication / Community Agents (e.g., JANUS)** may own distribution or community tasks. Follow their checklists for v0.8–v0.9.
- Sub-agents should always cite the EPIC and IDs they touch; avoid free-form explorations that bypass the lifecycle.

---

## 5. Documentation Standards
- Match the structure defined in the MRD Architecture section (v0.6). If unclear, stop and request clarification via the EPIC.
- Maintain or improve validation coverage. New patterns require corresponding VAL- IDs and case studies.
- Keep examples clear and realistic. Reference real-world applications where possible.
- Prefer small, incremental commits tied to specific IDs. Reference them in commit messages (e.g., `MP-001`, `PAT-042`).

---

## 6. Validation & Verification
- Run the validation commands listed in `README.md` before marking an EPIC task as done.
- When adding or modifying validation approaches, update the relevant `VAL-###` entries in `active/source_of_truth/VALIDATION.md`.
- For methodology-critical patterns, consult SoT entries (e.g., `PUB-###`, `MP-###`) to ensure you meet the defined standards.
- Validate methodology artifacts with real practitioners early in the iteration to avoid late rework.

---

## 7. Publication & Distribution Hand-off
- Follow publication instructions from the current EPIC and `active/source_of_truth/PUBLICATION.md`.
- Log release notes or distribution updates in the EPIC and surface critical information in `README.md`.
- After publication, update metrics via automation scripts in `tools/` (or note the manual steps taken).

---

## 8. Escalation Protocol
Escalate immediately when:
- A lifecycle gate checklist cannot be satisfied.
- A required SoT file is missing or outdated.
- External constraints (licensing, community expectations, validation gaps) threaten the plan.

Document the escalation in the EPIC with context, affected IDs, and a proposed next step.

---

## 9. Quick Reference
- Lifecycle guidance: [`methodology/workflows/MRD_VERSION_LIFECYCLE.md`](methodology/workflows/MRD_VERSION_LIFECYCLE.md)
- ID guidelines: [`methodology/workflows/UNIQUE_ID_SYSTEM.md`](methodology/workflows/UNIQUE_ID_SYSTEM.md)
- Templates: [`templates/`](templates/)
- Getting started: [`methodology/guides/getting_started.md`](methodology/guides/getting_started.md)

Always leave the repo in a state where another agent can reload the 3+1+SoT+Temp stack and pick up within one context window.

---

## 10. Session Protocols

> **Why this matters**: Each context window is a discrete "shift." The next agent arrives with no memory of your session. These protocols ensure seamless handoffs.
>
> Reference: [Anthropic - Effective Harnesses for Long-Running Agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents)

### 10.1 Session Start Protocol

**Before creating or changing artifacts:**

1. **Load the active EPIC** and read **Section 0 (Session State)** first
2. **Verify understanding** of where the previous session stopped:
   - What was completed?
   - What is the current blocker or next task?
   - Any warnings or context from the previous agent?
3. **Check git status/log** for recent changes not yet reflected in Session State
4. **Confirm the active Issue** you'll be working on
5. **If unclear**, read the full EPIC and relevant SoT IDs before proceeding

```
# Quick start checklist (mental or explicit)
□ Read EPIC Section 0 (Session State)
□ Understand stopping point from last session
□ Confirmed active Issue and Phase
□ Loaded relevant SoT IDs
□ Ready to continue
```

### 10.2 Session End Protocol (MANDATORY)

**Before ending your session, you MUST:**

1. **Update EPIC Section 0** with:
   - Work completed this session (be specific, link IDs)
   - Exact stopping point (file paths, sections, IDs created)
   - Any blockers encountered
   - Clear instructions for the next session
   - Files changed this session

2. **Commit your changes** with a descriptive message:
   ```
   session: [EPIC-XX] <summary of session work>

   - Completed: <what was done>
   - Stopped at: <where work stopped>
   - Next: <what the next session should do>
   ```

3. **Move current session to Session History table** if starting fresh next time

4. **Verify** the EPIC is ready for the next agent:
   - Could someone with no context pick this up?
   - Are all file changes documented?
   - Are blockers clearly explained?

### 10.3 Session State Quality Checklist

A good Session State entry should pass these checks:

| Check | Question |
|-------|----------|
| **Specific** | Can the next agent find exactly where to resume? (file:section, not just "docs work") |
| **Complete** | Are all changed files listed? |
| **Actionable** | Does "Next Session Should" give clear first steps? |
| **Contextual** | Are blockers explained with enough detail to resolve? |
| **Linked** | Are relevant IDs (MP-XXX, PAT-XXX, etc.) referenced? |

### 10.4 Context Window Discipline

- **Target**: Complete each Issue within 1 context window
- **Warning signs**: Repeated tool calls, circular reasoning, forgetting earlier decisions
- **When approaching limit**:
  1. Stop new work immediately
  2. Update Session State with current progress
  3. Commit all work-in-progress
  4. Note explicit stopping point for next session
- **Split threshold**: If estimated work exceeds 1 window, create sub-issues BEFORE starting

### 10.5 Session Handoff Validation

Before ending, verify:
```
□ EPIC Section 0 updated with current session details
□ Session History table has previous sessions logged
□ Git commit made with session summary
□ No uncommitted changes left behind
□ Blockers documented with resolution paths
□ Next agent can start within 5 minutes of reading Session State
```

> **Enforcement**: This protocol is validated by `tools/validate_sessions.py` and may be enforced by pre-exit hooks. See [`templates/hooks/`](templates/hooks/) for hook examples.

---

## 11. GHM-M Specific Guidance

### 11.1 Terminology Reference

| GHM (Product) | GHM-M (Methodology) | ID Prefix |
|--------------|---------------------|-----------|
| User Journey | Practitioner Journey | PJ-XXX |
| Business Rule | Methodology Principle | MP-XXX |
| API Contract | Pattern | PAT-XXX |
| Database Schema | Template | TEMP-XXX |
| Test Case | Validation / Case Study | VAL-XXX |
| Deployment | Publication Channel | PUB-XXX |
| Customer Feedback | Practitioner Feedback | PF-XXX |

### 11.2 SoT File Mapping

| SoT File | Purpose | ID Prefix |
|----------|---------|-----------|
| `PRACTITIONER_JOURNEYS.md` | How practitioners adopt and use the methodology | PJ-XXX |
| `METHODOLOGY_PRINCIPLES.md` | Core rules and guidelines | MP-XXX |
| `PATTERNS.md` | Reusable methodology patterns | PAT-XXX |
| `TEMPLATES.md` | Templates and document structures | TEMP-XXX |
| `VALIDATION.md` | Case studies and validation evidence | VAL-XXX |
| `PUBLICATION.md` | Distribution channels and strategies | PUB-XXX |
| `PRACTITIONER_FEEDBACK.md` | Feedback from methodology users | PF-XXX |
| `WORKFLOWS.md` | Documented workflows | WF-XXX |
| `GUIDES.md` | How-to guides | GUIDE-XXX |
| `TOOLS.md` | Automation tools and scripts | TOOL-XXX |
| `COMPONENTS.md` | Core methodology components | COMP-XXX |

### 11.3 When to Create New IDs

**Create MP-XXX when:** Defining a core principle or guideline
**Create PAT-XXX when:** Documenting a reusable methodology pattern
**Create COMP-XXX when:** Describing a methodology component
**Create PJ-XXX when:** Mapping how practitioners use the methodology
**Create VAL-XXX when:** Capturing validation evidence or case studies
**Create TEMP-XXX when:** Documenting a template structure
**Create GUIDE-XXX when:** Writing how-to documentation

### 11.4 Validation Approach for Methodologies

Unlike products (which have unit tests), methodologies validate through:
- **Case Studies (VAL-XXX)**: Real-world applications
- **Peer Review**: Expert validation
- **Pilot Programs**: Beta testing with practitioners
- **Dogfooding**: Using the methodology to develop itself (this project!)

Always link validation evidence to methodology artifacts.

---

## 12. Example Session Flow

**Start of Session:**
1. Read `README.md` → See EPIC-01 is active, Phase 1 in progress
2. Read `EPIC-01` Section 0 → Last session created CLAUDE.md, next is MRD.md
3. Check git log → Confirm CLAUDE.md committed
4. Start Issue 1.3: Create MRD.md

**During Session:**
5. Create `MRD.md` with v0.1 Spark content
6. Track in EPIC-01 Section 3A (no new IDs yet, structure only)
7. Commit changes

**End of Session:**
8. Update EPIC-01 Section 0:
   - Completed: Issue 1.3 (MRD.md created)
   - Stopped at: `GHM-M/MRD.md` initialized
   - Next: Issue 1.4 (Create README.md)
9. Commit with session summary
10. Ready for next agent

---

**Variant:** GHM-M (for Methodologies)
**Based on:** GHM v2.0
**Original Documentation:** `../PRD-driven-context-engineering/CLAUDE.md`
