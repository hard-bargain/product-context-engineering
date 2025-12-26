---
version: 1.0-M
purpose: Comprehensive guide to the GHM-M Unique ID system for methodologies
last_updated: 2025-12-26
authority: Defines where IDs live, how they're created, and how they're used across all methodology documentation
variant: GHM-M (Methodologies)
---

# Unique ID System Guide (GHM-M)

## Overview

The Unique ID system assigns durable, globally unique identifiers to every meaningful artifact in your methodology documentation. This transforms documentation from duplicate prose into a precise knowledge graph where specifications live in ONE place and are referenced everywhere else.

**Core Benefit**: AI agents load methodology context in <1 minute vs 5-10 minutes of full-document scanning.

**GHM-M Adaptation**: Uses 13 methodology-specific ID prefixes instead of 10 product-focused prefixes.

## The Problem We're Solving

### Without IDs (Duplicate Prose)

```markdown
# MRD.md
Practitioners should reference source definitions, not duplicate content.
This is a core principle. IDs enable cross-referencing without duplication.

# METHODOLOGY_PRINCIPLES.md
MP-001: Always reference the source definition using IDs instead of
copying content. This prevents documentation drift.

# PATTERNS.md
PAT-001: The ID-based knowledge graph pattern uses unique identifiers
to link related concepts. Each concept has one canonical location.

# GUIDES.md
Getting started guide explains: Don't duplicate content! Use IDs to
reference the source of truth. This prevents inconsistencies.
```

**Problems**:
- Same principle duplicated 4+ times
- Changes require updating multiple files
- Easy to miss updates, creating inconsistency
- AI agents must read everything to find all references

### With IDs (Single Source of Truth)

```markdown
# METHODOLOGY_PRINCIPLES.md (Source of Truth)
## MP-001: Reference, Don't Duplicate

**Principle Statement**: Every concept has one canonical location.
Cross-references use IDs, not duplicate prose.

**Rationale**: Duplication leads to drift. IDs enable single-source-of-truth
while maintaining navigability.

# MRD.md (References MP-001)
Core principle: [MP-001](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)

# PATTERNS.md (References MP-001)
PAT-001 implements [MP-001](METHODOLOGY_PRINCIPLES.md#mp-001)

# GUIDES.md (References MP-001)
Follow [MP-001](../source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)
```

**Benefits**:
- Principle specified ONCE with full detail
- All other files reference the ID
- Changes happen in one place
- AI agents load precise context via ID

## Integration with 3+1+SoT+Temp Framework

### The Framework Layers

```
┌─────────────────────────────────────────────────────────────┐
│                    Navigation Layer                         │
│                      (The "3")                              │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │  CLAUDE.md   │  │   MRD.md     │  │  README.md   │     │
│  │ Agent rules  │  │ Requirements │  │  Dashboard   │     │
│  └──────────────┘  └──────────────┘  └──────────────┘     │
│  Role: Provide context, POINT TO IDs, show active work    │
│  IDs: NEVER create, only reference                         │
└─────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────┐
│                   Change Tracking Layer                     │
│                      (The "+1")                             │
│               ┌──────────────────────┐                      │
│               │   Current EPIC       │                      │
│               │  EPIC-XX-{name}.md   │                      │
│               └──────────────────────┘                      │
│  Role: Track which IDs modified/created during development │
│  IDs: Section 3A documents all ID changes                  │
└─────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────┐
│                  Reference Library Layer                    │
│                      (SoT Files - 11 files)                │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │PRACTITIONER_ │  │METHODOLOGY_  │  │   PATTERNS   │     │
│  │  JOURNEYS    │  │  PRINCIPLES  │  │  (PAT-XXX)   │     │
│  │  (PJ-XXX)    │  │  (MP-XXX)    │  └──────────────┘     │
│  └──────────────┘  └──────────────┘                        │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │  TEMPLATES   │  │  VALIDATION  │  │ PUBLICATION  │     │
│  │ (TEMP-XXX)   │  │  (VAL-XXX)   │  │  (PUB-XXX)   │     │
│  └──────────────┘  └──────────────┘  └──────────────┘     │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐     │
│  │PRACTITIONER_ │  │  WORKFLOWS   │  │    GUIDES    │     │
│  │  FEEDBACK    │  │  (WF-XXX)    │  │ (GUIDE-XXX)  │     │
│  │  (PF-XXX)    │  └──────────────┘  └──────────────┘     │
│  └──────────────┘  ┌──────────────┐  ┌──────────────┐     │
│                    │    TOOLS     │  │  COMPONENTS  │     │
│                    │ (TOOL-XXX)   │  │  (COMP-XXX)  │     │
│                    └──────────────┘  └──────────────┘     │
│  Role: CREATE and MAINTAIN IDs with full specifications   │
│  IDs: Each file type owns specific ID prefix               │
└─────────────────────────────────────────────────────────────┘
                              ↓
┌─────────────────────────────────────────────────────────────┐
│                    Temporary Storage                        │
│                      (temp/ folder)                         │
│  Role: Work-in-progress content that will be extracted to  │
│  SoT files when validated                                  │
│  IDs: May propose new IDs, finalized when moved to SoT     │
└─────────────────────────────────────────────────────────────┘
```

### Layer Responsibilities

#### 1. Navigation Layer (The "3") - REFERENCE ONLY

**Files**: `CLAUDE.md`, `MRD.md`, `README.md`

**Role**:
- Provide high-level context and navigation
- Point readers to detailed specifications in SoT files
- Show current state and active work
- Enable quick orientation for AI agents and practitioners

**ID Behavior**:
- ✅ **Reference** IDs via markdown links: `[MP-001](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)`
- ✅ **Show active IDs** in README for quick navigation
- ❌ **NEVER create** new IDs (no ID ownership)
- ❌ **NEVER duplicate** specifications (link instead)

**Example (README.md)**:
```markdown
## 📍 Active IDs in Scope

**Modified This EPIC**:
- [PAT-001](active/source_of_truth/PATTERNS.md#pat-001) - ID-based knowledge graph (refining)
- [TEMP-002](active/source_of_truth/TEMPLATES.md#temp-002) - MRD template (modified)

**Created This EPIC**:
- [GUIDE-002](active/source_of_truth/GUIDES.md#guide-002) - Advanced patterns (new)

**Key Principles**:
- [MP-001](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001) - Reference, don't duplicate
- [MP-002](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002) - Progressive documentation
```

**Example (MRD.md)**:
```markdown
## Core Principles

The methodology is built on three foundational principles:

- [MP-001](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001) - Reference, don't duplicate
- [MP-002](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002) - Progressive documentation
- [MP-003](active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003) - ID-based context

**Patterns Required**:
- [PAT-001](active/source_of_truth/PATTERNS.md#pat-001) - ID-based knowledge graph
- [PAT-002](active/source_of_truth/PATTERNS.md#pat-002) - Progressive documentation workflow
```

#### 2. Change Tracking Layer (The "+1") - TRACK CHANGES

**Files**: Current EPIC (e.g., `active/epics/EPIC-01-foundation.md`)

**Role**:
- Document active development work
- Track which IDs are being modified or created
- Map dependencies and impact
- Validate cross-references before completion

**ID Behavior**:
- ✅ **Track** all ID changes in Section 3A
- ✅ **Document** impact map and dependency chains
- ✅ **Validate** bidirectional references
- ❌ **Don't create** permanent IDs (propose, finalize in SoT)

**Example (EPIC Section 3A)**:
```markdown
## 3A. ID Tracking (Knowledge Graph)

### IDs Modified This EPIC

| ID | Type | SoT File | Description | Status | Date Modified |
|----|------|----------|-------------|--------|---------------|
| PAT-001 | Pattern | PATTERNS.md | ID-based knowledge graph | ✅ | 2025-12-26 |
| TEMP-002 | Template | TEMPLATES.md | MRD template | 🚧 | - |

### IDs Created This EPIC

| ID | Type | SoT File | Description | Status | Date Created | Related IDs |
|----|------|----------|-------------|--------|--------------|-------------|
| GUIDE-002 | Guide | GUIDES.md | Advanced Patterns | ✅ | 2025-12-26 | PAT-001, MP-001 |
| VAL-001 | Validation | VALIDATION.md | First Pilot Case | ✅ | 2025-12-26 | PAT-001, PJ-001 |
| WF-003 | Workflow | WORKFLOWS.md | Pattern Development | ✅ | 2025-12-26 | PAT-001 |

### ID Impact Map

**Primary Changes**: PAT-001, TEMP-002
**Downstream Impact**: GUIDE-002 (new), VAL-001 (new), WF-003 (new)
**Dependencies**: MP-001 (references), COMP-002 (uses ID system)

### ID Dependency Chain

```
MP-001 (principle: reference not duplicate)
  └─→ PAT-001 (implements principle)
      ├─→ COMP-002 (uses pattern)
      ├─→ GUIDE-002 (explains pattern)
      ├─→ VAL-001 (validates pattern)
      └─→ WF-003 (applies pattern)
```

### Cross-Reference Validation

- [x] All modified IDs have bidirectional references updated
- [x] All created IDs added to their SoT files with complete metadata
- [x] All referenced IDs exist (MP-001, PAT-001, COMP-002, etc.)
- [x] README.md updated with active IDs
```

#### 3. Reference Library (SoT Files) - CREATE & MAINTAIN

**Files** (11 total):
- `PRACTITIONER_JOURNEYS.md` (PJ-XXX)
- `METHODOLOGY_PRINCIPLES.md` (MP-XXX)
- `PATTERNS.md` (PAT-XXX)
- `TEMPLATES.md` (TEMP-XXX)
- `VALIDATION.md` (VAL-XXX)
- `PUBLICATION.md` (PUB-XXX)
- `PRACTITIONER_FEEDBACK.md` (PF-XXX)
- `WORKFLOWS.md` (WF-XXX)
- `GUIDES.md` (GUIDE-XXX)
- `TOOLS.md` (TOOL-XXX)
- `COMPONENTS.md` (COMP-XXX)

**Role**:
- Create new IDs with unique identifiers
- Maintain full specifications for each ID
- Own the authoritative definition
- Maintain bidirectional cross-references

**ID Behavior**:
- ✅ **Create** new IDs following prefix conventions
- ✅ **Specify** complete details (metadata, description, relationships)
- ✅ **Maintain** bidirectional references to all related IDs
- ✅ **Update** when IDs are modified
- ✅ **Deprecate** (don't delete) when IDs become obsolete

**Example (METHODOLOGY_PRINCIPLES.md)**:
```markdown
## MP-001: Reference, Don't Duplicate

**ID**: MP-001
**Category**: Information Architecture
**Status**: Active
**Created**: 2025-12-26
**Last Updated**: 2025-12-26

### Principle Statement

Every concept has one canonical location. Cross-references use IDs, not duplicate prose.

### Rationale

Duplication leads to drift. IDs enable single-source-of-truth while maintaining navigability.

### Related IDs

**Implemented By**:
- [PAT-001](PATTERNS.md#pat-001) - ID-based knowledge graph
- [COMP-002](COMPONENTS.md#comp-002) - ID system (13 prefixes)

**Applied In**:
- [TEMP-002](TEMPLATES.md#temp-002) - MRD template (uses references)
- [GUIDE-001](GUIDES.md#guide-001) - Getting started (explains principle)

**Validated By**:
- [VAL-000](VALIDATION.md#val-000) - GHM-M dogfooding (meta-application)
```

**Example (PATTERNS.md)**:
```markdown
## PAT-001: ID-Based Knowledge Graph

**ID**: PAT-001
**Category**: Documentation
**Status**: Active
**Created**: 2025-12-26
**Last Updated**: 2025-12-26

### Implements Principles

- [MP-001](METHODOLOGY_PRINCIPLES.md#mp-001) - Reference, don't duplicate
- [MP-003](METHODOLOGY_PRINCIPLES.md#mp-003) - ID-based context

### Used By

- [COMP-002](COMPONENTS.md#comp-002) - ID system component
- [TEMP-002](TEMPLATES.md#temp-002) - MRD template (cross-references)

### Guides

- [GUIDE-001](GUIDES.md#guide-001) - Getting started (explains usage)
- [GUIDE-002](GUIDES.md#guide-002) - Advanced patterns (deep dive)

### Validated By

- [VAL-000](VALIDATION.md#val-000) - Meta-application case study
```

#### 4. Temporary Storage (temp/) - WORK IN PROGRESS

**Files**: `temp/*.md`

**Role**:
- Capture work-in-progress thinking
- Develop and refine specifications
- Experiment with structures
- Stage content before finalizing

**ID Behavior**:
- ✅ **Propose** new IDs during exploration
- ✅ **Reference** existing IDs from SoT files
- ✅ **Draft** full specifications before moving to SoT
- ❌ **Not authoritative** until extracted to SoT

**Extraction Workflow**:
1. Draft in temp file with proposed ID
2. Refine and validate content
3. Move to appropriate SoT file
4. Create bidirectional references
5. Update EPIC Section 3A tracking
6. Archive temp file

---

## ID Prefix Definitions (13 Total)

| Prefix | Name | SoT File | Purpose | Example |
|--------|------|----------|---------|---------|
| **PJ-XXX** | Practitioner Journeys | PRACTITIONER_JOURNEYS.md | How practitioners discover, adopt, apply | PJ-001: First-time adoption |
| **MP-XXX** | Methodology Principles | METHODOLOGY_PRINCIPLES.md | Core principles governing methodology | MP-001: Reference not duplicate |
| **PAT-XXX** | Patterns | PATTERNS.md | Reusable methodology patterns | PAT-001: ID-based knowledge graph |
| **TEMP-XXX** | Templates | TEMPLATES.md | Document templates and structures | TEMP-001: EPIC template |
| **VAL-XXX** | Validation | VALIDATION.md | Case studies, validation evidence | VAL-000: GHM-M dogfooding |
| **PUB-XXX** | Publication | PUBLICATION.md | Distribution channels | PUB-001: GitHub repository |
| **PF-XXX** | Practitioner Feedback | PRACTITIONER_FEEDBACK.md | Feedback from users | PF-001: Template structure |
| **WF-XXX** | Workflows | WORKFLOWS.md | Processes and workflows | WF-001: MRD lifecycle |
| **GUIDE-XXX** | Guides | GUIDES.md | How-to guides and tutorials | GUIDE-001: Getting started |
| **TOOL-XXX** | Tools | TOOLS.md | Automation tools and scripts | TOOL-001: validate_sessions.py |
| **COMP-XXX** | Components | COMPONENTS.md | Core methodology components | COMP-001: 3+1+SoT+Temp stack |

### Prefix Selection Guide

**When creating a new ID, ask**:

1. **Is it about how practitioners use the methodology?** → PJ-XXX
2. **Is it a core governing principle?** → MP-XXX
3. **Is it a reusable pattern or approach?** → PAT-XXX
4. **Is it a document template or structure?** → TEMP-XXX
5. **Is it evidence of validation or a case study?** → VAL-XXX
6. **Is it about distribution or publication?** → PUB-XXX
7. **Is it feedback from practitioners?** → PF-XXX
8. **Is it a process or workflow?** → WF-XXX
9. **Is it a how-to guide or tutorial?** → GUIDE-XXX
10. **Is it an automation tool or script?** → TOOL-XXX
11. **Is it a core methodology building block?** → COMP-XXX

---

## ID Naming Conventions

### Format

```
PREFIX-NUMBER
```

- **PREFIX**: 2-6 uppercase letters (or letters + hyphen for multi-word)
- **HYPHEN**: Single dash separator
- **NUMBER**: 3-digit zero-padded number (001-999)

### Examples

✅ **Good**:
- `MP-001`
- `PAT-042`
- `GUIDE-015`

❌ **Bad**:
- `mp-1` (lowercase, not zero-padded)
- `PATTERN-042` (use prefix from table)
- `MP_001` (underscore instead of hyphen)
- `MP-1000` (exceeds 3 digits)

### Number Assignment

- Start at 001 for each prefix
- Increment sequentially within prefix
- Don't reuse deprecated numbers
- Reserve 000 for special cases (e.g., VAL-000 for meta-application)

---

## Creating New IDs: Step-by-Step

### 1. Determine ID Type

Consult prefix table above to identify correct SoT file.

### 2. Check for Existing ID

Search SoT file to ensure concept doesn't already exist:
```bash
# Search for similar concepts
grep -i "pattern.*knowledge" active/source_of_truth/PATTERNS.md
```

### 3. Assign Next Number

Find highest existing number in that prefix:
```bash
# Find highest PAT- number
grep "^## PAT-" active/source_of_truth/PATTERNS.md | tail -1
```

### 4. Create ID Entry in SoT File

Use consistent structure:
```markdown
## [PREFIX]-[NUMBER]: [Title]

**ID**: [PREFIX]-[NUMBER]
**Category**: [Category name]
**Status**: Active | Planned | Deprecated
**Created**: YYYY-MM-DD
**Last Updated**: YYYY-MM-DD

[Main content...]

### Related IDs

**[Relationship Type]**:
- [ID](file.md#id) - Description
```

### 5. Add to EPIC Section 3A

Track in current EPIC's ID ledger:
```markdown
| [PREFIX]-[NUMBER] | [Type] | [File].md | [Description] | ✅ | YYYY-MM-DD | [Related] |
```

### 6. Create Bidirectional References

Update all related IDs to reference the new ID.

### 7. Update ID Registry

Add to `.codex/ID_REGISTRY.md` (or run sync script when available).

---

## Best Practices

### DO:
- ✅ Create IDs for reusable concepts
- ✅ Use descriptive titles (ID + colon + title)
- ✅ Maintain bidirectional references
- ✅ Include creation and update dates
- ✅ Document relationships explicitly
- ✅ Use IDs in navigation files for references
- ✅ Track all ID changes in EPIC Section 3A
- ✅ Deprecate (don't delete) obsolete IDs

### DON'T:
- ❌ Duplicate specifications across files
- ❌ Create IDs in navigation files (README, MRD, CLAUDE)
- ❌ Skip relationship documentation
- ❌ Reuse deprecated ID numbers
- ❌ Use IDs as headings without title (e.g., just "## MP-001")
- ❌ Create one-off IDs for concepts that won't be referenced
- ❌ Delete IDs (deprecate instead with status change)

---

## Validation & Maintenance

### Manual Validation (Until TOOL-002)

Check ID health manually:

1. **Uniqueness**: No duplicate ID numbers within prefix
   ```bash
   grep "^## MP-" METHODOLOGY_PRINCIPLES.md | sort | uniq -d
   ```

2. **Cross-references**: All referenced IDs exist
   ```bash
   # Find all MP- references
   grep -r "\[MP-[0-9]\{3\}\]" active/
   ```

3. **Bidirectional**: Forward and reverse links exist
   - If A references B, B should reference A

4. **Consistency**: Titles match across references
   - ID title in SoT file matches references elsewhere

### Automated Validation (Future - TOOL-002)

When TOOL-002 is implemented:
```bash
# Sync ID registry from SoT files
python tools/sync_registry.py

# Validate all cross-references
python tools/check_links.py

# Find orphaned IDs
python tools/find_orphans.py

# Full validation suite
python tools/validate_all.py
```

---

## Migration & Evolution

### Adding New ID Prefix

1. Update `tools/config/ghm_m_config.yaml` with new prefix
2. Create new SoT file for prefix
3. Add to navigation (README SoT index)
4. Update this document with prefix definition
5. Update ID_REGISTRY.md template

### Deprecating IDs

Never delete IDs. Instead:

1. Change status to "Deprecated"
2. Add deprecation date and reason
3. Point to replacement ID if applicable
4. Keep in SoT file for historical reference

Example:
```markdown
## MP-042: Old Principle Name

**ID**: MP-042
**Status**: Deprecated (2025-12-26)
**Replaced By**: [MP-055](METHODOLOGY_PRINCIPLES.md#mp-055)
**Deprecation Reason**: Superseded by more comprehensive principle

[Original content preserved for history...]
```

---

## Comparison: GHM vs. GHM-M

| Aspect | GHM (Product) | GHM-M (Methodology) |
|--------|---------------|---------------------|
| **Total Prefixes** | 10+ | 13 |
| **Focus** | User journeys, APIs, database | Practitioner journeys, patterns, templates |
| **Core Files** | USER_JOURNEYS, BUSINESS_RULES, API_CONTRACTS | PRACTITIONER_JOURNEYS, METHODOLOGY_PRINCIPLES, PATTERNS |
| **Key IDs** | UJ, BR, API, DBT, TEST | PJ, MP, PAT, TEMP, VAL |
| **Validation** | TEST-XXX (unit tests) | VAL-XXX (case studies) |
| **Deployment** | DEP-XXX (ops) | PUB-XXX (publication) |
| **Feedback** | CFD-XXX (customer) | PF-XXX (practitioner) |

---

## Quick Reference

### File → Prefix Mapping

```
active/source_of_truth/
├── PRACTITIONER_JOURNEYS.md    → PJ-XXX
├── METHODOLOGY_PRINCIPLES.md   → MP-XXX
├── PATTERNS.md                 → PAT-XXX
├── TEMPLATES.md                → TEMP-XXX
├── VALIDATION.md               → VAL-XXX
├── PUBLICATION.md              → PUB-XXX
├── PRACTITIONER_FEEDBACK.md    → PF-XXX
├── WORKFLOWS.md                → WF-XXX
├── GUIDES.md                   → GUIDE-XXX
├── TOOLS.md                    → TOOL-XXX
└── COMPONENTS.md               → COMP-XXX
```

### Common ID Relationships

```
Principle (MP) → Pattern (PAT) → Component (COMP) → Template (TEMP)
                    ↓                ↓
                Guide (GUIDE)    Validation (VAL)
```

---

## Related Documentation

- **MRD Lifecycle**: `active/workflows/MRD_VERSION_LIFECYCLE.md` (WF-001)
- **ID Registry**: `.codex/ID_REGISTRY.md`
- **Tool Config**: `tools/config/ghm_m_config.yaml`
- **Getting Started**: `docs/getting_started.md` (GUIDE-001)
- **GHM Original**: `PRD-driven-context-engineering/methodology/workflows/UNIQUE_ID_SYSTEM.md`

---

**Document ID**: (Navigation file - no ID)
**Last Updated**: 2025-12-26
**Version**: 1.0-M (GHM-M Variant)
**Related IDs**: MP-001, MP-003, PAT-001, COMP-002
