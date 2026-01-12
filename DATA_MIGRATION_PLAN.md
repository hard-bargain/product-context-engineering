# Data Migration & Population Plan
## From Scattered Docs to ACE Structure

**Product Phase:** Launch  
**Current State:** Scattered documentation (Golden Thread, PRD, Jira, UI designs, misc docs)  
**Goal:** Populate ACE structure for immediate team testing  
**Timeline:** 1-2 weeks  
**Date Created:** 2026-01-06

---

## Executive Summary

This plan transforms your existing scattered documentation into the structured ACE methodology, enabling your launch-phase product team to immediately benefit from organized context, AI assistance, and systematic decision tracking.

**Key Insight:** You already have the content - we just need to organize it into the ACE structure using the ID-based knowledge graph system.

---

## Current State Assessment

### What You Have ✅
1. **Golden Thread Document** - Strategic narrative and key decisions
2. **PRD** - Product requirements and specifications
3. **Jira Backlog Exports** - Features, issues, and work items
4. **UI Designs** - Design artifacts and specifications
5. **Misc Documents** - Various other documentation

### What You Need 🎯
1. **Organized SoT Files** - 7 files with ID-based entries
2. **Updated Navigation** - PRD.md, README.md reflecting current state
3. **Active Epic** - EPIC-01 tracking launch work
4. **Clear Context** - AI agents can answer questions accurately

---

## Migration Strategy

### Phase 1: Quick Win (Days 1-2)
**Goal:** Get basic structure working so team can start using it

### Phase 2: Core Content (Days 3-7)
**Goal:** Migrate all critical information with IDs

### Phase 3: Refinement (Days 8-14)
**Goal:** Polish, cross-reference, and optimize for AI

---

## Detailed Migration Plan

## Phase 1: Quick Win (Days 1-2)

### Day 1 Morning: Set Up Active Structure

#### Task 1.1: Create EPIC-01 for Launch (30 min)
**Source:** Jira backlog + current sprint data

**Action:**
```bash
cd ~/Projects/ibm-product-context-engineering
cp setup-guides/templates/sot/EPIC-01-launch.md active/epics/EPIC-01-launch.md
```

**Populate with:**
- Epic name: "Product Launch Execution"
- Status: In Progress (X% complete based on Jira)
- Timeline: [Your launch date]
- Key milestones from Jira
- Current sprint goals
- Blockers (if any)

**AI Prompt to Use:**
```
I have a Jira backlog export. Help me create EPIC-01-launch.md by:
1. Extracting launch-critical items
2. Organizing by milestone
3. Identifying blockers
4. Setting up status tracking

[Paste Jira export data]
```

#### Task 1.2: Create Initial DECISIONS.md (1 hour)
**Source:** Golden Thread document + PRD

**Action:**
```bash
cp setup-guides/templates/sot/DECISIONS.md active/source_of_truth/DECISIONS.md
```

**Extract from Golden Thread:**
- DEC-001: Core product vision/direction
- DEC-002: Target market decision
- DEC-003: Key technology choices
- DEC-004: Go-to-market approach
- DEC-005: Launch timing decision

**Format:**
```markdown
## DEC-001: [Decision Title]

**Status:** Decided  
**Date:** [When decided]  
**Owner:** [Who decided]  
**Context:** [Why this decision was needed]

**Decision:** [What was decided]

**Rationale:**
- [Reason 1]
- [Reason 2]

**Alternatives Considered:**
- [Alternative 1] - Why not chosen
- [Alternative 2] - Why not chosen

**Implications:**
- [Impact 1]
- [Impact 2]

**Related:** [Links to other IDs]
```

**AI Prompt:**
```
I have a Golden Thread document. Help me extract the top 5 strategic decisions and format them as DEC-001 through DEC-005 following the template above.

[Paste Golden Thread content]
```

### Day 1 Afternoon: Core Features & Technical

#### Task 1.3: Create FEATURES.md (1.5 hours)
**Source:** PRD + Jira backlog + UI designs

**Action:**
```bash
cp setup-guides/templates/sot/FEATURES.md active/source_of_truth/FEATURES.md
```

**Extract from PRD & Jira:**
- FEAT-001 through FEAT-010: Core launch features
- Group by: Must-Have, Should-Have, Post-Launch
- Link to Jira tickets
- Reference UI designs

**For each feature:**
```markdown
## FEAT-001: [Feature Name]

**Status:** [In Development / Testing / Done]  
**Priority:** Must-Have (Launch Blocker)  
**Owner:** [Team/Person]  
**Jira:** [PROJ-123]

**User Value:**
[What problem does this solve for users?]

**Description:**
[What the feature does]

**Acceptance Criteria:**
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

**Dependencies:**
- Requires: [FEAT-XXX, TECH-XXX]
- Blocks: [FEAT-XXX]

**Design:** [Link to UI designs]  
**Technical:** See [TECH-XXX]  
**Metrics:** See [MET-XXX]
```

**AI Prompt:**
```
I have a PRD and Jira export. Help me create FEATURES.md by:
1. Extracting all features
2. Assigning FEAT-001, FEAT-002, etc.
3. Categorizing by priority (Must/Should/Post-Launch)
4. Adding acceptance criteria
5. Identifying dependencies

[Paste PRD sections and Jira data]
```

#### Task 1.4: Create TECHNICAL.md (1 hour)
**Source:** PRD technical sections + architecture docs

**Action:**
```bash
cp setup-guides/templates/sot/TECHNICAL.md active/source_of_truth/TECHNICAL.md
```

**Document:**
- TECH-001: Overall architecture
- TECH-002: Frontend stack
- TECH-003: Backend stack
- TECH-004: Infrastructure/deployment
- TECH-005: Key technical decisions

**AI Prompt:**
```
From my PRD and technical documentation, help me create TECHNICAL.md with:
1. Tech stack overview
2. Architecture decisions (TECH-001+)
3. Code patterns and conventions
4. Infrastructure setup

[Paste technical sections]
```

### Day 2: Market, Metrics, Team

#### Task 1.5: Create MARKET.md (1 hour)
**Source:** Golden Thread + PRD + any market research

**Action:**
```bash
cp setup-guides/templates/sot/MARKET.md active/source_of_truth/MARKET.md
```

**Document:**
- MKT-001: Primary persona
- MKT-002: Secondary persona (if applicable)
- MKT-010: Competitive landscape
- MKT-011+: Key competitors
- MKT-030: Customer feedback/insights

**AI Prompt:**
```
From my Golden Thread and PRD, help me create MARKET.md with:
1. Customer personas (MKT-001+)
2. Competitive analysis (MKT-010+)
3. Market insights
4. Customer feedback if available

[Paste market sections]
```

#### Task 1.6: Create METRICS.md (1 hour)
**Source:** PRD success criteria + any analytics setup

**Action:**
```bash
cp setup-guides/templates/sot/METRICS.md active/source_of_truth/METRICS.md
```

**Document:**
- MET-001: North Star Metric
- MET-002: Launch week 1 target
- MET-003: Launch week 4 target
- MET-004: User activation metric
- MET-005+: Other key metrics

**AI Prompt:**
```
From my PRD, help me create METRICS.md with:
1. North Star Metric (MET-001)
2. Launch success metrics (MET-002+)
3. Measurement methodology
4. Targets and thresholds

[Paste success criteria and metrics sections]
```

#### Task 1.7: Create TEAM.md (30 min)
**Source:** Current team structure

**Action:**
```bash
cp setup-guides/templates/sot/TEAM.md active/source_of_truth/TEAM.md
```

**Document:**
- TEAM-001: Overall team structure
- TEAM-002+: Function-specific teams
- Roles and responsibilities
- Communication norms
- Decision-making process

#### Task 1.8: Create RELEASES.md (30 min)
**Source:** Launch plan + any previous releases

**Action:**
```bash
cp setup-guides/templates/sot/RELEASES.md active/source_of_truth/RELEASES.md
```

**Document:**
- REL-001: v1.0 Launch (upcoming)
- What's included
- Success criteria
- Timeline

---

## Phase 2: Core Content Migration (Days 3-7)

### Day 3-4: Deep Feature Documentation

#### Task 2.1: Expand FEATURES.md (4 hours)
**Goal:** Add all features from Jira with full details

**Process:**
1. Export complete Jira backlog
2. Group by epic/theme
3. Assign FEAT-XXX IDs sequentially
4. Add acceptance criteria from tickets
5. Link to UI designs where applicable
6. Cross-reference dependencies

**AI Assistance:**
```
I have a complete Jira export with [N] items. Help me:
1. Identify which are features vs. bugs vs. tasks
2. Assign FEAT-XXX IDs to features
3. Extract acceptance criteria
4. Map dependencies between features
5. Link to related TECH-XXX and MET-XXX

[Paste full Jira export]
```

#### Task 2.2: Link UI Designs to Features (2 hours)
**Goal:** Connect design artifacts to feature definitions

**Process:**
1. Inventory all UI design files
2. Map each design to FEAT-XXX
3. Add design links to FEATURES.md
4. Note design status (draft/approved/implemented)

**Create design index in temp/:**
```bash
# Create temporary design inventory
cat > temp/brainstorm/design-inventory.md << 'EOF'
# Design Inventory

## Screens/Flows
- [Screen 1] → FEAT-001, FEAT-003
- [Screen 2] → FEAT-002
- [Flow 1] → FEAT-001, FEAT-004

## Components
- [Component 1] → Used in FEAT-001, FEAT-005
- [Component 2] → Used in FEAT-002, FEAT-003
EOF
```

### Day 5-6: Technical Deep Dive

#### Task 2.3: Expand TECHNICAL.md (4 hours)
**Goal:** Complete technical documentation

**Add:**
- TECH-006+: All major technical decisions
- Architecture diagrams (link or embed)
- API contracts
- Database schema
- Security considerations
- Performance requirements
- Deployment process

**AI Assistance:**
```
From my technical documentation, help me:
1. Extract all technical decisions
2. Assign TECH-XXX IDs
3. Document rationale for each
4. Identify technical dependencies
5. Link to affected features (FEAT-XXX)

[Paste technical docs]
```

#### Task 2.4: Document Code Patterns (2 hours)
**Goal:** Capture coding standards and patterns

**Add to TECHNICAL.md:**
- Code organization
- Naming conventions
- Testing patterns
- Common utilities
- Best practices

### Day 7: Market & Metrics Refinement

#### Task 2.5: Expand MARKET.md (2 hours)
**Goal:** Complete market context

**Add:**
- Additional personas if needed
- Detailed competitive analysis
- Market trends
- Customer research findings
- Beta feedback (if available)

#### Task 2.6: Expand METRICS.md (2 hours)
**Goal:** Complete metrics framework

**Add:**
- All product health metrics
- Business metrics
- Technical metrics
- Dashboard links
- Reporting cadence

---

## Phase 3: Refinement & Optimization (Days 8-14)

### Day 8-9: Cross-Referencing

#### Task 3.1: Add Cross-References (4 hours)
**Goal:** Link all IDs together

**Process:**
1. Review each SoT file
2. Add "Related:" sections with ID links
3. Ensure decisions link to features
4. Ensure features link to technical
5. Ensure metrics link to features

**AI Assistance:**
```
Review my DECISIONS.md and FEATURES.md. Help me:
1. Identify which decisions affect which features
2. Add cross-references
3. Ensure bidirectional links
4. Flag any missing connections

[Paste both files]
```

#### Task 3.2: Validate ID Consistency (1 hour)
**Goal:** Ensure all IDs are used correctly

**Check:**
- No duplicate IDs
- Sequential numbering
- All references valid
- Consistent formatting

### Day 10-11: Update Navigation Files

#### Task 3.3: Update PRD.md (2 hours)
**Goal:** Align PRD with current reality

**Update:**
- Product vision (from Golden Thread)
- Current features (link to FEATURES.md)
- Success metrics (link to METRICS.md)
- Timeline (actual launch date)
- Team structure (link to TEAM.md)

#### Task 3.4: Update README.md (1 hour)
**Goal:** Reflect current status

**Update:**
- Current epic status
- This week's priorities
- Current blockers
- Metrics dashboard
- Team quick reference

#### Task 3.5: Refine CLAUDE.md (1 hour)
**Goal:** Add product-specific guidance

**Add:**
- Product-specific context patterns
- Common questions and where to find answers
- Launch-phase specific protocols

### Day 12-13: AI Optimization

#### Task 3.6: Test AI Queries (4 hours)
**Goal:** Ensure AI can answer questions accurately

**Test Questions:**
1. "Why did we decide to [key decision]?" → Should find DEC-XXX
2. "What features are in the launch?" → Should list FEAT-XXX
3. "What's our tech stack?" → Should reference TECH-XXX
4. "Who owns [feature]?" → Should find in FEATURES.md + TEAM.md
5. "What are our launch metrics?" → Should reference MET-XXX

**Iterate:**
- If AI can't find info, improve cross-references
- Add more context where needed
- Clarify ambiguous sections

#### Task 3.7: Create Quick Reference (2 hours)
**Goal:** Help team find information fast

**Create:** `active/QUICK_REFERENCE.md`
```markdown
# Quick Reference

## Common Questions

**Q: Where do I find [X]?**
A: See [FILE.md] → [ID-XXX]

**Q: Who owns [Y]?**
A: See TEAM.md → TEAM-XXX

[Add 10-15 most common questions]
```

### Day 14: Team Onboarding

#### Task 3.8: Create Team Onboarding Guide (2 hours)
**Goal:** Help team start using the structure

**Create:** `TEAM_ONBOARDING.md`
```markdown
# Team Onboarding to ACE Structure

## For Product Managers
1. Read PRD.md (10 min)
2. Review FEATURES.md (20 min)
3. Check EPIC-01 for current work (5 min)
4. Bookmark DECISIONS.md for reference

## For Engineers
1. Read TECHNICAL.md (15 min)
2. Review FEATURES.md for your area (15 min)
3. Check EPIC-01 for your tasks (5 min)
4. Bookmark code patterns section

## For Designers
[Similar structure]

## For Everyone
- Use IDs when discussing features/decisions
- Update SoT files when things change
- Ask AI questions using the structure
```

#### Task 3.9: Team Training Session (2 hours)
**Goal:** Get team comfortable with structure

**Agenda:**
1. Overview of ACE methodology (15 min)
2. Tour of the structure (20 min)
3. How to find information (20 min)
4. How to update SoT files (20 min)
5. Using AI with the structure (20 min)
6. Q&A (25 min)

---

## Data Source Mapping

### Golden Thread Document → ACE Structure

| Golden Thread Section | Maps To | IDs |
|----------------------|---------|-----|
| Vision & Strategy | PRD.md + DECISIONS.md | DEC-001, DEC-002 |
| Market Opportunity | MARKET.md | MKT-001, MKT-010 |
| Product Approach | FEATURES.md | FEAT-001+ |
| Success Criteria | METRICS.md | MET-001+ |
| Key Decisions | DECISIONS.md | DEC-003+ |

### PRD → ACE Structure

| PRD Section | Maps To | IDs |
|------------|---------|-----|
| Product Overview | PRD.md (keep) | - |
| Target Users | MARKET.md | MKT-001+ |
| Features | FEATURES.md | FEAT-001+ |
| Technical Requirements | TECHNICAL.md | TECH-001+ |
| Success Metrics | METRICS.md | MET-001+ |
| Timeline | RELEASES.md | REL-001 |

### Jira Backlog → ACE Structure

| Jira Item Type | Maps To | IDs |
|---------------|---------|-----|
| Epic | EPIC-01 or FEATURES.md | FEAT-XXX |
| Story | FEATURES.md | FEAT-XXX |
| Task | EPIC-01 (if launch-critical) | - |
| Bug | EPIC-01 (if launch-blocker) | - |
| Technical Debt | TECHNICAL.md notes | - |

### UI Designs → ACE Structure

| Design Artifact | Maps To | Reference |
|----------------|---------|-----------|
| Screen Designs | FEATURES.md | Link in feature |
| Component Library | TECHNICAL.md | TECH-XXX |
| Design System | TECHNICAL.md | TECH-XXX |
| User Flows | FEATURES.md | Multiple FEAT-XXX |
| Prototypes | FEATURES.md | Link in feature |

### Misc Documents → ACE Structure

| Document Type | Maps To | IDs |
|--------------|---------|-----|
| Architecture Docs | TECHNICAL.md | TECH-001+ |
| Market Research | MARKET.md | MKT-020+ |
| Customer Feedback | MARKET.md | MKT-030+ |
| Meeting Notes | temp/archive/ | - |
| Brainstorms | temp/brainstorm/ | - |
| Old Versions | temp/archive/ | - |

---

## AI Prompts Library

### For Extracting Decisions
```
I have a [Golden Thread/PRD/Meeting Notes] document. Help me extract strategic decisions and format them as:

DEC-XXX: [Decision Title]
- Status: Decided
- Date: [When]
- Context: [Why needed]
- Decision: [What was decided]
- Rationale: [Why]
- Alternatives: [What else was considered]
- Implications: [Impact]

[Paste document]
```

### For Organizing Features
```
I have a [Jira export/PRD features section]. Help me:
1. Identify distinct features
2. Assign FEAT-001, FEAT-002, etc.
3. Categorize as Must-Have/Should-Have/Post-Launch
4. Extract acceptance criteria
5. Identify dependencies
6. Format according to FEATURES.md template

[Paste data]
```

### For Technical Documentation
```
I have technical documentation. Help me:
1. Extract technical decisions
2. Assign TECH-XXX IDs
3. Document the tech stack
4. Capture architecture decisions
5. Note code patterns and conventions
6. Format according to TECHNICAL.md template

[Paste technical docs]
```

### For Cross-Referencing
```
I have DECISIONS.md and FEATURES.md. Help me:
1. Identify which decisions (DEC-XXX) affect which features (FEAT-XXX)
2. Add cross-references in both directions
3. Ensure all links are valid
4. Flag any missing connections

[Paste both files]
```

---

## Success Criteria

### Phase 1 Complete When:
- [ ] All 7 SoT files created with initial content
- [ ] EPIC-01 tracking launch work
- [ ] Top 5 decisions documented
- [ ] Top 10 features documented
- [ ] Team can find basic information

### Phase 2 Complete When:
- [ ] All features from Jira documented
- [ ] All technical decisions captured
- [ ] UI designs linked to features
- [ ] Market context complete
- [ ] Metrics framework established

### Phase 3 Complete When:
- [ ] All IDs cross-referenced
- [ ] AI can answer common questions accurately
- [ ] Navigation files updated
- [ ] Team trained and onboarded
- [ ] Quick reference guide created

### Ready for Testing When:
- [ ] Team can find information in <2 minutes
- [ ] AI answers 80%+ of questions correctly
- [ ] New team member can onboard in <1 hour
- [ ] Updates take <5 minutes
- [ ] Team reports improved context clarity

---

## Tips for Success

### 1. Start Small, Iterate Fast
- Don't try to be perfect on Day 1
- Get basic structure working, then refine
- Use AI to speed up extraction and formatting

### 2. Use AI Heavily
- AI is excellent at extracting structured data
- Use the prompts provided above
- Iterate on prompts if results aren't perfect

### 3. Involve the Team
- Don't do this alone
- Each function can populate their area
- Product → FEATURES, DECISIONS
- Engineering → TECHNICAL
- Design → Link designs to features
- Marketing → MARKET

### 4. Test Early
- Start asking AI questions on Day 3
- If AI can't find info, improve structure
- Get team feedback on Day 7

### 5. Keep It Current
- Update SoT files as decisions are made
- Use IDs in daily communication
- Archive old content to temp/

---

## Next Steps

1. **Review this plan** with your team
2. **Assign owners** for each SoT file
3. **Gather source documents** in one place
4. **Start Day 1** tasks tomorrow
5. **Schedule team training** for Day 14

---

## Questions to Answer Before Starting

1. **Who will own each SoT file?**
   - DECISIONS.md: [Name]
   - FEATURES.md: [Name]
   - TECHNICAL.md: [Name]
   - MARKET.md: [Name]
   - METRICS.md: [Name]
   - TEAM.md: [Name]
   - RELEASES.md: [Name]

2. **Where are source documents located?**
   - Golden Thread: [Location]
   - PRD: [Location]
   - Jira: [Export or access]
   - UI Designs: [Location]
   - Other docs: [Location]

3. **What's your launch date?**
   - Target: [Date]
   - This affects EPIC-01 and RELEASES.md

4. **Who should be in the Day 14 training?**
   - [List team members]

---

**Plan Status:** Ready to Execute  
**Estimated Effort:** 40-60 hours total (distributed across team)  
**Timeline:** 1-2 weeks  
**Next Action:** Review with team and assign owners