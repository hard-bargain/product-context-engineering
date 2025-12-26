# Adapting GHM for Methodology Development

**Created:** 2025-12-26
**Purpose:** Recommendations for adapting Gear Heart Methodology (GHM) to develop a new methodology (not a product)
**Branch:** `claude/resume-documentation-update-Nwwt4`

---

## Executive Summary

This document outlines how to adapt GHM—originally designed for **product development**—to support **methodology development**. The core challenge is that GHM's lifecycle, ID system, and SoT templates assume building software products, but we're building a framework/methodology/process.

**Core Insight:** The meta-application of GHM to develop methodologies is perfectly aligned with GHM's philosophy. We're not building "features" and "APIs"—we're building "patterns," "templates," and "practitioner journeys."

---

## Key Differences: Product vs. Methodology

| Aspect | Product Development | Methodology Development |
|--------|-------------------|------------------------|
| **Output** | Working software | Documentation, templates, patterns, workflows |
| **"Users"** | End users of software | Practitioners who adopt the methodology |
| **"Features"** | Capabilities (login, checkout) | Patterns, components, templates, guidelines |
| **"APIs"** | Technical interfaces | Integration points, hooks, extension patterns |
| **"Deployment"** | Code to production | Publication, distribution, community adoption |
| **"Market Adoption"** | Paying customers | Real-world practitioners using it |
| **Validation** | Unit/integration tests | Case studies, validation by practitioners |

---

## Recommended Adaptations

### 1. PRD → MRD (Methodology Requirements Document)

**Change:** Rename `PRD.md` to `MRD.md` (Methodology Requirements Document)

**Content Adaptation:**
- **Instead of:** Product vision, target users, features
- **Use:** Methodology vision, target practitioners, patterns/components

**MRD Structure:**
```markdown
# {Methodology Name} MRD

## Vision
The problem this methodology solves for practitioners

## Target Practitioners
- Who will use this methodology?
- What are their current pain points?
- What's their context (team size, industry, maturity)?

## Methodology Scope
What patterns, templates, and workflows are included

## Differentiation
How this differs from existing methodologies

## Success Metrics
- Adoption: How many practitioners use it?
- Effectiveness: Does it solve their problems?
- Evolution: How does it improve over time?
```

---

### 2. Lifecycle Adaptation: v0.1 → v1.0

The PRD lifecycle needs reframing for methodology development:

| Stage | Original (Product) | Adapted (Methodology) | Key Question |
|-------|-------------------|----------------------|--------------|
| **v0.1 Spark** | Problem + outcomes | Methodology hypothesis | What problem does this methodology solve? |
| **v0.2 Market Definition** | Market segments + TAM | Practitioner definition | Who will use this and why? |
| **v0.3 Commercial Model** | Monetization + pricing | Adoption model | How does it spread? (Open source? Paid training? Community?) |
| **v0.4 Practitioner Journeys** | User journeys | Practitioner adoption paths | How does someone adopt and use this? |
| **v0.5 Red Team Review** | Product risks | Methodology validation | What could go wrong? What misuses? What gaps? |
| **v0.6 Architecture** | Technical stack | Methodology structure | What are the core components, patterns, templates? |
| **v0.7 Build Execution** | Feature development | Documentation + template creation | Build the methodology artifacts |
| **v0.8 Publication** | Deployment & ops | Distribution strategy | How do we publish and distribute this? |
| **v0.9 Community Building** | Go-to-market | Adoption + community | How do we build a community of practice? |
| **v1.0 Evolution** | Market adoption | Real-world refinement | How does it evolve based on practitioner feedback? |

---

### 3. ID System Adaptation

Adapt the ID prefixes to methodology concepts:

| Original ID | Product Context | Adapted ID | Methodology Context | Example |
|-------------|----------------|------------|---------------------|---------|
| **UJ-XXX** | User Journey | **PJ-XXX** | Practitioner Journey | PJ-001: First-time methodology adoption |
| **BR-XXX** | Business Rule | **MP-XXX** | Methodology Principle | MP-001: Reference, don't duplicate |
| **API-XXX** | API Contract | **PAT-XXX** | Pattern | PAT-001: ID-based knowledge graph |
| **DBT-XXX** | Database Table | **TEMP-XXX** | Template | TEMP-001: EPIC template |
| **TEST-XXX** | Test Case | **VAL-XXX** | Validation / Case Study | VAL-001: GHM applied to SaaS startup |
| **DEP-XXX** | Deployment | **PUB-XXX** | Publication Channel | PUB-001: GitHub repository |
| **DES-XXX** | Design Component | **COMP-XXX** | Methodology Component | COMP-001: 3+1+SoT+Temp stack |
| **CFD-XXX** | Customer Feedback | **PF-XXX** | Practitioner Feedback | PF-001: "Need clearer onboarding docs" |
| **GTM-XXX** | Go-to-market | **COM-XXX** | Community Initiative | COM-001: Launch blog series |
| **KPI-XXX** | Success Metric | **KPI-XXX** | ✅ Keep (still measuring success) | KPI-001: Adoption rate |

**New IDs Needed:**
- **WF-XXX** - Workflow (e.g., WF-001: PRD Version Lifecycle)
- **GUIDE-XXX** - Guide Document (e.g., GUIDE-001: Getting Started)
- **TOOL-XXX** - Automation Tool (e.g., TOOL-001: validate_sessions.py)

---

### 4. SoT Library Adaptation

Rename and repurpose SoT files:

| Original File | Product Context | Adapted File | Methodology Context |
|--------------|----------------|--------------|---------------------|
| `USER_JOURNEYS.md` | User flows | `PRACTITIONER_JOURNEYS.md` | How practitioners adopt and use the methodology |
| `BUSINESS_RULES.md` | Domain constraints | `METHODOLOGY_PRINCIPLES.md` | Core rules and guidelines of the methodology |
| `API_CONTRACTS.md` | API specs | `PATTERNS.md` | Reusable methodology patterns |
| `ACTUAL_SCHEMA.md` | Database schema | `TEMPLATES.md` | Templates and document structures |
| `testing_playbook.md` | Test specifications | `VALIDATION.md` | Case studies, validation evidence |
| `deployment_playbook.md` | Deploy configs | `PUBLICATION.md` | Distribution channels and strategies |
| `customer_feedback.md` | User feedback | `PRACTITIONER_FEEDBACK.md` | Feedback from methodology users |

**New SoT Files:**
- `WORKFLOWS.md` - Documented workflows (WF-XXX)
- `GUIDES.md` - How-to guides (GUIDE-XXX)
- `TOOLS.md` - Automation tools and scripts (TOOL-XXX)
- `COMPONENTS.md` - Core methodology components (COMP-XXX)

---

### 5. EPIC Adaptation

EPICs can largely remain the same, but scope changes:

**Product EPIC Example:**
- EPIC-03: Implement user authentication

**Methodology EPIC Example:**
- EPIC-03: Document session protocol patterns
- EPIC-05: Create practitioner onboarding guide
- EPIC-07: Build validation framework with case studies

**EPIC Structure:** Same (Section 0-4), but:
- Section 2 (Issues) might be "documentation tasks" instead of "features"
- Section 3A (ID Tracking) tracks creation/modification of PJ, MP, PAT, TEMP, VAL IDs
- Section 4 (Validation) might include "peer review" instead of "unit tests"

---

### 6. Navigation Files Adaptation

#### CLAUDE.md → Mostly Unchanged
- Still instructs AI agents on how to work
- References MRD instead of PRD
- References adapted SoT files (PRACTITIONER_JOURNEYS.md, etc.)

#### MRD.md (formerly PRD.md)
- Follows MRD structure (see Section 1)
- Progressive lifecycle v0.1 → v1.0 adapted to methodology stages

#### README.md → Mostly Unchanged
- Still shows current status, active EPIC, metrics
- Links to MRD and SoT library

---

### 7. Testing/Validation Adaptation

**Product Context:** Unit tests, integration tests, E2E tests
**Methodology Context:**

| Validation Type | Purpose | Example |
|----------------|---------|---------|
| **Case Studies** | Real-world application | VAL-001: SaaS startup applied methodology successfully |
| **Peer Review** | Expert validation | VAL-002: Reviewed by 3 methodology experts |
| **Pilot Programs** | Beta testing with practitioners | VAL-003: 5 teams piloted v0.6 |
| **Documentation Tests** | Completeness checks | Ensure all PAT-XXX have examples |
| **Internal Dogfooding** | Use it to develop itself | This project is VAL-000: GHM developing GHM adaptation |

---

### 8. Temp Files → Same Concept

Temp files still work the same way:
- Scratchpads for exploration
- Must be harvested into SoT before archiving
- Short-lived, not durable

**Examples:**
- `temp/pattern-brainstorm.md` → Extract to `PATTERNS.md` (PAT-XXX)
- `temp/practitioner-interview-notes.md` → Extract to `PRACTITIONER_FEEDBACK.md` (PF-XXX)

---

## Recommended Approach: Hybrid GHM

**Proposal:** Don't completely replace GHM—extend it.

Create a **"GHM for Methodology Development"** variant that:
1. **Keeps the core:** 3+1+SoT+Temp stack, ID system, session protocols
2. **Adapts the specifics:** Lifecycle stages, ID prefixes, SoT file names
3. **Documents the adaptation:** Make it a reference implementation

This means:
- You're using GHM to build GHM-M (GHM for Methodologies)
- GHM-M becomes a validated extension of GHM
- You prove GHM is flexible enough for non-product contexts

---

## Meta-Application: Using GHM to Build This Adaptation

**The beautiful recursion:** We can use current GHM to develop the adapted methodology.

**Approach:**
1. **v0.1-v0.5:** Use standard GHM with product terminology
   - Treat the "methodology" as the "product"
   - CFD-XXX = Practitioner feedback (acceptable overlap)
   - UJ-XXX = Practitioner journeys (acceptable temporary mapping)

2. **v0.6:** Define the adapted structure
   - Create the new ID system
   - Define new SoT file structure
   - Document the adaptation patterns

3. **v0.7:** Build the adapted artifacts
   - Migrate to new ID prefixes
   - Create adapted templates
   - Document workflows

4. **v0.8-v1.0:** Publish and refine
   - Use new structure
   - Validate with real practitioners
   - Evolve based on feedback

---

## Quick Reference: Terminology Mapping

| When GHM Says... | For Methodology, Think... |
|-----------------|--------------------------|
| Product | Methodology |
| User | Practitioner |
| Feature | Pattern / Component |
| User Journey | Practitioner Journey |
| Business Rule | Methodology Principle |
| API | Pattern / Integration Point |
| Database | Template / Document Structure |
| Test | Validation / Case Study |
| Deploy | Publish / Distribute |
| Market | Community |
| Customer Feedback | Practitioner Feedback |

---

## Risk Considerations

### Risk 1: Over-Complication
**Concern:** Adapting GHM might make it too complex for the use case.
**Mitigation:** Start simple, adopt incrementally. Don't create PJ-XXX IDs until you need them.

### Risk 2: Terminology Confusion
**Concern:** Mixing product and methodology terms could confuse contributors.
**Mitigation:** Create a glossary. Be explicit in CLAUDE.md about the adaptation.

### Risk 3: Tools Won't Work
**Concern:** GHM automation tools (validate_sessions.py, generate_visuals.py) assume product IDs.
**Mitigation:**
- Tools are ID-agnostic (they just parse markdown)
- Update tool configs to recognize new ID prefixes
- Document in `tools/README.md`

### Risk 4: Losing GHM Benefits
**Concern:** Changing too much might break what makes GHM work.
**Mitigation:** Keep the core intact (3+1+SoT+Temp, session protocols, gates). Only adapt terminology and ID prefixes.

---

## Success Criteria for Adaptation

The adaptation is successful if:
- ✅ We can apply GHM principles to methodology development
- ✅ The 3+1+SoT+Temp stack still provides value
- ✅ ID-based knowledge graph works for methodology concepts
- ✅ Session protocols enable continuity across sessions
- ✅ The adaptation is itself a validation of GHM's flexibility
- ✅ We can document the adaptation as a reference implementation

---

## Next Steps

After reviewing and approving this adaptation recommendation:

1. **Create Implementation Plan**
   - Specific file migrations
   - ID system setup
   - Template creation
   - Tool configuration

2. **Pilot the Adaptation**
   - Start with v0.1 (Spark)
   - Use hybrid approach (current GHM + adaptation notes)
   - Validate at each gate

3. **Document as We Go**
   - Use session protocols to maintain continuity
   - Track all adaptations in EPICs
   - Create "GHM-M" as a methodology variant

---

## Appendix: Example MRD Outline

```markdown
---
title: "{New Methodology Name} MRD"
version: "0.1"
status: "Spark"
updated: "2025-12-26"
---

# {Methodology Name} — Methodology Requirements Document

## Vision
[The problem this methodology solves]

## Target Practitioners
### Primary Audiences
- [Audience 1: Description]
- [Audience 2: Description]

### Pain Points Addressed
- [Pain point 1]
- [Pain point 2]

## Methodology Overview
[High-level description of the approach]

### Core Components (COMP-XXX)
- COMP-001: [Component name and description]
- COMP-002: [Component name and description]

### Key Patterns (PAT-XXX)
- PAT-001: [Pattern name and description]
- PAT-002: [Pattern name and description]

### Methodology Principles (MP-XXX)
- MP-001: [Principle statement]
- MP-002: [Principle statement]

## Differentiation
### Compared to [Existing Methodology A]
[How we differ]

### Compared to [Existing Methodology B]
[How we differ]

## Adoption Model
[How practitioners discover, adopt, and spread this methodology]

## Success Metrics (KPI-XXX)
- KPI-001: Practitioner adoption rate
- KPI-002: Methodology effectiveness score
- KPI-003: Community engagement

## Validation Strategy (VAL-XXX)
- VAL-001: Case study with [Organization/Team]
- VAL-002: Peer review by [Expert]
- VAL-003: Pilot program with 5 teams

## Evolution Roadmap
[How the methodology will evolve through v0.1 → v1.0]
```

---

**End of Recommendations**

**Status:** Ready for review and feedback
**Next:** Implementation plan based on approved adaptations
