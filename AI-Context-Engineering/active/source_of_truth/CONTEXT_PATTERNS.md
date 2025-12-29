# Context Patterns

> **ID Prefix:** PAT-XXX
>
> **Purpose:** Define reusable patterns for AI context engineering across product development
>
> **Last Updated:** 2025-12-26

---

## PAT-001: Context Layer Pattern

**Status:** Active
**Category:** Structure
**Applies To:** All disciplines, all phases

### Problem
Different team members need different levels of detail in AI context. Strategists need high-level vision; developers need implementation specifics. Mixing all levels creates bloated, unfocused context that confuses AI agents and slows collaboration.

### Solution: Three-Layer Context Architecture

Structure context into three distinct layers, each serving different purposes and audiences:

**1. Strategic Layer** (The "Why")
- **Purpose**: Long-term vision, positioning, business context
- **Audience**: Executives, strategists, product leaders
- **Time Horizon**: 6-18 months
- **Stability**: Changes quarterly or semi-annually
- **AI Use Cases**: Strategic analysis, market positioning, opportunity assessment

**Content:**
- Vision and mission
- Market positioning
- Target customers and segments
- Business model and monetization
- Strategic priorities and goals
- Key success metrics
- Competitive landscape

**Example (Good):**
```markdown
## Strategic Context

**Vision**: Enable small businesses to compete with enterprises through AI-powered automation

**Target Market**:
- SMBs (10-100 employees) in professional services
- Pain point: Can't afford enterprise tools or dedicated IT staff
- Willingness to pay: $50-200/user/month

**Strategic Priority**: Build marketplace leadership in SMB segment before competitors catch up
```

**Example (Bad - Too Tactical):**
```markdown
## Strategic Context

We're building a React app with PostgreSQL backend...
Using Stripe for payments, SendGrid for emails...
Sprint 12 focuses on user dashboard improvements...
```

**2. Tactical Layer** (The "What")
- **Purpose**: Phase-specific plans, decisions, tradeoffs
- **Audience**: Product managers, designers, tech leads
- **Time Horizon**: 1-3 months (current phase)
- **Stability**: Changes weekly or bi-weekly
- **AI Use Cases**: Feature planning, design decisions, technical architecture

**Content:**
- Current phase objectives
- Feature requirements and specs
- Design decisions and rationale
- Technical architecture choices
- Resource allocation
- Risk and mitigation plans
- Dependencies and blockers

**Example (Good):**
```markdown
## Tactical Context (Build Phase - Q1 2024)

**Phase Objective**: Launch MVP with core automation workflows

**Key Features**:
1. Email automation builder (drag-drop, no-code)
2. CRM integration (Salesforce, HubSpot)
3. Usage analytics dashboard

**Critical Decisions**:
- Using n8n workflow engine (vs building custom) - faster time to market
- Starting with 2 CRM integrations (vs 5+) - validate demand first
- Self-service onboarding (no sales-assisted) - reduce CAC

**Dependencies**:
- n8n enterprise license approval (legal review pending)
- CRM API rate limits (testing in progress)
```

**Example (Bad - Too Strategic):**
```markdown
## Tactical Context

Our vision is to democratize automation for SMBs...
We're targeting a $10B market opportunity...
```

**3. Operational Layer** (The "How")
- **Purpose**: Day-to-day execution details, code, tasks
- **Audience**: Individual contributors (developers, designers, testers)
- **Time Horizon**: Days to weeks (current sprint/iteration)
- **Stability**: Changes daily
- **AI Use Cases**: Code generation, debugging, test creation, detailed implementation

**Content:**
- Current task/ticket details
- Code architecture and patterns
- API specifications
- Database schemas
- Test cases and coverage
- Bug reports and fixes
- Implementation notes

**Example (Good):**
```markdown
## Operational Context (Current Sprint)

**Active Task**: Implement email workflow builder UI

**Tech Stack**:
- React Flow for drag-drop canvas
- Zustand for state management
- TailwindCSS for styling

**Key Files**:
- `src/components/WorkflowBuilder.tsx` - Main builder component
- `src/stores/workflowStore.ts` - Workflow state management
- `src/types/workflow.ts` - Type definitions

**Current Blocker**:
React Flow nodes not persisting state on reconnect
- Workaround: Storing node data in Zustand
- Tracking: github.com/ourorg/product/issues/234
```

**Example (Bad - Too Strategic):**
```markdown
## Operational Context

We're building an automation platform to help SMBs compete with enterprises...
```

### Usage Guidelines

**When to Use Each Layer:**

| Scenario | Layer(s) Needed |
|----------|-----------------|
| Strategic planning session | Strategic only |
| Feature spec writing | Strategic + Tactical |
| Code implementation | Tactical + Operational |
| Bug fix | Operational only |
| Architecture decision | Strategic + Tactical |
| Cross-team alignment | Strategic + Tactical |

**Layer Transitions:**
- **Strategic → Tactical**: "Given this vision, what should we build next quarter?"
- **Tactical → Operational**: "Given this feature spec, how do we implement it?"
- **Operational → Tactical**: "This implementation issue reveals a design gap"
- **Tactical → Strategic**: "User feedback suggests our positioning is off"

**Anti-Patterns to Avoid:**

❌ **Layer Mixing**: Putting implementation details in strategic context
❌ **Layer Duplication**: Repeating same info across layers (use references)
❌ **Wrong Layer for Task**: Using strategic context for debugging
❌ **Stale Layers**: Operational context from 3 sprints ago still present
❌ **Missing Layers**: Only operational context, no strategic/tactical framing

### Related IDs
- [WF-001: Phase Transition Workflow](#wf-001) - How layers evolve between phases
- [TEMP-001: Strategic Layer Template](#temp-001) - Template for strategic context
- [MP-001: Phase Alignment Principle](#mp-001) - Why layers align with phases

---

## PAT-002: Phase Alignment Pattern

**Status:** Active
**Category:** Evolution
**Applies To:** All disciplines

### Problem
Context needs vary dramatically across product development phases. Early-phase context focuses on "what to build" while late-phase context focuses on "how to scale." Using same context structure across all phases creates friction and reduces AI effectiveness.

### Solution: Phase-Aligned Context Structure

Adapt context emphasis and detail based on product development phase:

**Phase 1: Concept** (Weeks 1-4)
- **Primary Layer**: Strategic (80%)
- **Secondary Layer**: Tactical (20%)
- **Operational**: Minimal

**Focus:**
- Market opportunity and validation
- Customer pain points and needs
- Competitive landscape
- Business model hypotheses
- Success metrics

**AI Use Cases:**
- Market research synthesis
- Customer interview analysis
- Opportunity sizing
- Competitive positioning

**Example Context Weight:**
```markdown
## Concept Phase Context

### Strategic (Primary) - 80%
Vision: Enable SMBs to compete with enterprises through AI automation
Market: $10B TAM, 5M target SMBs in US
Hypothesis: SMBs will pay $100/user/month for no-code automation

### Tactical (Secondary) - 20%
MVP Scope: Email automation + 2 CRM integrations
Success Metric: 100 paying customers in 6 months

### Operational - Minimal
Tech stack exploration: React, Node.js, PostgreSQL
```

**Phase 2: Design** (Weeks 5-12)
- **Primary Layer**: Tactical (60%)
- **Secondary Layer**: Strategic (25%) + Operational (15%)

**Focus:**
- User research and personas
- Feature requirements and specs
- Design mockups and prototypes
- Information architecture
- User flows

**AI Use Cases:**
- Design critique and suggestions
- User flow optimization
- Accessibility review
- Copy and messaging refinement

**Phase 3: Build** (Weeks 13-24)
- **Primary Layer**: Operational (60%)
- **Secondary Layer**: Tactical (35%) + Strategic (5%)

**Focus:**
- Code architecture and implementation
- API design and integration
- Database schema and queries
- Testing and quality assurance
- Bug fixes and refinements

**AI Use Cases:**
- Code generation and review
- Debugging and troubleshooting
- Test case generation
- Documentation creation

**Phase 4: Test** (Weeks 25-28)
- **Primary Layer**: Operational (50%) + Tactical (50%)

**Focus:**
- Test plans and cases
- Quality assurance results
- Bug reports and prioritization
- Performance and security testing
- User acceptance testing

**AI Use Cases:**
- Test case generation
- Bug reproduction and analysis
- Performance optimization
- Security vulnerability assessment

**Phase 5: Launch** (Weeks 29-32)
- **Primary Layer**: Tactical (55%)
- **Secondary Layer**: Strategic (30%) + Operational (15%)

**Focus:**
- Go-to-market strategy
- Marketing messaging and campaigns
- Launch checklists and coordination
- Customer support preparation
- Metrics and monitoring

**AI Use Cases:**
- Marketing copy generation
- Launch plan review
- Support documentation creation
- Metrics dashboard design

**Phase 6: Scale** (Weeks 33+)
- **Balanced**: Strategic (40%) + Tactical (35%) + Operational (25%)

**Focus:**
- Growth and optimization
- Feature iteration based on data
- Infrastructure scaling
- Team and process scaling
- Strategic pivots and adjustments

**AI Use Cases:**
- Data analysis and insights
- Feature prioritization
- Performance optimization
- Process improvement suggestions

### Usage Guidelines

**Phase Transitions:**

When moving between phases, update context weights gradually:

```markdown
## Phase Transition: Design → Build

**Week 12 (Late Design)**
- Strategic: 20%
- Tactical: 60%
- Operational: 20%

**Week 13 (Early Build)**
- Strategic: 10%
- Tactical: 40%
- Operational: 50%

**Week 14 (Full Build)**
- Strategic: 5%
- Tactical: 35%
- Operational: 60%
```

**Anti-Patterns:**

❌ **Static Context**: Same context structure used across all phases
❌ **Premature Detail**: Operational context in Concept phase
❌ **Lost Strategy**: No strategic context in Build/Test phases
❌ **Abrupt Transitions**: Switching from 80% strategic to 80% operational overnight

### Related IDs
- [PAT-001: Context Layer Pattern](#pat-001) - Three-layer architecture
- [WF-001: Phase Transition Workflow](#wf-001) - How to transition between phases
- [PJ-001: Product Manager Journey](#pj-001) - How PMs manage phase transitions

---

## PAT-003: Discipline-Specific Context Pattern

**Status:** Active
**Category:** Collaboration
**Applies To:** Cross-discipline teams

### Problem
Different disciplines (strategists, designers, developers, etc.) need different context structures and emphasis. Forcing all disciplines to use identical context creates inefficiency and reduces AI effectiveness for specialized tasks.

### Solution: Discipline-Adapted Context with Shared Core

Maintain shared core context (strategic layer) while allowing discipline-specific extensions:

**Core Context (Shared by All)**
- Product vision and strategy
- Target customers and market
- Key success metrics
- Current phase and objectives

**+ Discipline-Specific Context Extensions**

### Strategist Context

**Additional Layers:**
- Market analysis and trends
- Competitive intelligence
- Business model and economics
- Strategic partnerships and opportunities
- Risk assessment and mitigation

**AI Use Cases:**
- Market opportunity analysis
- Competitive positioning recommendations
- Strategic scenario planning
- Business model validation

**Example:**
```markdown
## Strategist Context Extension

### Market Analysis
**TAM/SAM/SOM**: $10B / $2B / $100M
**Growth Rate**: 25% YoY in SMB automation space
**Key Trends**:
- AI adoption accelerating in SMB segment
- No-code tools reducing technical barriers
- Privacy regulations creating compliance opportunities

### Competitive Landscape
**Direct**: Zapier ($50M ARR, broad but shallow)
**Indirect**: Make.com ($20M ARR, power users)
**Positioning**: Enterprise-grade for SMB budget
```

### Product Manager Context

**Additional Layers:**
- Feature roadmap and prioritization
- User research and feedback
- Cross-functional coordination
- Sprint/release planning
- Success metrics and KPIs

**AI Use Cases:**
- Feature prioritization recommendations
- User feedback synthesis
- Roadmap sequencing optimization
- Success metric tracking

### Designer Context

**Additional Layers:**
- Design system and components
- User personas and journeys
- Accessibility requirements
- Visual design principles
- Interaction patterns

**AI Use Cases:**
- Design critique and suggestions
- Accessibility review
- Copy and microcopy refinement
- User flow optimization

**Example:**
```markdown
## Designer Context Extension

### Design System
**Component Library**: Custom React components + Radix UI
**Typography**: Inter (headings), System fonts (body)
**Colors**: Brand primary (#3B82F6), neutrals, semantic colors
**Spacing**: 4px base unit, 8px grid

### User Personas
**Primary**: "Busy Beth" - SMB operations manager
- Pain: Drowning in repetitive tasks
- Goal: Automate without learning to code
- Comfort: Comfortable with email, basic spreadsheets
```

### Developer Context

**Additional Layers:**
- Technical architecture
- API specifications
- Code patterns and conventions
- Development environment setup
- Testing and deployment processes

**AI Use Cases:**
- Code generation and completion
- Bug fixing and debugging
- Code review and refactoring
- Test case generation

**Example:**
```markdown
## Developer Context Extension

### Tech Stack
**Frontend**: React 18, TypeScript, TailwindCSS, React Query
**Backend**: Node.js, Express, PostgreSQL, Prisma ORM
**Infrastructure**: Vercel (frontend), Railway (backend), Supabase (DB)

### Code Conventions
- Functional components with hooks
- Custom hooks in `src/hooks/`
- API routes in `src/pages/api/`
- Type-first development (TypeScript strict mode)

### Current Architecture
```
src/
├── components/    # Reusable UI components
├── features/      # Feature-specific code
├── hooks/         # Custom React hooks
├── lib/           # Utilities and helpers
├── pages/         # Next.js pages and API routes
└── types/         # TypeScript type definitions
```
```

### Tester/QA Context

**Additional Layers:**
- Test strategy and coverage
- Known issues and bugs
- Test environments and data
- Quality standards and acceptance criteria
- Performance and security requirements

**AI Use Cases:**
- Test case generation
- Bug reproduction steps
- Edge case identification
- Regression test planning

### Marketer Context

**Additional Layers:**
- Messaging and positioning
- Customer segments and personas
- Marketing channels and campaigns
- Content calendar and assets
- Conversion metrics and funnels

**AI Use Cases:**
- Marketing copy generation
- Campaign planning
- Content ideation
- A/B test hypothesis generation

### Usage Guidelines

**Context Sharing Model:**

```
┌─────────────────────────────────────┐
│     Shared Core (All Disciplines)   │
│  - Vision, strategy, customers      │
│  - Current phase and objectives     │
└─────────────────────────────────────┘
         ↓         ↓         ↓
   ┌─────────┐ ┌────────┐ ┌──────────┐
   │Strategist│ │Designer│ │Developer │
   │Extension│ │Extension│ │Extension│
   └─────────┘ └────────┘ └──────────┘
```

**Cross-Discipline References:**

When one discipline needs context from another, use references:

```markdown
## Developer Context

### Design References
See: Designer context for full design system
Key Component: WorkflowBuilder in Figma (link)
Interaction spec: [DES-042](#) in designer context

### Strategic References
Vision: [STRAT-001](#) - SMB automation focus
Target customer: See strategist persona "Busy Beth"
```

**Anti-Patterns:**

❌ **Discipline Silos**: No shared core context
❌ **One-Size-Fits-All**: Forcing designers to maintain developer context
❌ **Context Duplication**: Repeating shared info in each discipline
❌ **Broken References**: Linking to stale or moved context

### Related IDs
- [PAT-001: Context Layer Pattern](#pat-001) - How layers work across disciplines
- [WF-002: Cross-Discipline Handoff](#wf-002) - Transferring context between disciplines
- [PJ-XXX: Practitioner Journeys](#) - How each discipline uses ACE

---

## PAT-004: Context Evolution Pattern

**Status:** Active
**Category:** Lifecycle
**Applies To:** All phases, all disciplines

### Problem
Context grows stale as products evolve. Yesterday's strategic priorities shift, features change scope, code gets refactored. Without systematic evolution, context becomes liability rather than asset—confusing AI agents and slowing teams.

### Solution: Progressive Context Refinement

Treat context as living artifact that evolves through explicit workflows:

**Evolution Triggers:**

1. **Phase Transitions** (Concept → Design → Build...)
   - Review and update all three layers
   - Adjust layer weights per PAT-002
   - Archive outdated phase-specific context

2. **Sprint/Iteration Boundaries**
   - Update operational layer
   - Review tactical layer for changes
   - Flag strategic drift

3. **Major Decisions or Pivots**
   - Immediate strategic layer update
   - Cascade to tactical/operational
   - Document decision rationale

4. **Scheduled Reviews** (Weekly/Monthly)
   - Check context freshness
   - Remove stale information
   - Add new learnings

**Evolution Workflow:**

```markdown
## Context Evolution Checklist

### Weekly (Operational Layer)
- [ ] Update current sprint/task details
- [ ] Remove completed work context
- [ ] Add new blockers or learnings
- [ ] Update code architecture if changed

### Bi-Weekly (Tactical Layer)
- [ ] Review feature specs for changes
- [ ] Update design decisions if revised
- [ ] Refresh dependencies and timelines
- [ ] Add new risks or mitigations

### Monthly (Strategic Layer)
- [ ] Validate vision still accurate
- [ ] Update market/competitive intelligence
- [ ] Refresh success metrics and progress
- [ ] Note strategic pivots or adjustments

### Phase Transitions (All Layers)
- [ ] Archive previous phase context to temp/
- [ ] Shift layer weights per PAT-002
- [ ] Update primary focus areas
- [ ] Refresh cross-discipline references
```

**Versioning Strategy:**

```markdown
## Context Version History

**v2.1** (2024-01-15) - Build Phase, Sprint 12
- Updated: Tech stack (added React Query)
- Removed: Design phase mockup details
- Added: Performance optimization context

**v2.0** (2024-01-01) - Build Phase Start
- Major update: Transitioned from Design to Build
- Shifted weights: Tactical 60% → Operational 60%
- Archived: User research details to temp/design-phase-research.md

**v1.5** (2023-12-15) - Design Phase, Final Sprint
- Updated: Design system with new components
- Added: Developer handoff documentation
- Noted: 3 major design decisions and rationale
```

**Context Pruning Rules:**

| Context Age | Action |
|-------------|--------|
| Current phase | Keep active in main context |
| Previous phase | Summarize, move details to temp/ |
| 2+ phases ago | Archive to temp/, keep only key decisions |
| 6+ months old | Delete unless historically significant |

**Example Evolution:**

**Concept Phase Context:**
```markdown
## Strategic Context (Week 2)
Vision: SMB automation platform
Hypothesis: SMBs will pay $100/user/month
Target: 100 customers in 6 months
```

↓ **Evolves to...**

**Design Phase Context:**
```markdown
## Strategic Context (Week 8)
Vision: SMB automation platform ← Kept
Validated: SMBs will pay $75-150/user (not exact $100) ← Updated with learning
Target: 100 customers in 8 months (adjusted timeline) ← Updated
New: Focus on operations managers, not IT ← Added

## Tactical Context (NEW)
MVP Features: Email automation, 2 CRM integrations
Design system: Custom components + Radix UI
```

↓ **Evolves to...**

**Build Phase Context:**
```markdown
## Strategic Context (Week 14)
Vision: SMB automation for operations teams ← Refined
Validated pricing: $99/user/month ← Finalized
Target: 150 customers in 6 months ← Updated based on early traction

## Tactical Context (Reduced)
Features: See codebase README for current scope ← Moved detail
Key decisions: Using n8n engine, 2 CRM integrations ← Kept only decisions

## Operational Context (NEW)
Current Sprint: Workflow builder UI
Tech Stack: React, TypeScript, PostgreSQL
Active Files: [detailed code context...]
```

### Anti-Patterns:

❌ **Context Hoarding**: Keeping every detail forever
❌ **No Evolution**: Context unchanged for months
❌ **Undocumented Changes**: Updating without noting what/why
❌ **Lost History**: Deleting all old context with no archive

### Related IDs
- [WF-001: Phase Transition Workflow](#wf-001) - How to evolve context between phases
- [PAT-002: Phase Alignment Pattern](#pat-002) - When to shift layer weights
- [TOOL-001: Context Health Checker](#tool-001) - Automated staleness detection

---

## PAT-005: Context Quality Pattern

**Status:** Active
**Category:** Validation
**Applies To:** All contexts

### Problem
"Garbage in, garbage out"—poor quality context produces poor AI results. Without quality standards, teams create bloated, stale, or incomplete context that reduces AI effectiveness and slows collaboration.

### Solution: Context Quality Metrics and Checkpoints

Define measurable quality criteria and regular validation:

**Quality Dimensions:**

**1. Completeness**
Does context include all necessary information for AI to be effective?

**Checklist:**
- [ ] Strategic layer present (vision, customers, metrics)
- [ ] Appropriate detail for current phase (per PAT-002)
- [ ] Cross-references to related context documented
- [ ] Decision rationale captured (not just decisions)
- [ ] Success criteria clearly stated

**Bad (Incomplete):**
```markdown
## Context
We're building an automation platform.
Tech stack: React, Node.js.
```

**Good (Complete):**
```markdown
## Strategic Context
Vision: Enable SMBs to compete with enterprises through AI automation
Target: Operations managers at 10-100 person companies
Success: 100 paying customers at $99/user/month within 6 months

## Tactical Context (Build Phase)
MVP Features: Email automation, CRM sync (Salesforce, HubSpot)
Key Decision: Using n8n engine vs custom (faster TTM, trade: less control)
Dependencies: n8n enterprise license (pending legal review)

## Operational Context (Current Sprint)
Active: Workflow builder UI component
Tech Stack: React 18, TypeScript, TailwindCSS, React Query
Files: src/components/WorkflowBuilder.tsx, src/stores/workflowStore.ts
```

**2. Freshness**
Is context current and relevant, or stale and outdated?

**Freshness Targets:**
- **Strategic Layer**: Updated monthly or on major pivots
- **Tactical Layer**: Updated bi-weekly or at phase transitions
- **Operational Layer**: Updated daily/weekly during active work

**Staleness Indicators:**
- ⚠️ Context references completed work as "upcoming"
- ⚠️ Context mentions team members who left months ago
- ⚠️ Context describes features that were cut or redesigned
- ⚠️ Context includes "current sprint" from 6 sprints ago

**Health Check:**
```markdown
## Context Freshness Check

✅ **Strategic**: Last updated 2024-01-10 (2 weeks ago)
❌ **Tactical**: Last updated 2023-11-15 (2 months ago) ← STALE
✅ **Operational**: Last updated 2024-01-22 (2 days ago)

Action: Review and update tactical layer this week
```

**3. Conciseness**
Is context focused and scannable, or bloated with unnecessary detail?

**Conciseness Rules:**
- Use references/links instead of duplicating content
- Archive historical context to temp/ after phase transitions
- Keep operational layer to <500 lines during active development
- Summarize instead of listing every detail

**Too Bloated:**
```markdown
## Operational Context

### Every Component (200+ listed)
### Every API Endpoint (100+ listed)
### Every Database Table (50+ listed)
### Complete Git History (1000+ commits)
### All Past Bugs (500+ issues)
```

**Right-Sized:**
```markdown
## Operational Context

### Key Components (Top 10 actively changing)
WorkflowBuilder, NodeEditor, ConnectionManager...
Full list: See src/components/README.md

### Critical APIs (Currently implementing)
POST /workflows, GET /workflows/:id, PUT /workflows/:id/nodes
Full spec: See docs/api-spec.md

### Active Work
Current file: src/components/WorkflowBuilder.tsx
Current issue: Node state persistence on reconnect
Related: github.com/org/repo/issues/234
```

**4. Accuracy**
Is context factually correct and aligned with reality?

**Accuracy Checks:**
- URLs and references are valid (not 404)
- Code examples compile/run
- Metrics and numbers are current
- Status reflects actual state (not aspirational)

**Inaccurate:**
```markdown
Our product has 10,000 users ← Actually 847
We use React 17 ← Actually upgraded to React 18
Current priority: Social features ← Actually pivoted to integrations
```

**Accurate:**
```markdown
Our product has 847 active users (goal: 1,000 by Q1 end)
Tech stack: React 18.2, TypeScript 5.1, Node.js 20
Current priority: CRM integrations (pivot from social features in Dec 2023)
```

**5. Accessibility**
Can all team members easily find and understand relevant context?

**Accessibility Criteria:**
- Clear navigation and structure
- Consistent formatting and conventions
- Searchable (good headings, keywords)
- Appropriate for audience (no jargon overload)

**Quality Validation Workflow:**

```markdown
## Weekly Context Quality Review

### Completeness Check
- [ ] All 3 layers present and appropriate for phase
- [ ] Key decisions documented with rationale
- [ ] Cross-references valid

### Freshness Check
- [ ] Strategic layer updated within last month
- [ ] Tactical layer updated within last 2 weeks
- [ ] Operational layer updated within last week
- [ ] No references to obsolete work

### Conciseness Check
- [ ] No duplication (using references instead)
- [ ] Historical context archived
- [ ] Operational layer < 500 lines

### Accuracy Check
- [ ] All links valid
- [ ] Numbers and metrics current
- [ ] Status reflects reality

### Accessibility Check
- [ ] Clear structure and headings
- [ ] Consistent formatting
- [ ] Appropriate detail level

**Quality Score: X/5 dimensions passing**
```

**Quality Metrics:**

| Metric | Target | Current | Status |
|--------|--------|---------|--------|
| Freshness (days since update) | < 7 (operational) | 3 | ✅ |
| Freshness (days since update) | < 14 (tactical) | 18 | ❌ |
| Freshness (days since update) | < 30 (strategic) | 12 | ✅ |
| Size (lines, operational) | < 500 | 342 | ✅ |
| Broken references | 0 | 2 | ❌ |
| Completeness score | 5/5 | 4/5 | ⚠️ |

### Anti-Patterns:

❌ **No Quality Checks**: Never reviewing or validating context
❌ **Perfection Paralysis**: Spending hours polishing instead of working
❌ **Metrics Without Action**: Tracking quality but not improving
❌ **Inconsistent Standards**: Different quality expectations per team member

### Related IDs
- [TOOL-001: Context Health Checker](#tool-001) - Automated quality validation
- [WF-003: Quality Review Workflow](#wf-003) - How to conduct reviews
- [MP-002: Quality Over Quantity](#mp-002) - Principle of concise, high-quality context

---

**Total Patterns:** 5
**Last Updated:** 2025-12-26
**Category Breakdown:**
- Structure: 1 (PAT-001)
- Evolution: 1 (PAT-002)
- Collaboration: 1 (PAT-003)
- Lifecycle: 1 (PAT-004)
- Validation: 1 (PAT-005)
