---
name: markdown-processor
description: Process and format markdown content for ACE methodology compliance. Use when formatting SoT entries, processing templates, or standardizing documentation structure.
metadata:
  author: "GHM Team"
  version: "1.1"  
  category: "formatting"
  ghm_compatible: true
  ace_integration: "Imported from GHM with ACE SoT formatting and 10-gate template support"
---

# Markdown Processor Skill

## When to Use This Skill

- **Format SoT entries** according to ACE methodology templates
- **Process markdown content** for consistency and readability
- **Generate templates** for new decisions, features, technical specifications
- **Standardize formatting** across all Source of Truth files
- **Convert content formats** between different documentation structures
- **Validate markdown syntax** and structure compliance

## Core Processing Functions

### 1. ACE Template Processing

**SoT Entry Template Generation:**
```markdown
## Template Generation: New Decision Entry

**Input:** Raw decision context
**Output:** Properly formatted DEC-XXX entry

**Generated Template:**
```markdown
## DEC-005: Technology Stack Selection
**Status:** Draft
**Date:** 2025-01-08
**Layer:** Tactical  
**Owner:** Technical Lead
**Gate:** v0.6 Architecture

### Decision
Select primary technology stack for workflow automation platform implementation.

### Context
User experience requirements from v0.4 validated need for real-time collaboration and <2s response times. Technical feasibility analysis from v0.5 confirmed performance requirements achievable.

### Options Considered
1. **Node.js + React + PostgreSQL**: JavaScript full-stack, team expertise
2. **Python + Django + PostgreSQL**: Rapid development, extensive libraries  
3. **Go + React + PostgreSQL**: High performance, microservices architecture

### Decision Rationale
Selected Node.js + React + PostgreSQL based on:
- Team expertise and development velocity (4 developers experienced)
- Real-time capabilities with WebSocket support (user requirement)
- Performance benchmarks meet <2s response requirement
- Ecosystem maturity for workflow processing libraries

### Success Criteria
- Development velocity: 2+ features per sprint
- Performance: <2s workflow execution under load
- Team productivity: <1 week onboarding for new developers
- Technical debt: <10% time spent on technology-related issues

### Implications
- All v0.7 build planning uses Node.js architecture
- Frontend development continues with established React patterns
- Database design optimized for PostgreSQL query performance
- DevOps pipeline configured for Node.js deployment

### Related IDs
- FEAT-001: Workflow Builder (implements this technology choice)
- TECH-001: System Architecture (updated with stack selection)
- TEAM-002: Development Team (skill alignment confirmed)
- REL-001: Deployment Strategy (updated for Node.js deployment)
```

**Template Validation:**
✅ All required fields present
✅ Proper ACE methodology structure
✅ Gate-appropriate content level
✅ Cross-references formatted correctly
✅ Markdown syntax valid
```

### 2. Content Formatting and Standardization

**Consistency Processing:**
```markdown
## Formatting Standardization Report

**Before Processing (Raw Content):**
```
# decision about database
we decided to use postgresql because it has good performance and the team knows it. this affects the api design and frontend data handling.

related: feature-001, technical-architecture
```

**After ACE Template Processing:**
```markdown
## DEC-003: Database Selection
**Status:** Active
**Date:** 2025-01-08  
**Layer:** Operational
**Owner:** Technical Lead
**Gate:** v0.6 Architecture

### Decision
Use PostgreSQL as primary database for workflow automation platform.

### Context
Team has experience with PostgreSQL from previous projects. Performance requirements from v0.4 user testing indicate need for complex query capabilities and ACID compliance.

### Decision Rationale
PostgreSQL selected based on:
- Team expertise and operational knowledge
- Performance characteristics for complex workflow queries
- ACID compliance for data integrity requirements
- Ecosystem support for Node.js integration

### Related IDs
- FEAT-001: Workflow Builder (data persistence requirements)
- TECH-001: System Architecture (database integration)
```

**Formatting Improvements Applied:**
✅ Proper heading structure (## for entry title)
✅ Required metadata fields added (Status, Date, Layer, Owner, Gate)
✅ Structured sections (Decision, Context, Rationale, Related IDs)
✅ Professional language and clarity
✅ Proper cross-reference formatting ([ID]: Description)
```

### 3. Cross-Reference Processing

**Reference Formatting and Linking:**
```markdown
## Cross-Reference Processing

**Input (Various formats):**
```
Related: feature-001, tech-arch, team structure
See also: DEC-001, FEAT-002
Links: technical-architecture-doc, user-research
```

**Output (Standardized ACE format):**
```markdown
### Related IDs
- FEAT-001: Workflow Builder Interface
- TECH-001: System Architecture
- TEAM-001: Development Team Structure  
- DEC-001: Product Strategy Direction
- FEAT-002: User Dashboard

### External References
- [Technical Architecture Document](temp/v06-architecture/system-design.md)
- [User Research Results](temp/v04-journeys/user-testing-summary.md)
```

**Processing Results:**
✅ Consistent ID format (TYPE-XXX)
✅ Descriptive link text for usability
✅ Separated internal IDs from external references
✅ Valid markdown link syntax
✅ Proper categorization (Related IDs vs External References)
```

### 4. Gate-Specific Content Processing

**Gate Context Formatting:**
```markdown
## Gate-Specific Processing: v0.5 Red Team Review Content

**Input Content (Mixed gate context):**
```
Risk Analysis: Technical feasibility uncertain for real-time collaboration. Market research shows 67% user adoption if response <2s. Business model requires enterprise features for revenue targets.

Architecture planning started - considering microservices vs monolith. Initial user journeys validated through testing with 15 users.
```

**Processed Output (Gate-appropriate structure):**
```markdown
## Current Gate Focus: v0.5 Red Team Review

### Risk Analysis (Primary v0.5 Focus)
**Technical Risk:** Real-time collaboration feasibility uncertain
- **Assessment:** Medium risk - requires proof of concept
- **Mitigation:** Develop WebSocket prototype in current sprint
- **Go/No-Go Impact:** Blocking for v0.6 if unresolved

**Market Risk:** User adoption dependent on performance
- **Assessment:** Low risk - clear user validation
- **Validation:** 67% adoption at <2s response (n=15 user tests)
- **Success Criteria:** Maintain <2s performance in technical implementation

**Business Risk:** Enterprise feature delivery for revenue
- **Assessment:** Medium risk - feature scope vs timeline
- **Mitigation:** Prioritize P0 enterprise features for MVP
- **Dependencies:** Enterprise customer validation (scheduled v0.9)

### Context from Previous Gates
**Strategic Foundation (v0.1-v0.3):**
- Market validated through customer discovery
- Business model confirmed with enterprise focus  
- Success metrics established: <2s performance, 67% adoption

**User Experience Context (v0.4):**
- User journeys validated with 15 user tests
- Real-time collaboration identified as critical feature
- Performance expectations established through user research

### Future Gate Preparation (v0.6 Architecture)
- Architecture exploration initiated (microservices vs monolith)
- Technical approach dependent on v0.5 risk resolution
- Implementation planning ready once technical approach validated
```

**Gate Processing Features:**
✅ Current gate focus clearly identified and prioritized
✅ Previous gate context summarized appropriately  
✅ Future gate preparation noted but not overemphasized
✅ Content organized by gate-appropriate priorities
✅ Risk analysis structured for v0.5 decision-making
```

### 5. Template Generation and Customization

**Dynamic Template Creation:**
```markdown
## Template Generator: Custom Entry Types

**Request:** Generate template for new market insight entry

**Generated Template: MKT-XXX Entry**
```markdown
## MKT-XXX: [Insight Title]
**Status:** [Draft/Active/Validated/Archived]
**Date:** YYYY-MM-DD
**Layer:** Strategic
**Owner:** [Strategy Lead/Research Lead]  
**Gate:** [v0.1-v0.3 for market insights]

### Market Insight
[Clear statement of market opportunity, trend, or customer behavior]

### Evidence and Validation
[Data sources, research methods, sample sizes]
- Customer interviews: [number] interviews with [segment]
- Market research: [sources and methodology]
- Competitive analysis: [scope and findings]
- Usage data: [metrics and trends if available]

### Business Implications  
[How this insight affects product strategy and business decisions]

### Confidence Level
[High/Medium/Low with rationale for confidence assessment]

### Success Criteria
[How to validate or measure this insight over time]

### Related IDs
- [DEC-XXX: Strategic decisions influenced by this insight]
- [FEAT-XXX: Features validated or invalidated by this insight]  
- [MET-XXX: Metrics supporting or measuring this insight]

### External References
- [Link to supporting research documents]
- [Link to interview transcripts or data sources]
```

**Template Features:**
✅ All standard ACE methodology fields included
✅ Entry-type specific sections (Evidence, Confidence Level)
✅ Gate-appropriate context (Strategic layer, early gates)
✅ Comprehensive cross-reference structure
✅ Professional formatting and structure
```

## Processing Workflows

### Workflow 1: Raw Content to ACE Template
```
User: "Convert this meeting note into a properly formatted decision entry"

Process:
1. Analyze raw content to identify decision elements
2. Extract key information (decision, rationale, alternatives, implications)
3. Apply appropriate ACE template structure (DEC-XXX format)
4. Add required metadata (status, date, layer, owner, gate)
5. Format cross-references and external links properly
6. Validate markdown syntax and template compliance
```

### Workflow 2: Bulk Content Standardization  
```
User: "Standardize formatting across all SoT files"

Process:
1. Scan all SoT files for formatting inconsistencies
2. Identify entries missing required template fields
3. Apply consistent heading structure and markdown formatting
4. Standardize cross-reference formatting across all entries
5. Update metadata fields for gate and layer consistency
6. Generate formatting compliance report with improvements made
```

### Workflow 3: Gate-Specific Content Restructuring
```
User: "Process content for v0.5 red team review gate focus"

Process:
1. Analyze content for gate appropriateness and focus areas
2. Restructure content to emphasize v0.5 priorities (risk analysis)
3. Summarize previous gate context appropriately  
4. Format future gate preparation without over-emphasis
5. Apply gate-specific section structures and priorities
6. Validate content supports gate objectives and team needs
```

### Workflow 4: Template Generation and Customization
```
User: "Generate template for new technical architecture entry"

Process:
1. Identify entry type and gate context (TECH-XXX, v0.6 Architecture)
2. Select appropriate template base (technical, operational layer)
3. Customize sections for architecture-specific content needs
4. Include gate-appropriate cross-reference suggestions
5. Format template with proper ACE methodology structure
6. Validate template completeness and usability
```

## Quality Standards

### Formatting Requirements

**Markdown Compliance:**
- Valid markdown syntax (headings, lists, links, code blocks)
- Consistent heading hierarchy (## for entries, ### for sections)
- Proper link formatting for cross-references and external links
- Code block formatting for technical specifications

**ACE Template Compliance:**  
- All required metadata fields present (Status, Date, Layer, Owner, Gate)
- Proper section structure for entry type
- Cross-references formatted as bullet lists with descriptions
- Gate-appropriate content level and focus

### Content Processing Quality

**Consistency Standards:**
```markdown
**Processing Quality Score: 94/100**

Breakdown:
- Markdown Syntax: 98% (minor list formatting improvements needed)
- Template Compliance: 92% (some entries missing Owner field)
- Cross-Reference Formatting: 96% (consistent ID format achieved)
- Gate Appropriateness: 90% (some v0.7 content in v0.5 context)

**Quality Improvements:**
1. Complete missing Owner fields across 3 entries
2. Update cross-reference descriptions for clarity
3. Move premature implementation content to appropriate gate context
4. Standardize technical specification formatting
```

**Processing Accuracy:**
- Content meaning preserved: 100% (no information loss during processing)
- Context appropriateness: 92% (gate-specific focus maintained)  
- Template field accuracy: 95% (metadata correctly applied)
- Cross-reference integrity: 98% (valid ID relationships maintained)

## Integration with ACE Methodology

### SoT File Type Processing

**Specialized Processing by File:**
- **DECISIONS.md:** Decision structure, rationale formatting, alternatives analysis
- **FEATURES.md:** User value statements, acceptance criteria, feature descriptions
- **TECHNICAL.md:** Architecture formatting, technical specifications, implementation details
- **MARKET.md:** Evidence formatting, confidence levels, business implications
- **METRICS.md:** Measurement frameworks, success criteria, tracking specifications
- **TEAM.md:** Role definitions, responsibility matrices, coordination patterns
- **RELEASES.md:** Timeline formatting, milestone definitions, success criteria

### 10-Gate Content Processing

**Gate-Specific Processing Rules:**
```markdown
**v0.1-v0.3 (Strategy Gates):** 
- Emphasize strategic rationale and business implications
- Include market evidence and customer validation
- Focus on high-level decisions with broad impact

**v0.4-v0.6 (Experience Gates):**
- Highlight user value and experience implications
- Include user research validation and testing results
- Focus on tactical implementation and feature specifications

**v0.7-v0.8 (Implementation Gates):**
- Emphasize technical details and implementation requirements
- Include performance specifications and quality criteria
- Focus on operational execution and delivery requirements

**v0.9-v1.0 (Market Gates):**
- Highlight market impact and adoption implications
- Include success metrics and validation criteria
- Focus on launch readiness and market success factors
```

## Integration with Other Skills

**Works with:**
- `file-validator` - Processes content to meet validation requirements
- `ace-context-manager` - Formats extracted content using proper templates
- `id-tracker` - Ensures proper ID formatting and cross-reference structure
- `quality-validator` - Processes content to meet quality standards

**Provides:**
- Consistent formatting for reliable team coordination
- Template compliance for systematic content organization
- Cross-reference standardization for knowledge graph integrity
- Gate-appropriate content structuring for systematic evolution

## Example Commands

### Content Template Processing
```
"Convert this technical discussion into a properly formatted TECH entry"
→ Analyzes content, applies technical template, formats with proper structure
```

### Bulk Standardization
```
"Standardize formatting across all SoT files for consistency"
→ Processes all files, applies consistent formatting, generates compliance report
```

### Gate-Specific Restructuring
```
"Process content to emphasize v0.5 red team review priorities"
→ Restructures content with gate focus, summarizes context appropriately
```

### Template Generation
```
"Generate template for new market insight entry with research validation"
→ Creates customized MKT template with research-specific sections and structure
```

## Notes

- Content processing preserves meaning while improving structure and consistency
- Template compliance ensures systematic team coordination and knowledge organization
- Gate-specific processing maintains appropriate focus and content priorities
- Cross-reference standardization supports knowledge graph navigation and integrity
- Quality formatting improves team accessibility and collaborative effectiveness
- Integration with other skills provides comprehensive content management workflow
