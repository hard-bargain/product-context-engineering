# ACE Principles

> **ID Prefix:** MP-XXX (Methodology Principles)
>
> **Purpose:** Core principles governing AI Context Engineering
>
> **Last Updated:** 2025-12-26

---

## MP-001: Phase Alignment Over Universal Structure

**Status:** Active
**Category:** Structure

### Principle
Context structure should align with product development phase, not force universal structure across all phases.

### Rationale
Different phases have fundamentally different information needs:
- **Concept phase** needs strategic vision and market validation
- **Build phase** needs implementation details and code architecture
- **Scale phase** needs growth metrics and optimization insights

Forcing same context structure across all phases creates friction and reduces effectiveness.

### Application

**Do:**
- ✅ Adjust context layer weights as phases change (see PAT-002)
- ✅ Archive phase-specific context when transitioning
- ✅ Emphasize appropriate detail level for current phase
- ✅ Review and update context structure at phase boundaries

**Don't:**
- ❌ Maintain detailed code context during Concept phase
- ❌ Keep only strategic vision during Build phase
- ❌ Use identical context template across all phases
- ❌ Ignore phase transitions when evolving context

### Example

**Concept Phase** (Strategic-Heavy):
```markdown
## Context (Concept Phase)

### Strategic (80%)
Vision, market opportunity, customer validation...

### Tactical (20%)
MVP scope, initial hypotheses...

### Operational (Minimal)
Tech stack exploration only
```

**Build Phase** (Operational-Heavy):
```markdown
## Context (Build Phase)

### Strategic (5%)
Vision summary, link to full strategy...

### Tactical (35%)
Feature specs, architecture decisions...

### Operational (60%)
Code, APIs, implementation details...
```

### Related IDs
- [PAT-002: Phase Alignment Pattern](CONTEXT_PATTERNS.md#pat-002)
- [WF-001: Phase Transition Workflow](WORKFLOWS.md#wf-001)

---

## MP-002: Quality Over Quantity

**Status:** Active
**Category:** Content

### Principle
Concise, high-quality context is more valuable than comprehensive, bloated context.

### Rationale
AI agents (and humans) perform better with focused, relevant information than exhaustive detail. Bloated context:
- Slows AI response time and quality
- Makes it harder to find relevant information
- Becomes stale faster (more to maintain)
- Creates maintenance burden for teams

### Application

**Do:**
- ✅ Use references/links instead of duplicating content
- ✅ Archive historical context to temp/ directory
- ✅ Keep operational layer under 500 lines during active work
- ✅ Summarize instead of listing every detail
- ✅ Remove completed work context promptly

**Don't:**
- ❌ List every component/API/table in context
- ❌ Duplicate information across layers or disciplines
- ❌ Keep historical context indefinitely in active files
- ❌ Add "just in case" information

### Metrics

| Layer | Target Size | Warning Threshold |
|-------|-------------|-------------------|
| Strategic | < 200 lines | 300 lines |
| Tactical | < 300 lines | 500 lines |
| Operational | < 500 lines | 750 lines |

### Example

**Too Much (Bloated):**
```markdown
## Operational Context

### Every Component (247 listed)
ComponentA.tsx - handles user input...
ComponentB.tsx - renders dashboard...
ComponentC.tsx - manages state...
[... 244 more components ...]

### Every API Endpoint (89 listed)
POST /api/users - creates a user...
GET /api/users/:id - fetches user...
[... 87 more endpoints ...]
```

**Right Amount (Focused):**
```markdown
## Operational Context

### Active Components (Top 5)
- WorkflowBuilder.tsx - Drag-drop workflow canvas (current work)
- NodeEditor.tsx - Individual node configuration
- ConnectionManager.tsx - Manages node connections
[Full component list: src/components/README.md]

### Current APIs (Implementing Now)
- POST /workflows - Create workflow
- PUT /workflows/:id/nodes - Update workflow nodes
[Full API spec: docs/api-specification.md]
```

### Related IDs
- [PAT-005: Context Quality Pattern](CONTEXT_PATTERNS.md#pat-005)
- [WF-003: Quality Review Workflow](WORKFLOWS.md#wf-003)

---

## MP-003: Progressive Evolution Over Static Documentation

**Status:** Active
**Category:** Lifecycle

### Principle
Context should evolve continuously through explicit workflows, not remain static documentation.

### Rationale
Products evolve—strategies pivot, features change, code refactors. Static context becomes stale liability:
- Confuses AI with outdated information
- Leads to wrong decisions based on old assumptions
- Creates trust issues (team stops relying on context)
- Wastes time maintaining irrelevant details

Progressive evolution keeps context as living asset that grows with product.

### Application

**Evolution Triggers:**
1. **Phase transitions** - Major context restructuring
2. **Sprint boundaries** - Operational layer updates
3. **Bi-weekly reviews** - Tactical layer refresh
4. **Monthly reviews** - Strategic layer validation
5. **Major decisions** - Immediate updates

**Do:**
- ✅ Update context at defined checkpoints (weekly/bi-weekly/monthly)
- ✅ Archive outdated context to temp/ with timestamps
- ✅ Document why changes were made (context evolution log)
- ✅ Version context with meaningful labels
- ✅ Remove stale information proactively

**Don't:**
- ❌ Set context once and forget
- ❌ Update without documenting changes
- ❌ Keep obsolete context "just in case"
- ❌ Let context drift without scheduled reviews

### Freshness Targets

| Layer | Update Frequency | Staleness Threshold |
|-------|------------------|---------------------|
| Operational | Daily/Weekly | 7 days |
| Tactical | Weekly/Bi-weekly | 14 days |
| Strategic | Monthly/Quarterly | 30 days |

### Example Evolution Log

```markdown
## Context Evolution History

**v3.2** (2024-01-22) - Build Phase, Sprint 14
- Updated: Added React Query to tech stack
- Removed: Design phase mockup details (archived to temp/)
- Note: Performance optimization now primary focus

**v3.1** (2024-01-15) - Build Phase, Sprint 13
- Updated: Shifted emphasis to operational layer (60%)
- Added: New blocker (API rate limits)
- Removed: Concept phase market research (archived)

**v3.0** (2024-01-08) - Phase Transition: Design → Build
- Major: Restructured for Build phase weights
- Archived: User research details to temp/design-research.md
- Added: Technical architecture and dev setup
```

### Related IDs
- [PAT-004: Context Evolution Pattern](CONTEXT_PATTERNS.md#pat-004)
- [WF-001: Phase Transition Workflow](WORKFLOWS.md#wf-001)
- [TOOL-001: Context Health Checker](TOOLS.md#tool-001)

---

## MP-004: Discipline Collaboration Through Shared Core

**Status:** Active
**Category:** Team

### Principle
Different disciplines should maintain specialized context extensions while sharing common strategic core.

### Rationale
Cross-discipline teams need:
- **Shared understanding** of vision, customers, objectives (strategic core)
- **Specialized context** for their discipline (extensions)
- **Efficient collaboration** without duplicating shared information

Forcing all disciplines to use identical context wastes time. Having completely separate context creates silos and misalignment.

### Application

**Shared Core (All Disciplines):**
- Product vision and strategy
- Target customers and market
- Current phase and objectives
- Key success metrics

**+ Discipline Extensions:**
- Strategist → Market analysis, competitive intel
- Designer → Design system, personas, user flows
- Developer → Architecture, code patterns, APIs
- Tester → Test strategy, quality standards
- Marketer → Messaging, campaigns, channels

**Do:**
- ✅ Maintain single source of truth for strategic core
- ✅ Allow disciplines to extend with specialized context
- ✅ Use cross-references between disciplines
- ✅ Update shared core collaboratively
- ✅ Keep discipline extensions in separate files/sections

**Don't:**
- ❌ Duplicate strategic core in each discipline
- ❌ Force designers to maintain developer context
- ❌ Create discipline silos with no shared context
- ❌ Let shared core drift between disciplines

### Structure

```
Context Structure:
├── SHARED-CORE.md (All disciplines)
│   ├── Vision and strategy
│   ├── Target customers
│   ├── Current phase
│   └── Success metrics
├── STRATEGIST-EXT.md (Strategist only)
│   └── Market analysis, competitive intel
├── DESIGNER-EXT.md (Designer only)
│   └── Design system, personas
└── DEVELOPER-EXT.md (Developer only)
    └── Architecture, code patterns
```

### Example

**Shared Core:**
```markdown
## Shared Strategic Core

**Vision**: Enable SMBs to compete with enterprises through AI automation
**Target**: Operations managers at 10-100 person companies
**Current Phase**: Build (Sprint 14)
**Success Metric**: 100 paying customers @ $99/user/month by Q1 end
```

**Designer Extension:**
```markdown
## Designer Context Extension

[Shared core inherited from above]

### Design System
Components: Custom React + Radix UI
Typography: Inter (headings), System (body)
Colors: Brand #3B82F6, neutrals, semantic

### User Persona
"Busy Beth" - Operations Manager
- Pain: Drowning in repetitive tasks
- Goal: Automate without coding
```

**Developer Extension:**
```markdown
## Developer Context Extension

[Shared core inherited from above]

### Tech Stack
Frontend: React 18, TypeScript, TailwindCSS
Backend: Node.js, Express, PostgreSQL
Infrastructure: Vercel, Railway, Supabase

### Current Work
Active: WorkflowBuilder.tsx component
Blocker: Node state persistence issue
```

### Related IDs
- [PAT-003: Discipline-Specific Context Pattern](CONTEXT_PATTERNS.md#pat-003)
- [PJ-XXX: Practitioner Journeys](PRACTITIONER_JOURNEYS.md) - How each discipline uses ACE

---

## MP-005: Validation Through Effectiveness Metrics

**Status:** Active
**Category:** Measurement

### Principle
Context quality should be measured by AI effectiveness and team productivity, not just documentation completeness.

### Rationale
Context exists to serve a purpose: enabling better AI collaboration and faster team execution. Measuring only documentation metrics (lines written, coverage percentage) misses the point.

**Better to measure:**
- Does AI provide better suggestions with this context?
- Do team members find context helpful or ignore it?
- Does context reduce onboarding time for new members?
- Does context stay fresh or become stale?

### Application

**Effectiveness Metrics:**

| Metric | How to Measure | Target |
|--------|----------------|--------|
| **AI Response Quality** | Team rating (1-5) of AI suggestions | > 4.0 |
| **Context Usage** | % of team accessing context weekly | > 80% |
| **Onboarding Time** | Days for new member to be productive | < 3 days |
| **Freshness** | Days since last update by layer | < 7/14/30 |
| **Issue Resolution** | AI helps resolve issue without human intervention | > 60% |
| **Time Savings** | Hours saved per week vs no context | > 5 hrs/person |

**Do:**
- ✅ Survey team on context usefulness
- ✅ Track AI effectiveness before/after context improvements
- ✅ Measure actual usage, not just creation
- ✅ A/B test context changes when possible
- ✅ Tie metrics to team outcomes (velocity, quality)

**Don't:**
- ❌ Measure only documentation completeness
- ❌ Optimize for coverage without effectiveness
- ❌ Create metrics that don't tie to outcomes
- ❌ Track metrics without acting on results

### Example Validation

**Quarterly Context Effectiveness Review:**

```markdown
## Q1 2024 Context Effectiveness

### Usage Metrics
- Team context access: 92% weekly (↑ from 78% Q4)
- AI response quality: 4.3/5 (↑ from 3.8/5 Q4)
- New member onboarding: 2.5 days (↓ from 5 days Q4)

### Freshness
- Operational: 4 days average (Target: <7) ✅
- Tactical: 11 days average (Target: <14) ✅
- Strategic: 21 days average (Target: <30) ✅

### Impact
- Time saved: 6.2 hrs/person/week
- Issues resolved by AI: 68% (up from 52%)
- Team velocity: +15% vs Q4

### Actions
- Keep current update cadence (working well)
- Add more code examples to operational layer
- Create monthly strategic review ritual
```

### Related IDs
- [PAT-005: Context Quality Pattern](CONTEXT_PATTERNS.md#pat-005)
- [TOOL-001: Context Health Checker](TOOLS.md#tool-001)
- [WF-003: Quality Review Workflow](WORKFLOWS.md#wf-003)

---

**Total Principles:** 5
**Last Updated:** 2025-12-26
**Category Breakdown:**
- Structure: 1 (MP-001)
- Content: 1 (MP-002)
- Lifecycle: 1 (MP-003)
- Team: 1 (MP-004)
- Measurement: 1 (MP-005)
