# AI Context Engineering (ACE)

**Status:** v0.1 Spark (Foundation Development)
**Last Updated:** 2025-12-26
**Developed Using:** [GHM-M](../GHM-M/MRD.md) v0.4

---

## Quick Status

| Field | Value |
|-------|-------|
| **MRD Version** | v0.1 (Spark) |
| **Current Phase** | Foundation Setup |
| **Active EPIC** | EPIC-01: ACE Foundation |
| **Current Issue** | Creating navigation files and initial structure |
| **Next Milestone** | v0.4 Foundation Complete |
| **Validation** | Contributing to [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001) |

---

## What is AI Context Engineering?

**AI Context Engineering (ACE)** is a methodology for enabling cross-discipline product teams to effectively manage AI context throughout the product development lifecycle.

**The Problem ACE Solves:**
Product teams (strategists, PMs, designers, developers, testers, marketers) increasingly work with AI agents, but lack systematic approaches for managing context. This leads to inconsistent AI effectiveness, context staleness, duplication, and poor handoffs between phases and team members.

**The Solution:**
ACE provides structured approaches for:
- **Context Structure** — How to organize context for different roles and phases
- **Context Evolution** — How context grows through the product lifecycle
- **Team Collaboration** — How disciplines work together on shared context
- **Quality Assurance** — How to validate context effectiveness

**Key Features:**
- Context layers (strategic, tactical, operational) for different roles
- Phase-aligned templates matching product development stages
- Discipline-specific patterns (strategist, PM, designer, developer, tester, marketer)
- Evolution workflows for growing context through lifecycle
- Quality metrics and validation checkpoints

**Core Patterns from GHM-M:**
- 3+1+SoT+Temp documentation stack
- ID-based knowledge graph
- Session protocols for continuity
- Progressive lifecycle (v0.1 Spark → v0.4 Foundation → v0.6 Validation → v0.8 Polish → v1.0 Launch)

---

## Navigation

### 🎯 Core Files
- **[MRD.md](MRD.md)** — Methodology requirements and vision
- **[CLAUDE.md](CLAUDE.md)** — AI agent operating guide (coming soon)
- **[EPIC-01](active/epics/EPIC-01-ace-foundation.md)** — Active foundation work (coming soon)

### 📚 Source of Truth Library
Located in `active/source_of_truth/`:
- `PRACTITIONER_JOURNEYS.md` (PJ-XXX) — How different disciplines adopt ACE
- `CONTEXT_PATTERNS.md` (PAT-XXX) — Reusable context patterns
- `WORKFLOWS.md` (WF-XXX) — Context evolution workflows
- `PRINCIPLES.md` (MP-XXX) — ACE core principles
- `TEMPLATES.md` (TEMP-XXX) — Context structure templates
- `VALIDATION.md` (VAL-XXX) — Case studies and evidence
- `GUIDES.md` (GUIDE-XXX) — How-to documentation
- `TOOLS.md` (TOOL-XXX) — Context management tools

*(Files to be created during foundation build)*

### 🔧 Documentation
Located in `docs/`:
- `getting_started.md` — Onboarding guide for teams
- `phase_alignment.md` — How ACE maps to product phases
- `discipline_guides/` — Role-specific guidance

*(To be created during foundation build)*

### 📋 Templates
Located in `templates/`:
- `context_layers/` — Strategic, tactical, operational templates
- `phase_templates/` — Templates for each product phase
- `discipline_templates/` — Role-specific context templates

*(To be created during foundation build)*

---

## Current Work

### Active EPIC: EPIC-01 ACE Foundation

**Goal:** Establish foundation for ACE methodology (v0.1 → v0.4)

**Progress:** Phase 1 (Planning) — 10%

**Phases:**
- [🔄] **Phase 1:** Problem Definition & Scope (4 issues)
- [⏳] **Phase 2:** Core Patterns (5 issues)
- [⏳] **Phase 3:** Practitioner Journeys (4 issues)
- [⏳] **Phase 4:** Documentation (3 issues)
- [⏳] **Phase 5:** Validation Documentation (4 issues)

**Current Status:**
- ✅ MRD v0.1 created with problem/vision
- ✅ Directory structure established
- 🔄 Creating navigation files
- ⏳ Initial patterns to be defined

**Track Progress:** See EPIC-01 Section 2 (when created)

---

## ID System

ACE uses GHM-M's ID prefix system, adapted for context engineering:

| Prefix | Type | SoT File | Purpose | Example |
|--------|------|----------|---------|---------|
| **PJ-XXX** | Practitioner Journey | PRACTITIONER_JOURNEYS.md | Discipline adoption paths | PJ-001: Strategist journey |
| **PAT-XXX** | Pattern | CONTEXT_PATTERNS.md | Reusable context patterns | PAT-001: Context layers |
| **WF-XXX** | Workflow | WORKFLOWS.md | Context evolution processes | WF-001: Phase transition |
| **MP-XXX** | Principle | PRINCIPLES.md | ACE core principles | MP-001: Phase alignment |
| **TEMP-XXX** | Template | TEMPLATES.md | Context structures | TEMP-001: Strategic layer |
| **VAL-XXX** | Validation | VALIDATION.md | Case studies | VAL-001: Team pilot |
| **GUIDE-XXX** | Guide | GUIDES.md | How-to documentation | GUIDE-001: Getting started |
| **TOOL-XXX** | Tool | TOOLS.md | Context management tools | TOOL-001: Context validator |

**Total IDs:** 0 (foundation just starting)
**Target for v0.4:** 20-25 IDs

---

## Critical Alerts

🟢 **Foundation development in progress**
Using GHM-M v0.4 methodology. Contributing to VAL-001 validation case study.

---

## Metrics

### Foundation Progress
- **Directory Structure:** ✅ Complete
- **Navigation Files:** 🔄 In Progress (1/3)
- **MRD:** ✅ v0.1 Spark created
- **SoT Files:** ⏳ Pending (0/8)
- **Templates:** ⏳ Pending (0/~10)
- **Documentation:** ⏳ Pending (0/3)

### IDs Created
- **Total:** 0
- **Target v0.4:** 20-25
- **By Type:** TBD

### Validation (VAL-001)
- **GHM-M Template Usage:** ✅ MRD template worked well
- **Progressive Documentation:** 🔄 Testing v0.1 → v0.4 flow
- **ID System:** ⏳ To be tested during build
- **Session Protocols:** ⏳ To be implemented

---

## Quick Start

### For New Sessions (AI Agents)
1. Read this README for current status
2. Read EPIC-01 Section 0 for session state (when created)
3. Review [MRD.md](MRD.md) for context
4. Check active issue in EPIC
5. Follow CLAUDE.md session protocols (when created)

### For New Practitioners (Humans)
1. Read [MRD.md](MRD.md) to understand ACE vision
2. Understand the problem: AI context management for cross-discipline teams
3. Explore patterns and templates (once created)
4. See practitioner journeys for your discipline (once created)

### For Contributors
1. Review [GHM-M](../GHM-M/MRD.md) to understand development methodology
2. Check [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001) to see validation objectives
3. Follow GHM-M session protocols
4. Track all IDs in EPIC Section 3A

---

## Development Approach

**This methodology is being developed using GHM-M itself**, which provides:

**Templates:**
- MRD structure for methodology requirements
- EPIC structure for tracking work
- SoT file templates for knowledge organization

**Patterns:**
- ID-based knowledge graph (avoid duplication)
- Progressive documentation (v0.1 → v0.4 → v0.6 → v0.8 → v1.0)
- Session protocols (continuity across sessions)

**Validation:**
- ACE development serves as VAL-001 for GHM-M
- Tests whether GHM-M works beyond methodology development
- Identifies refinements needed for GHM-M

---

## References

### ACE Documentation
- [MRD.md](MRD.md) — Complete methodology requirements
- [EPIC-01](active/epics/EPIC-01-ace-foundation.md) — Foundation work tracking (TBD)

### GHM-M (Development Methodology)
- [GHM-M Repository](../GHM-M/) — Methodology used to develop ACE
- [GHM-M MRD](../GHM-M/MRD.md) — GHM-M requirements
- [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001) — Validation case study

### Original GHM
- [PRD-driven Context Engineering](../PRD-driven-context-engineering/) — Original product methodology

---

## License

TBD

Developed using [GHM-M](../GHM-M/MRD.md) (Gear Heart Methodology for Methodologies).

---

**Last Updated:** 2025-12-26
**MRD Version:** v0.1 (Spark)
**EPIC:** EPIC-01 (Planning)
**Validation:** VAL-001 (In Progress)
