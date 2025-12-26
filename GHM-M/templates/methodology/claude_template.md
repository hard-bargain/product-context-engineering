---
title: "CLAUDE Agent Operating Guide for {Methodology Name}"
ghm_variant: "GHM-M (Methodologies)"
ghm_stack: "3+1+SoT+Temp"
lifecycle_focus: "v0.6–v0.9"
updated: "YYYY-MM-DD"
version: "1.0-M"
---

# CLAUDE.md — {Methodology Name} Operating Guide

This file directs Claude (and other agents) when collaborating on this methodology project.

> **Note:** This methodology uses GHM-M (Gear Heart Methodology for Methodologies), adapted for methodology development (not product development).

---

## 1. Mission & Scope
- **Mission**: Develop and maintain methodology artifacts in lockstep with the MRD Version Lifecycle (v0.1 → v1.0).
- **Primary Focus**: Methodology structure through publication (v0.6 → v0.9).
- **Authority Stack**: Always load the navigation files in order — `README.md` → `MRD.md` → this `CLAUDE.md` → active EPIC.

When instructions conflict, defer to `README.md` for status, then `MRD.md` for requirements, then SoT IDs for specifics.

---

## 2. Repository Load Order
1. **`README.md`** — Command Center. Current status, active EPIC, metrics.
2. **`MRD.md`** — Lifecycle narrative. Current gate, open questions, referenced IDs.
3. **`CLAUDE.md` (this file)** — How you should behave while executing.
4. **Active EPIC (`active/epics/EPIC-XX-*.md`)** — Execution plan, Section 3A ID tracking.
5. **SoT Files (`active/source_of_truth/*.md`)** — Load only the IDs referenced in the EPIC/MRD.

Use the Unique ID System (`methodology/workflows/UNIQUE_ID_SYSTEM.md`) to resolve any unfamiliar prefixes.

---

## 3. Execution Rules
- **Respect lifecycle gates**: Do not advance a gate without satisfying the checklist in MRD_VERSION_LIFECYCLE.md
- **Operate from IDs**: Reference relevant IDs in commit messages, EPIC updates
- **Ground work in SoT**: Translate requirements into acceptance criteria tied to IDs
- **Prefer existing artifacts**: Update current MRD/SoT entries instead of creating parallel documents
- **Document changes**: Record decisions in active EPIC, Section 3A
- **Surface blockers fast**: Note blockers in EPIC and alert README "Critical Alerts"

---

## 4. Documentation Standards
- Match the structure defined in the MRD Architecture section (v0.6)
- Maintain or improve validation coverage
- Keep examples clear and realistic
- Prefer small, incremental commits tied to specific IDs (e.g., `MP-001`, `PAT-042`)

---

## 5. Validation & Verification
- Run validation commands listed in `README.md` before marking EPIC tasks as done
- Update relevant `VAL-###` entries in VALIDATION.md
- Consult SoT entries (e.g., `PUB-###`, `MP-###`) to meet defined standards

---

## 6. Session Protocols

> **Reference:** [GHM-M CLAUDE.md Section 10](../../GHM-M/CLAUDE.md#10-session-protocols)

### Session Start Protocol
1. Load the active EPIC and read Section 0 (Session State) first
2. Verify understanding of where previous session stopped
3. Check git status/log for recent changes
4. Confirm the active Issue
5. Load relevant SoT IDs before proceeding

### Session End Protocol (MANDATORY)
1. Update EPIC Section 0 with:
   - Work completed (be specific, link IDs)
   - Exact stopping point
   - Blockers encountered
   - Clear instructions for next session
   - Files changed

2. Commit with session summary:
   ```
   session: [EPIC-XX] <summary>

   - Completed: <what was done>
   - Stopped at: <where work stopped>
   - Next: <what next session should do>
   ```

3. Move current session to Session History table
4. Verify EPIC is ready for next agent

---

## 7. Quick Reference
- Lifecycle guidance: `methodology/workflows/MRD_VERSION_LIFECYCLE.md`
- ID guidelines: `methodology/workflows/UNIQUE_ID_SYSTEM.md`
- Templates: `templates/`
- Getting started: `methodology/guides/getting_started.md`

Always leave the repo in a state where another agent can reload the 3+1+SoT+Temp stack and pick up within one context window.

---

## 8. Methodology-Specific Guidance

### ID Prefixes Used
[List the ID prefixes your methodology uses - copy from GHM-M or customize]

### SoT File Mapping
[List your SoT files and their purposes]

### Validation Approach
[How you validate this methodology - case studies, peer review, etc.]

---

**Variant:** Based on GHM-M
**For:** {Methodology Name}
**Updated:** YYYY-MM-DD
