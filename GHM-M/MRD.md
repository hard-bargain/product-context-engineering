---
title: "GHM-M: Methodology Requirements Document"
version: "0.1 → 0.4"
status: "Foundation"
created: "2025-12-26"
updated: "2025-12-26"
lifecycle_stage: "v0.1 Complete → v0.4 In Progress"
---

# GHM-M — Methodology Requirements Document

> **GHM-M**: Gear Heart Methodology for Methodologies
>
> **Purpose**: Adapt GHM (designed for product development) to support methodology development
>
> **Status**: v0.1 Spark Complete ✅ — v0.4 Foundation In Progress 🔄

---

## Metadata

| Field | Value |
|-------|-------|
| **Version** | v0.1 Complete → v0.4 In Progress |
| **Status** | Active Development |
| **Target Practitioners** | Methodology developers, framework creators, process designers |
| **Created** | 2025-12-26 |
| **Last Updated** | 2025-12-26 |
| **Active EPIC** | EPIC-01: Foundation Setup (90% complete) |
| **Total IDs** | 21 IDs across 11 SoT files |
| **Templates** | 15 templates created |
| **Documentation** | 4 major docs complete |

---

## Version History

| Version | Date | Focus | Key Deliverables | Status |
|---------|------|-------|------------------|--------|
| **v0.1** | 2025-12-26 | Spark | Problem statement, vision, initial scope, foundation complete | ✅ Complete |
| v0.4 | TBD | Foundation | Full SoT library, templates, tools, documentation | 🔄 In Progress |
| v0.6 | TBD | Validation | Case studies, practitioner feedback, refinement | Pending |
| v0.8 | TBD | Polish | Complete guides, cross-reference validation | Pending |
| v1.0 | TBD | Launch | Published, community engagement, adoption tracking | Pending |

---

## Executive Summary

**The Problem:**
GHM (Gear Heart Methodology) is designed for product development—building software with features, APIs, databases, and deployments. However, there's a need to apply GHM's principles to **methodology development**: creating frameworks, patterns, templates, and documentation systems.

**The Solution:**
GHM-M (GHM for Methodologies) adapts GHM's core principles—3+1+SoT+Temp stack, ID-based knowledge graph, session protocols—to methodology contexts. Instead of building "products" with "APIs," we build "methodologies" with "patterns."

**The Opportunity:**
Prove that GHM is flexible enough to develop non-product artifacts, validate the meta-application of GHM (using it to develop itself), and create a reference implementation for others developing methodologies.

---

## v0.1: Spark

### 1. Problem Statement

**The Core Challenge:**
Existing methodology development approaches suffer from the same context fragmentation problems that GHM solves for products:
- Documentation sprawl across tools (Google Docs, Notion, wikis)
- Methodology components documented in isolation without clear relationships
- No systematic approach to validate methodology effectiveness
- Difficult to hand off methodology development across sessions or contributors

**Specific Pain Points:**
1. **Terminology Mismatch**: GHM uses product terms (PRD, user journeys, APIs, deployment) that don't translate to methodology development
2. **ID System Doesn't Map**: Business rules (BR-XXX) and API contracts (API-XXX) are product-specific
3. **Validation Approaches Differ**: Unit tests don't make sense for methodologies—need case studies and practitioner feedback
4. **Lifecycle Stages Don't Fit**: "Deployment" and "Go-to-Market" need reframing for methodology publication and community building

### 2. Vision

**What GHM-M Enables:**
A systematic, ID-based approach to developing methodologies that:
- Maintains all benefits of GHM (ID-based knowledge graph, session protocols, progressive documentation)
- Uses terminology that reflects methodology development (patterns, practitioners, validation, publication)
- Provides clear lifecycle from spark (v0.1) to real-world evolution (v1.0)
- Serves as both a methodology AND a validation case study (dogfooding)

**Success Looks Like:**
- Methodology developers can adopt GHM-M to structure their work
- All methodology artifacts (patterns, principles, templates, guides) are ID-tracked
- Session protocols enable continuity across development sessions
- Validation through real-world practitioner adoption
- The methodology itself demonstrates its effectiveness (VAL-000: Dogfooding)

### 3. Initial Scope

**In Scope for GHM-M:**
- Adapted terminology (MRD instead of PRD, practitioners instead of users, etc.)
- New ID system (PJ, MP, PAT, TEMP, VAL, PUB, PF, WF, GUIDE, TOOL, COMP)
- Restructured SoT library (PRACTITIONER_JOURNEYS, METHODOLOGY_PRINCIPLES, PATTERNS, etc.)
- Adapted lifecycle (v0.1-v1.0 reframed for methodology context)
- Validation approaches (case studies, peer review, pilot programs, dogfooding)

**Out of Scope:**
- Changing core GHM principles (3+1+SoT+Temp stack preserved)
- Modifying session protocols (methodology-agnostic, kept as-is)
- Creating a completely new methodology (this is a GHM variant)

### 4. Target Practitioners

**Primary Audiences:**
1. **Methodology Developers**: People creating frameworks, processes, or systematic approaches
2. **Framework Creators**: Those building reusable patterns for teams or organizations
3. **Process Designers**: Individuals designing workflows and operational procedures
4. **Documentation Architects**: Those structuring large-scale documentation systems

**Secondary Audiences:**
5. **Product Methodologists**: Those who might apply GHM-M to extend/adapt GHM itself
6. **Academic Researchers**: Studying methodology development and knowledge management

### 5. Success Metrics (v0.1)

**At this stage (Spark), success means:**
- [x] Problem clearly articulated
- [x] Vision documented
- [x] Initial scope defined
- [x] Target practitioners identified
- [x] Foundation infrastructure established (directory structure, navigation files, SoT templates)
- [x] First EPIC (EPIC-01) tracks foundation work
- [x] All 21 initial IDs created across 11 SoT files
- [x] 15 templates created for practitioners
- [x] 3 tools configured (validator, config, registry)
- [x] 4 comprehensive docs (lifecycle, ID system, getting started, principles)

**v0.1 Spark: ACHIEVED ✅** (2025-12-26)

**Future Metrics (v0.4+):**
- Number of practitioners adopting GHM-M
- Case studies validating effectiveness
- Community engagement (contributions, feedback)
- Evolution based on practitioner needs

### 6. Open Questions

**Questions to Answer in v0.2+:**
1. What specific pain points do methodology developers face that GHM-M uniquely solves?
2. How do practitioners discover and evaluate methodologies?
3. What's the minimal viable adoption path for GHM-M?
4. How should we validate methodology effectiveness beyond dogfooding?
5. What distribution channels will reach target practitioners?

### 7. Constraints & Assumptions

**Constraints:**
- Must preserve GHM core principles (not creating new methodology from scratch)
- Must coexist with original GHM (both can be referenced)
- Must follow session protocols (demonstrate compliance from day one)

**Assumptions:**
- Methodology development has similar context fragmentation problems as product development
- ID-based knowledge graphs work for methodology artifacts
- Practitioners will value systematic approach over ad-hoc documentation
- The meta-application (GHM developing GHM-M) is valuable validation

### 8. Related IDs

**Core Principles (Created):**
- [MP-001](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001): Reference, don't duplicate
- [MP-002](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002): Progressive documentation
- [MP-003](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003): ID-based context

**Core Patterns (Created):**
- [PAT-001](active/source_of_truth/PATTERNS.md#pat-001): ID-based knowledge graph
- [PAT-002](active/source_of_truth/PATTERNS.md#pat-002): Progressive documentation
- [PAT-003](active/source_of_truth/PATTERNS.md#pat-003): Session protocols

**Core Components (Created):**
- [COMP-001](active/source_of_truth/COMPONENTS.md#comp-001): 3+1+SoT+Temp stack
- [COMP-002](active/source_of_truth/COMPONENTS.md#comp-002): ID system (13 prefixes)
- [COMP-003](active/source_of_truth/COMPONENTS.md#comp-003): Session protocols

**Templates (Created):**
- [TEMP-001](active/source_of_truth/TEMPLATES.md#temp-001): EPIC template
- [TEMP-002](active/source_of_truth/TEMPLATES.md#temp-002): MRD template

**Workflows (Created):**
- [WF-001](active/workflows/MRD_VERSION_LIFECYCLE.md): MRD version lifecycle
- [WF-002](active/source_of_truth/WORKFLOWS.md#wf-002): EPIC lifecycle

**Guides (Created):**
- [GUIDE-001](docs/getting_started.md): Getting started with GHM-M

**Tools (Created):**
- [TOOL-001](tools/validate_sessions.py): Session state validator
- [TOOL-002](active/source_of_truth/TOOLS.md#tool-002): ID extraction utilities (planned)
- [TOOL-003](tools/config/ghm_m_config.yaml): GHM-M configuration

**Practitioner Journeys (Created):**
- [PJ-001](active/source_of_truth/PRACTITIONER_JOURNEYS.md#pj-001): First-time methodology adoption

**Validation (Created):**
- [VAL-000](active/source_of_truth/VALIDATION.md#val-000): GHM-M Dogfooding (in progress)

**Publication (Created):**
- [PUB-001](active/source_of_truth/PUBLICATION.md#pub-001): GitHub repository

**Practitioner Feedback (Template Created):**
- [PF-001](active/source_of_truth/PRACTITIONER_FEEDBACK.md#pf-001): Feedback template structure

**Active EPIC:**
- [EPIC-01](active/epics/EPIC-01-foundation.md): Foundation Setup (90% complete)

---

## Next Steps

**Immediate (v0.4 Foundation - In Progress):**
1. [x] Complete foundation setup (EPIC-01 Phases 1-5)
2. [x] Create all 11 SoT files with initial IDs
3. [x] Document core IDs (MP, PAT, COMP)
4. [x] Create getting started guide (GUIDE-001)
5. [x] Create comprehensive documentation (4 major docs)
6. [ ] Finalize EPIC-01 and document VAL-000
7. [ ] Begin first pilot/validation beyond meta-application

**Near-term (v0.6 Validation):**
1. Create additional case studies (VAL-001, VAL-002, VAL-003)
2. Gather practitioner feedback (PF-XXX entries)
3. Refine patterns and principles based on validation
4. Expand practitioner journey documentation
5. Test methodology with external practitioners

**Future (v0.8+ Polish & Launch):**
1. Complete all planned guides
2. Validate all cross-references
3. Finalize publication strategy
4. Execute launch and track adoption
5. Iterate based on community feedback

---

## References

**Foundation Documents:**
- [GHM Adaptation Recommendations](../GHM_ADAPTATION_FOR_METHODOLOGY.md)
- [GHM-M Implementation Plan](../GHM_M_IMPLEMENTATION_PLAN.md)
- [EPIC-01: Foundation Setup](active/epics/EPIC-01-foundation.md)

**Original GHM:**
- [GHM Repository](../PRD-driven-context-engineering/)
- [GHM CLAUDE.md](../PRD-driven-context-engineering/CLAUDE.md)
- [GHM PRD Lifecycle](../PRD-driven-context-engineering/methodology/workflows/PRD_VERSION_LIFECYCLE.md)

---

**MRD Version:** v0.1 (Spark)
**Status:** Active Development
**Last Updated:** 2025-12-26
