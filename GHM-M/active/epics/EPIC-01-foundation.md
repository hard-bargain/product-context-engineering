---
title: "EPIC-01: GHM-M Foundation Setup"
status: "In Progress"
phase: "Plan"
created: "2025-12-26"
mrd_version: "v0.1"
---

# EPIC-01: GHM-M Foundation Setup

> **Purpose:** Establish the complete foundation for GHM-M (Gear Heart Methodology for Methodologies) variant
>
> **Scope:** Implement all 6 phases from `GHM_M_IMPLEMENTATION_PLAN.md`
>
> **MRD Context:** Supporting v0.1 Spark - establishing methodology infrastructure
>
> **Reference:** [CLAUDE.md Section 10: Session Protocols](../../PRD-driven-context-engineering/CLAUDE.md#10-session-protocols)

---

## Section 0: Session State

### Current Session

| Field | Value |
|-------|-------|
| **Session Date** | 2025-12-26 |
| **Agent/Model** | Claude Sonnet 4.5 |
| **Active Issue** | #0.1: Directory structure setup |
| **Phase** | Plan → Build |
| **Status** | In Progress |

### Work Completed This Session

**Setup:**
- ✅ Created `GHM_M_ADAPTATION_FOR_METHODOLOGY.md` with comprehensive recommendations
- ✅ Created `GHM_M_IMPLEMENTATION_PLAN.md` with 6-phase plan
- ✅ Created minimal GHM-M directory structure
- ✅ Created EPIC-01 to track foundation work

**In Progress:**
- 🔄 Creating EPIC-01 with full issue breakdown
- 🔄 Defining all implementation tasks

### Stopped At

**File:** `GHM-M/active/epics/EPIC-01-foundation.md`
**Section:** Defining Section 2 (Issues)
**Next Step:** Complete EPIC-01 issue breakdown, then begin Phase 1 implementation

### Blockers

None currently.

### Next Session Should

1. Complete EPIC-01 definition (Sections 2, 3A, 4)
2. Begin Phase 1: Foundation Setup
   - Create navigation files (CLAUDE.md, MRD.md, README.md)
   - Initialize with adapted terminology
3. Track all IDs created in Section 3A

### Files Changed This Session

- `GHM_M_ADAPTATION_FOR_METHODOLOGY.md` (created)
- `GHM_M_IMPLEMENTATION_PLAN.md` (created)
- `GHM-M/active/epics/EPIC-01-foundation.md` (creating)
- `GHM-M/` directory structure (created)

### Session History

| Session # | Date | Agent | Phase | Summary |
|-----------|------|-------|-------|---------|
| 1 | 2025-12-26 | Claude Sonnet 4.5 | Plan | Created adaptation recommendations, implementation plan, directory structure, started EPIC-01 |

---

## Section 1: EPIC Overview

### 1.1 Problem Statement

We need to adapt GHM (designed for product development) to support methodology development. This requires new terminology, ID prefixes, SoT files, and documentation that reflect methodology concepts rather than product concepts.

### 1.2 Solution Approach

Implement GHM-M variant using adapted terminology from day one:
- PRD → MRD (Methodology Requirements Document)
- User Journeys → Practitioner Journeys (PJ-XXX)
- Business Rules → Methodology Principles (MP-XXX)
- APIs → Patterns (PAT-XXX)
- Complete new ID system and SoT library

### 1.3 Success Criteria

✅ **Foundation Complete** when:
- [ ] All directory structure in place
- [ ] 11 SoT files created with templates
- [ ] Navigation files (CLAUDE.md, MRD.md, README.md) initialized
- [ ] Tools configured for GHM-M ID prefixes
- [ ] First MRD (v0.1 Spark) started
- [ ] This EPIC tracks all implementation work
- [ ] Can use GHM-M to develop the methodology itself

### 1.4 Scope & Constraints

**In Scope:**
- All 6 phases from implementation plan
- Complete SoT library (11 files)
- Tool configuration for new IDs
- Documentation and guides

**Out of Scope:**
- Building the actual methodology content (happens in later EPICs)
- Migration of existing content from original GHM
- Tool modifications beyond configuration

**Constraints:**
- Must preserve original GHM in `PRD-driven-context-engineering/`
- Must follow session protocols (this EPIC demonstrates compliance)
- Must use adapted terminology consistently from start

---

## Section 2: Work Breakdown

### Issue Manifest

| Issue # | Title | Status | Phase | Estimated | IDs Affected |
|---------|-------|--------|-------|-----------|--------------|
| **Phase 1: Foundation Setup** |
| 1.1 | Create directory structure | ✅ Done | Build | 15 min | - |
| 1.2 | Create CLAUDE.md (adapted) | 🔄 Next | Build | 20 min | - |
| 1.3 | Create MRD.md (initialized) | Pending | Build | 15 min | - |
| 1.4 | Create README.md (initialized) | Pending | Build | 10 min | - |
| **Phase 2: SoT Library Setup** |
| 2.1 | Create PRACTITIONER_JOURNEYS.md | Pending | Build | 10 min | PJ-001 |
| 2.2 | Create METHODOLOGY_PRINCIPLES.md | Pending | Build | 10 min | MP-001 |
| 2.3 | Create PATTERNS.md | Pending | Build | 10 min | PAT-001, PAT-002, PAT-003 |
| 2.4 | Create TEMPLATES.md | Pending | Build | 10 min | TEMP-001, TEMP-002 |
| 2.5 | Create VALIDATION.md | Pending | Build | 10 min | VAL-000 |
| 2.6 | Create PUBLICATION.md | Pending | Build | 10 min | PUB-001 |
| 2.7 | Create PRACTITIONER_FEEDBACK.md | Pending | Build | 10 min | PF-001 |
| 2.8 | Create WORKFLOWS.md | Pending | Build | 10 min | WF-001, WF-002 |
| 2.9 | Create GUIDES.md | Pending | Build | 10 min | GUIDE-001 |
| 2.10 | Create TOOLS.md | Pending | Build | 10 min | TOOL-001, TOOL-002 |
| 2.11 | Create COMPONENTS.md | Pending | Build | 10 min | COMP-001, COMP-002, COMP-003 |
| **Phase 3: Template Creation** |
| 3.1 | Create MRD template | Pending | Build | 20 min | TEMP-002 |
| 3.2 | Create README template | Pending | Build | 10 min | - |
| 3.3 | Create CLAUDE template | Pending | Build | 15 min | - |
| 3.4 | Create/adapt EPIC template | Pending | Build | 15 min | TEMP-001 |
| 3.5 | Create SoT file templates (11) | Pending | Build | 30 min | - |
| **Phase 4: Tool Configuration** |
| 4.1 | Create ID registry | Pending | Build | 15 min | - |
| 4.2 | Create tool config JSON | Pending | Build | 15 min | TOOL-003 |
| 4.3 | Copy/configure validation scripts | Pending | Build | 15 min | TOOL-001 |
| **Phase 5: Documentation** |
| 5.1 | Create MRD_VERSION_LIFECYCLE.md | Pending | Build | 30 min | WF-001 |
| 5.2 | Create UNIQUE_ID_SYSTEM.md (adapted) | Pending | Build | 20 min | - |
| 5.3 | Create getting_started.md | Pending | Build | 20 min | GUIDE-001 |
| 5.4 | Create ghm_m_principles.md | Pending | Build | 15 min | - |
| **Phase 6: Initialize First MRD** |
| 6.1 | Define methodology problem/vision | Pending | Plan | 15 min | - |
| 6.2 | Start MRD v0.1 content | Pending | Build | 15 min | - |
| **Wrap-Up** |
| 7.1 | Validate foundation completeness | Pending | Verify | 15 min | - |
| 7.2 | Update EPIC-01 final state | Pending | Wrap | 10 min | - |
| 7.3 | Document as VAL-000: Dogfooding | Pending | Wrap | 15 min | VAL-000 |

### Phase Workflow

```
Plan → Build → Verify → Wrap
  ↓      ↓        ↓       ↓
 Now   Issues   Tests   Docs
      (1-6)    (7.1)   (7.2-3)
```

**Current Phase:** Plan → Build (transitioning)

---

## Section 3A: ID Tracking (Knowledge Graph)

### IDs Created This EPIC

| ID | Type | Name | SoT File | Status | Notes |
|----|------|------|----------|--------|-------|
| **Methodology Principles (MP-XXX)** |
| MP-001 | Principle | Reference, don't duplicate | METHODOLOGY_PRINCIPLES.md | Planned | Core GHM principle |
| MP-002 | Principle | Progressive documentation | METHODOLOGY_PRINCIPLES.md | Planned | Documentation evolves with lifecycle |
| MP-003 | Principle | ID-based context | METHODOLOGY_PRINCIPLES.md | Planned | IDs over duplication |
| **Patterns (PAT-XXX)** |
| PAT-001 | Pattern | ID-based knowledge graph | PATTERNS.md | Planned | Core pattern |
| PAT-002 | Pattern | Progressive documentation | PATTERNS.md | Planned | How docs evolve |
| PAT-003 | Pattern | Session protocols | PATTERNS.md | Planned | Continuity across sessions |
| **Components (COMP-XXX)** |
| COMP-001 | Component | 3+1+SoT+Temp stack | COMPONENTS.md | Planned | Core architecture |
| COMP-002 | Component | ID system | COMPONENTS.md | Planned | Unique ID infrastructure |
| COMP-003 | Component | Session protocols | COMPONENTS.md | Planned | Handoff mechanisms |
| **Templates (TEMP-XXX)** |
| TEMP-001 | Template | EPIC template | TEMPLATES.md | Planned | Work window template |
| TEMP-002 | Template | MRD template | TEMPLATES.md | Planned | Methodology requirements doc |
| **Workflows (WF-XXX)** |
| WF-001 | Workflow | MRD version lifecycle | WORKFLOWS.md | Planned | v0.1 → v1.0 progression |
| WF-002 | Workflow | EPIC lifecycle | WORKFLOWS.md | Planned | Plan → Build → Verify → Wrap |
| **Guides (GUIDE-XXX)** |
| GUIDE-001 | Guide | Getting started | GUIDES.md | Planned | Onboarding for practitioners |
| **Tools (TOOL-XXX)** |
| TOOL-001 | Tool | validate_sessions.py | TOOLS.md | Planned | Session state validator |
| TOOL-002 | Tool | ID extraction utilities | TOOLS.md | Planned | Parse IDs from markdown |
| TOOL-003 | Tool | GHM-M config | TOOLS.md | Planned | Tool configuration for new IDs |
| **Practitioner Journeys (PJ-XXX)** |
| PJ-001 | Journey | First-time adoption | PRACTITIONER_JOURNEYS.md | Planned | How to start with GHM-M |
| **Publication (PUB-XXX)** |
| PUB-001 | Channel | GitHub repository | PUBLICATION.md | Planned | Primary distribution |
| **Practitioner Feedback (PF-XXX)** |
| PF-001 | Feedback | Need clearer onboarding | PRACTITIONER_FEEDBACK.md | Planned | Example entry |
| **Validation (VAL-XXX)** |
| VAL-000 | Case Study | GHM-M dogfooding | VALIDATION.md | In Progress | This project! |

### IDs Modified This EPIC

None (all new IDs).

### IDs Referenced from Other Sources

| ID | Type | Source | Purpose |
|----|------|--------|---------|
| - | - | - | None yet (bootstrap EPIC) |

### Bidirectional References Checklist

- [ ] All created IDs have entries in their SoT files
- [ ] All "Related IDs" sections are mutual
- [ ] No orphaned IDs (all referenced IDs exist)
- [ ] ID registry updated with all new prefixes

---

## Section 4: Validation & Gates

### 4.1 Definition of Done

**This EPIC is complete when:**

1. ✅ **Structure Complete**
   - [ ] All directories exist per Phase 1 spec
   - [ ] Navigation files (CLAUDE.md, MRD.md, README.md) created

2. ✅ **SoT Library Complete**
   - [ ] All 11 SoT files created
   - [ ] Each has template structure
   - [ ] Each has at least one example ID

3. ✅ **Templates Complete**
   - [ ] MRD, README, CLAUDE templates exist
   - [ ] EPIC template adapted for GHM-M
   - [ ] All SoT file templates created

4. ✅ **Tools Configured**
   - [ ] ID registry includes all GHM-M prefixes
   - [ ] Tool config JSON created
   - [ ] Validation scripts copied/configured

5. ✅ **Documentation Complete**
   - [ ] MRD lifecycle documented
   - [ ] ID system documented
   - [ ] Getting started guide exists
   - [ ] GHM-M principles guide exists

6. ✅ **Self-Application**
   - [ ] This EPIC tracked all work
   - [ ] Session protocols followed
   - [ ] Section 3A tracks all IDs created
   - [ ] VAL-000 documents dogfooding

### 4.2 Quality Checklist

- [ ] All file names follow GHM-M conventions
- [ ] Terminology consistent (MRD not PRD, practitioners not users)
- [ ] All ID prefixes documented in registry
- [ ] Links use correct paths
- [ ] Markdown formatting valid
- [ ] No references to old GHM IDs in GHM-M files

### 4.3 Validation Methods

**How we validate foundation quality:**

1. **Structural Validation**
   - Run: `find GHM-M/ -type f -name "*.md" | wc -l` (expect 25+ files)
   - Verify all SoT files exist

2. **ID Validation**
   - Check: Each SoT file has at least one example ID
   - Check: ID registry lists all 13 prefixes

3. **Tool Validation**
   - Run: `python tools/validate_sessions.py GHM-M/active/epics/EPIC-01-foundation.md`
   - Verify: No errors, session state valid

4. **Self-Application Validation**
   - This EPIC demonstrates all GHM-M patterns
   - Section 0: Session protocols
   - Section 3A: ID tracking
   - Uses adapted terminology throughout

### 4.4 Gate Criteria

**Before closing this EPIC:**

- [ ] All 30 issues marked complete
- [ ] All checklists in Section 4.1 checked
- [ ] Quality checklist (4.2) passes
- [ ] Validation methods (4.3) pass
- [ ] Session State (Section 0) updated with final handoff
- [ ] All IDs in Section 3A created and documented
- [ ] VAL-000 case study written

---

## Section 5: Notes & Context

### 5.1 Key Decisions

**Decision Log:**

1. **Use adapted terminology from day one**
   - Date: 2025-12-26
   - Rationale: Avoid rework and confusion from migration
   - Impact: All files use GHM-M terminology immediately

2. **Create pilot EPIC first**
   - Date: 2025-12-26
   - Rationale: Demonstrate GHM-M principles from the start
   - Impact: This EPIC tracks foundation implementation

3. **Position as GHM-M (variant)**
   - Date: 2025-12-26
   - Rationale: Extension of GHM, not replacement
   - Impact: Preserved original GHM for reference

### 5.2 Dependencies

**External Dependencies:**
- Original GHM documentation in `PRD-driven-context-engineering/` (for reference)
- Session protocols from CLAUDE.md Section 10 (methodology-agnostic)

**Internal Dependencies:**
- None (bootstrap EPIC)

### 5.3 Risks & Mitigations

| Risk | Impact | Probability | Mitigation |
|------|--------|-------------|------------|
| Too many new concepts at once | Confusion | Medium | Strong documentation, examples in each SoT file |
| Tools don't recognize new IDs | Broken automation | Low | Config file approach, test early |
| Terminology inconsistency | Poor practitioner experience | Medium | Review checklist, find/replace validation |

### 5.4 Lessons for Future EPICs

**What we're learning:**
- (To be filled as we implement)
- How well session protocols work in practice
- Whether ID tracking scales to 20+ IDs in one EPIC
- Effectiveness of adapted terminology

### 5.5 Related Resources

**Implementation References:**
- `GHM_ADAPTATION_FOR_METHODOLOGY.md` - Adaptation recommendations
- `GHM_M_IMPLEMENTATION_PLAN.md` - Detailed 6-phase plan
- `PRD-driven-context-engineering/CLAUDE.md#10-session-protocols` - Session protocols

**Original GHM:**
- `PRD-driven-context-engineering/` - Reference implementation
- Original templates and examples

---

## Section 6: Communication & Handoffs

### 6.1 Stakeholders

| Role | Person/Team | Interest | Communication |
|------|-------------|----------|---------------|
| Methodology Author | User | Owner, primary practitioner | Active in this session |
| AI Agent | Claude Sonnet 4.5 | Implementation | Following session protocols |

### 6.2 Status Updates

**Update Frequency:** After each phase completion

**Update Format:**
- Phase completed
- IDs created
- Next phase starting
- Any blockers

### 6.3 Handoff Notes

**For Next Session:**
- All issues in Section 2 are sequenced
- Start with Issue 1.2 (Create CLAUDE.md)
- Follow session protocols (update Section 0)
- Track all IDs in Section 3A as created

---

**EPIC Created:** 2025-12-26
**Current Status:** In Progress (Plan → Build transition)
**Next Review:** After Phase 1 completion
