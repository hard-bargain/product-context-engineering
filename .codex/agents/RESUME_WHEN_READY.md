# Resume Agent Implementation Guide

**Purpose:** Quick-start guide for resuming agent implementation when GHM specifications are published
**Audience:** Future AI agents or team members picking up this work
**Estimated Time:** 9-14 days to complete after GHM updates

---

## Background

We paused agent implementation on 2026-01-09 because Matt Gierhart (GHM author) is actively codifying agent specifications from his local Claude instance to the public repository. Rather than build agents based on incomplete information, we're waiting for complete specifications to ensure upstream compatibility.

---

## What's Already Done

### ✅ Complete Foundation (Ready to Use)

1. **31 Skills** - Production-ready, fully documented
   - Location: `.codex/skills/`
   - Manifest: `.codex/skills/ACE_SKILLS_MANIFEST.yaml`
   - Can be used independently of agents

2. **AURA Primary Agent** - Research phase orchestrator
   - Location: `.codex/agents/primary/AURA.md`
   - Covers: v0.1-v0.5 gates
   - Sub-agents: SPARK-SCOUT, SEGMENTOR, MOAT-MAPPER, RISK-ORACLE (+ JOURNEY-SCRIBE?)

3. **Agent Infrastructure**
   - Directory structure: `.codex/agents/` fully organized
   - Documentation: README, skill matrix, coordination protocols
   - Templates ready for population

4. **Analysis Documents**
   - `GHM_AGENT_ARCHITECTURE_ANALYSIS.md` - Initial 3-primary assumption
   - `GHM_AGENT_ARCHITECTURE_CORRECTED.md` - Corrected 1-primary + specialists
   - Both preserved for context

---

## What to Do When GHM Updates

### Step 1: Verify GHM Repository Updates (30 minutes)

```bash
# Clone latest GHM
git clone https://github.com/mattgierhart/PRD-driven-context-engineering.git /tmp/ghm-latest

# Check for new agent files
find /tmp/ghm-latest/agents -name "*.md" -type f
ls -la /tmp/ghm-latest/agents/templates/

# Look for:
# - DESIGNER/APOLLO/JANUS primary agent templates
# - Sub-agent specification files
# - Updated agents/README.md with complete details
```

### Step 2: Analyze GHM Structure (2-4 hours)

**Key Questions to Answer:**

1. **Primary Agent Structure:**
   - How many primary agents total?
   - Is DESIGNER a primary agent or is UX split differently?
   - Are APOLLO and JANUS primary as conceptualized?
   - What are their exact scopes and responsibilities?

2. **Sub-Agent Structure:**
   - Are they truly "sub-agents" reporting to primaries?
   - Or are they peer "specialist agents" working sequentially?
   - How do they coordinate with primary agents?
   - What's their invocation pattern?

3. **Handoff Protocols:**
   - Exact handoff procedures between primary agents
   - Quality gates and readiness criteria
   - Loopback mechanisms and triggers
   - Context sharing patterns (PRD, SoT files, etc.)

4. **Tool/Skill Integration:**
   - How do agents invoke our 31 skills?
   - Tool allocation patterns
   - MCP integration patterns

**Document Findings:**
- Create: `GHM_AGENT_FINAL_SPECIFICATION.md`
- Compare with our assumptions in previous analysis docs
- Note any IBM-specific adaptations needed

### Step 3: Update AURA if Needed (2-4 hours)

```bash
# Compare GHM's AURA template with ours
diff /tmp/ghm-latest/agents/templates/AURA_primary_agent_template.md .codex/agents/primary/AURA.md

# If significant changes:
# 1. Update .codex/agents/primary/AURA.md
# 2. Note version change and update date
# 3. Document changes in version history
```

**Specific Updates:**
- Handoff protocols (if downstream agents specified differently)
- Sub-agent lineup (JOURNEY-SCRIBE placement - under AURA or DESIGNER?)
- Coordination patterns
- Quality gates

### Step 4: Implement Remaining Primary Agents (1-2 days)

**DESIGNER Primary Agent (if exists in GHM):**
```bash
# Create from GHM template
cp /tmp/ghm-latest/agents/templates/DESIGNER_*.md .codex/agents/primary/DESIGNER.md

# Adapt for IBM:
# 1. Add IBM BOB mode integration
# 2. Map to our 31 skills
# 3. Link to our SoT architecture
# 4. Add ACE methodology references
# 5. Document handoff AURA → DESIGNER → APOLLO
```

**APOLLO Primary Agent:**
```bash
# Create from GHM template
cp /tmp/ghm-latest/agents/templates/APOLLO_*.md .codex/agents/primary/APOLLO.md

# Adapt for IBM:
# 1. Technical implementation focus
# 2. Sub-agents: ARCHITECT, QA-MAESTRO, AUTOMATION-RUNNER
# 3. Handoff protocols from DESIGNER
# 4. Handoff protocols to JANUS
# 5. Integration with TECHNICAL.md SoT file
```

**JANUS Primary Agent:**
```bash
# Create from GHM template
cp /tmp/ghm-latest/agents/templates/JANUS_*.md .codex/agents/primary/JANUS.md

# Adapt for IBM:
# 1. GTM and growth focus
# 2. Sub-agents: LAUNCH-CALLER, ADOPTION-ANALYST
# 3. Handoff protocols from APOLLO
# 4. Loopback protocols to AURA
# 5. Integration with MARKET.md, METRICS.md SoT files
```

**For Each Primary Agent:**
- Use `.codex/agents/primary/AURA.md` as template for structure
- Follow same sections and format
- Include IBM BOB mode integration
- Map to skills explicitly
- Document handoffs and quality gates

### Step 5: Implement Sub-Agents (2-3 days)

**Research Sub-Agents (under AURA):**
```bash
# Create 5 research sub-agents
.codex/agents/sub-agents/research/SPARK-SCOUT.md
.codex/agents/sub-agents/research/SEGMENTOR.md
.codex/agents/sub-agents/research/MOAT-MAPPER.md
.codex/agents/sub-agents/research/JOURNEY-SCRIBE.md  # (or under DESIGNER?)
.codex/agents/sub-agents/research/RISK-ORACLE.md
```

**Build Sub-Agents (under APOLLO):**
```bash
# Create 3 build sub-agents
.codex/agents/sub-agents/build/ARCHITECT.md
.codex/agents/sub-agents/build/QA-MAESTRO.md
.codex/agents/sub-agents/build/AUTOMATION-RUNNER.md
```

**GTM Sub-Agents (under JANUS):**
```bash
# Create 2 GTM sub-agents
.codex/agents/sub-agents/gtm/LAUNCH-CALLER.md
.codex/agents/sub-agents/gtm/ADOPTION-ANALYST.md
```

**Sub-Agent Template Structure:**
```markdown
# [AGENT-NAME] Sub-Agent

**Primary Agent:** [AURA/DESIGNER/APOLLO/JANUS]
**Gate:** v0.X [Gate Name]
**Version:** 1.0
**Updated:** [Date]

## Identity
**Role:** [Role description]
**Guiding Question:** "[Core question]"
**Mission:** [Mission statement]

## Responsibilities
- [Key responsibility 1]
- [Key responsibility 2]
- etc.

## Skills Used
**Primary Skills:**
- skill-name - description

**Supporting Skills:**
- skill-name - description

## Invocation Protocol
[How primary agent invokes this sub-agent]

## Outputs
[What this sub-agent produces]
- ID types (CFD-XXX, UJ-XXX, etc.)
- PRD sections
- SoT files updated

## Quality Standards
[Completion criteria]

## References
[Links to skills, primary agent, coordination docs]
```

### Step 6: Update Documentation (1 day)

**Agent-Skill Matrix:**
```bash
# Update with all agents
vim .codex/agents/AGENT_SKILL_MATRIX.md

# Add rows for:
# - DESIGNER primary (if applicable)
# - APOLLO primary
# - JANUS primary
# - All 10 sub-agents

# Verify skill assignments match GHM patterns
```

**Coordination Protocols:**
```bash
# Update handoff protocols
vim .codex/agents/COORDINATION_PROTOCOLS.md

# Add/Update:
# - AURA → DESIGNER handoff (if applicable)
# - DESIGNER → APOLLO handoff
# - APOLLO → JANUS handoff
# - JANUS → AURA loopback
# - All sub-agent invocation patterns
# - Quality gates for all transitions
```

**Agent README:**
```bash
# Update status
vim .codex/agents/README.md

# Change status from PAUSED to COMPLETE
# Update agent count (3 or 4 primary + 10 sub-agents)
# Remove "awaiting GHM" notices
# Add "last synced with GHM" date
```

### Step 7: Integrate with IBM BOB (2-3 hours)

```bash
# Update BOB mode rules to reference agents
vim .bob/rules-code/AGENTS.md     # Agent constraints in Code mode
vim .bob/rules-plan/AGENTS.md     # Agent planning in Plan mode
vim .bob/rules-advance/AGENTS.md  # Full agent capabilities in Advance mode
vim .bob/rules-ask/AGENTS.md      # Agent explanations in Ask mode
```

**For Each Mode:**
- Document which agents can operate in that mode
- Specify agent capabilities and restrictions
- Provide examples of agent workflows in that mode

### Step 8: Update Root Documentation (1-2 hours)

```bash
# Update root AGENTS.md
vim AGENTS.md
# - Change status from PAUSED to COMPLETE
# - Add agent system overview
# - Link to .codex/agents/ directory

# Update README.md
vim README.md
# - Note agent system now complete
# - Update "For AI Agents" section
# - Add quick start for using agents
```

### Step 9: Testing & Validation (1-2 days)

**Test Agent Coordination:**
1. Test AURA with research sub-agents
2. Test DESIGNER (if applicable) with JOURNEY-SCRIBE
3. Test APOLLO with build sub-agents
4. Test JANUS with GTM sub-agents
5. Test complete workflow: AURA → DESIGNER → APOLLO → JANUS
6. Test loopback: JANUS → AURA

**Test Agent-Skill Integration:**
1. Verify agents can invoke all assigned skills
2. Test skill outputs populate SoT files correctly
3. Validate ID tracking across agent boundaries
4. Check cross-references maintain integrity

**Test Handoffs:**
1. AURA → DESIGNER (or AURA → APOLLO if no DESIGNER)
2. DESIGNER → APOLLO
3. APOLLO → JANUS
4. JANUS → AURA (loopback)

**Test with Real Product:**
- Use IBM Context Engineering product (itself) as test case
- Walk through complete lifecycle v0.1 → v1.0
- Validate agent outputs match methodology expectations
- Document any issues or needed refinements

### Step 10: Documentation Finalization (1 day)

**Create Final Documents:**
- Implementation completion report
- Agent usage quick-start guide
- Agent selection decision tree (which agent for which task)
- Multi-agent workflow examples
- Troubleshooting guide

**Update Version History:**
- Note completion date
- Document what was implemented from GHM vs IBM additions
- Record any deviations from GHM with rationale

**Team Training:**
- Create training presentation
- Document common workflows
- Prepare FAQ
- Record example sessions

---

## Checklist: Implementation Complete

### Primary Agents
- [ ] AURA (updated if needed)
- [ ] DESIGNER (if applicable)
- [ ] APOLLO
- [ ] JANUS

### Sub-Agents (10 total)
- [ ] SPARK-SCOUT
- [ ] SEGMENTOR
- [ ] MOAT-MAPPER
- [ ] JOURNEY-SCRIBE
- [ ] RISK-ORACLE
- [ ] ARCHITECT
- [ ] QA-MAESTRO
- [ ] AUTOMATION-RUNNER
- [ ] LAUNCH-CALLER
- [ ] ADOPTION-ANALYST

### Documentation
- [ ] AGENT_SKILL_MATRIX.md updated
- [ ] COORDINATION_PROTOCOLS.md updated
- [ ] README.md updated
- [ ] Root AGENTS.md updated
- [ ] IBM BOB mode rules updated
- [ ] Implementation status changed to COMPLETE

### Testing
- [ ] Sub-agent invocation tested
- [ ] Primary agent coordination tested
- [ ] Complete lifecycle workflow tested
- [ ] Real product validation completed
- [ ] Issues documented and resolved

### Training
- [ ] Quick-start guide created
- [ ] Examples documented
- [ ] Team training prepared
- [ ] FAQ created

---

## Estimated Timeline

**After GHM Specifications Published:**

| Phase | Duration | Key Deliverables |
|-------|----------|------------------|
| 1. Analysis | 1-2 days | GHM structure understood, gaps identified |
| 2. Primary Agents | 2-3 days | DESIGNER, APOLLO, JANUS implemented |
| 3. Sub-Agents | 2-3 days | All 10 sub-agents implemented |
| 4. Documentation | 1-2 days | Matrix, protocols, README updated |
| 5. Integration | 1-2 days | BOB modes, testing, validation |
| 6. Training | 1-2 days | Guides, examples, team prep |

**Total:** 9-14 days

---

## Contact & Support

**GHM Repository:** https://github.com/mattgierhart/PRD-driven-context-engineering
**IBM Repo:** github.ibm.com/IBM-Context-Engineering/product-context-engineering
**Documentation:** `.codex/agents/IMPLEMENTATION_STATUS.md`

---

**When ready to resume, follow this guide step-by-step. Good luck!** 🚀
