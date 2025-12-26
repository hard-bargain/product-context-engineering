# Tools

> **ID Prefix:** TOOL-XXX
>
> **Purpose:** Automation tools and scripts
>
> **Last Updated:** 2025-12-26

---

## TOOL-001: Session State Validator

**Tool Name:** validate_sessions.py
**Category:** Validation
**Language:** Python
**Location:** `tools/validate_sessions.py` (copied from original GHM)
**Status:** Active
**Created:** 2025-12-26

### Purpose
Validates EPIC Section 0 compliance with session protocols.

### Usage
```bash
python tools/validate_sessions.py GHM-M/active/epics/EPIC-01-foundation.md
```

### Checks
- Section 0 exists
- Required fields present
- Session history table maintained

### Related IDs
- PAT-003: Session protocols
- COMP-003: Session protocols component

---

## TOOL-002: ID Extraction Utilities

**Tool Name:** ID extraction and validation
**Category:** Validation
**Status:** Planned
**Created:** 2025-12-26

### Purpose
Extract IDs from markdown files and validate cross-references.

### Planned Features
- Parse all SoT files for IDs
- Check bidirectional references
- Identify orphaned IDs
- Generate ID reports

### Related IDs
- PAT-001: ID-based knowledge graph
- COMP-002: ID system

---

## TOOL-003: GHM-M Configuration

**Tool Name:** GHM-M tool configuration
**Category:** Configuration
**Status:** Planned (Phase 4)
**Created:** 2025-12-26

### Purpose
Configuration file for GHM-M ID prefixes and SoT file mapping.

### Format
JSON file mapping ID prefixes to SoT files.

### Location
`tools/config/ghm_m_ids.json` (to be created in Phase 4)

---

**Total Tools:** 1 active, 2 planned
**Last Updated:** 2025-12-26
