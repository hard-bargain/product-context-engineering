# ACE + SoT Full Setup Guide for Project Bob (Launch Phase)

**Version:** 1.0
**Target Tool:** Project Bob (AI-enabled IDE)
**Product Phase:** Launch
**Team Size:** Medium to Large (10-50 people)
**Setup Time:** 2-4 hours (one-time)
**Approach:** Full GHM-M SoT structure for products

---

## Overview

This guide implements the complete **3+1+SoT+Temp** structure from GHM-M, adapted for product development. This is the "full power" version of ACE, providing:

- **Systematic decision tracking** with ID-based knowledge graph
- **Team alignment** through shared source of truth
- **Context evolution** as product moves through phases
- **AI effectiveness** through structured context
- **Knowledge preservation** as team grows and changes

**Launch Phase Context Emphasis:**
- Strategic: 30% (go-to-market strategy, positioning)
- Tactical: 55% (launch execution, campaigns, metrics)
- Operational: 15% (deployment, critical fixes)

**For 30-Person Team:**
This structure enables multiple functions (product, engineering, design, marketing, sales) to maintain shared context while each discipline can extend with their specific needs.

---

## Prerequisites

- [ ] Project Bob installed and configured
- [ ] Connected to corporate GitHub account
- [ ] New repo created in corporate environment
- [ ] Anthropic models available in Project Bob
- [ ] 2-4 hours available for initial setup
- [ ] Product information ready (vision, features, tech stack, team structure)

---

## Architecture Overview

### The 3+1+SoT+Temp Stack

```
your-product/
├── PRD.md                    # 1. Product Requirements (or MRD.md)
├── README.md                 # 2. Navigation & Status
├── CLAUDE.md                 # 3. AI Agent Operating Guide
│
├── active/                   # +1. Active Work
│   ├── epics/
│   │   └── EPIC-01-launch.md      # Launch execution tracking
│   │
│   └── source_of_truth/      # SoT. Knowledge Library (ID-based)
│       ├── DECISIONS.md           # DEC-XXX: Key decisions
│       ├── FEATURES.md            # FEAT-XXX: Feature definitions
│       ├── TECHNICAL.md           # TECH-XXX: Architecture & tech
│       ├── MARKET.md              # MKT-XXX: Market insights
│       ├── METRICS.md             # MET-XXX: KPIs & measurements
│       ├── TEAM.md                # TEAM-XXX: Team structure
│       └── RELEASES.md            # REL-XXX: Release tracking
│
└── temp/                     # Temp. Scratch & Archives
    ├── brainstorm/
    ├── experiments/
    └── archive/
```

### Why This Structure?

**3 Navigation Files:** Entry points for humans and AI
**1 EPIC:** Active work tracking (Launch execution)
**SoT Library:** ID-based knowledge graph (no duplication)
**Temp:** Ephemeral content (doesn't clutter main docs)

**ID System Prevents:**
- Duplicating information across documents
- Losing decisions when people leave
- Conflicting information in different places
- Re-explaining context repeatedly

---

## Setup Process

### Phase 1: Create Directory Structure (10 min)

**Step 1.1: Create Base Structure**

In Project Bob terminal:

```bash
# Create directory structure
mkdir -p active/epics
mkdir -p active/source_of_truth
mkdir -p temp/brainstorm
mkdir -p temp/experiments
mkdir -p temp/archive

# Create navigation triad
touch PRD.md
touch README.md
touch CLAUDE.md

# Create EPIC
touch active/epics/EPIC-01-launch.md

# Create SoT files
touch active/source_of_truth/DECISIONS.md
touch active/source_of_truth/FEATURES.md
touch active/source_of_truth/TECHNICAL.md
touch active/source_of_truth/MARKET.md
touch active/source_of_truth/METRICS.md
touch active/source_of_truth/TEAM.md
touch active/source_of_truth/RELEASES.md
```

**Step 1.2: Verify Structure**

```bash
ls -R
```

You should see the complete structure above.

**Step 1.3: Initial Commit**

```bash
git add .
git commit -m "chore: Initialize product repo with ACE + SoT structure"
```

---

### Phase 2: Create Navigation Triad (45-60 min)

#### File 1: PRD.md (Product Requirements Document)

Copy this template and fill in your product details:

```markdown
# [PRODUCT NAME] — Product Requirements Document

**Version:** v1.0 (Launch)
**Last Updated:** [DATE]
**Owner:** [PM Name/Role]
**Status:** 🚀 Launch Phase

---

## Executive Summary

**Product:** [Product Name]
**Mission:** [One sentence: What change are you bringing to the world?]
**Target Launch:** [Date]
**Launch Goal:** [Primary metric target]

---

## Product Vision

### Mission Statement

[2-3 sentences: Why does this product exist? What problem are you solving?]

### Vision (12-18 months)

[Describe what success looks like in 12-18 months. What does the world look like if you succeed?]

### Product Principles

1. **[Principle 1]:** [What this means for product decisions]
2. **[Principle 2]:** [What this means for product decisions]
3. **[Principle 3]:** [What this means for product decisions]

---

## Target Market

### Primary Customer Segment

**Who:** [Detailed description: industry, company size, role, etc.]
**Size:** [Market size if known]
**Access:** [How you reach them]

### Customer Problem

**Current Pain:** [What problem are customers experiencing today?]
**Impact:** [Cost of problem: time, money, frustration, etc.]
**Attempted Solutions:** [What have they tried? Why hasn't it worked?]
**Why Now:** [Why is this the right time for your solution?]

### Customer Personas

See [MKT-001](#mkt-001-primary-persona) for detailed primary persona.

**Quick Reference:**
- **Primary:** [Name/Role] — [Key characteristic]
- **Secondary:** [Name/Role] — [Key characteristic]

---

## Product Strategy

### Value Proposition

**Core Value:** [One sentence: Why should customers choose your product?]

**Key Benefits:**
1. [Benefit 1] — [How it solves customer pain]
2. [Benefit 2] — [How it solves customer pain]
3. [Benefit 3] — [How it solves customer pain]

### Positioning & Differentiation

**Category:** [What category are you competing in?]

**Positioning Statement:**
For [target customer] who [customer need], [Product Name] is a [category] that [key benefit]. Unlike [primary alternative], our product [key differentiator].

**Key Differentiators:**
1. [Differentiator 1] — Why this matters
2. [Differentiator 2] — Why this matters
3. [Differentiator 3] — Why this matters

### Competitive Landscape

See [MKT-002](#mkt-002-competitive-analysis) for full analysis.

**Primary Competitors:**
- [Competitor 1]: [Their strength / Our advantage]
- [Competitor 2]: [Their strength / Our advantage]
- [Competitor 3]: [Their strength / Our advantage]

---

## Product Scope

### Core Features (Launch v1.0)

See [active/source_of_truth/FEATURES.md](active/source_of_truth/FEATURES.md) for full feature definitions.

**Must-Have (Launch Blockers):**
- [FEAT-001](#feat-001) — [Feature name]
- [FEAT-002](#feat-002) — [Feature name]
- [FEAT-003](#feat-003) — [Feature name]

**Should-Have (Launch targets):**
- [FEAT-004](#feat-004) — [Feature name]
- [FEAT-005](#feat-005) — [Feature name]

**Post-Launch (v1.1+):**
- [FEAT-006](#feat-006) — [Feature name]
- [FEAT-007](#feat-007) — [Feature name]

### Explicitly Out of Scope (v1.0)

**Not Including:**
- [Feature/capability] — [Why: timing, complexity, not critical, etc.]
- [Feature/capability] — [Why]
- [Feature/capability] — [Why]

**May Revisit Post-Launch:**
- [Feature/capability] — [Conditions that would change decision]

---

## Success Metrics

See [active/source_of_truth/METRICS.md](active/source_of_truth/METRICS.md) for metric definitions.

### Launch Success Criteria (Week 1-4)

| Metric | Week 1 Target | Week 4 Target | Measurement |
|--------|---------------|---------------|-------------|
| [MET-001](#met-001) Signups | [Target] | [Target] | [How measured] |
| [MET-002](#met-002) Conversions | [Target %] | [Target %] | [How measured] |
| [MET-003](#met-003) Active Users | [Target] | [Target] | [How measured] |
| [MET-004](#met-004) [Custom metric] | [Target] | [Target] | [How measured] |

### Long-term Success Metrics (3-12 months)

- **[MET-005](#met-005):** [Metric name] — Target: [Value] by [Date]
- **[MET-006](#met-006):** [Metric name] — Target: [Value] by [Date]
- **[MET-007](#met-007):** [Metric name] — Target: [Value] by [Date]

### Leading Indicators (What predicts success)

- [Indicator 1]: If we see [X], it predicts [outcome]
- [Indicator 2]: If we see [X], it predicts [outcome]

---

## Go-to-Market Strategy

### Launch Approach

**Launch Date:** [Target date]
**Launch Type:** [Hard launch, soft launch, beta, etc.]
**Launch Owner:** [Name/Role]

**Launch Sequence:**
See [EPIC-01](active/epics/EPIC-01-launch.md) for detailed timeline.

1. **[Date]:** [Milestone]
2. **[Date]:** [Milestone]
3. **[Date]:** [Milestone]
4. **[Launch Date]:** Public launch
5. **[Date]:** [Post-launch milestone]

### Launch Channels

**Primary Channel:** [Product Hunt, App Store, direct sales, etc.]
- **Goal:** [What you're trying to achieve]
- **Target:** [Specific metric]

**Secondary Channels:**
- [Channel 2]: [Goal and target]
- [Channel 3]: [Goal and target]

### Marketing & Communications

**Key Messages:**
1. [Message 1] — For [audience]
2. [Message 2] — For [audience]
3. [Message 3] — For [audience]

**Launch Collateral:**
- [ ] Landing page
- [ ] Product demo video
- [ ] Launch announcement (blog/email)
- [ ] Sales deck
- [ ] [Other materials]

---

## Business Model

### Revenue Model

**Pricing Strategy:** [Freemium, subscription, one-time, etc.]

**Pricing Tiers:**
- **[Tier 1]:** [Price] — [What's included]
- **[Tier 2]:** [Price] — [What's included]
- **[Tier 3]:** [Price] — [What's included]

**Pricing Rationale:**
[Why these prices? How did you arrive at them? Competitive benchmarks?]

### Unit Economics (if known)

- **CAC (Customer Acquisition Cost):** [Estimate]
- **LTV (Lifetime Value):** [Estimate]
- **LTV:CAC Ratio:** [Target: >3:1]
- **Payback Period:** [Target: <12 months]
- **Gross Margin:** [Target %]

### Revenue Targets

- **Month 1:** [Revenue target]
- **Month 3:** [Revenue target]
- **Month 6:** [Revenue target]
- **Month 12:** [Revenue target]

---

## Technical Architecture

See [active/source_of_truth/TECHNICAL.md](active/source_of_truth/TECHNICAL.md) for full technical details.

**High-Level Stack:**
- **Frontend:** [Framework/tech]
- **Backend:** [Framework/tech]
- **Database:** [Technology]
- **Infrastructure:** [Hosting platform]

**Key Technical Decisions:**
- [TECH-001](#tech-001): [Decision]
- [TECH-002](#tech-002): [Decision]
- [TECH-003](#tech-003): [Decision]

---

## Team & Resources

See [active/source_of_truth/TEAM.md](active/source_of_truth/TEAM.md) for team structure.

**Core Team (~30 people):**
- **Product & Strategy:** [Number] people
- **Engineering:** [Number] people
- **Design:** [Number] people
- **Marketing:** [Number] people
- **Sales:** [Number] people
- **Other:** [Number] people

**Key Roles:**
- **Product Lead:** [Name]
- **Engineering Lead:** [Name]
- **Design Lead:** [Name]
- **Marketing Lead:** [Name]
- **Launch Manager:** [Name]

---

## Risks & Mitigations

### Top Launch Risks

**Risk 1: [Risk description]**
- **Likelihood:** High / Medium / Low
- **Impact:** High / Medium / Low
- **Mitigation:** [What we're doing to prevent/reduce]
- **Contingency:** [What we'll do if it happens]
- **Owner:** [Who's monitoring]

**Risk 2: [Risk description]**
- [Same structure]

**Risk 3: [Risk description]**
- [Same structure]

### Decision Log

See [active/source_of_truth/DECISIONS.md](active/source_of_truth/DECISIONS.md) for all major decisions.

**Recent Critical Decisions:**
- [DEC-001](#dec-001): [Decision] — [Date]
- [DEC-002](#dec-002): [Decision] — [Date]
- [DEC-003](#dec-003): [Decision] — [Date]

---

## Appendices

### Related Documents

- **EPIC-01:** [Launch execution tracking](active/epics/EPIC-01-launch.md)
- **Features:** [Feature definitions](active/source_of_truth/FEATURES.md)
- **Technical:** [Architecture & tech decisions](active/source_of_truth/TECHNICAL.md)
- **Market:** [Market insights & research](active/source_of_truth/MARKET.md)
- **Metrics:** [KPI definitions](active/source_of_truth/METRICS.md)
- **Team:** [Team structure](active/source_of_truth/TEAM.md)
- **Decisions:** [Decision log](active/source_of_truth/DECISIONS.md)

### Glossary

- **[Term 1]:** [Definition]
- **[Term 2]:** [Definition]
- **[Term 3]:** [Definition]

---

**Document Status:** ✅ Active (Launch Phase)
**Next Review:** [Date — monthly during Launch]
**Owner:** [PM Name/Role]
**Version:** v1.0
```

**Time to Fill:** 30-45 minutes
**Tip:** Don't aim for perfection. Fill in what you know, mark [TBD] for unknowns, iterate later.

---

#### File 2: README.md (Navigation & Status)

```markdown
# [PRODUCT NAME]

**Status:** 🚀 Launch Phase
**Last Updated:** [DATE]
**Team:** ~30 people
**Launch Target:** [DATE]

---

## Quick Status

| Field | Value |
|-------|-------|
| **Phase** | Launch (v1.0) |
| **Launch Date** | [Target date] |
| **Primary Goal** | [Main launch metric] |
| **Current Sprint** | [Sprint number/name] |
| **Top Priority** | [This week's #1 priority] |
| **Blocker Status** | 🟢 Clear / 🟡 1-2 issues / 🔴 Critical blocker |

---

## What is [PRODUCT NAME]?

**One-Line Pitch:** [Your elevator pitch]

**Problem:** [What customer pain are you solving?]

**Solution:** [How does your product solve it?]

**Target Customer:** [Who is this for?]

---

## Navigation

### 🎯 Start Here

**For Product Context:**
1. Read [PRD.md](PRD.md) — Product vision, strategy, scope
2. Check [EPIC-01](active/epics/EPIC-01-launch.md) — Current launch execution
3. Review [active/source_of_truth/](active/source_of_truth/) — Deep dive on specific areas

**For AI Agents:**
1. Read this README for orientation
2. Read [CLAUDE.md](CLAUDE.md) for operating protocols
3. Load context based on question type:
   - Strategy questions → PRD.md + MARKET.md
   - Feature questions → FEATURES.md
   - Technical questions → TECHNICAL.md
   - Launch execution → EPIC-01 + METRICS.md

**For New Team Members:**
1. Read PRD.md (30 min) — Understand the product
2. Read your discipline's section in TEAM.md — Understand your role
3. Check EPIC-01 — See what's happening right now
4. Review relevant SoT files for your function

---

### 📚 Source of Truth Library

Located in `active/source_of_truth/`:

| File | Contains | When to Use |
|------|----------|-------------|
| **[DECISIONS.md](active/source_of_truth/DECISIONS.md)** | DEC-XXX: Major decisions & rationale | When you need to understand "why we decided X" |
| **[FEATURES.md](active/source_of_truth/FEATURES.md)** | FEAT-XXX: Feature definitions | When building, designing, or discussing features |
| **[TECHNICAL.md](active/source_of_truth/TECHNICAL.md)** | TECH-XXX: Architecture, stack, tech decisions | Technical questions, architecture planning |
| **[MARKET.md](active/source_of_truth/MARKET.md)** | MKT-XXX: Customer insights, competitive analysis | Market questions, positioning, customer needs |
| **[METRICS.md](active/source_of_truth/METRICS.md)** | MET-XXX: KPI definitions, targets, tracking | Measuring success, reporting, goal setting |
| **[TEAM.md](active/source_of_truth/TEAM.md)** | TEAM-XXX: Team structure, roles, responsibilities | Who owns what, who to ask about X |
| **[RELEASES.md](active/source_of_truth/RELEASES.md)** | REL-XXX: Release notes, version history | What shipped when, what's coming |

---

### 🚀 Active Work

**Current EPIC:** [EPIC-01: Launch Execution](active/epics/EPIC-01-launch.md)
- **Status:** [X]% complete ([Y]/[Z] issues done)
- **Timeline:** [Start date] → [Target launch date]
- **Owner:** [Name/Role]

**This Week's Priorities:**
1. [Priority 1] — Owner: [Name]
2. [Priority 2] — Owner: [Name]
3. [Priority 3] — Owner: [Name]

**Current Blockers:**
- [Blocker 1] — Impact: [High/Med/Low] — Owner: [Name] — ETA: [Date]
- [None / List blockers]

---

## Product Metrics (Live Dashboard)

**Last Updated:** [Date/time]

### Launch Metrics (Week 1-4)

| Metric | Target | Current | Status |
|--------|--------|---------|--------|
| Signups | [Target] | [Actual] | 🟢/🟡/🔴 |
| Conversions | [Target %] | [Actual %] | 🟢/🟡/🔴 |
| Active Users | [Target] | [Actual] | 🟢/🟡/🔴 |
| [Custom] | [Target] | [Actual] | 🟢/🟡/🔴 |

See [METRICS.md](active/source_of_truth/METRICS.md) for full metric definitions.

---

## Team Quick Reference

**~30 People Across 5 Functions:**

- **Product & Strategy** ([N] people) — Lead: [Name]
- **Engineering** ([N] people) — Lead: [Name]
- **Design** ([N] people) — Lead: [Name]
- **Marketing** ([N] people) — Lead: [Name]
- **Sales/CS** ([N] people) — Lead: [Name]

See [TEAM.md](active/source_of_truth/TEAM.md) for full team structure and responsibilities.

---

## ID System

This repo uses an ID-based knowledge graph to avoid duplication:

| Prefix | Type | File | Example |
|--------|------|------|---------|
| **DEC-XXX** | Decisions | DECISIONS.md | DEC-001: Tech stack choice |
| **FEAT-XXX** | Features | FEATURES.md | FEAT-001: User authentication |
| **TECH-XXX** | Technical | TECHNICAL.md | TECH-001: Database architecture |
| **MKT-XXX** | Market | MARKET.md | MKT-001: Primary persona |
| **MET-XXX** | Metrics | METRICS.md | MET-001: Signup conversion |
| **TEAM-XXX** | Team | TEAM.md | TEAM-001: Engineering structure |
| **REL-XXX** | Releases | RELEASES.md | REL-001: v1.0 Launch |

**Usage Example:**
Instead of duplicating feature descriptions, reference by ID:
"We're launching [FEAT-001](#feat-001), [FEAT-002](#feat-002), and [FEAT-003](#feat-003)."

---

## Critical Alerts

[Space for urgent updates, blockers, or important announcements]

🟢 **All systems go** / 🟡 **[Issue]** / 🔴 **[Critical issue]**

---

## Quick Links

**External:**
- Production: [URL]
- Staging: [URL]
- Analytics: [URL]
- Project Management: [Tool URL]
- Design Files: [Figma/other URL]

**Internal:**
- PRD: [PRD.md](PRD.md)
- EPIC-01: [Launch tracking](active/epics/EPIC-01-launch.md)
- SoT Library: [active/source_of_truth/](active/source_of_truth/)

---

**Last Updated:** [DATE]
**Maintained By:** [Role/Team]
**Next Update:** [Frequency: daily during launch, weekly after]
```

**Time to Fill:** 15-20 minutes

---

#### File 3: CLAUDE.md (AI Agent Operating Guide)

```markdown
# AI Agent Operating Guide — [PRODUCT NAME]

**Purpose:** Define how AI agents should operate when assisting with this product.
**Last Updated:** [DATE]
**Product Phase:** Launch

---

## Mission & Scope

**Product:** [Product Name]
**Current Phase:** Launch (v1.0)
**AI Agent Role:** Assist team with product development, launch execution, and decision-making

**Primary Users:**
- Product team (strategy, planning, decisions)
- Engineering team (technical implementation)
- Design team (UX/UI design)
- Marketing team (GTM, campaigns, content)
- Cross-functional coordination

---

## Session Protocols

### Session Start

**When starting a new session:**

1. **Read README.md** — Get current status, priorities, blockers
2. **Check EPIC-01** — Understand active work and progress
3. **Load phase-appropriate context:**
   - Launch phase = Tactical focus (55%)
   - Reference PRD.md for strategic context (30%)
   - Reference TECHNICAL.md for operational context (15%)

4. **Confirm current state:**
   - What phase are we in? (Launch)
   - What's the top priority this week?
   - Are there any blockers?

### Context Loading Strategy

**Question Type → Files to Load:**

| Question About | Primary Files | Secondary Files |
|----------------|---------------|-----------------|
| Product vision, strategy | PRD.md | MARKET.md, DECISIONS.md |
| Features | FEATURES.md | PRD.md, TECHNICAL.md |
| Technical/Architecture | TECHNICAL.md | DECISIONS.md |
| Launch execution | EPIC-01, METRICS.md | PRD.md, FEATURES.md |
| Market/Customers | MARKET.md | PRD.md |
| Team/Roles | TEAM.md | EPIC-01 |
| Decisions | DECISIONS.md | Related SoT files |

**Launch Phase Emphasis:**
- 55% tactical (launch execution, current work)
- 30% strategic (vision, positioning, goals)
- 15% operational (tech stack, deployment)

---

## Knowledge Graph (ID System)

**This product uses ID-based references to avoid duplication.**

### ID Prefixes

- **DEC-XXX:** Decisions (see DECISIONS.md)
- **FEAT-XXX:** Features (see FEATURES.md)
- **TECH-XXX:** Technical items (see TECHNICAL.md)
- **MKT-XXX:** Market items (see MARKET.md)
- **MET-XXX:** Metrics (see METRICS.md)
- **TEAM-XXX:** Team items (see TEAM.md)
- **REL-XXX:** Releases (see RELEASES.md)

### Using IDs

**DO:**
- Reference by ID: "Implement [FEAT-001](#feat-001)"
- Link to source: "See [TECH-001](active/source_of_truth/TECHNICAL.md#tech-001)"
- Search SoT files for existing IDs before creating content

**DON'T:**
- Duplicate information that exists in SoT files
- Create long explanations when an ID reference would work
- Forget to check if decision/feature/tech already documented

---

## Response Patterns

### For Strategic Questions

**Example:** "Should we add [feature X]?"

**Response Pattern:**
1. Reference PRD.md (product vision, scope)
2. Check FEATURES.md (is this already defined?)
3. Consider MARKET.md (customer need validation)
4. Check EPIC-01 (timing feasibility)
5. Provide contextual recommendation (not generic advice)

**Good Response:**
"Based on [PRD.md](PRD.md), our launch scope focuses on [core value prop]. [Feature X] isn't in our defined scope ([FEAT-001](#feat-001) through [FEAT-005](#feat-005)). Given launch target of [date] ([EPIC-01](active/epics/EPIC-01-launch.md)), recommend deferring to v1.1 unless it's critical for [specific launch goal]."

**Bad Response:**
"Adding features is always a tradeoff. Consider your timeline and resources."

### For Technical Questions

**Example:** "How should we implement [technical thing]?"

**Response Pattern:**
1. Reference TECHNICAL.md (existing architecture, patterns, decisions)
2. Check DECISIONS.md (relevant technical decisions)
3. Ensure consistency with established patterns
4. Provide specific, contextual guidance

**Good Response:**
"Per [TECH-001](active/source_of_truth/TECHNICAL.md#tech-001), we're using [framework]. Following that pattern, implement [specific approach]. This matches the decision in [DEC-003](#dec-003) to [rationale]."

### For Feature Questions

**Example:** "What does [feature] do?"

**Response Pattern:**
1. Check FEATURES.md for FEAT-XXX definition
2. Reference full definition
3. Note status, owner, priority

**Good Response:**
"[FEAT-001](active/source_of_truth/FEATURES.md#feat-001) is [feature description from SoT]. Status: [status]. Owner: [name]. Priority: Must-have for launch."

---

## Product-Specific Guidance

### Launch Phase Focus

**We are in Launch phase. This means:**

1. **Tactical execution** is highest priority (55% of context)
   - What's happening this week?
   - What are the blockers?
   - Are we on track for launch date?

2. **Strategic alignment** matters but is established (30% of context)
   - Vision, positioning, target market are set
   - Don't re-litigate foundational decisions
   - Reference PRD.md for "the why"

3. **Operational details** only for launch-critical items (15% of context)
   - Focus on deployment, monitoring, critical fixes
   - Don't over-engineer or gold-plate
   - Ship over perfect

### Team Alignment

**30-person team across 5 functions:**

- Always consider cross-functional impact
- Check TEAM.md for who owns what
- Suggest coordination when decisions affect multiple teams
- Respect established decision-making authority

### Decision-Making

**When a decision is needed:**

1. **Check DECISIONS.md** — Has this been decided?
2. **If yes:** Reference the decision, explain rationale
3. **If no:** Suggest decision-making process:
   - Who should decide? (Check TEAM.md)
   - What information is needed?
   - What's the timeline/urgency?
   - Document decision in DECISIONS.md after

---

## Quality Standards

### Context Quality

**Before responding, ensure:**
- [ ] You've loaded appropriate SoT files
- [ ] You're referencing IDs where applicable
- [ ] Your response is phase-appropriate (Launch = tactical focus)
- [ ] You're not contradicting existing decisions
- [ ] You're considering cross-functional impact

### Response Quality

**Good responses:**
- Specific and contextual (reference product specifics)
- ID-aware (use FEAT-XXX, DEC-XXX, etc.)
- Phase-appropriate (Launch = execution focus)
- Team-aware (consider 30-person team dynamics)
- Actionable (clear next steps)

**Avoid:**
- Generic advice that could apply to any product
- Recommendations that contradict PRD/decisions
- Over-engineering (we're in Launch, not Build)
- Suggesting work that's out of scope for v1.0

---

## Common Workflows

### Adding a New Feature

1. Check FEATURES.md — Does FEAT-XXX exist?
2. If yes → Reference and extend
3. If no → Create new FEAT-XXX in FEATURES.md
4. Link from EPIC-01 if it's active work
5. Update PRD.md if it changes scope

### Making a Decision

1. Check DECISIONS.md — Already decided?
2. If yes → Reference DEC-XXX
3. If no → Help frame decision:
   - What's the question?
   - What are the options?
   - What criteria matter?
   - Who decides? (per TEAM.md)
4. After decision → Document as DEC-XXX

### Answering "What's the status?"

1. Check EPIC-01 for active work
2. Check README.md for current metrics
3. Check relevant SoT file for specifics
4. Provide update from actual docs (don't guess)

---

## Context Maintenance

### As You Work

**Help keep context current:**

- If you notice stale information → Flag it
- If a decision is made → Suggest adding to DECISIONS.md
- If priorities change → Suggest updating EPIC-01 and README
- If metrics update → Suggest updating README metrics section

**Don't:**
- Assume context is current
- Make up information
- Contradict SoT files
- Bypass the ID system

---

## Validation Tests

**To verify you're operating correctly:**

**Test 1:** "What product are we building?"
- Expected: Specific answer from PRD.md

**Test 2:** "What's our top priority this week?"
- Expected: Specific answer from EPIC-01 or README

**Test 3:** "What does [FEAT-001] do?"
- Expected: Definition from FEATURES.md

**Test 4:** "Should we add [random feature]?"
- Expected: Contextual answer referencing PRD scope, launch timeline, priorities

---

**Document Status:** ✅ Active
**Last Updated:** [DATE]
**Maintained By:** [Role]
**Next Review:** Monthly or on phase transition
```

**Time to Fill:** 10-15 minutes (mostly copy/paste, minimal customization needed)

---

### Phase 3: Create EPIC for Launch Tracking (30 min)

**File:** `active/epics/EPIC-01-launch.md`

Copy the template from `templates/sot/EPIC-01-launch.md` and customize for your launch:

```bash
cp templates/sot/EPIC-01-launch.md active/epics/EPIC-01-launch.md
```

**Then customize:**
1. Fill in launch timeline and dates
2. Customize 40 issues for your launch plan (add/remove as needed)
3. Set owners for each issue
4. Define your specific milestones
5. Adjust team allocation to match your ~30 person team

**Key sections to customize:**
- **Section 0:** Update with current session state
- **Section 1:** Define launch success criteria
- **Section 2:** Customize all 40 issues (or create your own set)
- **Section 3:** Track IDs and milestones

**Time to Fill:** 30 minutes (issues can be refined over time)

**See:** Full template at [templates/sot/EPIC-01-launch.md](templates/sot/EPIC-01-launch.md)

---

### Phase 4: Create Source of Truth Library (60-90 min)

Create all 7 SoT files by copying templates and filling with your product data.

#### File 1: DECISIONS.md (15 min)

```bash
cp templates/sot/DECISIONS.md active/source_of_truth/DECISIONS.md
```

**Fill in:**
- DEC-001: First major strategic decision (e.g., target market)
- DEC-002: Second decision (e.g., pricing model)
- Add 2-3 more key decisions that shaped the product

**Focus on:** Decisions that team members frequently ask about or that explain "why we did X"

**See:** Full template at [templates/sot/DECISIONS.md](templates/sot/DECISIONS.md)

---

#### File 2: FEATURES.md (15 min)

```bash
cp templates/sot/FEATURES.md active/source_of_truth/FEATURES.md
```

**Fill in:**
- FEAT-001 through FEAT-005: Your must-have launch features
- FEAT-010+: Should-have or post-launch features
- Feature status, owners, and priorities

**Make sure:** Each feature has clear scope (in/out), user story, and success metrics

**See:** Full template at [templates/sot/FEATURES.md](templates/sot/FEATURES.md)

---

#### File 3: TECHNICAL.md (15 min)

```bash
cp templates/sot/TECHNICAL.md active/source_of_truth/TECHNICAL.md
```

**Fill in:**
- Complete tech stack (frontend, backend, infrastructure)
- TECH-001: Authentication architecture (or your first major technical decision)
- TECH-002+: Other key technical decisions
- Code patterns and conventions your team uses

**See:** Full template at [templates/sot/TECHNICAL.md](templates/sot/TECHNICAL.md)

---

#### File 4: MARKET.md (15 min)

```bash
cp templates/sot/MARKET.md active/source_of_truth/MARKET.md
```

**Fill in:**
- MKT-001: Primary customer persona
- MKT-010: Competitive landscape overview
- MKT-011+: Top 2-3 competitors analyzed
- Beta feedback if available (MKT-030)

**See:** Full template at [templates/sot/MARKET.md](templates/sot/MARKET.md)

---

#### File 5: METRICS.md (15 min)

```bash
cp templates/sot/METRICS.md active/source_of_truth/METRICS.md
```

**Fill in:**
- MET-001: Your North Star Metric
- MET-002 through MET-005: Launch metrics (signups, conversion, activation, retention)
- MET-010+: Product health and business metrics
- Set targets for week 1, week 4, month 1

**See:** Full template at [templates/sot/METRICS.md](templates/sot/METRICS.md)

---

#### File 6: TEAM.md (10 min)

```bash
cp templates/sot/TEAM.md active/source_of_truth/TEAM.md
```

**Fill in:**
- TEAM-001: Full team structure (~30 people across 5 functions)
- Team leads and key members for each function
- RACI matrix for decision-making
- Communication norms and processes

**See:** Full template at [templates/sot/TEAM.md](templates/sot/TEAM.md)

---

#### File 7: RELEASES.md (10 min)

```bash
cp templates/sot/RELEASES.md active/source_of_truth/RELEASES.md
```

**Fill in:**
- REL-001: v1.0 launch details
- REL-002: v0.9 beta (if you had one)
- What's included in launch
- Success criteria and metrics
- Post-launch feedback (add after launch)

**See:** Full template at [templates/sot/RELEASES.md](templates/sot/RELEASES.md)

---

**After creating all SoT files, commit:**

```bash
git add active/
git commit -m "feat: Add SoT library with product context

Created 7 Source of Truth files:
- DECISIONS.md: Key strategic and product decisions
- FEATURES.md: v1.0 launch features and roadmap
- TECHNICAL.md: Tech stack and architecture
- MARKET.md: Customer personas and competitive analysis
- METRICS.md: KPIs and launch metrics
- TEAM.md: Team structure and responsibilities
- RELEASES.md: Release tracking and version history

Also created EPIC-01 for launch execution tracking."
```

---

### Phase 5: Configure Project Bob & Validate (30 min)

#### Step 5.1: Load Context in Project Bob

**Option A: If Project Bob has workspace/context settings:**
1. Open Project Bob settings/preferences
2. Look for "workspace knowledge" or "context files" setting
3. Point it to your repo root or `.claude/` directory
4. Configure to load files in this order:
   - README.md
   - PRD.md
   - CLAUDE.md
   - active/source_of_truth/*.md

**Option B: If Project Bob doesn't have explicit context settings:**
- You'll reference context manually in conversations
- Start questions with: "Context: See PRD.md and active/source_of_truth/"
- Or create saved prompts that load context

**Option C: Check Project Bob documentation:**
- Look for "How to set up project context" in Project Bob docs
- May have specific file conventions (.project-context, .ai/, etc.)

---

#### Step 5.2: Validation Tests

Test that AI can access and use your context:

**Test 1: Basic Awareness**
```
Q: "What product am I working on and what phase are we in?"
Expected: "[Your Product Name] in Launch phase"
Source: README.md and PRD.md
```

**Test 2: Strategic Understanding**
```
Q: "Who is our target customer and what problem do we solve for them?"
Expected: Specific answer from PRD.md and MKT-001
```

**Test 3: Feature Knowledge**
```
Q: "What does FEAT-001 do and why is it important?"
Expected: Definition from FEATURES.md
```

**Test 4: Team Awareness**
```
Q: "Who should I ask about [technical question]?"
Expected: Reference to TEAM.md, specific person name
```

**Test 5: Decision Context**
```
Q: "Why did we decide to [specific decision]?"
Expected: Reference to DEC-XXX with rationale
```

**Test 6: Cross-Layer Reasoning**
```
Q: "Should we add [feature X] before launch?"
Expected: AI considers:
- Strategic: PRD.md scope and vision
- Tactical: EPIC-01 timeline
- Features: Current roadmap in FEATURES.md
- Provides contextual recommendation (not generic advice)
```

**Validation Checklist:**
- [ ] AI knows product name and phase
- [ ] AI can reference specific SoT files
- [ ] AI uses ID system (mentions FEAT-XXX, DEC-XXX, etc.)
- [ ] AI gives contextual answers (not generic)
- [ ] AI considers cross-functional impact
- [ ] AI respects established decisions

---

#### Step 5.3: Troubleshooting

**If AI doesn't know your context:**
- Check: Are files in correct locations?
- Check: Can Project Bob access the directory?
- Try: Explicitly mention file in question: "Based on PRD.md..."
- Try: Start new chat session (may need to reload context)

**If responses are generic:**
- Make context more specific (add real data, not placeholders)
- Reference specific IDs in your questions
- Ask follow-up: "What in our PRD.md supports that recommendation?"

**If context feels too large:**
- Reduce file sizes (strategic <200, tactical <300, operational <500 lines)
- Move detailed content to temp/ with links from SoT files

**See full troubleshooting:** [TROUBLESHOOTING.md](TROUBLESHOOTING.md)

---

### Phase 6: Team Onboarding (Ongoing)

#### Share with Team

**Introduce the structure:**
1. Share README.md with team — Explains what this is
2. Walk through navigation — Show where things are
3. Explain ID system — How to reference and avoid duplication
4. Set expectations — Who updates what, how often

**Team adoption:**
- Product team: Owns PRD, EPIC, FEATURES, DECISIONS
- Engineering: Owns TECHNICAL
- Marketing: Owns MARKET
- Everyone: Updates their relevant sections
- Daily: README.md metrics, EPIC-01 progress
- Weekly: Review and update relevant SoT files

#### Create Team Habits

**Daily (During Launch):**
- Morning standup: Review README + EPIC-01 for priorities
- End of day: Update metrics in README, update EPIC progress

**Weekly:**
- Review EPIC-01: Update issue status, adjust priorities
- Update SoT files: New decisions, features, customer feedback
- Check context freshness: Remove stale info

**Monthly:**
- Full context review: Is everything current?
- Update PRD if strategic changes
- Review and update metrics definitions

---

## Setup Complete! 🎉

You now have a complete ACE + SoT structure for your 30-person team and Launch phase product.

### What You've Built

```
your-product/
├── PRD.md                          ✅ Product strategy and vision
├── README.md                       ✅ Navigation and live metrics
├── CLAUDE.md                       ✅ AI operating guide
├── active/
│   ├── epics/
│   │   └── EPIC-01-launch.md      ✅ Launch execution tracking
│   └── source_of_truth/
│       ├── DECISIONS.md            ✅ Strategic decisions + rationale
│       ├── FEATURES.md             ✅ Feature definitions and roadmap
│       ├── TECHNICAL.md            ✅ Tech stack and architecture
│       ├── MARKET.md               ✅ Customer insights and competitive analysis
│       ├── METRICS.md              ✅ KPIs and measurement
│       ├── TEAM.md                 ✅ Team structure and ownership
│       └── RELEASES.md             ✅ Version history and releases
└── temp/                           ✅ Scratch and archives
```

**Total Investment:** 2-4 hours setup
**Expected Return:** 5-12 hours/week saved per person × 30 people = 150-360 hours/week
**ROI:** ~50-180x return

---

## Next Steps

### Week 1: Daily Use

**Test the system:**
- Use Project Bob AI with context for daily questions
- Update EPIC-01 and README daily
- Track time saved and friction points

**Iterate:**
- Refine content based on actual use
- Add missing context as you discover gaps
- Remove unnecessary detail

### Week 2-4: Team Adoption

**Expand usage:**
- Onboard key team members to the structure
- Establish update routines (who, when, what)
- Collect feedback on what works/doesn't

**Measure impact:**
- Time saved per person
- Decision-making speed
- Team alignment improvements
- AI response quality

### Month 2+: Optimize

**Refine the system:**
- Streamline based on learnings
- Automate where possible (metrics dashboards, etc.)
- Build team muscle memory

**Share learnings:**
- Document what worked for your 30-person team
- Contribute feedback to ACE methodology
- Help improve the approach

---

## Getting Help

**As you set up and use this system:**

1. **Keep notes** of issues and questions
2. **Track what works** and what doesn't
3. **Document Project Bob quirks** you discover
4. **Measure impact** (time saved, quality improvements)
5. **Share feedback** to improve ACE and these guides

**Your experience with a 30-person team will provide invaluable validation data for ACE!**

---

## Additional Resources

**Full ACE Methodology:**
- [ACE_METHODOLOGY_SUMMARY.md](../ACE_METHODOLOGY_SUMMARY.md) — Complete methodology overview
- [CONTEXT_PATTERNS.md](../active/source_of_truth/CONTEXT_PATTERNS.md) — Core patterns
- [PRACTITIONER_JOURNEYS.md](../active/source_of_truth/PRACTITIONER_JOURNEYS.md) — Role-specific guidance

**Setup Guides:**
- [QUICK_START_CHECKLIST.md](QUICK_START_CHECKLIST.md) — Printable checklist
- [TROUBLESHOOTING.md](TROUBLESHOOTING.md) — Common issues and solutions
- [setup-guides/README.md](README.md) — All available guides

**Templates:**
- [templates/sot/](templates/sot/) — All SoT file templates

---

**Setup Guide Version:** 1.0 (Full SoT Structure)
**Last Updated:** 2026-01-05
**For:** 30-person teams, Launch phase products, Project Bob
**Maintained By:** ACE Methodology Team

**This setup becomes VAL-002 for ACE methodology validation!**
