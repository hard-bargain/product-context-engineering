---
version: 1.0-M
purpose: Central registry of all IDs across GHM-M Source of Truth files
generation: Manual (Phase 4) - will become auto-generated with TOOL-002
last_updated: 2025-12-26
authority: Single source of truth for all methodology IDs
variant: GHM-M (Methodologies)
---

# ID Registry (GHM-M)

> **Purpose**: Central index of all unique IDs across the methodology knowledge graph
> **Update Method**: Manual until TOOL-002 (ID extraction utilities) is implemented
> **Status**: Initial registry created during EPIC-01 Phase 4

## Quick Stats

| ID Type | Count | SoT File | Status |
|---------|-------|----------|--------|
| PJ-XXX | 1 | PRACTITIONER_JOURNEYS.md | ✅ Active |
| MP-XXX | 3 | METHODOLOGY_PRINCIPLES.md | ✅ Active |
| PAT-XXX | 3 | PATTERNS.md | ✅ Active |
| TEMP-XXX | 2 | TEMPLATES.md | ✅ Active |
| VAL-XXX | 1 | VALIDATION.md | ✅ Active |
| PUB-XXX | 1 | PUBLICATION.md | ✅ Active |
| PF-XXX | 1 | PRACTITIONER_FEEDBACK.md | ✅ Active |
| WF-XXX | 2 | WORKFLOWS.md | ✅ Active |
| GUIDE-XXX | 1 | GUIDES.md | ✅ Active |
| TOOL-XXX | 3 | TOOLS.md | ✅ Active |
| COMP-XXX | 3 | COMPONENTS.md | ✅ Active |

**Last Updated**: 2025-12-26
**Total IDs**: 21
**Created During**: EPIC-01 (Foundation Setup)

---

## Practitioner Journeys (PJ-XXX)

**Source**: `active/source_of_truth/PRACTITIONER_JOURNEYS.md`
**Purpose**: How practitioners discover, adopt, and apply the methodology

| ID | Title | Stages | Referenced By |
|----|-------|--------|---------------|
| PJ-001 | First-Time Methodology Adoption | Discovery → Evaluation → Adoption → Mastery → Evolution | PUB-001, GUIDE-001 |

---

## Methodology Principles (MP-XXX)

**Source**: `active/source_of_truth/METHODOLOGY_PRINCIPLES.md`
**Purpose**: Core principles governing the methodology

| ID | Principle Name | Category | Enforced By |
|----|---------------|----------|-------------|
| MP-001 | Reference, don't duplicate | Information Architecture | PAT-001, COMP-002 |
| MP-002 | Progressive documentation | Process | PAT-002, WF-001 |
| MP-003 | ID-based context | Information Architecture | PAT-001, COMP-002 |

---

## Patterns (PAT-XXX)

**Source**: `active/source_of_truth/PATTERNS.md`
**Purpose**: Reusable methodology patterns

| ID | Pattern Name | Category | Implements | Used By |
|----|-------------|----------|------------|---------|
| PAT-001 | ID-based knowledge graph | Documentation | MP-001, MP-003 | COMP-002 |
| PAT-002 | Progressive documentation | Process | MP-002 | WF-001, TEMP-002 |
| PAT-003 | Session protocols | Process | - | COMP-003 |

---

## Templates (TEMP-XXX)

**Source**: `active/source_of_truth/TEMPLATES.md`
**Purpose**: Document templates and structural patterns

| ID | Template Name | Category | Location | Uses Pattern |
|----|--------------|----------|----------|--------------|
| TEMP-001 | EPIC template | Epic | templates/epics/EPIC_template.md | PAT-003 |
| TEMP-002 | MRD template | Navigation | templates/methodology/mrd_template.md | PAT-002 |

---

## Validation (VAL-XXX)

**Source**: `active/source_of_truth/VALIDATION.md`
**Purpose**: Validation approaches, case studies, and evidence

| ID | Title | Type | Status | Validates |
|----|-------|------|--------|-----------|
| VAL-000 | GHM-M Dogfooding Case Study | Meta-application | In Progress | All components (self-validation) |

---

## Publication (PUB-XXX)

**Source**: `active/source_of_truth/PUBLICATION.md`
**Purpose**: Distribution channels and publication strategies

| ID | Channel Name | Type | Access | Supports Journey |
|----|-------------|------|--------|------------------|
| PUB-001 | GitHub Repository | Repository | Public | PJ-001 (Discovery stage) |

---

## Practitioner Feedback (PF-XXX)

**Source**: `active/source_of_truth/PRACTITIONER_FEEDBACK.md`
**Purpose**: Capture and track feedback from methodology practitioners

| ID | Title | Type | Status | Notes |
|----|-------|------|--------|-------|
| PF-001 | (Template structure) | Template | Planned | Structure defined, awaiting actual feedback |

---

## Workflows (WF-XXX)

**Source**: `active/source_of_truth/WORKFLOWS.md`
**Purpose**: Document workflows and processes

| ID | Workflow Name | Category | Phases | Uses Pattern |
|----|--------------|----------|--------|--------------|
| WF-001 | MRD Version Lifecycle | Lifecycle | v0.1 → v0.4 → v0.6 → v0.8 → v1.0 | PAT-002 |
| WF-002 | EPIC Lifecycle | Process | Plan → Build → Verify → Wrap | PAT-003 |

---

## Guides (GUIDE-XXX)

**Source**: `active/source_of_truth/GUIDES.md`
**Purpose**: How-to guides and tutorials for methodology practitioners

| ID | Guide Title | Category | Target Audience | Status | Supports Journey |
|----|------------|----------|-----------------|--------|------------------|
| GUIDE-001 | Getting Started with GHM-M | Getting Started | Beginner | Planned (Phase 5) | PJ-001 (Evaluation stage) |

---

## Tools (TOOL-XXX)

**Source**: `active/source_of_truth/TOOLS.md`
**Purpose**: Automation tools and scripts that support the methodology

| ID | Tool Name | Category | Language | Status | Enforces |
|----|-----------|----------|----------|--------|----------|
| TOOL-001 | validate_sessions.py | Validation | Python | Planned (Phase 4) | PAT-003 (Session protocols) |
| TOOL-002 | ID extraction utilities | Analysis | Python | Planned (Phase 4) | MP-001, MP-003 (ID-based context) |
| TOOL-003 | GHM-M config | Configuration | JSON | Planned (Phase 4) | All ID prefixes |

---

## Methodology Components (COMP-XXX)

**Source**: `active/source_of_truth/COMPONENTS.md`
**Purpose**: Core methodology components and building blocks

| ID | Component Name | Category | Implements | Used In |
|----|---------------|----------|------------|---------|
| COMP-001 | 3+1+SoT+Temp stack | Information Architecture | - | All methodology projects |
| COMP-002 | ID system (13 prefixes) | Information Architecture | MP-001, MP-003, PAT-001 | All SoT files |
| COMP-003 | Session protocols | Process | PAT-003 | TEMP-001 (EPIC Section 0) |

---

## Cross-Reference Summary

### Most Referenced IDs
1. **MP-001** (Reference, don't duplicate): 3 references
2. **PAT-001** (ID-based knowledge graph): 3 references
3. **MP-003** (ID-based context): 3 references
4. **PAT-002** (Progressive documentation): 3 references
5. **PAT-003** (Session protocols): 3 references

### ID Relationships

**Principle → Pattern Implementation:**
- MP-001 → PAT-001 (ID-based knowledge graph)
- MP-002 → PAT-002 (Progressive documentation)
- MP-003 → PAT-001 (ID-based knowledge graph)

**Pattern → Component:**
- PAT-001 → COMP-002 (ID system)
- PAT-002 → WF-001 (MRD lifecycle), TEMP-002 (MRD template)
- PAT-003 → COMP-003 (Session protocols), TEMP-001 (EPIC template)

**Journey → Resources:**
- PJ-001 → PUB-001 (Discovery), GUIDE-001 (Evaluation)

### Validation Coverage

**VAL-000** (Dogfooding) validates all components by using GHM-M to develop GHM-M itself:
- Uses all 13 ID prefixes
- Follows all 3 methodology principles (MP-001, MP-002, MP-003)
- Applies all 3 core patterns (PAT-001, PAT-002, PAT-003)
- Exercises all 3 components (COMP-001, COMP-002, COMP-003)
- Demonstrates both workflows (WF-001, WF-002)

---

## Future Automation (TOOL-002)

When TOOL-002 (ID extraction utilities) is implemented in Phase 4, this registry will become auto-generated:

**Planned Functionality:**
- Scan all SoT files for ID definitions (headers matching `## {PREFIX}-{NUMBER}`)
- Extract ID metadata (title, status, relationships)
- Build cross-reference graph
- Detect orphaned IDs (defined but never referenced)
- Detect dangling references (referenced but never defined)
- Generate this file automatically
- Validate bidirectional links

**Validation Commands:**
```bash
# Sync registry from SoT files
python tools/sync_registry.py

# Check cross-references
python tools/check_links.py

# Find orphaned IDs
python tools/find_orphans.py

# Full validation
python tools/validate_all.py
```

---

## Registry Maintenance

**Update Frequency**: After each EPIC that creates or modifies IDs
**Validation**: Run TOOL-002 utilities (when implemented)
**Authority**: This registry is derived from SoT files, which are the authoritative source

**Manual Updates Required Until TOOL-002:**
1. When creating new IDs, add to this registry
2. When modifying IDs, update this registry
3. When creating cross-references, update relationship tables
4. Review cross-reference summary for completeness

---

**Registry Version:** 1.0-M (GHM-M Variant)
**Created During:** EPIC-01 Phase 4
**Last Updated:** 2025-12-26
**Total IDs Tracked:** 21
