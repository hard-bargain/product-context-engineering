# Methodology Patterns

> **ID Prefix:** PAT-XXX
>
> **Purpose:** Document reusable patterns in the methodology
>
> **Last Updated:** 2025-12-26

---

## PAT-001: ID-Based Knowledge Graph

**Pattern Name:** ID-Based Knowledge Graph
**Category:** Information Architecture
**Complexity:** Medium
**Status:** Active
**Created:** 2025-12-26

### Problem
Documentation sprawl and duplication cause drift and confusion in methodology development.

### Solution
Assign unique, durable IDs to every significant concept. Use IDs for cross-references instead of duplicating content.

### Implementation
1. Define ID prefixes for each entity type (MP, PAT, PJ, etc.)
2. Create SoT files for each type
3. Use format: PREFIX-NNN (e.g., PAT-001)
4. Include "Related IDs" section in each entry
5. Maintain bidirectional references

### Related IDs
- MP-001: Reference, don't duplicate
- MP-003: ID-based context
- COMP-002: ID system

---

## PAT-002: Progressive Documentation

**Pattern Name:** Progressive Documentation
**Category:** Documentation Strategy
**Complexity:** Low
**Status:** Active
**Created:** 2025-12-26

### Problem
Upfront documentation becomes outdated; waiting until the end means knowledge is lost.

### Solution
Document progressively through lifecycle stages (v0.1 → v1.0), adding detail as understanding deepens.

### Implementation
Start minimal (v0.1), expand at each gate based on what's now known and relevant.

### Related IDs
- MP-002: Progressive documentation
- WF-001: MRD Version Lifecycle

---

## PAT-003: Session Protocols

**Pattern Name:** Session Protocols for Continuity
**Category:** Process
**Complexity:** Medium
**Status:** Active
**Created:** 2025-12-26

### Problem
AI agents and humans lose context between work sessions, causing repeated work and confusion.

### Solution
EPIC Section 0 (Session State) maintains handoff information. Session Start/End protocols ensure continuity.

### Implementation
1. Every EPIC has Section 0 at top
2. Before ending session: Update Section 0 with progress, stopping point, next steps
3. Before starting session: Read Section 0 to understand context
4. Commit with session summary

### Related IDs
- COMP-003: Session protocols
- See [CLAUDE.md Section 10](../../CLAUDE.md#10-session-protocols)

---

**Total Patterns:** 3 active
**Last Updated:** 2025-12-26
