# Methodology Principles

> **ID Prefix:** MP-XXX
>
> **Purpose:** Define core principles and guidelines that govern the methodology
>
> **Last Updated:** 2025-12-26

---

## Overview

Methodology principles are the foundational rules and guidelines that define how GHM-M works. Unlike business rules (which govern product behavior), methodology principles govern how methodology developers should work.

**Principle Types:**
- **Core Principles:** Fundamental, non-negotiable rules
- **Best Practices:** Recommended approaches
- **Guidelines:** Flexible suggestions based on context

---

## MP-001: Reference, Don't Duplicate

**ID:** MP-001
**Type:** Core Principle
**Priority:** Critical
**Status:** Active
**Created:** 2025-12-26
**Last Updated:** 2025-12-26

### Principle Statement

Every concept has one canonical location. Cross-references use IDs, not duplicate prose. Duplication is treated as a defect.

### Rationale

**The Problem:**
Documentation duplication leads to drift. When the same concept is described in multiple places, updates to one location don't propagate to others, causing inconsistency and confusion.

**The Solution:**
Create each concept once in its SoT file, assign it an ID, and reference that ID from everywhere else. Changes propagate naturally because there's only one source.

### Application

**When documenting patterns:**
- ✅ Create PAT-XXX entry in PATTERNS.md
- ✅ Reference PAT-XXX from MRD, guides, and other patterns
- ❌ Don't copy pattern description to multiple files

**When referencing principles:**
- ✅ Link to MP-XXX from documentation
- ✅ Use brief summary + link for context
- ❌ Don't restate full principle text everywhere

**Example:**
```markdown
<!-- GOOD -->
This approach follows MP-001 (Reference, Don't Duplicate).
See [MP-001](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)

<!-- BAD -->
This approach follows the principle that every concept has one
canonical location and cross-references should use IDs not duplicate
prose because duplication leads to drift when...
[rest of principle repeated]
```

### Validation

**How to verify compliance:**
- Use grep to search for repeated text across files
- Check that SoT entries are referenced, not restated
- Validate that updates happen in one place

**Evidence:**
- VAL-000: GHM-M dogfooding demonstrates this principle

### Related IDs

**Patterns:**
- PAT-001: ID-based knowledge graph

**Components:**
- COMP-001: 3+1+SoT+Temp stack
- COMP-002: ID system

**Tools:**
- TOOL-002: ID extraction utilities (validates references)

---

## MP-002: Progressive Documentation

**ID:** MP-002
**Type:** Core Principle
**Priority:** Critical
**Status:** Active
**Created:** 2025-12-26
**Last Updated:** 2025-12-26

### Principle Statement

Documentation evolves with the methodology lifecycle (v0.1 → v1.0). Don't write everything upfront. Build documentation progressively as understanding deepens.

### Rationale

**The Problem:**
Traditional approaches try to document everything before starting work. This leads to:
- Premature decisions before sufficient understanding
- Wasted effort on documentation that changes
- Perceived high barrier to entry

**The Solution:**
Start with minimal documentation (v0.1 Spark) and expand progressively through lifecycle stages. Each version adds the documentation that's now relevant and possible.

### Application

**v0.1 (Spark):** Problem statement, vision, scope
- ✅ What problem does this solve?
- ✅ Who is this for?
- ❌ Don't document implementation details yet

**v0.2-v0.5 (Strategy):** Practitioner context, principles, risks
- ✅ Define target practitioners
- ✅ Map practitioner journeys
- ❌ Don't document patterns in detail yet

**v0.6 (Structure):** Components, patterns, templates
- ✅ Now document methodology structure
- ✅ Define key patterns
- ✅ Create templates

**v0.7-v1.0 (Build → Evolve):** Full documentation, validation, refinement
- ✅ Complete all SoT files
- ✅ Gather validation evidence
- ✅ Refine based on practitioner feedback

### Validation

**How to verify compliance:**
- Check MRD version history shows progressive expansion
- Verify early versions don't have premature detail
- Confirm each version adds appropriate content for that stage

**Evidence:**
- MRD.md version history in this project
- EPIC-01 tracks progressive foundation building

### Related IDs

**Workflows:**
- WF-001: MRD Version Lifecycle

**Patterns:**
- PAT-002: Progressive documentation pattern

---

## MP-003: ID-Based Context

**ID:** MP-003
**Type:** Core Principle
**Priority:** Critical
**Status:** Active
**Created:** 2025-12-26
**Last Updated:** 2025-12-26

### Principle Statement

Use IDs to reference concepts, not context-window-filling explanations. Prefer "see MP-001" over copying text. This keeps context windows small while maintaining access to complete information.

### Rationale

**The Problem:**
AI agents and human collaborators have limited context windows. Pasting full documentation into prompts or discussions wastes space and creates duplication.

**The Solution:**
Reference concepts by ID. The recipient can load just the IDs they need, keeping context focused while preserving access to details.

### Application

**In EPICs:**
```markdown
<!-- GOOD -->
This work implements PAT-001 (ID-based knowledge graph)
and follows MP-001 (Reference, don't duplicate).

<!-- BAD -->
This work implements the pattern where every concept gets
a unique ID and we reference those IDs instead of copying
text, which prevents duplication and drift because...
[500 words of explanation]
```

**In MRD:**
```markdown
<!-- GOOD -->
Core principles: MP-001, MP-002, MP-003
See METHODOLOGY_PRINCIPLES.md for details.

<!-- BAD -->
Core principles:
1. Reference, don't duplicate: Every concept has one...
2. Progressive documentation: Documentation evolves...
3. ID-based context: Use IDs to reference...
[Full text of all principles]
```

**In Conversations:**
```markdown
<!-- GOOD -->
"This violates MP-001. We should create a single PAT-XXX
entry instead of describing this pattern in three places."

<!-- BAD -->
"Remember the principle about how every concept should have
one canonical location and we cross-reference using IDs
instead of duplicating prose? Well, this violates that..."
```

### Benefits

**For AI Agents:**
- Load only relevant IDs, not entire SoT library
- Context window stays focused on current work
- Can request specific IDs when needed

**For Humans:**
- Quick navigation to source of truth
- No need to remember full details
- Consistent references across team

**For Methodology:**
- Scalable to large concept counts
- Clear dependency graphs
- Easy impact analysis

### Validation

**How to verify compliance:**
- Context window usage stays reasonable (< 50% typical)
- ID references used consistently
- No large text blocks duplicated

**Evidence:**
- This session's context usage demonstrates the principle
- EPIC-01 Section 3A shows ID tracking in practice

### Related IDs

**Principles:**
- MP-001: Reference, don't duplicate (closely related)

**Patterns:**
- PAT-001: ID-based knowledge graph

**Components:**
- COMP-002: ID system

---

## Future Principles

**Planned Additions:**

**MP-004:** Bidirectional References (Planned)
- Every ID reference should be mutual
- If A references B, B should list A in "Referenced By"

**MP-005:** Validation Before Trust (Planned)
- Methodology claims require validation evidence
- Case studies, peer review, or practitioner feedback

**MP-006:** Community Over Control (Planned)
- Open methodology development
- Accept contributions and feedback
- Evolve based on practitioner needs

---

## Principle Hierarchy

```
Core Principles (Must follow)
├── MP-001: Reference, don't duplicate
├── MP-002: Progressive documentation
└── MP-003: ID-based context

Best Practices (Should follow)
└── (Future additions)

Guidelines (Consider following)
└── (Future additions)
```

---

**Total Principles:** 3 active, 3 planned
**Last Review:** 2025-12-26
**Next Review:** After v0.6 (methodology structure complete)
