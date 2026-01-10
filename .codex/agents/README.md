# ACE Agents Directory

**Version:** 1.0 (GHM Agent Architecture Integration)
**Updated:** 2026-01-09
**Status:** ⏸️ PAUSED - Awaiting GHM Agent Specifications

> **Note:** Agent implementation is on hold pending completion of agent specifications in the upstream GHM repository. See `IMPLEMENTATION_STATUS.md` and `PENDING_GHM_UPDATES.md` for details. The skills system (31 skills) is complete and production-ready.

---

## Overview

This directory implements the **GHM multi-agent architecture** with hierarchical coordination across the 10-gate product development lifecycle (v0.1 Spark → v1.0 Market Adoption).

The agent system consists of:
- **3 Primary Agents** - Phase orchestrators who own PRD progression
- **10 Sub-Agents** - Gate specialists who execute specific deliverables
- **31 Skills** - Reusable capabilities that agents invoke
- **Coordination Protocols** - Handoff and loopback procedures

---

## Agent Hierarchy

```
PRIMARY AGENTS (3)
│
├── AURA (Research Phase: v0.1-v0.5)
│   └── Market & Product Strategy Lead
│
├── APOLLO (Build Phase: v0.6-v0.8)
│   └── Technical Implementation Lead
│
└── JANUS (GTM Phase: v0.9-v1.0)
    └── Go-to-Market & Growth Lead

SUB-AGENTS (10)
│
├── Under AURA (Research: 5 sub-agents)
│   ├── SPARK-SCOUT (v0.1 Spark)
│   ├── SEGMENTOR (v0.2 Market Definition)
│   ├── MOAT-MAPPER (v0.3 Commercial Model)
│   ├── JOURNEY-SCRIBE (v0.4 User Journeys)
│   └── RISK-ORACLE (v0.5 Red Team Review)
│
├── Under APOLLO (Build: 3 sub-agents)
│   ├── ARCHITECT (v0.6 Architecture)
│   ├── QA-MAESTRO (v0.7 Build Execution)
│   └── AUTOMATION-RUNNER (v0.8 Deployment & Ops)
│
└── Under JANUS (GTM: 2 sub-agents)
    ├── LAUNCH-CALLER (v0.9 Go-to-Market)
    └── ADOPTION-ANALYST (v1.0 Market Adoption)
```

---

## Directory Structure

```
.codex/agents/
├── README.md                          # This file - agent system overview
├── AGENT_SKILL_MATRIX.md             # Complete mapping of agents to skills
├── COORDINATION_PROTOCOLS.md         # Handoff and loopback procedures
│
├── primary/                          # Primary agent definitions
│   ├── AURA.md                       # Research phase orchestrator
│   ├── APOLLO.md                     # Build phase orchestrator
│   └── JANUS.md                      # GTM phase orchestrator
│
├── sub-agents/                       # Sub-agent definitions
│   ├── research/                     # AURA's 5 research specialists
│   │   ├── SPARK-SCOUT.md
│   │   ├── SEGMENTOR.md
│   │   ├── MOAT-MAPPER.md
│   │   ├── JOURNEY-SCRIBE.md
│   │   └── RISK-ORACLE.md
│   │
│   ├── build/                        # APOLLO's 3 build specialists
│   │   ├── ARCHITECT.md
│   │   ├── QA-MAESTRO.md
│   │   └── AUTOMATION-RUNNER.md
│   │
│   └── gtm/                          # JANUS's 2 GTM specialists
│       ├── LAUNCH-CALLER.md
│       └── ADOPTION-ANALYST.md
│
├── templates/                        # Agent invocation templates
│   ├── PRIMARY_AGENT_TEMPLATE.md
│   ├── SUB_AGENT_TEMPLATE.md
│   └── starter-prompts/              # Sub-agent invocation prompts
│
└── coordination/                     # Agent coordination docs
    ├── handoff-protocols/
    ├── loopback-procedures/
    └── quality-gates/
```

---

## Agent Roles & Responsibilities

### Primary Agents

**Primary agents** orchestrate product development phases and own PRD progression:

| Agent | Phase | Gates | Responsibility |
|-------|-------|-------|----------------|
| **AURA** | Research | v0.1-v0.5 | Validate strategy, define market fit, assess risks |
| **APOLLO** | Build | v0.6-v0.8 | Execute architecture, ensure quality, deploy reliably |
| **JANUS** | GTM | v0.9-v1.0 | Launch product, drive adoption, optimize growth |

**Primary agent duties:**
- Invoke sub-agents with targeted prompts
- Synthesize sub-agent outputs into PRD sections
- Enforce gate progression and loopback discipline
- Hand off to next primary agent with context notes
- Maintain traceability through SoT IDs

### Sub-Agents

**Sub-agents** are gate specialists who execute specific deliverables:

| Sub-Agent | Gate | Guiding Question | Primary Skills |
|-----------|------|------------------|----------------|
| **SPARK-SCOUT** | v0.1 | Is this the right problem? | prd-v01-problem-framing, prd-v01-user-value-articulation |
| **SEGMENTOR** | v0.2 | Who exactly needs this? | prd-v02-competitive-landscape-mapping, prd-v02-product-type-classification |
| **MOAT-MAPPER** | v0.3 | Why will we win? | prd-v03-moat-definition, prd-v03-pricing-model, prd-v03-outcome-definition, prd-v03-features-value-planning |
| **JOURNEY-SCRIBE** | v0.4 | How will users use this? | prd-v04-persona-definition, prd-v04-user-journey-mapping, prd-v04-screen-flow-definition |
| **RISK-ORACLE** | v0.5 | What could go wrong? | prd-v05-risk-discovery-interview, prd-v05-technical-stack-selection |
| **ARCHITECT** | v0.6 | How should we build this? | prd-v06-architecture-design, prd-v06-technical-specification |
| **QA-MAESTRO** | v0.7 | How do we ensure quality? | prd-v07-epic-scoping, prd-v07-test-planning, prd-v07-implementation-loop |
| **AUTOMATION-RUNNER** | v0.8 | How do we deploy reliably? | prd-v08-release-planning, prd-v08-runbook-creation, prd-v08-monitoring-setup |
| **LAUNCH-CALLER** | v0.9 | Are we ready to launch? | prd-v09-gtm-strategy, prd-v09-launch-metrics |
| **ADOPTION-ANALYST** | v1.0 | How do we grow? | prd-v09-feedback-loop-setup |

**Sub-agent duties:**
- Work only under primary agent direction
- Execute assigned skills to produce deliverables
- Map all outputs to SoT IDs
- Provide evidence for all assertions
- Signal completion and readiness for review
- Request loopback if dependencies missing

---

## Agent-Skill Integration

### Skill Assignment Model

Agents **invoke skills** rather than owning them. This maintains flexibility while providing clear specialization:

**Primary Agent Skills (used by all):**
- `ace-context-manager` - Extract and populate SoT content
- `team-context-coordinator` - Coordinate cross-discipline work
- `phase-transition-manager` - Manage gate transitions
- `quality-validator` - Validate gate readiness

**Sub-Agent Skills (gate-specific):**
- Each sub-agent primarily uses 1-4 skills matching its gate
- Sub-agents can invoke infrastructure skills as needed
- Skills remain reusable across agents

**Infrastructure Skills (used by all):**
- `file-validator` - Validate markdown and cross-references
- `id-tracker` - Manage ID-based knowledge graph
- `markdown-processor` - Process and format content

See [AGENT_SKILL_MATRIX.md](AGENT_SKILL_MATRIX.md) for complete mapping.

---

## Agent Coordination

### Sequential Handoffs

Primary agents hand off work sequentially through the product lifecycle:

```
AURA (v0.1-v0.5)
    ↓ Handoff at v0.6
APOLLO (v0.6-v0.8)
    ↓ Handoff at v0.9
JANUS (v0.9-v1.0)
    ↓ Loopback if needed
AURA (strategy refinement based on market feedback)
```

**Handoff Requirements:**
1. Complete PRD sections for all gates in phase
2. All SoT IDs documented and cross-referenced
3. Quality validation passed for phase
4. Targeted notes prepared for receiving agent
5. Dependencies and constraints documented

### Loopback Protocol

When downstream work reveals upstream issues, agents loop back:

**Triggers for Loopback:**
- Market feedback contradicts strategic assumptions (JANUS → AURA)
- Technical constraints require feature changes (APOLLO → AURA)
- Quality issues reveal design problems (QA-MAESTRO → ARCHITECT)
- Implementation reveals missing requirements (any sub-agent → primary)

**Loopback Process:**
1. Document issue and evidence in SoT files
2. Identify which gate needs revisiting
3. Notify appropriate primary agent
4. Primary agent re-invokes relevant sub-agent
5. Update PRD and propagate changes forward

See [COORDINATION_PROTOCOLS.md](COORDINATION_PROTOCOLS.md) for detailed procedures.

---

## IBM BOB Mode Integration

Agents operate within IBM BOB mode constraints:

### Code Mode
**Allowed:**
- Sub-agents can update SoT files via skills
- Primary agents can coordinate local work
- All markdown editing and documentation

**Restricted:**
- No MCP/Browser access for research
- No external tool execution

**Recommended For:**
- JOURNEY-SCRIBE, ARCHITECT, QA-MAESTRO work
- SoT file updates and documentation

### Plan Mode
**Allowed:**
- Primary agents can plan gate transitions
- Sub-agents can design approaches
- All planning and architecture work

**Restricted:**
- No file editing
- No code execution

**Recommended For:**
- AURA planning research approach
- APOLLO planning technical architecture
- Phase transition planning

### Advance Mode
**Allowed:**
- Full MCP and Browser access
- External research and validation
- Complete agent capabilities

**Restricted:**
- None (full functionality)

**Recommended For:**
- SPARK-SCOUT, SEGMENTOR, MOAT-MAPPER research
- RISK-ORACLE risk assessment
- LAUNCH-CALLER market validation

### Ask Mode
**Allowed:**
- Read-only explanations
- Agent guidance and methodology questions

**Restricted:**
- No file editing
- No active work

**Recommended For:**
- Understanding agent responsibilities
- Learning coordination protocols
- Methodology questions

---

## Usage Guidelines

### When to Use Primary Agents

Invoke primary agents when you need:
- Phase-level orchestration and coordination
- Gate transition management
- PRD synthesis across multiple sub-agents
- Strategic handoff to next phase

**Examples:**
- "AURA, validate our product strategy through v0.5"
- "APOLLO, architect and build the implementation"
- "JANUS, prepare us for launch"

### When to Use Sub-Agents

Invoke sub-agents when you need:
- Specific gate deliverables
- Specialized expertise for one question
- Focused execution of gate-specific skills

**Examples:**
- "SPARK-SCOUT, validate this problem statement"
- "MOAT-MAPPER, define our competitive positioning"
- "ARCHITECT, design the system architecture"

### Multi-Agent Workflows

For complete product development:
1. Start with AURA to validate strategy (v0.1-v0.5)
2. Hand off to APOLLO for implementation (v0.6-v0.8)
3. Hand off to JANUS for launch (v0.9-v1.0)
4. Loop back to AURA if market feedback requires strategy changes

For focused work:
- Invoke specific sub-agent for that gate
- Use primary agent for context and coordination
- Ensure SoT files updated with outputs

---

## Quality Standards

### Agent Outputs Must:
- Map all work to SoT IDs (DEC-, FEAT-, TECH-, etc.)
- Provide evidence for assertions
- Follow GHM ID conventions (CFD-, UJ-, BR-, etc.) where applicable
- Cross-reference related IDs
- Signal completion clearly

### Primary Agents Must:
- Enforce gate progression discipline
- Synthesize sub-agent outputs coherently
- Maintain PRD quality and consistency
- Document handoff context clearly
- Validate quality before transitions

### Sub-Agents Must:
- Answer their guiding question
- Produce gate-specific deliverables
- Request loopback when dependencies missing
- Work only under primary agent direction
- Signal readiness for primary agent review

---

## Getting Started

### For New Users

1. **Read this README** to understand agent hierarchy
2. **Review AGENT_SKILL_MATRIX.md** to see agent capabilities
3. **Check COORDINATION_PROTOCOLS.md** for handoff procedures
4. **Read your relevant agent definition** in `primary/` or `sub-agents/`
5. **Invoke appropriate agent** for your current gate

### For Agent Developers

1. **Use templates** in `templates/` for new agents
2. **Follow naming conventions** (UPPERCASE-HYPHENATED)
3. **Map skills explicitly** in agent definitions
4. **Document coordination points** in COORDINATION_PROTOCOLS.md
5. **Test handoffs** before deploying

---

## Troubleshooting

### Agent Not Working as Expected
- Verify agent has access to required skills
- Check IBM BOB mode restrictions
- Ensure SoT files exist and are accessible
- Validate PRD sections are populated

### Handoff Failures
- Confirm primary agent completed all phase gates
- Check handoff notes are documented
- Verify receiving agent has context
- Review quality validation results

### Loopback Issues
- Clearly document reason for loopback
- Identify specific gate to revisit
- Update SoT files with new evidence
- Propagate changes forward systematically

---

## Version History

### v1.0 (2026-01-09) - Initial Implementation
**Created:**
- Complete agent directory structure
- 3 primary agent definitions (AURA, APOLLO, JANUS)
- 10 sub-agent definitions
- Agent-skill mapping matrix
- Coordination protocols
- IBM BOB mode integration

---

## References

- **GHM Source:** https://github.com/mattgierhart/PRD-driven-context-engineering
- **Skills Directory:** `.codex/skills/`
- **ACE Methodology:** `methodology/ACE_METHODOLOGY_SUMMARY.md`
- **Root AGENTS.md:** `AGENTS.md`
- **Analysis Document:** `GHM_AGENT_ARCHITECTURE_ANALYSIS.md`

---

**Agent System Status: Foundation Complete - Implementation In Progress**
