# Practitioner Journeys

> **ID Prefix:** PJ-XXX
>
> **Purpose:** Map how practitioners discover, adopt, and apply this methodology
>
> **Last Updated:** 2025-12-26

---

## Overview

Practitioner journeys document the paths that methodology users take from discovery through mastery. Unlike user journeys (which track product usage), practitioner journeys focus on methodology adoption, learning, and evolution.

---

## PJ-001: First-Time Methodology Adoption

**ID:** PJ-001
**Status:** Active
**Created:** 2025-12-26
**Last Updated:** 2025-12-26

### Practitioner Profile
**Type:** Methodology Developer / Framework Creator
**Context:** Developing a new methodology or framework, struggling with documentation sprawl and context fragmentation
**Current Pain Points:**
- Documentation scattered across multiple tools
- No systematic way to track methodology components
- Difficult to hand off work across sessions or team members
- Validation approaches unclear

### Journey Stages

#### 1. Discovery
**How they find GHM-M:**
- Searching for "methodology development framework"
- Looking for solutions to documentation sprawl
- Seeking systematic approach to methodology validation
- Referred by someone using GHM for product development

**Key Questions:**
- Is this applicable to my methodology type?
- How much overhead does this add?
- Can I adopt incrementally?

#### 2. Evaluation
**How they assess fit:**
- Read MRD.md to understand vision and scope
- Review adaptation recommendations to see differences from GHM
- Check implementation plan to understand effort required
- Look for case studies or validation evidence

**Decision Criteria:**
- Matches their methodology development needs
- Reasonable adoption path (not all-or-nothing)
- Clear documentation and examples
- Active maintenance and community

#### 3. Adoption
**How they start using it:**
- Clone or fork the GHM-M repository
- Create their own methodology directory structure
- Initialize MRD.md with their methodology vision (v0.1)
- Create first EPIC to track methodology development work

**Common Approaches:**
- **Minimal Start:** Just use 3+1+SoT+Temp structure, add IDs later
- **Full Adoption:** Implement all 11 SoT files from day one
- **Hybrid:** Start with core files (PRINCIPLES, PATTERNS, COMPONENTS), expand as needed

#### 4. Mastery
**How they become proficient:**
- Complete first methodology lifecycle (v0.1 → v0.6+)
- Create 50+ methodology IDs across multiple types
- Use session protocols consistently across multiple EPICs
- Contribute improvements or extensions back to GHM-M

**Indicators of Mastery:**
- Can explain GHM-M to others clearly
- Adapt GHM-M patterns for their specific methodology needs
- Generate validation evidence (case studies, practitioner feedback)
- No longer reference documentation frequently

#### 5. Evolution
**How they adapt and extend:**
- Create custom ID prefixes for their methodology-specific concepts
- Develop methodology-specific validation approaches
- Build tools or automation on top of GHM-M
- Share patterns and learnings with community

### Pain Points Addressed

**By GHM-M:**
- ✅ **Documentation Sprawl:** 3+1+SoT+Temp structure provides clear organization
- ✅ **Context Fragmentation:** ID-based knowledge graph maintains relationships
- ✅ **Session Continuity:** Session protocols enable handoffs across work sessions
- ✅ **Validation Gaps:** Structured approach to case studies and practitioner feedback
- ✅ **Terminology Mismatch:** Adapted IDs (PJ, MP, PAT) fit methodology context

**Remaining Challenges:**
- ⚠️ Initial learning curve (understanding GHM-M concepts)
- ⚠️ Discipline required (maintaining SoT files, following protocols)
- ⚠️ Validation effort (creating case studies, gathering practitioner feedback)

### Success Metrics

**Early Success (v0.1-v0.3):**
- Practitioner has clear methodology vision documented
- Directory structure established
- First 10-15 IDs created

**Intermediate Success (v0.4-v0.7):**
- 30+ IDs across multiple types
- At least one complete EPIC demonstrating session protocols
- Initial validation evidence gathered

**Long-term Success (v0.8-v1.0):**
- Methodology published and distributed
- Real-world practitioners using the methodology
- Feedback loop established for continuous improvement

### Related IDs

**Methodology Principles:**
- MP-001: Reference, don't duplicate
- MP-002: Progressive documentation
- MP-003: ID-based context

**Patterns:**
- PAT-001: ID-based knowledge graph
- PAT-003: Session protocols

**Components:**
- COMP-001: 3+1+SoT+Temp stack
- COMP-002: ID system

**Guides:**
- GUIDE-001: Getting started guide

**Validation:**
- VAL-000: GHM-M dogfooding case study

### Example Artifacts

**MRD Snippet (v0.1):**
```markdown
## Problem Statement
My methodology for [X] suffers from documentation sprawl across
Google Docs, Notion, and email. GHM-M provides a structured approach
to organize methodology artifacts with ID-based cross-references.
```

**First EPIC:**
```markdown
# EPIC-01: Methodology Foundation

## Section 0: Session State
- Building methodology for [X]
- Using GHM-M structure
- Created MP-001, MP-002, MP-003 (core principles)
```

### Journey Map

```
Discovery → Evaluation → Adoption → Mastery → Evolution
    ↓          ↓           ↓           ↓          ↓
  Search    Review     Initialize   Build      Extend
  "method   MRD.md     directory   50+ IDs    custom
   dev              structure              patterns
  framework"
    ↓          ↓           ↓           ↓          ↓
  1 week    2-3 days   1-2 weeks   2-3 months  Ongoing
```

### Optimization Opportunities

**To Improve Adoption:**
- Provide more worked examples beyond VAL-000
- Create video walkthrough of first methodology setup
- Template for common methodology types (process design, framework development)
- Checklist for "am I using GHM-M correctly?"

**To Improve Mastery:**
- Advanced patterns documentation
- Case studies of different methodology types
- Community of practice for sharing learnings
- Office hours or support channel

---

## Future Practitioner Journeys

**PJ-002:** Team-Based Methodology Development (Planned)
- Multiple contributors
- Handoffs and collaboration patterns
- Review and approval workflows

**PJ-003:** Methodology Evolution and Maintenance (Planned)
- Updating existing methodology to v2.0+
- Managing breaking changes
- Deprecating old patterns

**PJ-004:** Teaching GHM-M to Others (Planned)
- Onboarding new team members
- Training and workshops
- Documentation creation

---

**Total Journeys:** 1 active, 3 planned
**Last Review:** 2025-12-26
**Next Review:** After gathering practitioner feedback (v0.9+)
