# GHM-M Implementation Plan

**GHM-M:** Gear Heart Methodology for Methodologies
**Created:** 2025-12-26
**Branch:** `claude/resume-documentation-update-Nwwt4`
**Status:** Ready for implementation

---

## Executive Summary

This plan implements **GHM-M**, a variant of GHM adapted for methodology development. Based on approved recommendations in `GHM_ADAPTATION_FOR_METHODOLOGY.md`, we will use adapted terminology from day one (not migrate later).

**Key Decision:** Start with GHM-M terminology immediately to avoid rework and maintain clarity.

---

## Implementation Phases

### Phase 1: Foundation Setup (30-45 minutes)
Create core directory structure and navigation files

### Phase 2: SoT Library Setup (45-60 minutes)
Create adapted Source of Truth files with new ID prefixes

### Phase 3: Template Creation (60-90 minutes)
Build GHM-M templates based on GHM originals

### Phase 4: Tool Configuration (30-45 minutes)
Update automation tools to recognize new ID prefixes

### Phase 5: Documentation (30-45 minutes)
Create guides and update CLAUDE.md for GHM-M

---

## Phase 1: Foundation Setup

### 1.1 Create Directory Structure

```
product-context-engineering/
├── GHM-M/                              # NEW: GHM for Methodologies
│   ├── CLAUDE.md                       # AI agent instructions (adapted)
│   ├── MRD.md                          # Methodology Requirements Document
│   ├── README.md                       # Current status & navigation
│   │
│   ├── active/                         # Live methodology files
│   │   ├── agents/                     # Agent briefs (AURA, etc.)
│   │   ├── epics/                      # Current work windows
│   │   ├── source_of_truth/            # Canonical methodology specs
│   │   └── temp/                       # Scratchpads
│   │
│   ├── methodology/                    # GHM-M methodology itself
│   │   ├── workflows/                  # MRD lifecycle, ID system
│   │   └── guides/                     # How to use GHM-M
│   │
│   ├── templates/                      # Blank forms
│   │   ├── methodology/                # MRD, README, CLAUDE templates
│   │   ├── epics/                      # EPIC templates
│   │   ├── source_of_truth/            # SoT templates
│   │   └── hooks/                      # Session protocol hooks
│   │
│   ├── tools/                          # Automation scripts
│   │   └── config/                     # Tool configs for GHM-M IDs
│   │
│   └── .codex/                         # ID registry
│       └── ID_REGISTRY.md
│
└── PRD-driven-context-engineering/     # Original GHM (preserved for reference)
```

**Actions:**
- [ ] Create `GHM-M/` root directory
- [ ] Create subdirectories: `active/`, `methodology/`, `templates/`, `tools/`, `.codex/`
- [ ] Create nested subdirectories as shown above

### 1.2 Create Core Navigation Files

#### CLAUDE.md (GHM-M variant)

**File:** `GHM-M/CLAUDE.md`

**Content:** Based on `PRD-driven-context-engineering/CLAUDE.md` with adaptations:
- Replace "PRD" with "MRD" throughout
- Replace "product" with "methodology" in context
- Update SoT file references (PRACTITIONER_JOURNEYS.md, etc.)
- Keep Session Protocols (Section 10) unchanged
- Update examples to use new ID prefixes (PJ, MP, PAT, etc.)

**Actions:**
- [ ] Copy `PRD-driven-context-engineering/CLAUDE.md` to `GHM-M/CLAUDE.md`
- [ ] Find/replace: PRD → MRD, product → methodology
- [ ] Update SoT file references
- [ ] Update example IDs (UJ-XXX → PJ-XXX, BR-XXX → MP-XXX, etc.)
- [ ] Add note at top explaining GHM-M variant

#### MRD.md (Methodology Requirements Document)

**File:** `GHM-M/MRD.md`

**Content:** New methodology for this project (to be defined in v0.1)

**Actions:**
- [ ] Create `GHM-M/MRD.md` using appendix template from `GHM_ADAPTATION_FOR_METHODOLOGY.md`
- [ ] Initialize with v0.1 Spark placeholder
- [ ] Add metadata table (version, status, updated date)

#### README.md (Status & Navigation)

**File:** `GHM-M/README.md`

**Content:** Current status, active EPIC, links to MRD and SoT

**Actions:**
- [ ] Create `GHM-M/README.md`
- [ ] Add status section (current lifecycle gate)
- [ ] Add active EPIC reference
- [ ] Add SoT library navigation
- [ ] Add critical alerts section

---

## Phase 2: SoT Library Setup

### 2.1 Create Adapted SoT Files

Create these files in `GHM-M/active/source_of_truth/`:

#### PRACTITIONER_JOURNEYS.md (PJ-XXX)
**Replaces:** USER_JOURNEYS.md
**Purpose:** Document how practitioners discover, adopt, and use the methodology

**Template Structure:**
```markdown
# Practitioner Journeys

> **ID Prefix:** PJ-XXX
> **Purpose:** Map how practitioners adopt and apply this methodology

## PJ-001: First-Time Methodology Adoption

**Practitioner Profile:** [Description]
**Context:** [Situation where they discover this methodology]

### Journey Stages
1. **Discovery:** How they find the methodology
2. **Evaluation:** How they assess if it fits their needs
3. **Adoption:** How they start using it
4. **Mastery:** How they become proficient
5. **Evolution:** How they adapt and extend it

**Pain Points Addressed:**
- [Pain 1]
- [Pain 2]

**Related IDs:**
- MP-XXX: [Principles that support this journey]
- PAT-XXX: [Patterns used in this journey]
- TEMP-XXX: [Templates needed]

**Status:** Draft | Active | Validated
**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `PRACTITIONER_JOURNEYS.md` with template
- [ ] Add placeholder PJ-001 entry

#### METHODOLOGY_PRINCIPLES.md (MP-XXX)
**Replaces:** BUSINESS_RULES.md
**Purpose:** Core principles and guidelines that govern the methodology

**Template Structure:**
```markdown
# Methodology Principles

> **ID Prefix:** MP-XXX
> **Purpose:** Define core rules and guidelines of the methodology

## MP-001: Reference, Don't Duplicate

**Principle Statement:**
Every concept has one canonical location. Cross-references use IDs, not duplicate prose.

**Rationale:**
Duplication leads to drift. IDs enable single-source-of-truth while maintaining navigability.

**Application:**
- When documenting patterns, create PAT-XXX entries
- When referencing patterns elsewhere, link to PAT-XXX, don't restate

**Validation:**
- VAL-XXX: Case studies showing this principle in action

**Related IDs:**
- PAT-001: ID-based knowledge graph
- COMP-001: 3+1+SoT+Temp stack

**Status:** Active
**Priority:** Critical | Important | Optional
**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `METHODOLOGY_PRINCIPLES.md` with template
- [ ] Add MP-001: Reference, don't duplicate
- [ ] Add 5-10 core principles from GHM

#### PATTERNS.md (PAT-XXX)
**Replaces:** API_CONTRACTS.md
**Purpose:** Reusable methodology patterns

**Template Structure:**
```markdown
# Methodology Patterns

> **ID Prefix:** PAT-XXX
> **Purpose:** Document reusable patterns in the methodology

## PAT-001: ID-Based Knowledge Graph

**Pattern Name:** ID-Based Knowledge Graph
**Category:** Information Architecture
**Complexity:** Medium

**Problem:**
Documentation sprawl and duplication cause drift and confusion.

**Solution:**
Assign unique, durable IDs to every significant concept. Use IDs for cross-references.

**Structure:**
- Each concept gets a unique ID (e.g., PAT-001, MP-012, PJ-003)
- IDs follow predictable prefixes based on type
- References use IDs, not duplicate content
- Bidirectional links maintained in ID entries

**Implementation:**
1. Define ID prefixes for each entity type
2. Create SoT files for each type (PATTERNS.md, PRINCIPLES.md, etc.)
3. Use ID format: PREFIX-NNN (e.g., PAT-001)
4. Include "Related IDs" section in each entry

**Benefits:**
- Single source of truth
- No duplication drift
- Fast navigation
- Change impact analysis

**Related IDs:**
- MP-001: Reference, don't duplicate
- COMP-001: 3+1+SoT+Temp stack
- TOOL-001: ID extraction utilities

**Examples:**
- [Link to real-world example]

**Status:** Active
**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `PATTERNS.md` with template
- [ ] Add PAT-001: ID-based knowledge graph
- [ ] Add PAT-002: Progressive documentation
- [ ] Add PAT-003: Session protocols

#### TEMPLATES.md (TEMP-XXX)
**Replaces:** ACTUAL_SCHEMA.md
**Purpose:** Templates and document structures

**Template Structure:**
```markdown
# Templates

> **ID Prefix:** TEMP-XXX
> **Purpose:** Document templates and structural patterns

## TEMP-001: EPIC Template

**Template Name:** EPIC Template
**Category:** Work Management
**Used For:** Organizing work windows with ID tracking

**Purpose:**
Track discrete work efforts with session state and ID change history.

**Structure:**
- Section 0: Session State (handoff protocols)
- Section 1: EPIC Overview
- Section 2: Work Breakdown (Issues)
- Section 3A: ID Tracking (Knowledge Graph)
- Section 4: Validation & Gates

**When to Use:**
Create an EPIC for any work window that will:
- Span multiple sessions
- Create or modify multiple IDs
- Require validation/review gates

**Location:**
`templates/epics/EPIC_template.md`

**Related IDs:**
- PAT-003: Session protocols
- MP-XXX: [Principles governing EPICs]
- GUIDE-XXX: [How to use EPICs]

**Status:** Active
**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `TEMPLATES.md` with template
- [ ] Add TEMP-001: EPIC template
- [ ] Add TEMP-002: MRD template
- [ ] Add TEMP-003: SoT file templates

#### VALIDATION.md (VAL-XXX)
**Replaces:** testing_playbook.md
**Purpose:** Validation methods and case studies

**Template Structure:**
```markdown
# Validation & Case Studies

> **ID Prefix:** VAL-XXX
> **Purpose:** Document validation approaches and real-world evidence

## VAL-001: GHM Applied to SaaS Startup

**Validation Type:** Case Study
**Organization:** [Anonymized or Real]
**Context:** Early-stage SaaS startup, 5 engineers, building AI product

**Methodology Application:**
- Used GHM from v0.1 → v0.7
- Completed 8 EPICs over 3 months
- Created 150+ IDs across all types

**Results:**
- **Context Loading:** Reduced from 15 min → 3 min average
- **Onboarding:** New engineer productive in < 1 day (vs. 1 week typical)
- **Document Drift:** Zero instances (previously common)
- **AI Agent Effectiveness:** 3x faster with ID-based context

**Lessons Learned:**
1. [Lesson 1]
2. [Lesson 2]

**Patterns Validated:**
- PAT-001: ID-based knowledge graph
- PAT-003: Session protocols
- MP-001: Reference, don't duplicate

**Evidence:**
- [Link to anonymized docs]
- [Metrics screenshots]
- [Practitioner testimonial]

**Status:** Validated | In Progress | Planned
**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `VALIDATION.md` with template
- [ ] Add VAL-000: GHM-M dogfooding (this project!)

#### PUBLICATION.md (PUB-XXX)
**Replaces:** deployment_playbook.md
**Purpose:** Distribution channels and publication strategy

**Template Structure:**
```markdown
# Publication & Distribution

> **ID Prefix:** PUB-XXX
> **Purpose:** Document distribution channels and strategies

## PUB-001: GitHub Repository

**Channel Name:** GitHub Repository
**Type:** Primary Distribution
**Audience:** Developers, practitioners, contributors

**Purpose:**
Main repository for GHM-M methodology artifacts, templates, and tools.

**Content:**
- Full methodology documentation
- Templates for all SoT files
- Example implementations
- Automation tools

**Publication Process:**
1. Complete MRD v0.x gate
2. Review all SoT files for completeness
3. Update README.md with version info
4. Tag release: `vX.Y.Z`
5. Publish GitHub release with changelog

**Metrics:**
- Stars: [Target]
- Forks: [Target]
- Issues/PRs: [Engagement level]

**Related IDs:**
- COM-001: GitHub Discussions launch
- GUIDE-001: Getting started guide

**Status:** Active | Planned | Archived
**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `PUBLICATION.md` with template
- [ ] Add PUB-001: GitHub repository

#### PRACTITIONER_FEEDBACK.md (PF-XXX)
**Replaces:** customer_feedback.md
**Purpose:** Feedback from methodology users

**Template Structure:**
```markdown
# Practitioner Feedback

> **ID Prefix:** PF-XXX
> **Purpose:** Capture feedback from methodology practitioners

## PF-001: "Need Clearer Onboarding Documentation"

**Source:** Early adopter (anonymized)
**Date Received:** 2025-12-26
**Channel:** GitHub Issue #42

**Feedback:**
"The methodology looks powerful but the onboarding is overwhelming.
I don't know where to start. A step-by-step guide would help."

**Category:** Documentation Gap
**Priority:** High | Medium | Low
**Status:** Captured | In Progress | Resolved

**Response Plan:**
1. Create GUIDE-001: Getting Started Guide
2. Create PJ-001: First-time adoption journey
3. Add quick-start section to README.md

**Related IDs:**
- GUIDE-001: Getting started guide
- PJ-001: First-time methodology adoption
- EPIC-XX: Onboarding documentation

**Resolution:**
[Link to implemented solution]

**Last Updated:** [Date]
```

**Actions:**
- [ ] Create `PRACTITIONER_FEEDBACK.md` with template
- [ ] Add initial placeholder entry

### 2.2 Create New SoT Files

Create these additional SoT files unique to GHM-M:

#### WORKFLOWS.md (WF-XXX)
**Purpose:** Document workflows and processes

**Actions:**
- [ ] Create `WORKFLOWS.md`
- [ ] Add WF-001: MRD Version Lifecycle
- [ ] Add WF-002: EPIC lifecycle

#### GUIDES.md (GUIDE-XXX)
**Purpose:** How-to guides for practitioners

**Actions:**
- [ ] Create `GUIDES.md`
- [ ] Add GUIDE-001: Getting Started

#### TOOLS.md (TOOL-XXX)
**Purpose:** Automation tools and scripts

**Actions:**
- [ ] Create `TOOLS.md`
- [ ] Add TOOL-001: validate_sessions.py
- [ ] Add TOOL-002: ID extraction utilities

#### COMPONENTS.md (COMP-XXX)
**Purpose:** Core methodology components

**Actions:**
- [ ] Create `COMPONENTS.md`
- [ ] Add COMP-001: 3+1+SoT+Temp stack
- [ ] Add COMP-002: ID system
- [ ] Add COMP-003: Session protocols

---

## Phase 3: Template Creation

### 3.1 Create Methodology Templates

**Directory:** `GHM-M/templates/methodology/`

#### MRD Template
- [ ] Create `mrd_template.md`
- [ ] Based on appendix from `GHM_ADAPTATION_FOR_METHODOLOGY.md`
- [ ] Include placeholder sections for all lifecycle stages

#### README Template
- [ ] Create `readme_template.md`
- [ ] Sections: Status, Active EPIC, SoT Navigation, Critical Alerts

#### CLAUDE Template
- [ ] Create `claude_template.md`
- [ ] Adapted version with MRD references, new SoT files

### 3.2 Create EPIC Templates

**Directory:** `GHM-M/templates/epics/`

**Actions:**
- [ ] Copy `PRD-driven-context-engineering/templates/epics/EPIC_template.md`
- [ ] Update to reference MRD instead of PRD
- [ ] Update ID examples (UJ→PJ, BR→MP, API→PAT, etc.)
- [ ] Keep Section 0 (Session State) unchanged
- [ ] Update Section 3A examples with new ID prefixes

### 3.3 Create SoT Templates

**Directory:** `GHM-M/templates/source_of_truth/`

**Actions:**
- [ ] Create template for each SoT file type:
  - `PRACTITIONER_JOURNEYS_template.md`
  - `METHODOLOGY_PRINCIPLES_template.md`
  - `PATTERNS_template.md`
  - `TEMPLATES_template.md`
  - `VALIDATION_template.md`
  - `PUBLICATION_template.md`
  - `PRACTITIONER_FEEDBACK_template.md`
  - `WORKFLOWS_template.md`
  - `GUIDES_template.md`
  - `TOOLS_template.md`
  - `COMPONENTS_template.md`

### 3.4 Copy Hooks Templates

**Directory:** `GHM-M/templates/hooks/`

**Actions:**
- [ ] Copy from `PRD-driven-context-engineering/templates/hooks/`
- [ ] No changes needed (hooks are methodology-agnostic)

---

## Phase 4: Tool Configuration

### 4.1 Update ID Registry

**File:** `GHM-M/.codex/ID_REGISTRY.md`

**Actions:**
- [ ] Create ID registry template
- [ ] Add all GHM-M ID prefixes:
  - PJ-XXX: Practitioner Journey
  - MP-XXX: Methodology Principle
  - PAT-XXX: Pattern
  - TEMP-XXX: Template
  - VAL-XXX: Validation
  - PUB-XXX: Publication
  - PF-XXX: Practitioner Feedback
  - WF-XXX: Workflow
  - GUIDE-XXX: Guide
  - TOOL-XXX: Tool
  - COMP-XXX: Component
  - COM-XXX: Community Initiative
  - KPI-XXX: Success Metric

### 4.2 Configure Automation Tools

**Directory:** `GHM-M/tools/`

**Actions:**
- [ ] Copy `validate_sessions.py` from original (no changes needed)
- [ ] Create `config/ghm_m_ids.json` with new ID prefixes:

```json
{
  "id_prefixes": {
    "PJ": "Practitioner Journey",
    "MP": "Methodology Principle",
    "PAT": "Pattern",
    "TEMP": "Template",
    "VAL": "Validation",
    "PUB": "Publication",
    "PF": "Practitioner Feedback",
    "WF": "Workflow",
    "GUIDE": "Guide",
    "TOOL": "Tool",
    "COMP": "Component",
    "COM": "Community",
    "KPI": "Metric"
  },
  "sot_files": {
    "PJ": "PRACTITIONER_JOURNEYS.md",
    "MP": "METHODOLOGY_PRINCIPLES.md",
    "PAT": "PATTERNS.md",
    "TEMP": "TEMPLATES.md",
    "VAL": "VALIDATION.md",
    "PUB": "PUBLICATION.md",
    "PF": "PRACTITIONER_FEEDBACK.md",
    "WF": "WORKFLOWS.md",
    "GUIDE": "GUIDES.md",
    "TOOL": "TOOLS.md",
    "COMP": "COMPONENTS.md",
    "COM": "COMMUNITY.md",
    "KPI": "METRICS.md"
  }
}
```

- [ ] Update `generate_visuals.py` (if copied) to use config file

---

## Phase 5: Documentation

### 5.1 Create Methodology Workflows

**Directory:** `GHM-M/methodology/workflows/`

#### MRD_VERSION_LIFECYCLE.md
- [ ] Copy from `PRD_VERSION_LIFECYCLE.md`
- [ ] Adapt each stage for methodology context
- [ ] Update gate criteria and deliverables
- [ ] Use new ID prefixes in examples

#### UNIQUE_ID_SYSTEM.md
- [ ] Copy from original
- [ ] Update ID prefix table with GHM-M IDs
- [ ] Update examples to use methodology context
- [ ] Update SoT file mapping

### 5.2 Create Methodology Guides

**Directory:** `GHM-M/methodology/guides/`

#### getting_started.md
**Actions:**
- [ ] Create getting started guide for GHM-M
- [ ] Explain differences from standard GHM
- [ ] Provide step-by-step setup instructions
- [ ] Link to templates and examples

#### ghm_m_principles.md
**Actions:**
- [ ] Document GHM-M adaptation principles
- [ ] Explain terminology mapping
- [ ] Clarify when to use GHM vs GHM-M

---

## Phase 6: Initialize First MRD

### 6.1 Start MRD v0.1 (Spark)

**File:** `GHM-M/MRD.md`

**Actions:**
- [ ] Define the problem this new methodology solves
- [ ] Set initial vision and scope
- [ ] Create first CFD entries (if capturing practitioner feedback)
- [ ] Document open questions

### 6.2 Create First EPIC

**File:** `GHM-M/active/epics/EPIC-01-foundation.md`

**Purpose:** Set up GHM-M foundation
**Scope:** All Phase 1-5 work

**Actions:**
- [ ] Create EPIC-01 using template
- [ ] Section 0: Initialize session state
- [ ] Section 2: List all Phase 1-5 issues
- [ ] Section 3A: Track all IDs created (MP, PAT, COMP, etc.)
- [ ] Section 4: Define completion gates

---

## Validation Checklist

Before considering GHM-M implementation complete:

### Structure
- [ ] All directories created per Phase 1
- [ ] All SoT files created per Phase 2
- [ ] All templates created per Phase 3

### Navigation
- [ ] CLAUDE.md properly references MRD and new SoT files
- [ ] MRD.md initialized with v0.1 content
- [ ] README.md shows current status

### IDs
- [ ] ID registry includes all GHM-M prefixes
- [ ] At least one example ID created for each type
- [ ] Tool config recognizes all new prefixes

### Documentation
- [ ] MRD lifecycle documented
- [ ] ID system documented
- [ ] Getting started guide exists

### Self-Application
- [ ] EPIC-01 tracks this implementation work
- [ ] Session protocols followed during setup
- [ ] Implementation serves as VAL-000: Dogfooding

---

## Success Criteria

✅ **Foundation is complete** when:
1. Directory structure matches Phase 1 spec
2. All 11 SoT files exist with templates and examples
3. CLAUDE.md, MRD.md, README.md are initialized
4. Tools recognize GHM-M ID prefixes
5. EPIC-01 documents the foundation work
6. We can start using GHM-M to develop the methodology itself

---

## Next Steps After Implementation

Once GHM-M foundation is in place:

1. **Complete MRD v0.1 → v0.2**
   - Define target practitioners
   - Document pain points
   - Create initial PJ-XXX entries

2. **Build Out Core IDs**
   - 10-15 MP-XXX (methodology principles)
   - 10-15 PAT-XXX (patterns)
   - 5-10 COMP-XXX (components)
   - 3-5 PJ-XXX (practitioner journeys)

3. **Create Documentation**
   - GUIDE-001: Getting Started
   - GUIDE-002: Using EPICs
   - GUIDE-003: Working with IDs

4. **Validate the Approach**
   - Use GHM-M to develop the rest of GHM-M
   - Document as VAL-000: Dogfooding case study

---

## Estimated Timeline

- **Phase 1:** 45 minutes (directory setup, navigation files)
- **Phase 2:** 60 minutes (11 SoT files with templates)
- **Phase 3:** 90 minutes (templates for MRD, EPIC, SoT)
- **Phase 4:** 45 minutes (tool configuration)
- **Phase 5:** 45 minutes (methodology docs)
- **Phase 6:** 30 minutes (initialize first MRD and EPIC)

**Total:** ~5 hours for complete foundation

---

## Implementation Notes

### Parallel with Original GHM
- GHM-M lives in `GHM-M/` directory
- Original GHM preserved in `PRD-driven-context-engineering/`
- Both can coexist; GHM-M references original as prior art

### Incremental Approach
While this plan is comprehensive, we can implement incrementally:
1. **Minimal:** Phase 1-2 (structure + core SoT files)
2. **Standard:** Phase 1-4 (add templates and tools)
3. **Complete:** All phases (full documentation)

Start minimal, expand as needed.

---

**Status:** Ready for approval and implementation
**Next:** User approval → Begin Phase 1
