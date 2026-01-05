# AI Context Engineering (ACE)

**Status:** v0.4 Foundation Complete
**Last Updated:** 2026-01-05
**Developed Using:** [GHM-M](../GHM-M/MRD.md) v0.4

---

## Quick Status

| Field | Value |
|-------|-------|
| **MRD Version** | v0.4 (Foundation) |
| **Current Phase** | External Validation (VAL-002) |
| **Active EPIC** | EPIC-02: v0.6 Validation |
| **Current Focus** | Real-world pilot testing with product teams |
| **Next Milestone** | v0.6 Validation Complete |
| **Validation** | VAL-001 Complete (GHM-M proven), VAL-002 In Progress (External teams) |

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
- **[getting_started.md](docs/getting_started.md)** — Onboarding guide for teams ✅
- `phase_alignment.md` — How ACE maps to product phases (coming soon)
- `discipline_guides/` — Role-specific guidance (coming soon)

### 🚀 Setup Guides
Located in `setup-guides/`:
- **[PROJECT_BOB_SETUP.md](setup-guides/PROJECT_BOB_SETUP.md)** — Complete setup for Project Bob (Launch phase) ✅
- **[QUICK_START_CHECKLIST.md](setup-guides/QUICK_START_CHECKLIST.md)** — Printable setup checklist ✅
- **[TROUBLESHOOTING.md](setup-guides/TROUBLESHOOTING.md)** — Common issues and solutions ✅
- See [setup-guides/README.md](setup-guides/README.md) for full navigation

### 📋 Templates
Located in `templates/`:
- `context_layers/` — Strategic, tactical, operational templates
- `phase_templates/` — Templates for each product phase
- `discipline_templates/` — Role-specific context templates

*(To be created during foundation build)*

---

## Current Work

### Active EPIC: EPIC-02 External Validation

**Goal:** Validate ACE with real product teams (v0.4 → v0.6)

**Progress:** VAL-002 In Progress

**Completed (v0.4 Foundation):**
- ✅ 5 Core Patterns (PAT-001 to PAT-005)
- ✅ 5 Methodology Principles (MP-001 to MP-005)
- ✅ 4 Practitioner Journeys (PJ-001 to PJ-004)
- ✅ 3 Workflows (WF-001 to WF-003)
- ✅ 3 Templates (TEMP-001 to TEMP-003)
- ✅ 1 Getting Started Guide (GUIDE-001)
- ✅ VAL-001 Complete (GHM-M validated for domain transfer)

**Current Focus:**
- 🔄 VAL-002: First external pilot (Project Bob setup)
- ⏳ VAL-003: Second external pilot (planned)
- ⏳ Refinements based on real-world feedback

**Track Progress:** See [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md)

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

**Total IDs:** 21 (v0.4 Foundation Complete)
**Target for v0.6:** 25-30 IDs (add remaining journeys, more examples)

---

## Critical Alerts

🟢 **Foundation development in progress**
Using GHM-M v0.4 methodology. Contributing to VAL-001 validation case study.

---

## Metrics

### Foundation Progress (v0.4)
- **Directory Structure:** ✅ Complete
- **Navigation Files:** ✅ Complete (3/3)
- **MRD:** ✅ v0.4 Foundation created
- **SoT Files:** ✅ Complete (5/5 core files)
- **Templates:** ✅ Complete (3/3 core templates)
- **Documentation:** ✅ Complete (1 getting started guide, 3 setup guides)
- **Setup Guides:** ✅ Complete (4 files for Project Bob)

### IDs Created
- **Total:** 21 IDs
- **By Type:**
  - PAT: 5 (Context patterns)
  - MP: 5 (Methodology principles)
  - PJ: 4 (Practitioner journeys)
  - WF: 3 (Workflows)
  - TEMP: 3 (Templates)
  - GUIDE: 1 (Getting started)

### Validation
- **VAL-001 (GHM-M Dogfooding):** ✅ Complete - GHM-M proven for domain transfer
- **VAL-002 (External Pilot):** 🔄 In Progress - Project Bob pilot starting
- **VAL-003 (Second Pilot):** ⏳ Planned - After VAL-002 feedback

### Expected Impact (From VAL-001)
- **Time Savings:** 5-12 hours/week per person
- **AI Quality:** 3x improvement
- **Velocity:** 15-50% increase (by discipline)
- **ROI:** 16x return on investment

---

## Quick Start

### For Teams Adopting ACE

**Option 1: Using Project Bob or Similar IDE (Recommended)**
1. Go to [setup-guides/PROJECT_BOB_SETUP.md](setup-guides/PROJECT_BOB_SETUP.md)
2. Follow step-by-step setup (30-60 min)
3. Use [QUICK_START_CHECKLIST.md](setup-guides/QUICK_START_CHECKLIST.md) to track progress
4. Reference [TROUBLESHOOTING.md](setup-guides/TROUBLESHOOTING.md) if issues arise

**Option 2: General Setup**
1. Read [docs/getting_started.md](docs/getting_started.md)
2. Review [ACE_METHODOLOGY_SUMMARY.md](ACE_METHODOLOGY_SUMMARY.md) for overview
3. Explore patterns in [active/source_of_truth/CONTEXT_PATTERNS.md](active/source_of_truth/CONTEXT_PATTERNS.md)
4. Check practitioner journey for your role in [active/source_of_truth/PRACTITIONER_JOURNEYS.md](active/source_of_truth/PRACTITIONER_JOURNEYS.md)

### For Understanding ACE

**Quick Overview (5 min):**
- Read [ACE_METHODOLOGY_SUMMARY.md](ACE_METHODOLOGY_SUMMARY.md)

**Deep Dive (30 min):**
1. Read [MRD.md](MRD.md) for complete vision
2. Review core patterns (PAT-001 to PAT-005)
3. Check your discipline's practitioner journey

### For AI Agents (Session Start)
1. Read this README for current status
2. Review [CLAUDE.md](CLAUDE.md) for session protocols
3. Check active EPIC for current work
4. Reference [MRD.md](MRD.md) for ACE context

### For Contributors
1. Review [GHM-M](../GHM-M/MRD.md) development methodology
2. Check [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md) validation results
3. Follow GHM-M session protocols
4. Contribute to VAL-002/VAL-003 external validation

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
