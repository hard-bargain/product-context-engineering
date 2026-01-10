---
name: file-validator
description: Validate markdown files and check cross-references for ACE methodology compliance. Use when checking SoT file integrity, validating cross-references, or ensuring documentation quality.
metadata:
  author: "GHM Team"
  version: "1.2"
  category: "validation"
  ghm_compatible: true
  ace_integration: "Imported from GHM with 10-gate terminology support"
---

# File Validator Skill

## When to Use This Skill

- **Validate markdown files** for proper structure and formatting
- **Check cross-references** and links between SoT entries
- **Verify ID consistency** across DECISIONS.md, FEATURES.md, TECHNICAL.md files
- **Validate file integrity** before gate transitions or team handoffs
- **Check documentation compliance** with ACE methodology standards

## Core Validation Functions

### 1. Markdown Structure Validation

**File Format Checks:**
```markdown
## Structure Validation Results

**DECISIONS.md:**
✅ Proper YAML frontmatter present
✅ Consistent heading structure (## for entries)
✅ Required metadata fields complete
⚠️  DEC-003 missing "Owner" field
❌ DEC-005 has malformed cross-reference syntax

**FEATURES.md:**
✅ Feature entries follow template structure
✅ Acceptance criteria properly formatted
⚠️  FEAT-002 missing user value statement
✅ All cross-references use proper [ID] format

**TECHNICAL.md:**
✅ Technical specifications complete
✅ Architecture diagrams linked properly
❌ TECH-001 missing dependencies section
```

### 2. Cross-Reference Validation

**Link Integrity Checks:**
```markdown
## Cross-Reference Validation Report

**Valid References (23 total):**
✅ DEC-001 → MKT-001 (valid strategic to market reference)
✅ FEAT-001 → DEC-002 (valid feature to strategic reference)
✅ TECH-001 → FEAT-003 (valid technical to feature reference)

**Broken References (4 total):**
❌ DEC-003 → TEAM-005 (TEAM-005 does not exist)
❌ FEAT-004 → TECH-007 (TECH-007 not yet created)
❌ MKT-002 → DEC-006 (DEC-006 was renamed to DEC-004)
⚠️  TECH-002 → REL-001 (REL-001 exists but in different file)

**Orphaned Entries (2 total):**
⚠️  TEAM-003 (not referenced by any other entries)
⚠️  MET-004 (isolated metric, no connections)

**Recommendation:** Fix broken references before gate transition
```

### 3. ID Consistency Validation

**Sequential ID Checks:**
```markdown
## ID Sequence Validation

**DECISIONS.md ID Sequence:**
✅ DEC-001, DEC-002, DEC-003 (sequential)
❌ DEC-005 (missing DEC-004 - gap detected)
✅ DEC-006, DEC-007 (sequential continues)

**FEATURES.md ID Sequence:**
✅ FEAT-001 through FEAT-008 (complete sequence)
⚠️  FEAT-010 (FEAT-009 missing but referenced by FEAT-010)

**TECHNICAL.md ID Sequence:**
✅ TECH-001, TECH-002 (sequential)
✅ No gaps detected

**Actions Required:**
1. Create missing DEC-004 or renumber DEC-005
2. Create FEAT-009 or update FEAT-010 references
3. Verify all cross-references after ID corrections
```

### 4. Template Compliance Validation

**Required Field Checks:**
```markdown
## Template Compliance Report

**Decision Entries (DEC-XXX):**
Required Fields: Status, Date, Layer, Owner, Decision, Rationale, Related IDs

DEC-001: ✅ Complete (all fields present)
DEC-002: ✅ Complete (all fields present)  
DEC-003: ⚠️  Missing Owner field
DEC-005: ❌ Missing Rationale and Related IDs

**Feature Entries (FEAT-XXX):**
Required Fields: Status, Date, Description, User Value, Acceptance Criteria, Owner

FEAT-001: ✅ Complete (all fields present)
FEAT-002: ⚠️  Missing User Value statement
FEAT-003: ✅ Complete (all fields present)

**Technical Entries (TECH-XXX):**
Required Fields: Purpose, Architecture, Dependencies, Performance, Security

TECH-001: ⚠️  Missing Dependencies section
TECH-002: ✅ Complete (all fields present)

**Compliance Rate: 73% - Needs improvement before quality gate**
```

### 5. Gate-Specific Validation

**10-Gate Context Validation:**
```markdown
## Gate Context Validation: v0.5 Red Team Review

**Expected Content for v0.5 Gate:**
✅ Risk analysis decisions present (DEC-005, DEC-006)
✅ Assumption validation documented (MKT-003, TECH-002)  
⚠️  Technical feasibility assessment incomplete (TECH-003 missing)
❌ Go/no-go criteria not documented (need DEC-007)

**Content Appropriateness for Gate:**
✅ Strategic context stable from v0.1-v0.3 (appropriate)
✅ Tactical context from v0.4 user journeys (current)
⚠️  Operational details minimal (appropriate for v0.5)
❌ Premature v0.7 build content detected (should be archived)

**Gate Readiness Assessment: 78%**
**Blocking Issues:** Missing technical feasibility and go/no-go criteria
```

## Validation Workflows

### Workflow 1: Pre-Gate Transition Validation
```
User: "Validate all SoT files before v0.5 → v0.6 gate transition"

Process:
1. Check markdown structure and formatting across all SoT files
2. Validate cross-reference integrity and link consistency  
3. Verify ID sequences and template compliance
4. Assess content appropriateness for upcoming v0.6 Architecture gate
5. Generate gate readiness report with blocking issues
6. Recommend fixes before allowing gate transition
```

### Workflow 2: Weekly File Health Check
```
User: "Run weekly validation check on all SoT files"

Process:
1. Scan for new entries and validate proper formatting
2. Check for broken cross-references introduced during week
3. Validate ID sequences haven't been disrupted
4. Check template compliance for recent additions
5. Generate weekly file health report
6. Flag any quality degradation for immediate attention
```

### Workflow 3: Cross-Reference Repair
```
User: "Fix all broken cross-references in SoT files"

Process:
1. Identify all broken references with source and target
2. Determine if target entries exist with different IDs
3. Check if references point to archived or moved content
4. Generate repair recommendations (update references vs create missing entries)
5. Validate repairs don't introduce new broken references
6. Update cross-reference integrity report
```

### Workflow 4: Template Compliance Audit
```
User: "Audit template compliance across all SoT entries"

Process:
1. Check every entry against required template fields
2. Identify missing fields, malformed content, inconsistent formatting
3. Generate compliance report by entry type and completion percentage
4. Prioritize fixes by impact on team coordination and gate readiness
5. Provide specific templates and examples for identified issues
6. Track compliance improvements over time
```

## Integration with ACE Methodology

### SoT File Structure Support

**Expected File Structure:**
```
active/source_of_truth/
├── DECISIONS.md    # DEC-XXX entries
├── FEATURES.md     # FEAT-XXX entries  
├── TECHNICAL.md    # TECH-XXX entries
├── MARKET.md       # MKT-XXX entries
├── METRICS.md      # MET-XXX entries
├── TEAM.md         # TEAM-XXX entries
└── RELEASES.md     # REL-XXX entries
```

**Validation Rules by File Type:**
- **DECISIONS.md:** Strategic, tactical, operational decisions with rationale
- **FEATURES.md:** User-facing functionality with acceptance criteria  
- **TECHNICAL.md:** Architecture, implementation, infrastructure components
- **MARKET.md:** Customer insights, competitive analysis, market validation
- **METRICS.md:** Success criteria, KPIs, measurement frameworks
- **TEAM.md:** Roles, responsibilities, coordination patterns
- **RELEASES.md:** Launch planning, deployment, go-to-market execution

### 10-Gate Content Validation

**Gate-Appropriate Content Rules:**
```
v0.1-v0.3 (Strategy): Primarily DEC-XXX strategic, MKT-XXX market
v0.4-v0.6 (Experience): Primarily FEAT-XXX features, DEC-XXX tactical  
v0.7-v0.8 (Implementation): Primarily TECH-XXX technical, REL-XXX releases
v0.9-v1.0 (Market): Primarily REL-XXX launches, MET-XXX metrics
```

**Content Layer Validation:**
- **Strategic Layer:** Cross-gate persistence, high-level decisions
- **Tactical Layer:** Gate-specific focus, evolving specifications
- **Operational Layer:** Implementation details, process documentation

## Quality Standards

### File Quality Thresholds

**Minimum Acceptable Quality:**
- Markdown syntax: 100% valid (no broken formatting)
- Cross-references: >95% valid links
- ID sequences: 100% sequential (no gaps)
- Template compliance: >90% of required fields
- Gate appropriateness: >85% content matches gate focus

**Production Quality Standards:**
- Cross-references: >98% valid links
- Template compliance: >95% of required fields  
- Gate appropriateness: >90% content alignment
- Documentation freshness: Appropriate for gate timeline
- Team accessibility: Clear and usable across disciplines

### Error Severity Levels

**Critical (Blocks Gate Transitions):**
- Broken cross-references preventing context navigation
- Missing required content for gate completion
- Invalid file structure preventing tool integration

**High (Impacts Team Coordination):**
- Template compliance issues affecting usability
- Missing metadata preventing proper categorization
- Inconsistent formatting reducing readability

**Medium (Quality Improvement Opportunities):**
- Minor formatting inconsistencies
- Optional fields missing but not required
- Opportunities for better organization

**Low (Enhancement Suggestions):**
- Style guide recommendations
- Additional cross-reference opportunities
- Documentation expansion possibilities

## Integration with Other Skills

**Works with:**
- `ace-context-manager` - Validates extracted content meets quality standards
- `quality-validator` - Provides file-level validation for overall quality assessment
- `phase-transition-manager` - Ensures file quality before gate transitions

**Provides:**
- File integrity validation for reliable context management
- Cross-reference validation for knowledge graph integrity  
- Template compliance for consistent team coordination
- Quality metrics for continuous improvement

## Example Commands

### Complete File Validation
```
"Validate all SoT files for structure, references, and gate compliance"
→ Comprehensive validation report with prioritized fix recommendations
```

### Cross-Reference Repair
```  
"Check and fix all broken cross-references in SoT files"
→ Detailed repair plan with specific reference updates needed
```

### Gate Readiness Validation
```
"Validate file quality and content for v0.6 Architecture gate readiness"
→ Gate-specific validation with blocking issues and recommendations
```

### Template Compliance Check
```
"Audit template compliance across all SoT entries and suggest improvements"
→ Compliance report with specific template fixes and examples
```

## Notes

- File validation should be run before every gate transition
- Cross-reference integrity critical for knowledge graph navigation
- Template compliance ensures consistent team coordination
- Gate-specific validation prevents inappropriate content progression
- Quality standards evolve with team maturity and gate requirements
- Integration with other skills provides comprehensive quality assurance
