# ACE SoT Entry Templates

## Decision Template (DEC-XXX)
```markdown
## DEC-XXX: [Decision Title]
**Status:** [Active|Deprecated|Pending]  
**Date:** YYYY-MM-DD  
**Layer:** [Strategic|Tactical|Operational]  
**Owner:** [Role/Name]

### Context
[Background and situation that necessitated this decision]

### Decision
[Clear statement of what was decided]

### Rationale
[Why this decision was made - business, technical, or strategic reasoning]

### Alternatives Considered
[Other options that were evaluated and why they weren't chosen]

### Implications
[Consequences and follow-on actions required]

### Success Criteria
[How to measure if this decision was correct]

### Related IDs
- [Related decisions, features, or technical components]
```

## Feature Template (FEAT-XXX)
```markdown
## FEAT-XXX: [Feature Name]
**Status:** [Planned|In Progress|Complete|Deprecated]  
**Date:** YYYY-MM-DD  
**Layer:** Tactical  
**Priority:** [Must-Have|Should-Have|Could-Have|Won't-Have]

### Description
[Clear description of the feature and its purpose]

### User Value
[How this feature benefits users and supports business goals]

### Acceptance Criteria
- [ ] [Specific, testable criteria]
- [ ] [Performance requirements]
- [ ] [Compliance or security requirements]

### User Journey
[How users will discover, use, and benefit from this feature]

### Dependencies
[Other features, decisions, or technical components required]

### Related IDs
- [Supporting decisions, technical components, metrics]
```

## Technical Template (TECH-XXX)
```markdown
## TECH-XXX: [Component/System Name]
**Status:** [Planned|In Progress|Active|Deprecated]  
**Date:** YYYY-MM-DD  
**Layer:** Operational  
**Owner:** [Tech Lead/Team]

### Purpose
[What this component does and why it's needed]

### Architecture
[High-level design and integration points]

### Implementation Details
[Key technical decisions and constraints]

### Dependencies
[External services, libraries, or other components required]

### Performance Requirements
[Scalability, latency, throughput requirements]

### Security Considerations
[Security requirements and implementation approaches]

### Monitoring & Observability
[How to monitor health and performance]

### Related IDs
- [Supporting decisions, related features, team responsibilities]
```

## Market Template (MKT-XXX)
```markdown
## MKT-XXX: [Market Insight Title]
**Status:** [Current|Validated|Outdated]  
**Date:** YYYY-MM-DD  
**Layer:** Strategic  
**Source:** [Research method or data source]

### Insight
[Key market finding or customer insight]

### Evidence
[Supporting data, research, or customer feedback]

### Implications
[What this means for product strategy and decisions]

### Confidence Level
[High|Medium|Low] - Based on quality and quantity of evidence

### Validation Plan
[How to test or confirm this insight]

### Related IDs
- [Strategic decisions influenced by this insight]
```

## Metrics Template (MET-XXX)
```markdown
## MET-XXX: [Metric Name]
**Status:** [Active|Tracking|Deprecated]  
**Date:** YYYY-MM-DD  
**Layer:** [Strategic|Tactical]  
**Owner:** [Role responsible for tracking]

### Definition
[Precise definition of what is being measured]

### Current Baseline
[Current value if known, or "TBD" if establishing baseline]

### Target
[Goal value and timeline]

### Measurement Method
[How this metric is collected and calculated]

### Frequency
[How often it's measured and reported]

### Success Threshold
[At what point this metric indicates success]

### Related IDs
- [Features and decisions this metric validates]
```

## Team Template (TEAM-XXX)
```markdown
## TEAM-XXX: [Role/Responsibility Title]
**Status:** [Active|Filled|Open|Restructured]  
**Date:** YYYY-MM-DD  
**Layer:** Operational  

### Role Definition
[Clear definition of responsibilities and scope]

### Key Responsibilities
- [Primary duty 1]
- [Primary duty 2]  
- [Primary duty 3]

### Required Skills
[Technical and soft skills needed for success]

### Success Criteria
[How to measure effectiveness in this role]

### Collaboration Points
[Key interfaces with other team members and external teams]

### Current Assignment
[Who currently fulfills this role, if anyone]

### Related IDs
- [Decisions they own, technical components they manage]
```

## Release Template (REL-XXX)
```markdown
## REL-XXX: [Release Name/Version]
**Status:** [Planned|In Progress|Released|Rolled Back]  
**Date:** YYYY-MM-DD  
**Layer:** [Tactical|Operational]  
**Release Date:** [Target or actual release date]

### Scope
[What features and changes are included]

### Release Goals
[What this release aims to achieve]

### Success Criteria
[How to measure if the release was successful]

### Rollback Plan
[How to revert if issues arise]

### Dependencies
[External factors that could affect the release]

### Communication Plan
[How and when to communicate about this release]

### Related IDs
- [Features included, technical changes, metrics to monitor]
```
