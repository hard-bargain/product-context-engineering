---
title: "CLAUDE Agent Operating Guide for AI Context Engineering"
ghm_variant: "GHM-M (Methodologies)"
ghm_stack: "3+1+SoT+Temp"
lifecycle_focus: "v0.1–v0.4 (Foundation)"
updated: "2025-12-26"
version: "1.0-M"
validation: "VAL-001"
---

# CLAUDE.md — AI Context Engineering Operating Guide

This file directs Claude (and other agents) when collaborating on the AI Context Engineering methodology project.

> **Note:** This methodology uses GHM-M (Gear Heart Methodology for Methodologies), adapted for methodology development. ACE development serves as VAL-001 for testing GHM-M effectiveness.

---

## 1. Mission & Scope

- **Mission**: Develop AI Context Engineering (ACE) methodology to enable cross-discipline product teams to effectively manage AI context across the product lifecycle.
- **Primary Focus**: Foundation phase (v0.1 → v0.4) - establishing core patterns, practitioner journeys, and templates.
- **Validation Context**: This work contributes to [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001), testing whether GHM-M works for developing methodologies beyond itself.
- **Authority Stack**: Load navigation files in order — `README.md` → `MRD.md` → this `CLAUDE.md` → active EPIC.

When instructions conflict, defer to `README.md` for status, then `MRD.md` for requirements, then SoT IDs for specifics.

---

## 2. Repository Load Order

1. **`README.md`** — Command Center. Current status, active EPIC, metrics, validation progress.
2. **`MRD.md`** — Lifecycle narrative. Problem statement, vision, scope, target practitioners.
3. **`CLAUDE.md` (this file)** — How you should behave while executing.
4. **Active EPIC (`active/epics/EPIC-01-*.md`)** — Execution plan, Section 3A ID tracking.
5. **SoT Files (`active/source_of_truth/*.md`)** — Load only the IDs referenced in the EPIC/MRD.

**GHM-M Reference:**
- When needed, reference [GHM-M templates](../GHM-M/templates/) for structure
- Check [GHM-M workflows](../GHM-M/active/workflows/) for guidance
- Update [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001) with observations

---

## 3. Execution Rules

- **Respect lifecycle gates**: Do not advance beyond v0.4 Foundation without satisfying success criteria in MRD
- **Operate from IDs**: Reference relevant IDs in commit messages, EPIC updates
- **Ground work in SoT**: Create IDs for patterns, principles, journeys as you develop them
- **Prefer existing artifacts**: Update current MRD/SoT entries instead of creating parallel documents
- **Document changes**: Record decisions in active EPIC Section 0 and Section 5.1
- **Surface blockers fast**: Note blockers in EPIC and alert README "Critical Alerts"
- **Validate GHM-M effectiveness**: Document observations about GHM-M patterns, templates, and workflows in VAL-001

---

## 4. Documentation Standards

**For ACE Artifacts:**
- **Context Patterns**: Must include concrete examples from product development
- **Practitioner Journeys**: Must map to actual disciplines (strategist, PM, designer, developer, tester, marketer)
- **Phase Alignment**: Must align with common product lifecycle phases (concept, design, build, test, launch, scale)
- **Templates**: Must be immediately usable by practitioners

**Style:**
- Keep examples realistic (based on actual product development scenarios)
- Use concrete language (avoid abstract methodology jargon)
- Include "bad example" vs "good example" comparisons where helpful
- Link to related patterns/principles via IDs

---

## 5. Validation & Verification

**ACE Validation:**
- Ensure patterns address real cross-discipline team pain points
- Verify practitioner journeys map to actual roles
- Check templates are usable without extensive customization

**GHM-M Validation (VAL-001):**
- Document whether GHM-M templates work for ACE development
- Note where ID system helps vs creates overhead
- Observe whether session protocols enable effective work
- Identify GHM-M refinements needed (document in VAL-001)

---

## 6. Session Protocols

> **Reference:** [GHM-M CLAUDE.md Section 10](../GHM-M/CLAUDE.md#10-session-protocols)

### Session Start Protocol
1. Load the active EPIC and read Section 0 (Session State) first
2. Verify understanding of where previous session stopped
3. Check git status/log for recent changes
4. Confirm the active Issue from EPIC Section 2
5. Load relevant SoT IDs before proceeding
6. If this is a new session continuing previous work, update EPIC Section 0 "Current Session" table

### During Session
1. Update EPIC Section 0 as work progresses (don't wait until end)
2. Track all IDs created in EPIC Section 3A
3. Document GHM-M observations in VAL-001 as you notice them
4. Commit work incrementally (not one big commit at end)

### Session End Protocol (MANDATORY)
1. Update EPIC Section 0 with:
   - **Work Completed This Session**: Be specific, link IDs created
   - **Stopped At**: Exact file and issue
   - **Blockers**: Any impediments encountered
   - **Next Session Should**: Clear instructions for continuation
   - **Files Changed This Session**: Complete list

2. Commit with session summary:
   ```
   session: [EPIC-01] <summary>

   ACE Work:
   - Completed: <what was done>
   - IDs created: <list>
   - Patterns defined: <which ones>

   VAL-001 Observations:
   - <GHM-M effectiveness notes>

   Stopped at: <exact location>
   Next: <what next session should do>
   ```

3. Move current session work to Session History table
4. Update VAL-001 with preliminary observations
5. Verify EPIC is ready for next agent

---

## 7. Quick Reference

**ACE Development:**
- Problem/Vision: `MRD.md` sections 1-2
- Core patterns: `active/source_of_truth/CONTEXT_PATTERNS.md` (to be created)
- Practitioner journeys: `active/source_of_truth/PRACTITIONER_JOURNEYS.md` (to be created)
- Getting started: `docs/getting_started.md` (to be created)

**GHM-M Guidance:**
- Lifecycle gates: `../GHM-M/active/workflows/MRD_VERSION_LIFECYCLE.md`
- ID system: `../GHM-M/active/workflows/UNIQUE_ID_SYSTEM.md`
- Templates: `../GHM-M/templates/`
- Validation tracking: `../GHM-M/active/source_of_truth/VALIDATION.md#val-001`

**Validation (VAL-001):**
- Primary questions: Are GHM-M templates/patterns working for ACE?
- Track observations: Does ID system help? Do sessions work? What needs refinement?
- Document continuously: Don't wait until end to capture insights

Always leave the repo in a state where another agent can reload the 3+1+SoT+Temp stack and pick up within one context window.

---

## 8. ACE-Specific Guidance

### Target Practitioners
When developing ACE, keep these practitioner types in mind:
- **Strategists**: Early-phase context (vision, market, positioning)
- **Product Managers**: Cross-phase orchestration context
- **Designers**: Design-phase context (user research, prototypes, design systems)
- **Developers**: Build-phase context (architecture, implementation, code)
- **Testers**: Test-phase context (test plans, cases, results)
- **Marketers**: Launch-phase context (messaging, campaigns, go-to-market)

### Phase Alignment
ACE patterns should map to product lifecycle phases:
1. **Concept** - Vision, opportunity, initial strategy
2. **Design** - User research, prototypes, design specs
3. **Build** - Architecture, implementation, code
4. **Test** - Quality assurance, validation, bug fixes
5. **Launch** - Release, marketing, go-to-market
6. **Scale** - Growth, iteration, optimization

### Context Layers (Core ACE Pattern)
- **Strategic Layer**: Long-term vision, positioning, business context
- **Tactical Layer**: Phase-specific plans, decisions, tradeoffs
- **Operational Layer**: Day-to-day execution details, code, tasks

### ID Prefixes for ACE

| Prefix | Type | Purpose | Example |
|--------|------|---------|---------|
| **PJ-XXX** | Practitioner Journey | Discipline-specific adoption paths | PJ-001: Strategist journey |
| **PAT-XXX** | Pattern | Context engineering patterns | PAT-001: Context layers |
| **WF-XXX** | Workflow | Context evolution processes | WF-001: Phase transition handoff |
| **MP-XXX** | Principle | ACE core principles | MP-001: Phase alignment principle |
| **TEMP-XXX** | Template | Context structure templates | TEMP-001: Strategic layer template |
| **VAL-XXX** | Validation | Case studies | VAL-001: Team pilot |
| **GUIDE-XXX** | Guide | How-to documentation | GUIDE-001: Getting started |
| **TOOL-XXX** | Tool | Context management tools | TOOL-001: Context health checker |

### SoT File Mapping (To Be Created)
- `PRACTITIONER_JOURNEYS.md` (PJ-XXX) — How each discipline adopts ACE
- `CONTEXT_PATTERNS.md` (PAT-XXX) — Reusable context patterns
- `WORKFLOWS.md` (WF-XXX) — Context evolution workflows
- `PRINCIPLES.md` (MP-XXX) — ACE core principles
- `TEMPLATES.md` (TEMP-XXX) — Context structure templates
- `VALIDATION.md` (VAL-XXX) — ACE case studies
- `GUIDES.md` (GUIDE-XXX) — How-to guides
- `TOOLS.md` (TOOL-XXX) — Context tooling

### Validation Approach (VAL-001)
This ACE development serves dual purposes:
1. **Create ACE methodology**: Develop useful methodology for AI context engineering
2. **Validate GHM-M**: Test whether GHM-M works beyond self-development

**Document in VAL-001:**
- What worked well (templates that saved time, patterns that fit)
- What didn't work (places where GHM-M felt awkward or heavyweight)
- What needs refinement (missing templates, confusing patterns, workflow gaps)
- Unexpected benefits (things GHM-M enabled that weren't anticipated)

---

## 9. Success Criteria

**v0.4 Foundation Complete When:**
- [ ] 5+ core context patterns defined (PAT-XXX)
- [ ] 4+ practitioner journeys documented (PJ-XXX)
- [ ] 3+ context templates created (TEMP-XXX)
- [ ] 2+ workflows defined (WF-XXX)
- [ ] Getting started guide created (GUIDE-001)
- [ ] 20-25 total IDs created and tracked
- [ ] VAL-001 preliminary observations documented

**Validation Success (VAL-001):**
- [ ] Can assess whether GHM-M templates worked for ACE
- [ ] Have identified at least 3 GHM-M refinements
- [ ] Documented effectiveness of ID system for ACE
- [ ] Evaluated session protocols for methodology development
- [ ] Captured lessons learned for both ACE and GHM-M

---

**Variant:** Based on GHM-M v0.4
**For:** AI Context Engineering (ACE)
**Updated:** 2025-12-26
**Validation:** VAL-001 In Progress
