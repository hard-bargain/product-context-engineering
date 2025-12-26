# Methodology Components

> **ID Prefix:** COMP-XXX
>
> **Purpose:** Core methodology components
>
> **Last Updated:** 2025-12-26

---

## COMP-001: 3+1+SoT+Temp Stack

**Component Name:** 3+1+SoT+Temp Documentation Stack
**Category:** Information Architecture
**Status:** Active
**Created:** 2025-12-26

### Description
The foundational documentation structure for GHM-M.

### Structure
- **3 Navigation Files:** MRD.md, README.md, CLAUDE.md
- **+1 Active EPIC:** Current work window
- **SoT Library:** 11 source-of-truth files
- **Temp Files:** Short-lived scratchpads

### Purpose
Provides predictable locations for all information types, enabling quick context loading.

### Related IDs
- MP-001: Reference, don't duplicate
- PAT-001: ID-based knowledge graph

---

## COMP-002: ID System

**Component Name:** Unique ID System
**Category:** Information Architecture
**Status:** Active
**Created:** 2025-12-26

### Description
Durable IDs for all methodology concepts (PJ, MP, PAT, TEMP, VAL, etc.).

### ID Prefixes (13 total)
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
- COM-XXX: Community
- KPI-XXX: Metric

### Related IDs
- MP-003: ID-based context
- PAT-001: ID-based knowledge graph

---

## COMP-003: Session Protocols

**Component Name:** Session Protocols
**Category:** Process
**Status:** Active
**Created:** 2025-12-26

### Description
Mechanisms for maintaining continuity across work sessions.

### Key Elements
- EPIC Section 0 (Session State)
- Session Start Protocol
- Session End Protocol (mandatory)
- Session history tracking

### Purpose
Enable AI agents and humans to pick up work seamlessly across session boundaries.

### Related IDs
- PAT-003: Session protocols pattern
- See [CLAUDE.md Section 10](../../CLAUDE.md#10-session-protocols)

---

**Total Components:** 3 active
**Last Updated:** 2025-12-26
