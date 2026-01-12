# Workflows

> **ID Prefix:** WF-XXX
>
> **Purpose:** Document systematic workflows for AI context engineering
>
> **Last Updated:** 2025-12-26

---

## WF-001: Gate Transition Workflow

**Status:** Active
**Category:** Context Evolution
**Frequency:** Each product gate transition (varies by gate: days to months)

### Purpose
Systematically transition AI context when moving between product development gates (v0.1 Spark → v0.2 Market Definition → ... → v1.0 Market Adoption), ensuring context remains aligned with gate-specific deliverables and needs.

### When to Execute
- **Trigger**: Product gate completion and readiness for next gate (e.g., v0.4 User Journeys complete, starting v0.5 Red Team Review)
- **Timing**: Within first week of new gate
- **Owner**: Product Manager or gate-specific owner (Strategy lead for v0.1-v0.3, Build lead for v0.6-v0.8, GTM lead for v0.9)

### Pre-Transition Checklist

**1 Week Before Transition:**
- [ ] Review current gate context completeness and deliverables
- [ ] Archive gate-specific details to temp/
- [ ] Identify what carries forward to next gate
- [ ] Document key decisions and learnings (DEC-XXX, TECH-XXX, etc.)
- [ ] Update strategic layer with validated insights
- [ ] Confirm gate exit criteria met (see gate-specific checklist)

### Transition Steps

**Step 1: Archive Current Gate Context (Day 1)**

Archive detailed gate-specific content:

```markdown
## Archive Checklist

From: v0.4 User Journeys
To: temp/v04-user-journeys-archive-2024-01.md

Archiving:
- [ ] Detailed user research notes and interview transcripts
- [ ] Journey map iterations
- [ ] Persona research and validation notes
- [ ] User story backlog (draft versions)

Keeping (summarized):
- ✅ Final persona definitions (link to full in temp/)
- ✅ Core user journeys and pain points
- ✅ Must-have feature list with rationale
- ✅ Key user insights informing architecture
```

**Step 2: Update Context Layer Weights (Day 1-2)**

Shift emphasis based on new gate per [PAT-002](CONTEXT_PATTERNS.md#pat-002):

| From Gate | To Gate | Strategic | Tactical | Operational |
|-----------|---------|-----------|----------|-------------|
| v0.1 Spark | v0.2 Market | 90% → 70% | 10% → 30% | 0% → 0% |
| v0.2 Market | v0.3 Commercial | 70% → 60% | 30% → 40% | 0% → 0% |
| v0.3 Commercial | v0.4 Journeys | 60% → 30% | 40% → 60% | 0% → 10% |
| v0.4 Journeys | v0.5 Red Team | 30% → 20% | 60% → 70% | 10% → 10% |
| v0.5 Red Team | v0.6 Architecture | 20% → 10% | 70% → 40% | 10% → 50% |
| v0.6 Architecture | v0.7 Build | 10% → 5% | 40% → 30% | 50% → 65% |
| v0.7 Build | v0.8 Deployment | 5% → 5% | 30% → 40% | 65% → 55% |
| v0.8 Deployment | v0.9 GTM | 5% → 35% | 40% → 50% | 55% → 15% |
| v0.9 GTM | v1.0 Adoption | 35% → 40% | 50% → 35% | 15% → 25% |

**Example Transition (v0.4 User Journeys → v0.5 Red Team Review):**

```markdown
## Context Restructuring: v0.4 Journeys → v0.5 Red Team

### Strategic Layer (30% → 20%)
Before:
- Vision and market positioning
- Target customer segments
- Competitive differentiation

After:
- Vision summary (link to full PRD)
- Key market validation: "50 SMBs validated pain point"
- Link to v0.2-v0.3 docs in temp/

### Tactical Layer (60% → 70%)
Before:
- User personas and journeys
- Feature requirements (P0/P1/P2)
- User research insights

After:
- **Risk analysis** (new - primary focus)
- Assumption validation checklist
- Mitigation strategies for top risks
- Feature requirements (summarized, linked)
- Go/no-go criteria

### Operational Layer (10% → 10%)
Before:
- Tech stack considerations
- Integration requirements

After:
- Technical validation needed (email deliverability, CRM API limits)
- Proof-of-concept requirements
```

**Step 3: Add New Gate Context (Day 2-3)**

Introduce gate-appropriate content per [PAT-002](CONTEXT_PATTERNS.md#pat-002):

**For v0.6 Architecture:**
- Technical architecture and system design
- Technology stack selection and rationale
- Infrastructure and scalability plan
- Integration patterns
- Security and compliance requirements

**For v0.7 Build Execution:**
- Sprint/EPIC execution tracking
- Code conventions and patterns
- Active development files
- Implementation blockers
- Test coverage and technical debt

**For v0.9 Go-to-Market:**
- Launch strategy and timeline
- Marketing messaging and campaigns
- Sales enablement materials
- Customer support preparation
- Analytics and feedback mechanisms

**Step 4: Update Cross-Discipline References (Day 3-4)**

Ensure all disciplines have updated context:

```markdown
## Cross-Discipline Update Checklist

- [ ] Designer: Handoff specs to developer context
- [ ] Developer: Reference final design decisions
- [ ] PM: Update tactical layer with build priorities
- [ ] Tester: Receive acceptance criteria
- [ ] Marketer: Get product positioning updates
```

**Step 5: Validate Transition (Day 5)**

Run quality checks:

```markdown
## Transition Quality Check

✅ Context Completeness:
- [ ] New gate focus area has appropriate detail and deliverables
- [ ] Previous phase summarized (not lost)
- [ ] Strategic core maintained across transition
- [ ] Cross-references updated

✅ Layer Weights:
- [ ] Weights match target for new phase
- [ ] No duplication between layers
- [ ] Each layer serves its purpose

✅ Team Alignment:
- [ ] All disciplines aware of transition
- [ ] Shared core updated and synced
- [ ] Discipline extensions reflect new phase

✅ AI Effectiveness:
- [ ] Test AI with new phase tasks
- [ ] Verify AI recommendations align with phase
- [ ] Adjust context if AI seems confused
```

### Post-Transition

**Week 1 of New Phase:**
- Monitor AI effectiveness with new context structure
- Collect team feedback on context utility
- Make quick adjustments based on initial learnings

**Week 2:**
- Finalize new phase context structure
- Document transition lessons in this workflow
- Schedule next transition review

### Example: Complete Design → Build Transition

**Design Phase Context (Before):**
```markdown
## Context (Design Phase - Week 12)

### Strategic (20%)
Vision: SMB automation platform
Target: Operations managers
Success: 100 customers @ $99/user/mo

### Tactical (60%)
**Active Design Work**:
- Workflow builder mockups (Figma v3.2)
- User testing with 5 ops managers
- Design system: 24 components created

**User Research**:
- Pain: Manual data entry taking 10hrs/week
- Need: Visual, no-code workflow builder
- Concern: Security and reliability

**Design Decisions**:
- Drag-drop canvas (not form-based)
- Visual node editor (not code)
- Built-in CRM templates

### Operational (20%)
Tech stack: React, TypeScript, PostgreSQL
Prototype: React Flow proof of concept
Performance: Target <2s workflow execution
```

**Build Phase Context (After):**
```markdown
## Context (Build Phase - Week 13)

### Strategic (5%)
Vision: SMB automation ([full doc](temp/strategic-context.md))
Target: Operations managers (see "Busy Beth" persona)
Current: Building MVP workflow builder

### Tactical (35%)
**Build Objectives (Sprint 13-24)**:
- Workflow builder UI (6 sprints)
- CRM integrations: Salesforce, HubSpot (4 sprints)
- Email automation engine (4 sprints)

**Key Design Decisions** ([from Design phase](temp/design-phase-archive.md)):
- Visual drag-drop workflow builder
- Node-based configuration
- Templates for common automations

**Acceptance Criteria**:
- Matches Figma designs pixel-perfect
- <2s workflow execution
- 99.9% CRM sync reliability

### Operational (60%)
**Tech Stack**:
Frontend: React 18, TypeScript, TailwindCSS, React Flow
Backend: Node.js, Express, PostgreSQL, Prisma
Infrastructure: Vercel, Railway, Supabase

**Code Architecture**:
```
src/
├── features/workflows/
│   ├── components/WorkflowBuilder.tsx
│   ├── hooks/useWorkflowState.ts
│   └── api/workflows.ts
```

**Current Sprint (13)**:
- Active: WorkflowBuilder.tsx canvas implementation
- Blocker: React Flow state persistence
- Team: Sarah (UI), Mike (backend), Alex (integrations)

[Archived]: Full design specs in temp/design-phase-archive.md
```

### Related IDs
- [PAT-002: Gate Alignment Pattern](CONTEXT_PATTERNS.md#pat-002)
- [PAT-004: Context Evolution Pattern](CONTEXT_PATTERNS.md#pat-004)
- [MP-003: Progressive Evolution Principle](PRINCIPLES.md#mp-003)

---

## WF-002: Weekly Context Review Workflow

**Status:** Active
**Category:** Quality Assurance
**Frequency:** Weekly (30 minutes)

### Purpose
Maintain high-quality, fresh context through regular review and updates, preventing context staleness and ensuring AI effectiveness.

### When to Execute
- **Frequency**: Weekly (end of sprint/iteration)
- **Duration**: 30 minutes
- **Owner**: Varies by layer (Strategist, PM, Developers)

### Weekly Review Checklist

**Strategic Layer Review (10 min) - Monthly or on pivots**

Owner: Strategist or Product Lead

```markdown
## Strategic Layer Health Check

Freshness:
- [ ] Last updated within 30 days?
- [ ] Vision statement still accurate?
- [ ] Target customers unchanged?
- [ ] Success metrics current?

Accuracy:
- [ ] Market opportunity numbers current?
- [ ] Competitive landscape up to date?
- [ ] Strategic priorities aligned with reality?

Actions:
- [ ] Update any stale information
- [ ] Add new strategic insights
- [ ] Archive outdated hypotheses
- [ ] Validate with stakeholders if major changes
```

**Tactical Layer Review (10 min) - Bi-weekly during active development**

Owner: Product Manager

```markdown
## Tactical Layer Health Check

Freshness:
- [ ] Last updated within 14 days?
- [ ] Feature specs reflect current plan?
- [ ] Dependencies list current?
- [ ] Decisions documented with rationale?

Completeness:
- [ ] New features added?
- [ ] Completed work archived?
- [ ] Blockers documented?
- [ ] Cross-team dependencies noted?

Actions:
- [ ] Remove completed feature context
- [ ] Add new sprint objectives
- [ ] Update blockers and risks
- [ ] Document new decisions made this week
```

**Operational Layer Review (10 min) - Weekly during active development**

Owner: Engineering Lead or Senior Developer

```markdown
## Operational Layer Health Check

Freshness:
- [ ] Last updated within 7 days?
- [ ] Active files list current?
- [ ] Current blockers documented?
- [ ] Recent architecture changes captured?

Quality:
- [ ] Code examples accurate (compile/run)?
- [ ] API specs match implementation?
- [ ] File structure reflects current state?
- [ ] Performance metrics current?

Conciseness:
- [ ] Operational layer < 500 lines?
- [ ] Old sprint details archived?
- [ ] References used vs duplication?

Actions:
- [ ] Update active files and current work
- [ ] Document new blockers or learnings
- [ ] Archive completed sprint details
- [ ] Add new architecture decisions
```

### Review Process

**Step 1: Automated Checks (5 min)**

Run context health check (if available):

```bash
# Example automated checks
./tools/check-context-health.sh

Output:
✅ Strategic layer: Updated 12 days ago (target: <30)
⚠️  Tactical layer: Updated 16 days ago (target: <14) - ACTION NEEDED
✅ Operational layer: Updated 3 days ago (target: <7)
⚠️  Broken references: 2 found - FIX NEEDED
✅ Context size: 420 lines (target: <500)
```

**Step 2: Manual Review (15 min)**

Focus on flagged items and recent changes:

```markdown
## This Week's Context Updates

Added:
- New blocker: HubSpot API rate limit issue
- Architecture decision: Using Zustand for workflow state
- Team change: Alex joining integrations team

Removed:
- Completed: Salesforce integration (moved to temp/)
- Resolved blocker: React Flow state persistence
- Old sprint 11 details (archived)

Updated:
- Performance: 1.8s avg workflow execution (was 2.1s)
- Coverage: 78% (was 72%)
- Active sprint: Now Sprint 13
```

**Step 3: Validation (5 min)**

Test AI effectiveness with updated context:

```markdown
## Quick AI Validation

Ask AI:
1. "What's blocking us right now?"
   - Should mention HubSpot rate limits

2. "How should we implement workflow state management?"
   - Should reference Zustand decision

3. "What are we working on this sprint?"
   - Should mention Sprint 13 focus

If AI answers incorrectly → context update needed
```

**Step 4: Document Review (5 min)**

```markdown
## Weekly Context Review Log

Date: 2024-01-26
Reviewer: Sarah (Dev Lead)
Duration: 25 minutes

Updates Made:
- Added HubSpot blocker
- Archived Sprint 11 details
- Updated performance metrics
- Documented Zustand decision

Issues Found:
- 2 broken links (fixed)
- Tactical layer slightly stale (updated)

AI Validation: ✅ Passed (3/3 questions correct)

Next Review: 2024-02-02
```

### Monthly Deep Review (90 min)

Once per month, conduct deeper review:

**All Layers:**
- [ ] Cross-reference validation (all links work)
- [ ] Consistency check (terminology, formatting)
- [ ] Completeness audit (gaps identified)
- [ ] Team survey (is context helpful?)

**Metrics Review:**
- [ ] AI response quality trends
- [ ] Context usage statistics
- [ ] Time savings measurements
- [ ] Team feedback analysis

**Improvements:**
- [ ] Identify patterns in updates
- [ ] Optimize frequently-accessed sections
- [ ] Remove consistently unused sections
- [ ] Add missing high-value content

### Related IDs
- [PAT-005: Context Quality Pattern](CONTEXT_PATTERNS.md#pat-005)
- [MP-002: Quality Over Quantity](PRINCIPLES.md#mp-002)
- [MP-003: Progressive Evolution](PRINCIPLES.md#mp-003)

---

## WF-003: Cross-Discipline Context Handoff Workflow

**Status:** Active
**Category:** Collaboration
**Frequency:** As needed (phase transitions, feature handoffs)

### Purpose
Ensure smooth context transfer when work moves between disciplines (e.g., Designer → Developer, Developer → Tester), maintaining context quality and completeness.

### When to Execute
- **Trigger**: Work handoff between disciplines
- **Examples**: Design → Development, Development → QA, Build → Marketing
- **Duration**: 30-60 minutes per handoff

### Handoff Checklist Template

**Pre-Handoff (Sender):**

```markdown
## Context Handoff Preparation

From: [Your discipline]
To: [Receiving discipline]
Feature/Work: [What's being handed off]
Date: YYYY-MM-DD

**Shared Core Updated:**
- [ ] Strategic context current
- [ ] Feature objectives clear
- [ ] Success criteria defined
- [ ] Cross-discipline references valid

**My Context Extension:**
- [ ] Work completed and documented
- [ ] Decisions and rationale captured
- [ ] Open questions/risks identified
- [ ] Next steps outlined

**Handoff Artifacts:**
- [ ] Specifications/designs/code ready
- [ ] Documentation complete
- [ ] Examples and edge cases provided
- [ ] Testing/acceptance criteria clear
```

**Handoff (Both Parties):**

```markdown
## Handoff Meeting (30-60 min)

**Review Together:**
1. Walk through completed work
2. Explain key decisions and why
3. Highlight risks and considerations
4. Answer questions and clarify

**Context Transfer:**
1. Show where information lives in context
2. Explain cross-references and links
3. Identify what receiving discipline needs to add
4. Validate understanding

**Action Items:**
- [ ] Receiving discipline confirms understanding
- [ ] Open questions documented
- [ ] Follow-up timeline agreed
- [ ] Context ownership transferred
```

**Post-Handoff (Receiver):**

```markdown
## Context Handoff Acceptance

Received from: [Sender discipline]
Work: [What was handed off]
Date: YYYY-MM-DD

**Validated:**
- [ ] Shared core context accurate
- [ ] Sender's work documented in their context
- [ ] Specifications/artifacts accessible
- [ ] Success criteria clear

**Added to My Context:**
- [ ] Work scope and objectives
- [ ] Links to sender's context/artifacts
- [ ] My discipline-specific details
- [ ] Current status and blockers

**Follow-Up:**
- [ ] Questions answered within 2 days
- [ ] Context gap filled if found
- [ ] Sender notified of completion
```

### Example: Design → Development Handoff

**Designer Preparation:**

```markdown
## Design → Dev Handoff: Workflow Builder

**Shared Core (Already Updated):**
✅ Feature: Visual workflow builder for SMB automation
✅ Target: Operations managers (no-code users)
✅ Success: <2s execution, matches Figma pixel-perfect

**Designer Context Extension:**
Located in: `context/designer-extension.md`

✅ Design System:
- Components: WorkflowCanvas, NodeEditor, ConnectionLine
- Specs: Figma link, interaction details
- Spacing: 8px grid, 200px min node width
- Colors: Primary blue, gray neutrals

✅ User Flow:
1. User lands on empty canvas
2. Clicks "Add Node" → node palette opens
3. Drags node to canvas
4. Clicks node → editor panel opens
5. Configures node → saves → connects nodes

✅ Edge Cases:
- Empty state: Friendly CTA to create first workflow
- Error state: Clear error messages, recovery options
- Loading: Skeleton screens (not spinners)

✅ Acceptance Criteria:
- Matches Figma designs (1440px desktop)
- All interactions <100ms responsive
- Keyboard navigation works
- Screen reader accessible

**Handoff Artifacts:**
- Figma: [link to workspace]
- Design specs: [link to document]
- Assets: SVG icons in `/assets/icons/`
- Animations: Bezier curves, 200ms ease-in-out
```

**Handoff Meeting:**

Designer walks developer through:
1. Figma designs and interaction patterns
2. Design system components to use
3. Edge cases and error states
4. Accessibility requirements
5. Questions and clarifications

**Developer Acceptance:**

```markdown
## Handoff Received: Workflow Builder

From: Sarah (Designer)
Date: 2024-01-26

**Validated:**
✅ Design specs clear and complete
✅ Figma files accessible
✅ Assets provided (icons, spacing tokens)
✅ Acceptance criteria understood

**Added to Developer Context:**
Located in: `context/developer-extension.md`

**Active Work:**
- Component: WorkflowBuilder feature
- Sprint: Sprint 13-15 (3 sprints, ~6 weeks)
- Team: Mike (backend), Sarah (design support), Tom (frontend)

**Implementation Plan:**
Week 1-2: Core canvas with React Flow
Week 3-4: Node editor panel
Week 5-6: Polish, accessibility, testing

**Technical Approach:**
- Library: React Flow (mature drag-drop)
- State: Zustand (persistence across reconnects)
- Styling: TailwindCSS + design system tokens

**Design References:**
- Figma: [link]
- Design system: See designer-extension.md#design-system
- Interactions: [PAT-XXX] in designer context

**Open Questions:**
- How to handle very large workflows (100+ nodes)?
  - Sarah: Pagination or virtualization (TBD)
- Mobile responsiveness priority?
  - Sarah: Desktop-first, mobile v2

**Status:** Ready to implement
**Blocker:** None
```

### Discipline-Specific Handoffs

**Strategist → PM:**
- Market insights → product positioning
- Customer validation → feature prioritization
- Business model → pricing strategy

**PM → Designer:**
- Feature requirements → design briefs
- User stories → design scenarios
- Success criteria → design constraints

**Designer → Developer:**
- Design specs → implementation details
- Design system → code components
- Interactions → technical requirements

**Developer → Tester:**
- Implementation → test scenarios
- Architecture → integration tests
- Bug fixes → regression tests

**Everyone → Marketer:**
- Product vision → messaging
- Features → value props
- Target users → campaigns

### Related IDs
- [PAT-003: Discipline-Specific Context](CONTEXT_PATTERNS.md#pat-003)
- [MP-004: Discipline Collaboration](PRINCIPLES.md#mp-004)
- [PJ-002: PM Journey](PRACTITIONER_JOURNEYS.md#pj-002) - orchestration

---

**Total Workflows:** 3
**Last Updated:** 2025-12-26
**Category Breakdown:**
- Context Evolution: 1 (WF-001)
- Quality Assurance: 1 (WF-002)
- Collaboration: 1 (WF-003)
