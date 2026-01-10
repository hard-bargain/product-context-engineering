---
name: id-tracker
description: Manage ID-based knowledge graph integrity across ACE methodology Source of Truth files. Use when assigning new IDs, validating sequences, or maintaining cross-reference relationships.
metadata:
  author: "GHM Team" 
  version: "1.3"
  category: "knowledge-management"
  ghm_compatible: true
  ace_integration: "Imported from GHM with ACE SoT file support and 10-gate awareness"
---

# ID Tracker Skill

## When to Use This Skill

- **Assign sequential IDs** for new SoT entries (DEC-XXX, FEAT-XXX, TECH-XXX, etc.)
- **Validate ID sequences** and identify gaps or duplicates across files
- **Maintain knowledge graph** integrity with bidirectional cross-references
- **Track ID relationships** and dependencies between entries
- **Support ID migration** when restructuring or archiving content
- **Generate ID reports** for knowledge graph analysis and optimization

## Core ID Management Functions

### 1. Sequential ID Assignment

**Automatic Next ID Discovery:**
```markdown
## ID Assignment: New Feature Entry

**Current FEATURES.md ID Status:**
- Last ID: FEAT-008 (User Dashboard Interface)
- Next Available: FEAT-009
- Sequence Status: ✅ Sequential, no gaps
- Assignment: FEAT-009 ready for new feature

**Auto-Assignment Result:**
New Entry: FEAT-009: Workflow Template Library
Created: 2025-01-08
Owner: Product Manager
Status: Draft
```

**Gap Detection and Resolution:**
```markdown
## ID Gap Analysis: DECISIONS.md

**Current Sequence:**
DEC-001, DEC-002, DEC-003, DEC-005, DEC-006, DEC-007

**Gap Detected:** DEC-004 missing

**Resolution Options:**
1. **Fill Gap:** Create DEC-004 for logical sequence continuity
2. **Document Gap:** Note DEC-004 was deleted/archived with reason
3. **Renumber:** Update DEC-005+ to close gap (impacts cross-references)

**Recommendation:** Fill gap with appropriate content or document deletion reason
**Impact:** 3 cross-references point to DEC-004, will break if not resolved
```

### 2. Cross-Reference Management

**Bidirectional Reference Tracking:**
```markdown
## Cross-Reference Map: FEAT-001 User Authentication

**Forward References (FEAT-001 points to):**
→ DEC-002: Product Strategy (strategic foundation)
→ TECH-001: Security Architecture (technical implementation)  
→ MET-002: User Success Metrics (success measurement)

**Backward References (point to FEAT-001):**
← FEAT-002: User Dashboard (depends on authentication)
← TECH-002: API Design (implements authentication)
← REL-001: Launch Planning (includes authentication rollout)

**Reference Integrity: ✅ All references valid**
**Graph Connectivity: High (6 connections, well-integrated)**
```

**Reference Validation and Repair:**
```markdown
## Reference Validation Report

**Valid Cross-References (47 total):**
✅ DEC-001 ↔ MKT-001 (strategic to market validation)
✅ FEAT-001 ↔ TECH-001 (feature to implementation)
✅ MET-001 ↔ DEC-002 (metrics to business model)

**Broken References (5 total):**
❌ FEAT-003 → TECH-004 (TECH-004 does not exist)
❌ DEC-005 → TEAM-003 (TEAM-003 was archived)
❌ MKT-002 → DEC-007 (DEC-007 renumbered to DEC-006)

**Orphaned Entries (2 total):**
⚠️  TECH-003: Database Schema (no inbound or outbound references)
⚠️  MET-003: Performance Metrics (isolated from context graph)

**Auto-Repair Suggestions:**
1. Create missing TECH-004 or update FEAT-003 reference
2. Update DEC-005 to reference archived location of TEAM-003
3. Update MKT-002 to point to correct DEC-006
4. Add appropriate references for orphaned entries
```

### 3. Knowledge Graph Analysis

**Entry Connectivity Assessment:**
```markdown
## Knowledge Graph Connectivity Analysis

**Highly Connected Entries (3+ connections):**
- DEC-001: Product Strategy (8 connections) - Central strategic decision
- FEAT-001: User Authentication (6 connections) - Core feature dependency
- TECH-001: System Architecture (7 connections) - Technical foundation

**Moderately Connected Entries (2 connections):**
- FEAT-002: Dashboard Interface (3 connections)
- MET-001: Success Metrics (2 connections)
- REL-001: Launch Planning (4 connections)

**Weakly Connected Entries (0-1 connections):**
- TECH-003: Database Schema (0 connections) - Needs integration
- MET-003: Performance Metrics (1 connection) - Underutilized
- TEAM-002: Development Process (1 connection) - Isolated

**Graph Health Score: 78%**
**Recommendation:** Increase connectivity of weakly connected entries
```

**Dependency Chain Mapping:**
```markdown
## Dependency Chain Analysis: Authentication Feature

**Dependency Chain: FEAT-001 User Authentication**
```
Strategic Foundation:
DEC-001 (Product Strategy) → DEC-002 (Security Approach)
    ↓
Tactical Implementation:  
FEAT-001 (User Auth) → FEAT-002 (User Dashboard)
    ↓
Technical Execution:
TECH-001 (Security Architecture) → TECH-002 (API Design)
    ↓
Market Delivery:
REL-001 (Launch Planning) → MET-002 (User Metrics)
```

**Chain Integrity: ✅ Complete dependency path**
**Risk Assessment: Low (no missing dependencies)**
```

### 4. ID Migration and Archival

**Archive Process with ID Preservation:**
```markdown
## ID Archive Process: v0.3 → v0.4 Gate Transition

**Archiving Content (v0.3 Commercial Model completion):**

**Strategic Content (Preserve in SoT):**
✅ DEC-001: Market Opportunity → Keep active (persistent strategic decision)
✅ DEC-002: Business Model → Keep active (affects all future gates)
✅ MKT-001: Market Validation → Summarize, archive details

**Working Content (Archive to temp/):**
🗂️  DEC-003: Pricing Experiments → temp/v03-commercial-archive/pricing-analysis.md
🗂️  MKT-002: Competitive Analysis → temp/v03-commercial-archive/competitive-research.md
🗂️  TEAM-001: Business Team Structure → temp/v03-commercial-archive/team-structure.md

**Cross-Reference Updates:**
- Update references to archived content with archive location links
- Maintain ID integrity: DEC-003 → temp/v03-archive/DEC-003-pricing-experiments
- Create archive index for future reference and searchability

**Archive Impact Assessment:**
- 7 references updated to point to archive locations
- 0 broken references (all archived content properly linked)
- Knowledge graph integrity maintained through transition
```

**ID Renumbering Process:**
```markdown
## ID Renumbering: FEATURES.md Optimization

**Current State:** FEAT-001, FEAT-002, [gap], FEAT-004, FEAT-005, FEAT-006
**Target State:** FEAT-001, FEAT-002, FEAT-003, FEAT-004, FEAT-005

**Renumbering Plan:**
- FEAT-004 → FEAT-003 (User Dashboard)
- FEAT-005 → FEAT-004 (Integration System) 
- FEAT-006 → FEAT-005 (Reporting Module)

**Cross-Reference Impact:**
- 12 references need updating across 4 SoT files
- TECH-002 references FEAT-004 → Update to FEAT-003
- DEC-005 references FEAT-005 → Update to FEAT-004
- REL-001 references FEAT-006 → Update to FEAT-005

**Validation Requirements:**
- Update all cross-references before committing changes
- Validate no broken links after renumbering
- Test knowledge graph integrity post-migration
```

## Gate-Specific ID Management

### 10-Gate ID Evolution Tracking

**ID Lifecycle Through Gates:**
```markdown
## ID Evolution: v0.1 Spark → v0.5 Red Team Review

**Strategic IDs (Persistent v0.1-v1.0):**
- DEC-001: Market Opportunity (created v0.1, stable through v0.5)
- DEC-002: Business Model (created v0.2, refined v0.3, stable v0.5) 
- MKT-001: Customer Validation (created v0.1, expanded v0.2, current v0.5)

**Tactical IDs (Active v0.4-v0.6):**
- FEAT-001-008: Core Features (created v0.4, risk analysis v0.5)
- DEC-003-005: UX Decisions (created v0.4, validated v0.5)

**Working IDs (Gate-Specific):**
- v0.1: Archived to temp/v01-spark-archive/
- v0.2: Archived to temp/v02-market-archive/  
- v0.3: Archived to temp/v03-commercial-archive/
- v0.4: Promoted to SoT, detailed work archived

**ID Health by Gate:**
- Strategic Layer: 98% ID integrity (2 archived, rest active)
- Tactical Layer: 94% ID integrity (some v0.4 details archived)
- Gate Working: 100% archived appropriately with links maintained
```

### Gate Transition ID Management

**v0.5 → v0.6 Transition Preparation:**
```markdown
## ID Preparation: Red Team Review → Architecture Gate

**IDs Graduating to v0.6:**
✅ Risk-validated features: FEAT-001, FEAT-002, FEAT-003 (ready for architecture)
✅ Technical feasibility: TECH-001 (foundation for v0.6 system design)
✅ Strategic decisions: DEC-001, DEC-002 (persistent foundation)

**IDs Requiring Archive:**
🗂️  Risk analysis working documents → temp/v05-redteam-archive/
🗂️  Assumption validation details → temp/v05-redteam-archive/
🗂️  Go/no-go analysis → temp/v05-redteam-archive/

**New IDs Expected for v0.6:**
- TECH-003+: System architecture components
- DEC-006+: Architecture and technology decisions
- TEAM-003+: Technical team structure and coordination

**Cross-Reference Preparation:**
- Validate all feature-to-technical references ready for architecture work
- Update risk analysis references to archived content
- Prepare architecture ID space for new technical content
```

## ID Quality Standards

### Sequential Integrity Requirements

**Mandatory Standards:**
- No gaps in ID sequences within active SoT files
- All cross-references point to valid, existing IDs
- Archived content maintains ID integrity with links
- New IDs follow established patterns and conventions

**Quality Metrics:**
```markdown
**Current ID Quality Score: 92/100**

Breakdown:
- Sequence Integrity: 98% (1 gap in FEATURES.md)
- Cross-Reference Validity: 94% (3 broken references)
- Archive Link Integrity: 89% (some temp/ links outdated)
- Naming Convention Compliance: 100% (all follow DEC-XXX pattern)

**Improvement Actions:**
1. Fill FEAT-004 gap or document reason (+ 2 points)
2. Fix 3 broken cross-references (+ 3 points) 
3. Update archived content links (+ 3 points)
Target Score: 100/100
```

### Knowledge Graph Health

**Connectivity Standards:**
- Strategic entries: Should have 3+ connections (high influence)
- Tactical entries: Should have 2+ connections (implementation links)
- Operational entries: Should have 1+ connections (context integration)
- No orphaned entries (0 connections) in active SoT

**Graph Metrics:**
- **Average Connectivity:** 2.4 connections per entry (target: 2.5+)
- **Orphaned Entries:** 2 (target: 0)
- **Highly Connected Hubs:** 3 entries with 5+ connections
- **Graph Clustering:** Strategic, tactical, operational clusters well-defined

## Integration with Other Skills

**Works with:**
- `file-validator` - Provides ID sequence validation for file integrity
- `ace-context-manager` - Assigns IDs for newly extracted content
- `quality-validator` - Validates ID quality as part of overall quality assessment
- `phase-transition-manager` - Manages ID archival and promotion during gate transitions

**Provides:**
- Sequential ID assignment for consistent knowledge organization
- Cross-reference integrity for reliable knowledge graph navigation
- Archive management for preserving historical context with ID links
- Knowledge graph analysis for understanding content relationships

## Workflows

### Workflow 1: New Entry ID Assignment
```
User: "Assign ID for new technical architecture decision"

Process:
1. Scan TECHNICAL.md for current highest ID (e.g., TECH-002)
2. Validate sequence integrity (no gaps)
3. Assign next sequential ID (TECH-003)
4. Create entry template with proper ID structure
5. Update knowledge graph tracking
6. Validate new entry integrates properly
```

### Workflow 2: Cross-Reference Audit and Repair
```
User: "Audit and fix all cross-references across SoT files"

Process:
1. Scan all SoT files for cross-reference patterns
2. Validate each reference points to existing entry
3. Check bidirectional reference integrity 
4. Identify orphaned entries and missing connections
5. Generate repair plan with specific updates needed
6. Execute repairs and validate knowledge graph integrity
```

### Workflow 3: Gate Transition ID Management
```
User: "Manage ID evolution for v0.5 → v0.6 gate transition"

Process:
1. Identify content graduating to v0.6 (keep active)
2. Identify v0.5 working content for archival
3. Plan archive structure with ID preservation
4. Update cross-references to archived content
5. Prepare ID space for new v0.6 content
6. Validate knowledge graph integrity through transition
```

## Example Commands

### ID Assignment
```
"Assign next available ID for new feature specification"
→ Scans FEATURES.md, finds FEAT-009 available, creates entry template
```

### Cross-Reference Validation
```
"Check and repair all broken cross-references in SoT files" 
→ Comprehensive reference audit with specific repair recommendations
```

### Knowledge Graph Analysis  
```
"Analyze knowledge graph connectivity and identify improvement opportunities"
→ Connectivity analysis with recommendations for strengthening relationships
```

### Gate Transition ID Management
```
"Prepare ID management for v0.6 Architecture gate transition"
→ Archive planning, reference updates, and new ID space preparation
```

## Notes

- ID integrity is fundamental to knowledge graph navigation and team coordination
- Sequential numbering provides predictable structure for team collaboration
- Cross-reference validation prevents broken context connections
- Archive management preserves historical context while maintaining active SoT clarity
- Knowledge graph analysis reveals content relationships and optimization opportunities
- Gate-aware ID management supports systematic context evolution through 10-gate lifecycle
