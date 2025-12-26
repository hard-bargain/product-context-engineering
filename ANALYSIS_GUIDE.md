# Analysis Guide: GHM as a Product Development Methodology

## Quick Reference: What Makes GHM Different

### The Core Problem It Solves
**Context Fragmentation in AI-Powered Development**

Traditional approaches:
- Documentation scattered across tools (Confluence, Jira, Slack, Google Docs)
- AI agents require 5-10 minute context dumps for each session
- Knowledge lives in people's heads, not in accessible structures
- Teams spend more time searching for information than building

GHM approach:
- **Single source of truth** with ID-based knowledge graph
- **Sub-minute context loading** for AI agents via navigation files
- **Structured memory** that outlives individual contributors
- **Predictable locations** for all information types

---

## Visual Architecture

### The 3+1+SoT+Temp Stack (Layer Diagram)

```
┌─────────────────────────────────────────────────────────┐
│  Layer 3: NAVIGATION (3 Files)                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │
│  │  CLAUDE.md   │  │   PRD.md     │  │  README.md   │  │
│  │  (How to     │  │  (What we're │  │  (Where we   │  │
│  │   behave)    │  │  building)   │  │   are now)   │  │
│  └──────────────┘  └──────────────┘  └──────────────┘  │
│         ↓                  ↓                  ↓          │
└─────────────────────────────────────────────────────────┘
         References IDs              References IDs
                         ↓
┌─────────────────────────────────────────────────────────┐
│  Layer +1: ACTIVE EPIC (Current Work Window)            │
│  ┌────────────────────────────────────────────────────┐ │
│  │  Section 0: Session State (handoff protocols)     │ │
│  │  Section 1: EPIC Overview                         │ │
│  │  Section 2: Work Breakdown                        │ │
│  │  Section 3A: ID TRACKING (Created/Modified IDs)   │ │
│  │  Section 4: Validation & Gates                    │ │
│  └────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────┘
         Creates/Modifies IDs
                         ↓
┌─────────────────────────────────────────────────────────┐
│  Layer SoT: SOURCE OF TRUTH LIBRARY                     │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │
│  │ BR-001: Max  │  │ UJ-003: User │  │ API-007:     │  │
│  │ 5 projects   │  │ onboarding   │  │ Auth endpoint│  │
│  │ on free plan │  │ journey      │  │ contract     │  │
│  └──────────────┘  └──────────────┘  └──────────────┘  │
│                                                          │
│  Each ID is a "card" with:                               │
│  - Metadata (created, modified, owner)                   │
│  - Specification content                                 │
│  - Cross-references to other IDs                         │
│  - Change history                                        │
└─────────────────────────────────────────────────────────┘
                         ↑
         Harvested from (then deleted)
                         ↓
┌─────────────────────────────────────────────────────────┐
│  Layer Temp: TEMPORARY SCRATCHPADS                      │
│  ┌────────────────────────────────────────────────────┐ │
│  │  Exploration, drafts, experiments                  │ │
│  │  Owner: John | Expires: 2025-01-15                 │ │
│  │  Must be harvested into SoT before archiving       │ │
│  └────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────┘
```

---

## The PRD Lifecycle Journey

### Visual Flow (v0.1 → v1.0)

```
START → [v0.1 Spark] → [v0.2 Market] → [v0.3 Commercial] → [v0.4 Journeys] → [v0.5 Red Team]
              ↓              ↓               ↓                    ↓                ↓
         Problem?       Market fit?    Monetization?        User value?      Risks known?
              ↓              ↓               ↓                    ↓                ↓
        PRD created    ICP defined    Pricing model        Journeys mapped   Mitigations set

                                              ↓

      [v0.6 Architecture] → [v0.7 Build] → [v0.8 Deploy] → [v0.9 GTM] → [v1.0 Adoption]
              ↓                   ↓               ↓             ↓              ↓
      Stack feasible?       Can we build?   Can we ship?   Attract users?  Real customers?
              ↓                   ↓               ↓             ↓              ↓
     Stack defined        EPICs created    Ops ready     Marketing live   Live optimization
```

### Gates at Each Stage
Each version has explicit **pass/fail criteria** before advancing.

---

## ID System: The Knowledge Graph

### Example ID Network

```
UJ-014 (User Onboarding Journey)
  ├─ references → BR-021 (Email verification required)
  ├─ references → BR-034 (Password complexity rules)
  ├─ tested by → TC-105 (E2E onboarding test)
  ├─ validated by → DS-012 (Golden onboarding dataset)
  └─ influenced by → CFD-008 (Customer feedback: simplify signup)

BR-021 (Email Verification Required)
  ├─ referenced by → UJ-014 (User onboarding)
  ├─ referenced by → UJ-022 (Account recovery)
  ├─ implemented in → API-031 (Email verification endpoint)
  └─ tested by → TC-089 (Email verification unit test)

API-031 (Email Verification Endpoint)
  ├─ implements → BR-021 (Email verification rule)
  ├─ uses → DBT-007 (Users table schema)
  ├─ tested by → TC-089, TC-090
  └─ documented in → PRD.md Section 4.2
```

### Why This Matters
- **No duplication** - BR-021 is defined once, referenced everywhere
- **Bidirectional tracing** - From user journey to test to implementation
- **Impact analysis** - Changing BR-021 shows all affected artifacts
- **AI context loading** - Agent says "load BR-021, API-031" instead of pasting docs

---

## Multi-Agent Collaboration Pattern

### Traditional Approach (Without GHM)

```
Session 1:
Human: "Claude, I need you to research the market for this product idea..."
[10-minute context dump about the product, users, competitors, constraints]

Claude (Research Agent): [Does research, outputs findings to chat]

Session 2:
Human: "Claude, now help me build the architecture..."
[Another 10-minute context dump, repeating most of previous info]

Claude (Architecture Agent): [Starts from scratch, no access to research findings]
```

**Problems:**
- Repeated context dumps waste time (10+ min per agent)
- Knowledge lost between sessions
- Each agent starts from zero
- No shared memory or references
- Findings disappear into chat history

---

### GHM Approach (With 3+1+SoT+Temp)

```
Session 1:
Human: "AURA (research agent), analyze market for this product. See README.md for context."

AURA:
  1. Reads README.md (30 seconds) → Current status, navigation
  2. Reads PRD.md v0.2 section (2 minutes) → Market definition
  3. Loads relevant UJ-XXX IDs from SoT (1 minute) → User journeys
  Total context loading: 3.5 minutes

  4. Does research work
  5. Writes findings to new IDs:
     - CFD-001: Customer feedback from competitor reviews
     - CFD-002: Market size data
     - CFD-003: Pricing analysis
  6. Updates EPIC Section 3A with new IDs created
  7. Updates Section 0 with session handoff notes

Session 2:
Human: "APOLLO (architecture agent), design the system. Review CFD-001, CFD-002, CFD-003 from AURA."

APOLLO:
  1. Reads README.md (30 seconds) → Current status
  2. Reads PRD.md v0.6 section (2 minutes) → Architecture requirements
  3. Reads EPIC Section 0 (30 seconds) → Last session handoff
  4. Loads CFD-001, CFD-002, CFD-003 (1 minute) → AURA's findings
  Total context loading: 4 minutes

  5. Designs architecture
  6. Creates new IDs:
     - API-001, API-002: Key API contracts
     - DBT-001: Database schema
  7. Updates EPIC Section 3A and Section 0
```

**Benefits:**
- Context loading: 3-4 minutes (vs. 10+ minutes)
- No repeated information
- Persistent memory via IDs
- Bidirectional references
- Clear handoff protocols via Section 0

---

## Session Protocols: Continuity Across AI Sessions

### The Problem
AI sessions end (timeout, context limits, crashes). How does the next session resume?

### GHM Solution: EPIC Section 0 (Session State)

> **📖 Full Implementation Guide:** For comprehensive session protocols including mandatory procedures, quality checklists, and validation criteria, see [CLAUDE.md Section 10: Session Protocols](PRD-driven-context-engineering/CLAUDE.md#10-session-protocols).

Every active EPIC includes a **Section 0** at the top:

```markdown
## Section 0: Session State

### Last Session Summary
- **Agent**: APOLLO (architecture agent)
- **Ended**: 2025-01-15 14:30 UTC
- **Status**: In progress
- **Completed**: API-031 design, DBT-007 schema draft
- **Blocked**: Waiting on PM feedback for CFD-015

### Current Focus
- **Next Task**: Implement API-031 after DBT-007 approval
- **Priority**: Complete user authentication flow (UJ-014)
- **Dependencies**: BR-021, BR-034 must be reviewed

### Context for Next Session
- DBT-007 needs indexing strategy review
- Consider caching layer for API-031 (performance target: <100ms)
- Security audit required before v0.8 deployment gate

### IDs Modified This Session
- **Created**: API-031, DBT-007
- **Modified**: UJ-014 (added API references)
- **Referenced**: BR-021, BR-034, CFD-015
```

### How It Works
1. **Session End**: Agent updates Section 0 with handoff notes
2. **Session Start**: New agent reads Section 0 first
3. **Context Continuity**: Agent knows exactly where to resume
4. **Time Saved**: 2-3 minutes vs. re-scanning entire EPIC

**Learn More:**
- [CLAUDE.md Section 10](PRD-driven-context-engineering/CLAUDE.md#10-session-protocols) - Comprehensive session protocols
- [Hook Templates](PRD-driven-context-engineering/templates/hooks/) - Enforcement via git hooks
- [Session Validation](PRD-driven-context-engineering/tools/) - `validate_sessions.py` script

---

## Validation & Quality Gates

### Traditional Approach
- Quality checks are afterthoughts
- "We'll add tests later"
- Documentation lags behind code
- No clear definition of "done"

### GHM Approach: Gates at Every Stage

Each PRD version requires passing specific gates:

| Stage | Gate Type | Example Checks |
|-------|-----------|----------------|
| **v0.1 Spark** | Alignment | Team agrees on problem statement |
| **v0.2 Market** | Clarity | ICP defined, market segments specific |
| **v0.3 Commercial** | Viability | Pricing model, competitive analysis |
| **v0.4 Journeys** | User Value | Journeys mapped to real pains |
| **v0.5 Red Team** | Risk | Failure modes identified, mitigations planned |
| **v0.6 Architecture** | Feasibility | Stack defined, feasible within constraints |
| **v0.7 Build** | Buildability | EPICs defined, tests planned |
| **v0.8 Deploy** | Deployability | Security scans pass, ops runbooks ready |
| **v0.9 GTM** | Feedback Loop | Analytics in place, funnel defined |
| **v1.0 Adoption** | Market Fit | Real customers, actual revenue |

### Testing Philosophy

GHM maps tests to IDs:

```markdown
## BR-021: Email Verification Required

**Rule**: Users must verify email within 24 hours of registration

**Tests**:
- TC-089: Unit test for email verification logic
- TC-090: Integration test for email sending
- TC-105: E2E test for complete registration flow (references UJ-014)

**Validated By**:
- DS-012: Golden dataset with 100 test users
```

**Key Insight**: Tests are not separate - they're **part of the specification**.

---

## Comparison: GHM vs. Existing Methodologies

### GHM vs. Waterfall

| Aspect | Waterfall | GHM |
|--------|-----------|-----|
| **Documentation** | Comprehensive upfront, then stale | Progressive, always current |
| **Change** | Painful, requires change control | Expected, gates ensure quality |
| **Memory** | Locked in phase documents | ID-based, accessible anytime |
| **AI Support** | None | First-class citizen |

### GHM vs. Agile

| Aspect | Agile | GHM |
|--------|-------|-----|
| **Adaptability** | High | High (maintained) |
| **Documentation** | "Just enough" → scattered | Structured, ID-based |
| **Knowledge** | Tribal, in tickets/Slack | Durable, in SoT library |
| **Onboarding** | Days/weeks | Minutes/hours |
| **AI Integration** | Ad-hoc | Systematic (CLAUDE.md) |

### GHM vs. Shape Up (Basecamp)

| Aspect | Shape Up | GHM |
|--------|----------|-----|
| **Pitch** | 1-2 page document | PRD v0.1-v0.3 |
| **Betting** | Choose projects | Pass gates |
| **Scope** | Team-driven hammering | EPIC Section 2 + ID tracking |
| **Cool-down** | 2-week breaks | Continuous temp → SoT harvesting |
| **Memory** | Project-specific | Cross-project ID graph |
| **AI** | Not addressed | Core design principle |

### The "Third Epoch" Positioning

```
Waterfall (1970s-2000s)
  ↓
Rigid → Slow → Comprehensive docs
  ↓
Problem: Can't adapt to change

Agile (2000s-2020s)
  ↓
Adaptive → Fast → Minimal docs
  ↓
Problem: Knowledge fragmentation

Context Engineering (2020s+)
  ↓
Adaptive + Coherent → Structured memory
  ↓
Solution: Best of both, optimized for AI
```

---

## Key Insights for Presentation

### 1. The Onboarding Problem

**Traditional:**
> "Where is the user authentication spec?"
>
> "Oh, let me explain... [10-minute monologue]"
>
> **Result**: Knowledge locked in people

**GHM:**
> "Where is the user authentication spec?"
>
> "See UJ-014. References BR-021, BR-034, API-031, TC-105."
>
> **Result**: Self-service in 30 seconds

### 2. The AI Amplification Effect

- AI can code 10x faster... **but only with right context**
- Context window ≠ Contextual understanding
- Traditional docs: Optimized for human linear reading
- GHM docs: Optimized for human AND AI random access

### 3. The Maintenance Objection

**Objection**: "This seems like overhead."

**Response**:
- Initial setup: 4 hours
- Daily overhead: 5-10 minutes (Section 3A updates)
- Daily savings: 30+ minutes per person (no context searching)
- **Break-even: Week 1**
- **ROI: 300%+ after Month 1**

### 4. The Scale Question

**Question**: "Does this work for large teams?"

**Answer**:
- GHM scales via **modularity**
- Large teams: Multiple products, each with own stack
- Shared SoT library for cross-product concerns
- Monorepo or multi-repo both supported
- Example: 50-person team → 5 products × 10 people each

### 5. The Tool Question

**Question**: "Do I need to abandon Jira/Notion/etc.?"

**Answer**:
- GHM is **methodology**, not a tool
- Keep your existing tools
- GHM adds the **structure** those tools lack
- Example: Jira epics → Enhanced with GHM EPIC Section 3A

---

## Practical Example: Building User Authentication

### Without GHM

**Day 1**: Product manager writes PRD in Google Docs
**Day 3**: Engineer asks "where's the spec?" → PM re-explains verbally
**Day 5**: Designer creates mocks in Figma, not linked to PRD
**Day 7**: QA asks "what should I test?" → Engineer explains verbally
**Day 10**: New engineer joins, spends 2 days getting context

**Total time spent on context**: ~40 hours across team

---

### With GHM

**Hour 1**: PM creates PRD v0.4 with UJ-014 in SoT:

```markdown
## UJ-014: User Registration and Login

**Journey**:
1. User visits signup page
2. Enters email, password
3. Receives verification email (BR-021)
4. Clicks link, account activated
5. Can now log in

**Business Rules**:
- BR-021: Email verification required within 24h
- BR-034: Password minimum 12 chars, special char required

**Success Criteria**:
- 90% of users complete signup within 5 minutes
- <2% support tickets for "can't log in"
```

**Hour 2**: Engineer reads UJ-014, creates EPIC-001:

```markdown
## EPIC-001: Implement User Authentication

### Section 3A: ID Tracking
**Created This EPIC**:
- API-031: POST /auth/register
- API-032: POST /auth/login
- API-033: POST /auth/verify-email
- DBT-007: Users table schema
- TC-089: Email verification unit test
- TC-105: E2E registration flow test

**References**:
- UJ-014: User registration journey
- BR-021, BR-034: Business rules
```

**Hour 5**: QA reads UJ-014, creates test plan directly from IDs:
- TC-105 maps to UJ-014
- TC-089 validates BR-021

**Hour 10**: New engineer joins:
1. Reads README.md (5 min) → Navigation
2. Reads UJ-014 (10 min) → Full journey
3. Reads EPIC-001 Section 3A (5 min) → All IDs
4. **Ready to contribute** (20 minutes total)

**Total time spent on context**: ~12 hours across team

**Savings**: 28 hours (70% reduction)

---

## Using This Guide for Your Presentation

### Quick Prep (30 minutes)
1. Read this entire guide
2. Review REPO_CATALOG.md for detailed inventory
3. Browse PRD-driven-context-engineering/ repo for examples

### Medium Prep (2 hours)
1. Read key methodology files:
   - `methodology/guides/context_engineering_manifesto.md`
   - `methodology/workflows/PRD_VERSION_LIFECYCLE.md`
2. Review templates:
   - `templates/epics/EPIC_template.md` (see Section 0 and 3A)
   - `templates/source_of_truth/BUSINESS_RULES_template.md`
3. Try the tools:
   ```bash
   cd PRD-driven-context-engineering
   pip install -r tools/requirements.txt
   python tools/generate_visuals.py --all
   ```

### Deep Prep (4-8 hours)
1. Create a demo project using GHM
2. Generate actual visualizations
3. Build case studies from your own experience
4. Develop interactive walkthrough

---

## Visual Assets to Create

For your presentation, create these visuals based on this guide:

1. **3+1+SoT+Temp Stack** - Four-layer diagram (page 2 of this guide)
2. **PRD Lifecycle Flow** - 10-stage progression (page 3)
3. **ID Knowledge Graph** - Example network (page 4)
4. **Multi-Agent Collaboration** - Before/after comparison (page 5-6)
5. **Session Protocol Example** - EPIC Section 0 screenshot (page 7)
6. **Comparison Matrix** - GHM vs. Waterfall/Agile/Shape Up (page 9)
7. **Onboarding Timeline** - Traditional (days) vs. GHM (minutes) (page 10)
8. **Auth Example** - Side-by-side workflow (page 11)

---

## Recommended Presentation Flow

### Act 1: The Problem (5-10 minutes)
- Context fragmentation in modern development
- AI agents need structured context
- Onboarding and knowledge transfer pain

### Act 2: The Solution (15-20 minutes)
- Introduce GHM and 3+1+SoT+Temp stack
- Explain ID-based knowledge graph
- Show PRD lifecycle progression

### Act 3: The Proof (10-15 minutes)
- Walk through concrete example (auth feature)
- Demonstrate multi-agent collaboration
- Show session protocols in action

### Act 4: The Path Forward (5-10 minutes)
- Comparison to existing methodologies
- Adoption path (minimum viable → full)
- Call to action

---

**End of Analysis Guide**
