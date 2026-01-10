# ACE Context Manager - Quality Validation Reference

## Content Extraction Quality Checklist

### ✅ High Quality Extraction
- **Clear separation** between decisions, features, and technical components
- **Complete context** - includes rationale, alternatives, implications
- **Proper categorization** by ACE layer (Strategic/Tactical/Operational)
- **Unique IDs** assigned sequentially with no duplicates
- **Cross-references** established between related entries
- **Owner assignment** for accountability
- **Success criteria** defined where applicable

### ❌ Poor Quality Extraction
- Mixed categories (decisions lumped with features)
- Missing rationale or context
- Vague or incomplete descriptions
- Duplicate or conflicting ID assignments
- Missing relationships between entries
- No ownership or accountability
- Unclear success criteria

## ACE Layer Classification Guide

### Strategic Layer
**Content:** Market insights, business strategy, high-level product decisions
**Examples:** 
- Market positioning decisions
- Business model choices
- Success metrics definition
- Competitive strategy

**ID Types:** DEC-XXX (strategic), MKT-XXX, MET-XXX (strategic)

### Tactical Layer  
**Content:** Feature definitions, user experience decisions, implementation approach
**Examples:**
- Feature specifications
- User journey design
- Platform choices
- Release planning

**ID Types:** FEAT-XXX, DEC-XXX (tactical), REL-XXX, MET-XXX (tactical)

### Operational Layer
**Content:** Technical implementation, team structure, development processes
**Examples:**
- Architecture components
- Technology stack choices  
- Team responsibilities
- Development workflows

**ID Types:** TECH-XXX, TEAM-XXX, DEC-XXX (operational)

## Cross-Reference Validation Rules

### Required Cross-References
- **Features → Decisions** - Every feature should link to supporting decisions
- **Technical → Features** - Technical components should support specific features  
- **Decisions → Metrics** - Strategic decisions should link to success metrics
- **Team → Technical** - Team roles should own specific technical components

### Bidirectional Linking
When creating cross-references, ensure links work in both directions:
```markdown
# In FEATURES.md (FEAT-001)
### Related IDs
- DEC-003: Authentication Framework Choice

# In DECISIONS.md (DEC-003)  
### Related IDs
- FEAT-001: User Authentication System
```

### Link Validation
- **Verify target exists** - All referenced IDs must exist in appropriate files
- **Check relevance** - Cross-references should be meaningful and helpful
- **Maintain currency** - Update references when content changes significantly

## ID Assignment Best Practices

### Sequential Assignment
- Start from 001 in each file
- Assign next available number (no gaps)
- Use zero-padding for consistent sorting (DEC-001, not DEC-1)

### Uniqueness Validation
```bash
# Check for duplicate IDs across all SoT files
grep -r "^## [A-Z]*-[0-9]{3}:" active/source_of_truth/ | cut -d: -f1-2 | sort | uniq -d
```

### ID Lifecycle Management
- **Never reuse** deprecated IDs
- **Archive** rather than delete obsolete entries
- **Update references** when merging or splitting entries
- **Maintain history** of significant changes

## Content Quality Standards

### Decision Quality (DEC-XXX)
- **Context** clearly explains the situation requiring a decision
- **Decision statement** is unambiguous and actionable  
- **Rationale** provides logical reasoning
- **Alternatives** shows other options were considered
- **Implications** identifies follow-on actions needed

### Feature Quality (FEAT-XXX)
- **User value** clearly articulated
- **Acceptance criteria** are specific and testable
- **Dependencies** are identified and tracked
- **Priority** aligns with business strategy
- **Success metrics** are measurable

### Technical Quality (TECH-XXX)
- **Architecture** shows integration with other components
- **Performance requirements** are quantified
- **Security considerations** address risks
- **Dependencies** include all external requirements
- **Monitoring approach** enables observability

## Team Context Coordination

### PM Context Requirements
- Strategic decisions with business rationale
- Market insights supporting product direction
- Success metrics aligned with business goals
- Feature prioritization with user value

### Designer Context Requirements  
- User journey mappings
- Design decisions with user experience rationale
- Feature specifications with interaction details
- Accessibility and usability considerations

### Developer Context Requirements
- Technical architecture with integration details
- Implementation decisions with technical rationale  
- Performance and scalability requirements
- Security and compliance considerations

### Cross-Discipline Handoffs
- **Shared understanding** of decisions and rationale
- **Complete context** for implementation
- **Clear ownership** and accountability
- **Success criteria** understood by all disciplines

## Validation Scripts and Commands

### Content Completeness Check
```bash
# Check for incomplete entries (containing TODO, TBD, etc.)
grep -r "TODO\|TBD\|PLACEHOLDER" active/source_of_truth/
```

### Cross-Reference Validation
```bash
# Extract all ID references and check if targets exist
grep -r "\[A-Z]*-[0-9]{3}" active/source_of_truth/ | # Find references
cut -d: -f2 | # Extract reference
sort | uniq | # Deduplicate
while read id; do
  grep -r "^## $id:" active/source_of_truth/ || echo "Missing: $id"
done
```

### Layer Distribution Analysis
```bash
# Count entries by layer
grep -r "Layer:.*Strategic" active/source_of_truth/ | wc -l
grep -r "Layer:.*Tactical" active/source_of_truth/ | wc -l  
grep -r "Layer:.*Operational" active/source_of_truth/ | wc -l
```
