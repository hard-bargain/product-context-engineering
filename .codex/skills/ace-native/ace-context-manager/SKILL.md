---
name: ace-context-manager
description: Extract and populate PRODUCT context into Source of Truth files using ACE methodology with GHM 10-gate alignment. Use when extracting product decisions, features, and architecture from conversations - excludes infrastructure and personal setup content.
metadata:
  author: "IBM ACE Team"
  version: "2.0"
  category: "knowledge-management"
  ace_patterns: ["PAT-001", "PAT-004", "PAT-005"]
  ghm_compatible: true
  update_reason: "Updated for GHM 10-gate system integration and enhanced content filtering"
---

# ACE Context Manager Skill (v2.0 - GHM 10-Gate Integration)

## When to Use This Skill

- **Extract PRODUCT context** from conversations, documents, or meetings into Source of Truth files
- **Populate SoT files** with structured ID-based entries (DEC-XXX, FEAT-XXX, TECH-XXX) 
- **Maintain knowledge graph** integrity across team updates
- **Filter out infrastructure/personal content** that doesn't belong in shared SoT
- **Coordinate context across GHM 10-gate lifecycle** (v0.1 Spark → v1.0 Market Adoption)
- **Support gate transitions** with appropriate context evolution

## ⚠️ **CRITICAL: Enhanced Content Filtering for 10-Gate System**

**Before extracting ANY content, classify whether it belongs in Source of Truth files and which gate phase it supports.**

### ✅ **INCLUDE in SoT (Product Context Only)**

**Strategic Decisions (DEC-XXX) - Gates v0.1-v0.3:**
- Market opportunity and customer segment decisions
- Business model and pricing strategy decisions
- Product positioning and competitive strategy
- Success metrics and business case validation
- Partnership and go-to-market strategy decisions

**Tactical Features (FEAT-XXX) - Gates v0.4-v0.6:**
- User journey and experience decisions
- Feature specifications and acceptance criteria
- Design system and interaction patterns
- User research insights and validation results
- Product requirements and prioritization decisions

**Technical Architecture (TECH-XXX) - Gates v0.6-v0.8:**
- System architecture and technology stack decisions
- API design and data model specifications
- Performance, security, and scalability requirements
- Infrastructure and deployment architecture
- Technical constraints affecting user experience

**Market Insights (MKT-XXX) - All Gates:**
- Customer research and validation results
- Competitive analysis and market positioning
- Market size and opportunity assessments
- Customer feedback and usage analytics
- Industry trends affecting product direction

**Success Metrics (MET-XXX) - All Gates:**
- Business success criteria and KPIs
- User experience and satisfaction metrics
- Technical performance requirements
- Market adoption and growth targets
- Financial and revenue success measures

**Team Structure (TEAM-XXX) - All Gates:**
- Cross-functional team roles and responsibilities
- Discipline-specific accountabilities
- Communication and coordination patterns
- Decision-making authority and escalation
- External stakeholder relationships

**Release Planning (REL-XXX) - Gates v0.7-v1.0:**
- Go-to-market strategy and timeline
- Launch readiness criteria and validation
- Release rollback and contingency plans
- Post-launch success metrics and monitoring
- Customer onboarding and support strategy

### ❌ **EXCLUDE from SoT (Infrastructure/Personal Context)**

**Development Infrastructure:**
- Personal tool configurations (Claude Desktop, MCP setup, IDE preferences)
- Local development environment setup (Node.js installation, filesystem access)
- Individual workflow tools (personal productivity, note-taking systems)
- CI/CD pipelines (unless they define product deployment constraints)

**Process and Methodology:**
- How to use ACE methodology (belongs in methodology/ docs)
- Skills integration and setup (belongs in setup-guides/)
- Team communication tools and processes
- Development workflow and git practices

**Gate-Specific Working Documents:**
- Meeting notes and action items (belongs in temp/gate-working/)
- Individual research notes and discoveries
- Setup troubleshooting and debugging
- Experimental ideas not yet validated

### 🎯 **Enhanced Four-Gate Validation Process**

**Before creating ANY SoT entry, ALL four gates must pass:**

**Gate 1: Product Impact Test**
- Question: "Does this decision/feature/component directly affect what users experience or how the business operates?"
- ❌ Fail: Personal MCP setup, IDE configuration, methodology usage
- ✅ Pass: User authentication method, database choice for user data, business model selection

**Gate 2: 10-Gate Relevance Test**
- Question: "Is this relevant across multiple gates in the v0.1-v1.0 lifecycle, not just current setup?"
- ❌ Fail: Gate-specific meeting notes, temporary technical decisions, tool setup
- ✅ Pass: Strategic decisions, core feature definitions, architecture choices

**Gate 3: Team Universal Test**
- Question: "Is this relevant to ALL team members regardless of their individual tools and current gate?"
- ❌ Fail: Individual Claude Desktop configuration, personal directory structure
- ✅ Pass: Product requirements, user experience decisions, business logic

**Gate 4: Durability Test**
- Question: "Will this still be relevant as we progress through gates v0.1 → v1.0?"
- ❌ Fail: Current gate working files, temporary setup instructions, debugging notes
- ✅ Pass: Market validation, user journey definitions, technical architecture

## Gate-Aware Context Extraction

### Strategic Context (Gates v0.1-v0.3)
```
Gate Focus: Market validation → Business model → Commercial viability

Extract When:
- Discussing market opportunity and customer validation
- Business model decisions and pricing strategy
- Competitive positioning and market entry
- Success criteria and investment decisions

Example Extraction:
"We validated the SMB automation market through 25 customer interviews, confirming 40+ hours/month wasted on manual processes. Subscription pricing at $99/user/month shows 67% purchase intent."

→ DEC-001: Target Market - SMB operations teams
→ MKT-001: Market Validation - 25 interviews, 40hrs/month pain point
→ DEC-002: Pricing Strategy - $99/user/month subscription
→ MKT-002: Purchase Intent - 67% at target price point
```

### Tactical Context (Gates v0.4-v0.6)
```
Gate Focus: User experience → Risk validation → System design

Extract When:
- User journey mapping and experience design
- Feature specifications and acceptance criteria
- Risk analysis and assumption validation
- Technical architecture and system design

Example Extraction:
"User testing shows the drag-drop workflow builder needs <2 second response time. The visual node editor should auto-save every 30 seconds, with offline mode for mobile users."

→ FEAT-001: Workflow Builder - Drag-drop interface for workflow creation
→ TECH-001: Performance Requirement - <2s response time for interactions
→ FEAT-002: Auto-save Feature - 30-second intervals, offline mobile support
→ DEC-003: User Experience Priority - Visual editor over code-based
```

### Operational Context (Gates v0.6-v1.0)
```
Gate Focus: Implementation → Deployment → Market adoption

Extract When:
- Technical implementation and architecture decisions
- Development process and quality standards
- Deployment strategy and operational requirements
- Market launch and adoption metrics

Example Extraction:
"API performance testing shows 1.2s avg response time under 1000 concurrent users. Production deployment uses blue-green strategy with 5-minute rollback capability."

→ TECH-002: API Performance - 1.2s response, 1000 concurrent users tested
→ REL-001: Deployment Strategy - Blue-green with 5min rollback
→ MET-001: Performance Metrics - <2s response target (currently 1.2s)
→ TECH-003: Scale Requirements - 1000+ concurrent user capacity
```

## Enhanced Extraction Process

### Step 1: Gate Context Classification
```
For each piece of content, identify:
1. "Which gate does this belong to?" (v0.1 Spark → v1.0 Adoption)
2. "Is this strategic, tactical, or operational?" (PAT-001 layer)
3. "Is this product context or infrastructure?" (Filter test)
4. "Which discipline needs this?" (PM, Designer, Developer)

Only proceed with SoT extraction for validated product content.
```

### Step 2: Gate-Appropriate Layer Assignment
Per WF-001 context weights:

**v0.1 Spark - v0.3 Commercial (Strategic Heavy):**
- Strategic Context: 90% → 70% → 60% (market, business model)
- Tactical Context: 10% → 30% → 40% (early feature concepts)
- Operational Context: 0% (no implementation yet)

**v0.4 Journeys - v0.6 Architecture (Tactical Focus):**
- Strategic Context: 30% → 20% → 10% (strategy settled)
- Tactical Context: 60% → 70% → 40% (UX design, risk analysis)
- Operational Context: 10% → 10% → 50% (architecture emerges)

**v0.7 Build - v1.0 Adoption (Operational Priority):**
- Strategic Context: 5% → 5% → 40% (strategy for growth)
- Tactical Context: 30% → 50% → 35% (launch tactics)
- Operational Context: 65% → 15% → 25% (build then optimize)

### Step 3: ID Assignment with Gate Validation
- Check existing IDs to find next available number
- Verify uniqueness across all SoT files
- Create bidirectional cross-references between related entries
- Validate knowledge graph integrity
- **NEW:** Tag entries with relevant gate phases

### Step 4: Gate Transition Readiness
- **Archive Content:** Move gate-specific working documents to temp/
- **Promote Content:** Elevate validated insights to permanent SoT
- **Update Weights:** Shift context layer emphasis per new gate
- **Cross-Reference:** Update links to reflect gate evolution

## Gate-Specific Content Examples

### ✅ **v0.1 Spark Gate Content (Strategic Focus)**
```markdown
## DEC-001: Market Opportunity Focus
**Gate:** v0.1 Spark
**Layer:** Strategic
**Decision:** Target SMB operations teams struggling with manual workflow automation
**Rationale:** 25 customer interviews confirmed 40+ hours/month wasted, high pain point
**Success Criteria:** Validate 100 SMBs willing to pay for solution
**Owner:** Strategy Lead
**Related:** MKT-001, MKT-002

## MKT-001: Customer Problem Validation
**Gate:** v0.1 Spark  
**Layer:** Strategic
**Insight:** SMB operations managers spend 8+ hours/week on manual data entry between systems
**Evidence:** Customer interviews (n=25), 92% report this as top productivity issue
**Implications:** High willingness to pay for automation solution
**Owner:** Research Lead
**Related:** DEC-001, FEAT-001
```

### ✅ **v0.4 User Journeys Gate Content (Tactical Focus)**
```markdown
## FEAT-001: Visual Workflow Builder
**Gate:** v0.4 User Journeys
**Layer:** Tactical
**Description:** Drag-and-drop interface for creating automated workflows
**User Value:** Enables non-technical users to create complex automations
**Acceptance Criteria:**
- Drag-drop nodes onto canvas (<2s response time)
- Visual connections between workflow steps
- Auto-save every 30 seconds
- Offline mode for mobile users
**Owner:** Product Manager
**Related:** TECH-001, DEC-003

## DEC-003: Interface Design Approach
**Gate:** v0.4 User Journeys
**Layer:** Tactical  
**Decision:** Visual node-based editor over form-based configuration
**Rationale:** User testing shows 3x faster workflow creation with visual approach
**Alternatives Considered:** Form-based, code-based, template-only
**Success Criteria:** 80% of users can create workflow in <10 minutes
**Owner:** UX Designer
**Related:** FEAT-001, FEAT-002
```

### ✅ **v0.7 Build Gate Content (Operational Focus)**
```markdown
## TECH-001: Workflow Engine Architecture
**Gate:** v0.7 Build
**Layer:** Operational
**Purpose:** Real-time workflow execution engine with queue management
**Architecture:** Node.js event-driven with Redis queue, PostgreSQL state
**Performance:** <2s workflow execution, 1000+ concurrent workflows
**Dependencies:** Redis cluster, PostgreSQL 14+, Node.js 18+
**Owner:** Technical Lead
**Related:** FEAT-001, REL-001

## REL-001: Production Deployment Strategy  
**Gate:** v0.7 Build → v0.8 Deployment
**Layer:** Operational
**Strategy:** Blue-green deployment with automated rollback
**Timeline:** 2-week deployment window with 24/7 monitoring
**Rollback:** 5-minute automated rollback if error rate >1%
**Success Criteria:** Zero downtime deployment, <2% error rate
**Owner:** DevOps Lead
**Related:** TECH-001, MET-001
```

### ❌ **Gate Working Documents (Should NOT Be in SoT)**
```markdown
## v0.4 Sprint Planning Notes [WRONG - Temporary]
**Content:** Team meeting notes about sprint 12 planning
**Reason to Exclude:** Gate-specific working document, belongs in temp/v04-working/

## MCP Filesystem Configuration [WRONG - Infrastructure]  
**Content:** Claude Desktop setup for local development
**Reason to Exclude:** Personal development setup, not product architecture

## User Interview Raw Transcripts [WRONG - Research Data]
**Content:** Full transcripts from customer discovery interviews
**Reason to Exclude:** Research data belongs in temp/research/, only insights go to SoT
```

### 📁 **Alternative Locations for Excluded Content**

**temp/gate-working/** - Gate-specific working documents
```
temp/v04-user-journeys-working/
├── sprint-planning-notes.md
├── user-research-raw-data/
├── design-iteration-feedback.md
└── team-meeting-notes.md
```

**temp/research-archive/** - Research data and raw materials
```
temp/research-archive/
├── customer-interview-transcripts/
├── user-testing-sessions/
├── competitive-analysis-raw/
└── market-research-data/
```

**setup-guides/** - Personal and infrastructure setup
```
setup-guides/
├── claude-desktop-setup.md
├── development-environment.md
├── team-onboarding.md
└── tool-configuration/
```

## Quality Validation Checklist

### Before Adding Any SoT Entry:

**Gate Alignment:**
- [ ] Entry tagged with appropriate gate (v0.1-v1.0)
- [ ] Context layer matches gate focus (strategic/tactical/operational)
- [ ] Content durability spans multiple gates where appropriate
- [ ] Gate transition impact documented

**Content Validation:**
- [ ] Passes all four validation gates
- [ ] Contains product impact rationale
- [ ] Includes owner/accountability
- [ ] Has clear success criteria (where applicable)

**ID Management:**
- [ ] Sequential ID assignment verified
- [ ] No duplicate IDs across files
- [ ] Cross-references are bidirectional
- [ ] Related IDs actually exist

**Template Compliance:**
- [ ] Follows ACE SoT entry template structure
- [ ] Appropriate ACE layer classification
- [ ] Complete metadata (Status, Date, Owner, Gate)
- [ ] Clear descriptions and rationale

### Gate Transition Validation:
- [ ] Previous gate content appropriately archived
- [ ] New gate context properly weighted
- [ ] Cross-references updated for gate evolution
- [ ] Team responsibilities aligned with new gate

## Integration with 10-Gate System

### Gate v0.1 Spark - Context Extraction Focus
```
Primary Extraction: Strategic decisions and market validation
Content Types: DEC-XXX (strategic), MKT-XXX (opportunity), early TEAM-XXX
Archive: Previous product exploration, pivot decisions
Promote: Validated problem-solution fit, market opportunity
```

### Gate v0.4 User Journeys - Context Extraction Focus
```
Primary Extraction: User experience and feature specifications
Content Types: FEAT-XXX (user stories), DEC-XXX (UX), TEAM-XXX (design)
Archive: User research working documents, design iterations
Promote: Validated user journeys, feature requirements, design decisions
```

### Gate v0.7 Build - Context Extraction Focus
```
Primary Extraction: Technical implementation and architecture
Content Types: TECH-XXX (implementation), REL-XXX (deployment), operational MET-XXX
Archive: Development sprint working documents, code iterations
Promote: Production architecture, deployment procedures, quality metrics
```

## Advanced Features

### 1. Gate-Aware Content Suggestions
```markdown
**Current Gate: v0.5 Red Team Review**
**Context Extraction Suggestions:**

High Priority for Current Gate:
- Risk analysis and mitigation strategies (DEC-XXX risk decisions)
- Assumption validation results (MKT-XXX validation data)
- Technical feasibility assessments (TECH-XXX feasibility)
- Go/no-go decision criteria (DEC-XXX strategic)

Lower Priority (Future Gates):
- Detailed implementation specifications (wait for v0.6-v0.7)
- Marketing campaign details (wait for v0.9)
- Operational procedures (wait for v0.8)
```

### 2. Cross-Gate Impact Analysis
```markdown
**Extracting DEC-003: Technology Stack Selection**

Gate Impact Analysis:
v0.6 Architecture: PRIMARY - Core decision for system design
v0.7 Build: HIGH - Affects all implementation decisions  
v0.8 Deployment: MEDIUM - Influences infrastructure requirements
v0.9-v1.0: LOW - Minimal impact on go-to-market strategy

Recommended Cross-References:
- Link to TECH-001 (system architecture)
- Link to TEAM-002 (development team skills)
- Link to REL-001 (deployment requirements)
```

### 3. Gate Readiness Content Validation
```markdown
**Pre-Gate Transition Content Check: v0.4 → v0.5**

Required Content for v0.5 Red Team Review:
✅ User journey specifications complete (FEAT-001 through FEAT-005)
✅ Design decisions documented (DEC-003, DEC-004)
⚠️  Risk analysis incomplete (need DEC-005: Risk mitigation strategy)
❌ Technical feasibility not assessed (need TECH-001: Feasibility analysis)

Blocking Issues for v0.5 Transition:
1. Missing risk analysis documentation
2. Technical feasibility assessment incomplete
3. Assumption validation plan not created

Recommendation: Complete risk and technical analysis before v0.5 transition
```

## Error Prevention

### Common 10-Gate Context Issues

**Gate Confusion:**
```
Issue: Extracting v0.7 build content during v0.4 user journeys gate
Solution: Gate-aware extraction focusing on current gate priorities
Prevention: Check current gate context before extraction
```

**Content Layer Misalignment:**
```
Issue: Operational details extracted during strategic v0.2 market gate
Solution: Focus on strategic market decisions, archive operational details
Prevention: Apply PAT-001 layer filtering based on current gate
```

**Premature Technical Details:**
```
Issue: Detailed implementation specs extracted during v0.3 commercial gate
Solution: Focus on business model decisions, defer technical details
Prevention: Gate readiness validation before detailed technical extraction
```

## Integration with Other Skills

**Works with:**
- `phase-transition-manager` - For managing context evolution through gates
- `team-context-coordinator` - For discipline-specific context coordination
- `quality-validator` - For validating extracted content quality

**Coordinates with:**
- WF-001: Gate Transition Workflow - Supports systematic gate evolution
- WF-002: Weekly Context Review - Maintains content quality between gates
- WF-003: Cross-Discipline Handoff - Enables team coordination

## Example Commands

### Gate-Aware Context Extraction
```
"Extract product context from this v0.4 user journeys workshop, focusing on tactical layer"
→ Extracts FEAT-XXX user stories and DEC-XXX UX decisions, excludes implementation details
```

### Cross-Gate Impact Analysis
```
"Analyze the impact of this technology decision across the remaining gates"
→ Shows how TECH-001 affects v0.6 Architecture, v0.7 Build, v0.8 Deployment gates
```

### Gate Transition Preparation
```
"Prepare context for v0.5 red team review transition, archive v0.4 working documents"
→ Archives user journey working docs, promotes validated features to SoT
```

### Content Quality Validation
```
"Validate all extracted content for v0.3 commercial gate readiness"
→ Checks strategic business decisions complete, tactical features appropriate for gate
```

## Notes

- Context extraction should be gate-aware and focus on current gate priorities
- Strategic decisions made in early gates (v0.1-v0.3) should persist through entire lifecycle
- Tactical context evolves significantly between v0.4-v0.6 as user experience emerges
- Operational context becomes primary focus during v0.6-v0.8 implementation gates
- Content filtering prevents infrastructure pollution while supporting product evolution
- Gate transitions require systematic archive/promotion of appropriate content
- This v2.0 skill is fully integrated with GHM 10-gate system and WF-001 methodology
