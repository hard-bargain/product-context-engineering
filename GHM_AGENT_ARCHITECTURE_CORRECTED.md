# GHM Agent Architecture - CORRECTED Analysis

**Date:** 2026-01-09
**Source:** https://github.com/mattgierhart/PRD-driven-context-engineering
**Purpose:** Corrected understanding of GHM agent hierarchy

---

## CRITICAL CORRECTION

**Initial Understanding (INCORRECT):**
- 3 Primary Agents (AURA, APOLLO, JANUS)
- 10 Sub-Agents underneath them
- Hierarchical structure with sub-agents reporting to primaries

**Actual GHM Structure (CORRECT):**
- **1 Primary Agent (AURA)** - Only orchestrator explicitly defined
- **10 Specialist Agents** - Not sub-agents, but peer agents organized by phase
- **Sequential workflow** - Not hierarchical reporting structure

---

## Actual GHM Agent Structure

### Primary Agent: AURA (The Only Orchestrator)

**Role:** Market & Product Strategy Lead
**Scope:** v0.1-v0.5 (Research Phase)
**Template:** `agents/templates/AURA_primary_agent_template.md` (only primary agent template in repo)

**AURA coordinates 5 research-phase agents:**
- SPARK-SCOUT (v0.1)
- SEGMENTOR (v0.2)
- MOAT-MAPPER (v0.3)
- JOURNEY-SCRIBE (v0.4)
- RISK-ORACLE (v0.5)

**AURA hands off to:** APOLLO, JANUS, and other build agents (mentioned but not defined as primary agents)

---

## The 10 Specialist Agents (Peers, Not Sub-Agents)

### Research Lineup (v0.1-v0.5) - 5 agents

Coordinated by AURA, these agents validate strategy:

1. **SPARK-SCOUT** (v0.1 Spark)
   - Question: "Is this the right problem?"
   - Tools: web_search, research_topic, get_trending_searches

2. **SEGMENTOR** (v0.2 Market)
   - Question: "Who is this for?"
   - Tools: web_search, analyze_content, get_interest_by_region

3. **MOAT-MAPPER** (v0.3 Commercial)
   - Question: "Where is the gap?"
   - Tools: traverse_website, analyze_content, search_trends

4. **JOURNEY-SCRIBE** (v0.4 Journeys)
   - Question: "What is the flow?"
   - Tools: retrieve_content, analyze_content

5. **RISK-ORACLE** (v0.5 Red Team)
   - Question: "How does this fail?"
   - Tools: web_search, research_topic

---

### Build Lineup (v0.6-v0.8) - 3 agents

Execute architecture and code (no explicit primary orchestrator defined):

6. **ARCHITECT** (v0.6 Specs)
   - Question: "What is the blueprint?"
   - Tools: traverse_website (docs), generate_llms_txt

7. **QA-MAESTRO** (v0.7 Build)
   - Question: "Does it work?"
   - Tools: validate_sessions, sot_diff

8. **AUTOMATION-RUNNER** (v0.8 Release)
   - Question: "How do we ship?"
   - Tools: sot_update, session_handoff

---

### GTM Lineup (v0.8-v1.0) - 2 agents

Launch and expand (no explicit primary orchestrator defined):

9. **LAUNCH-CALLER** (v0.9 Launch)
   - Question: "Are we go for launch?"
   - Tools: search_trends, session_checkpoint

10. **ADOPTION-ANALYST** (v1.0 Growth)
    - Question: "Are they staying?"
    - Tools: stream_content, analyze_content

---

## What About APOLLO, JANUS, and the Designer Agent?

### APOLLO
**Status:** Mentioned in AURA template as handoff recipient, but **not defined** in repository
**References:** "Hand-off notes to build agents (APOLLO/JANUS/etc.)"
**Interpretation:** APOLLO appears to be a **conceptual build-phase coordinator** that Matt references but hasn't implemented yet

### JANUS
**Status:** Mentioned in AURA template as handoff recipient, but **not defined** in repository
**References:** "Hand-off notes to build agents (APOLLO/JANUS/etc.)"
**Interpretation:** JANUS appears to be a **conceptual GTM-phase coordinator** that Matt references but hasn't implemented yet

### Designer Agent
**Status:** **Not mentioned anywhere** in the GHM repository
**Interpretation:** May be something you're thinking of adding for your IBM implementation, or may be a role that JOURNEY-SCRIBE covers

---

## Implications for Our IBM Implementation

### Option 1: Follow GHM Structure Exactly
- Implement only AURA as primary agent
- Implement 10 peer specialist agents (not sub-agents)
- No APOLLO, JANUS, or designer agent (they don't exist in GHM)
- Agents work sequentially but not hierarchically

**Structure:**
```
AURA (Primary Orchestrator for v0.1-v0.5)
    ↓ coordinates
5 Research Agents (SPARK-SCOUT → RISK-ORACLE)
    ↓ hands off to
3 Build Agents (ARCHITECT, QA-MAESTRO, AUTOMATION-RUNNER)
    ↓ hands off to
2 GTM Agents (LAUNCH-CALLER, ADOPTION-ANALYST)
```

---

### Option 2: Extend GHM with IBM-Specific Primary Agents (RECOMMENDED)

Create what Matt conceptualized but didn't implement:

**IBM Enhanced Structure:**
```
4 Primary Agents:
├── AURA (Research: v0.1-v0.5) [from GHM]
├── APOLLO (Build: v0.6-v0.8) [IBM extension of GHM concept]
├── DESIGNER (UX: v0.4-focused) [IBM addition]
└── JANUS (GTM: v0.9-v1.0) [IBM extension of GHM concept]

10 Specialist Agents (from GHM):
├── Under AURA: SPARK-SCOUT, SEGMENTOR, MOAT-MAPPER, JOURNEY-SCRIBE, RISK-ORACLE
├── Under APOLLO: ARCHITECT, QA-MAESTRO, AUTOMATION-RUNNER
└── Under JANUS: LAUNCH-CALLER, ADOPTION-ANALYST
```

**Rationale:**
- AURA template explicitly mentions APOLLO and JANUS as handoff recipients
- Build and GTM phases benefit from orchestration just like Research does
- Designer agent fills gap for UX-heavy work (v0.4 User Journeys)
- Aligns with our existing IBM documentation that assumed this structure

---

### Option 3: Hybrid - AURA + Phase Leads

Keep AURA as only "primary agent" but designate phase leads:

```
AURA (Primary Orchestrator)
    ↓
Research Phase Lead: AURA
Build Phase Lead: ARCHITECT (elevated role)
Design Phase Lead: JOURNEY-SCRIBE (elevated role)
GTM Phase Lead: LAUNCH-CALLER (elevated role)
```

---

## Recommendation: Option 2 (Extended GHM)

### Why Option 2 Makes Sense:

1. **GHM Intent:** Matt references APOLLO/JANUS in AURA template - he conceptualized them but hasn't implemented yet

2. **Scalability:** As product grows, having primary agents for each phase provides better coordination

3. **Team Alignment:** Primary agents can own relationships with human teams:
   - AURA ↔ Strategy/PM team
   - DESIGNER ↔ UX/Design team
   - APOLLO ↔ Engineering team
   - JANUS ↔ Marketing/GTM team

4. **Handoff Clarity:** Primary-to-primary handoffs are cleaner than peer-to-peer

5. **IBM Context:** Your organization likely has distinct teams for strategy, design, build, and GTM

### Designer Agent Justification:

**Why add a Designer primary agent?**

- **v0.4 User Journeys is substantial:** Personas, journeys, screen flows warrant dedicated orchestration
- **Design-dev handoff is critical:** Designer agent can bridge AURA (strategy) → APOLLO (build)
- **JOURNEY-SCRIBE alone insufficient:** UX work spans multiple gates and needs coordination beyond v0.4
- **Team coordination:** Designers are a distinct discipline needing their own primary agent

**Scope:** v0.4 User Journeys (primary), plus design coordination for v0.5-v0.7 (advisory)

**Sub-agents:** JOURNEY-SCRIBE (v0.4 UX work)

**Handoffs:**
- Receives from AURA after v0.3 (features prioritized)
- Hands off to APOLLO at v0.6 (UX requirements defined)

---

## Revised Agent Structure for IBM Implementation

### 4 Primary Agents (1 from GHM + 3 IBM extensions)

1. **AURA** - Market & Product Strategy Lead (v0.1-v0.5) [GHM]
   - Sub-agents: SPARK-SCOUT, SEGMENTOR, MOAT-MAPPER, RISK-ORACLE
   - JOURNEY-SCRIBE removed → moves to DESIGNER

2. **DESIGNER** - User Experience Lead (v0.4-focused, advisory v0.5-v0.7) [IBM NEW]
   - Sub-agents: JOURNEY-SCRIBE
   - Coordinates UX research, design, and design-dev handoff

3. **APOLLO** - Technical Implementation Lead (v0.6-v0.8) [IBM extension of GHM concept]
   - Sub-agents: ARCHITECT, QA-MAESTRO, AUTOMATION-RUNNER

4. **JANUS** - Go-to-Market Lead (v0.9-v1.0) [IBM extension of GHM concept]
   - Sub-agents: LAUNCH-CALLER, ADOPTION-ANALYST

---

## Updated Handoff Flow

```
AURA (v0.1-v0.3)
    ↓ Handoff at v0.3 complete
DESIGNER (v0.4 + design coordination)
    ↓ Handoff at v0.5 complete
APOLLO (v0.6-v0.8)
    ↓ Handoff at v0.8 complete
JANUS (v0.9-v1.0)
    ↓ Loopback if needed
AURA (strategy refinement)
```

**Key Change:** DESIGNER inserted between AURA and APOLLO to handle UX phase

---

## What We Need to Update

### Files to Create (NEW):
1. `.codex/agents/primary/DESIGNER.md` - Designer primary agent definition
2. Update AURA.md to remove JOURNEY-SCRIBE from its lineup
3. Update handoff protocols to include AURA→DESIGNER→APOLLO flow

### Files to Revise:
1. `.codex/agents/README.md` - Update to 4 primary agents
2. `.codex/agents/AGENT_SKILL_MATRIX.md` - Add DESIGNER row
3. `.codex/agents/COORDINATION_PROTOCOLS.md` - Add AURA→DESIGNER and DESIGNER→APOLLO handoffs
4. `GHM_AGENT_ARCHITECTURE_ANALYSIS.md` - Mark as superseded by this document

### Files to Create (Already Planned):
1. `.codex/agents/primary/APOLLO.md` - As IBM extension
2. `.codex/agents/primary/JANUS.md` - As IBM extension
3. All 10 sub-agent definitions

---

## Summary Table: GHM vs IBM Implementation

| Aspect | GHM Actual | Our IBM Plan |
|--------|------------|--------------|
| **Primary Agents** | 1 (AURA only) | 4 (AURA, DESIGNER, APOLLO, JANUS) |
| **Specialist Agents** | 10 peers | 10 sub-agents under primaries |
| **Structure** | AURA orchestrates research, others sequential | Hierarchical with primary per phase |
| **APOLLO Status** | Conceptual (mentioned, not implemented) | Full implementation |
| **JANUS Status** | Conceptual (mentioned, not implemented) | Full implementation |
| **DESIGNER Status** | Doesn't exist | New IBM addition |
| **JOURNEY-SCRIBE** | Research lineup agent | Moves to DESIGNER's sub-agent |
| **Handoffs** | Sequential peer handoffs | Primary-to-primary handoffs |

---

## Next Steps

1. ✅ **Acknowledge correction** - Confirm this structure makes sense for IBM
2. 🔄 **Update AURA.md** - Remove JOURNEY-SCRIBE, update handoff to DESIGNER
3. 📝 **Create DESIGNER.md** - New primary agent for UX phase
4. 📝 **Create APOLLO.md** - Implement Matt's conceptual build coordinator
5. 📝 **Create JANUS.md** - Implement Matt's conceptual GTM coordinator
6. 🔄 **Update coordination docs** - Add DESIGNER to handoff protocols
7. 🔄 **Update README and matrix** - Reflect 4 primary agents

---

## Questions for Discussion

1. **Approve 4-primary structure?** AURA + DESIGNER + APOLLO + JANUS
2. **Designer agent scope?** v0.4-focused or broader UX coordination?
3. **JOURNEY-SCRIBE placement?** Under DESIGNER or shared AURA/DESIGNER?
4. **Naming?** Keep APOLLO/JANUS (Matt's concept) or rename for IBM?
5. **Implementation order?** Build all 4 primaries first, or primaries + their sub-agents sequentially?

---

**Status:** Awaiting approval to proceed with corrected 4-primary agent structure
