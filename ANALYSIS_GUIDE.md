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
Human: "Claude, I need you to research the market for this product idea..."
[10-minute context dump about the product, users, competitors, constraints]

Claude (Research Agent): [Does research, outputs findings to chat]

---Later session---