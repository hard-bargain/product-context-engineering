---
title: "GHM-M: Methodology Requirements Document"
version: "0.1"
status: "Spark"
created: "2025-12-26"
updated: "2025-12-26"
lifecycle_stage: "v0.1 Spark"
---

# GHM-M — Methodology Requirements Document

> **GHM-M**: Gear Heart Methodology for Methodologies
>
> **Purpose**: Adapt GHM (designed for product development) to support methodology development
>
> **Status**: v0.1 Spark — Initial problem definition and vision

---

## Metadata

| Field | Value |
|-------|-------|
| **Version** | v0.1 (Spark) |
| **Status** | Active Development |
| **Target Practitioners** | Methodology developers, framework creators, process designers |
| **Created** | 2025-12-26 |
| **Last Updated** | 2025-12-26 |
| **Active EPIC** | EPIC-01: Foundation Setup |

---

## Version History

| Version | Date | Focus | Key Deliverables | Status |
|---------|------|-------|------------------|--------|
| **v0.1** | 2025-12-26 | Spark | Problem statement, vision, initial scope | 🔄 In Progress |
| v0.2 | TBD | Practitioner Definition | Target audiences, pain points | Pending |
| v0.3 | TBD | Adoption Model | How methodology spreads | Pending |
| v0.4 | TBD | Practitioner Journeys | Adoption paths | Pending |
| v0.5 | TBD | Validation | Risk assessment | Pending |
| v0.6 | TBD | Methodology Structure | Components, patterns, templates | Pending |
| v0.7 | TBD | Documentation Creation | Build methodology artifacts | Pending |
| v0.8 | TBD | Publication | Distribution strategy | Pending |
| v0.9 | TBD | Community Building | Adoption & engagement | Pending |
| v1.0 | TBD | Evolution | Real-world refinement | Pending |

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
- [ ] Problem clearly articulated
- [ ] Vision documented
- [ ] Initial scope defined
- [ ] Target practitioners identified
- [ ] Foundation infrastructure established (directory structure, navigation files, SoT templates)
- [ ] First EPIC (EPIC-01) tracks foundation work

**Future Metrics (v0.2+):**
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

**Referenced IDs (from EPIC-01):**
- EPIC-01: Foundation Setup
- VAL-000: GHM-M Dogfooding Case Study (in progress)

**Planned IDs (to be created):**
- MP-001: Reference, don't duplicate
- PAT-001: ID-based knowledge graph
- COMP-001: 3+1+SoT+Temp stack
- PJ-001: First-time methodology adoption
- (See EPIC-01 Section 3A for full list)

---

## Next Steps

**Immediate (v0.1 completion):**
1. Complete foundation setup (EPIC-01)
2. Create all 11 SoT files with templates
3. Document core IDs (MP, PAT, COMP)
4. Initialize getting started guide

**Near-term (v0.2):**
1. Define target practitioners in detail
2. Map practitioner pain points
3. Create first practitioner journey (PJ-001)
4. Gather initial practitioner feedback

**Future (v0.3+):**
1. Define adoption model
2. Build out pattern library
3. Create validation framework
4. Develop publication strategy

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
