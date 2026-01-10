---
name: phase-transition-manager
description: Manage systematic context evolution through GHM 10-gate product development lifecycle implementing PAT-002 Gate Alignment Pattern. Use when transitioning between v0.1 Spark → v1.0 Market Adoption gates.
metadata:
  author: "IBM ACE Team"
  version: "2.0"
  category: "phase-management"
  ace_patterns: ["PAT-002", "PAT-004"]
  ghm_compatible: true
  update_reason: "Updated for GHM 10-gate system integration"
---

# Phase Transition Manager Skill (v2.0 - GHM 10-Gate Integration)

## When to Use This Skill

- **Execute gate transitions** through GHM 10-gate lifecycle: v0.1 Spark → v0.2 Market Definition → v0.3 Commercial Model → v0.4 User Journeys → v0.5 Red Team Review → v0.6 Architecture → v0.7 Build Execution → v0.8 Deployment → v0.9 Go-to-Market → v1.0 Market Adoption
- **Archive previous gate context** appropriately while preserving critical decisions
- **Shift context layer weights** according to PAT-002 gate alignment patterns from WF-001
- **Update team responsibilities** for new gate requirements
- **Validate gate readiness** before allowing transition to proceed
- **Manage context evolution** systematically through product lifecycle

## GHM 10-Gate Integration

### PAT-002: Gate Alignment Pattern (Updated from WF-001)

**Context Layer Weight Evolution Through Gates:**

| From Gate | To Gate | Strategic | Tactical | Operational | Primary Focus |
|-----------|---------|-----------|----------|-------------|---------------|
| **v0.1 Spark** | **v0.2 Market** | 90% → 70% | 10% → 30% | 0% → 0% | Market validation, opportunity |
| **v0.2 Market** | **v0.3 Commercial** | 70% → 60% | 30% → 40% | 0% → 0% | Business model, pricing |
| **v0.3 Commercial** | **v0.4 Journeys** | 60% → 30% | 40% → 60% | 0% → 10% | User experience, flows |
| **v0.4 Journeys** | **v0.5 Red Team** | 30% → 20% | 60% → 70% | 10% → 10% | Risk analysis, validation |
| **v0.5 Red Team** | **v0.6 Architecture** | 20% → 10% | 70% → 40% | 10% → 50% | Technical design, system |
| **v0.6 Architecture** | **v0.7 Build** | 10% → 5% | 40% → 30% | 50% → 65% | Implementation, code |
| **v0.7 Build** | **v0.8 Deployment** | 5% → 5% | 30% → 40% | 65% → 55% | Release, operations |
| **v0.8 Deployment** | **v0.9 GTM** | 5% → 35% | 40% → 50% | 55% → 15% | Marketing, launch |
| **v0.9 GTM** | **v1.0 Adoption** | 35% → 40% | 50% → 35% | 15% → 25% | Growth, optimization |

## Core Functions

### 1. Gate Readiness Assessment

**v0.1 Spark → v0.2 Market Definition:**
```markdown
## Gate Readiness: v0.1 Spark → v0.2 Market Definition

**Required Strategic Context (v0.1 Complete):**
✅ Problem opportunity identified and validated (initial signal)
✅ Target market hypothesis formed
✅ Initial customer interviews conducted (5+ conversations)
✅ Problem significance validated (pain points confirmed)
✅ Solution approach conceptualized

**Strategic Decisions Required:**
✅ DEC-001: Market opportunity focus area
✅ DEC-002: Target customer segment hypothesis
⚠️  DEC-003: Solution approach direction [Needs validation]
❌ MKT-001: Market size estimation [BLOCKING]

**Quality Gates:**
✅ Customer problem validation complete (interviews, research)
✅ Initial solution concept defined
❌ Market size and opportunity not quantified [BLOCKING]
⚠️  Competitive landscape not fully mapped [Minor]

**Readiness Status: 75% - 1 blocking issue**
**Recommendation: Complete market sizing before v0.2 Market Definition gate**
```

**v0.4 User Journeys → v0.5 Red Team Review:**
```markdown
## Gate Readiness: v0.4 User Journeys → v0.5 Red Team Review

**Required Tactical Context (v0.4 Complete):**
✅ User personas defined and validated (3-5 primary personas)
✅ User journey flows documented end-to-end
✅ Feature requirements specified (P0/P1/P2 priority)
✅ Design concepts and wireframes complete
✅ User story backlog created with acceptance criteria

**Tactical Decisions Required:**
✅ FEAT-001: Core user journey priority and flow
✅ FEAT-002: MVP feature set definition
✅ DEC-004: Design system and interaction approach
❌ FEAT-003: Edge case handling approach [BLOCKING]

**Quality Gates:**
✅ User research validated all personas and journeys
✅ Design concepts tested with target users
✅ Feature specifications complete with acceptance criteria
❌ Risk analysis not conducted [BLOCKING]
⚠️  Technical feasibility not fully validated [Minor]

**Readiness Status: 82% - 1 blocking issue**
**Recommendation: Complete risk analysis and edge case planning before v0.5 Red Team Review**
```

**v0.7 Build Execution → v0.8 Deployment:**
```markdown
## Gate Readiness: v0.7 Build → v0.8 Deployment

**Required Operational Context (v0.7 Complete):**
✅ All MVP features implemented per specifications
✅ Code quality standards met (test coverage >80%)
✅ Security requirements implemented and tested
✅ Performance benchmarks achieved (<2s load times)
✅ Integration testing completed successfully

**Operational Decisions Required:**
✅ TECH-001: Production architecture deployed
✅ TECH-002: Monitoring and alerting configured
✅ TECH-003: Backup and recovery procedures tested
❌ REL-001: Rollback procedures not validated [BLOCKING]

**Quality Gates:**
✅ All features working in staging environment
✅ Security testing completed with no critical vulnerabilities
✅ Performance testing passed under expected load
❌ Production deployment pipeline not tested [BLOCKING]
⚠️  User acceptance testing partially complete [Minor]

**Readiness Status: 87% - 1 blocking issue**
**Recommendation: Complete production pipeline testing and rollback validation**
```

### 2. Context Archive and Promotion

**Gate Transition Process (v0.3 Commercial → v0.4 User Journeys):**
```markdown
## Context Archive: v0.3 Commercial Model Completion

**Archived to temp/v03-commercial-archive/:**
- Business model canvas iterations and workshop notes
- Pricing strategy analysis and competitive pricing research
- Revenue model calculations and financial projections
- Partnership discussions and contract negotiations
- Monetization experiment results and feedback

**Promoted to Source of Truth:**
- MKT-001: Target Market Definition (validated with sizing)
- DEC-003: Business Model Selection (subscription vs transaction)
- MET-001: Revenue Success Metrics (MRR, ARPU, LTV targets)
- DEC-004: Pricing Strategy (freemium vs paid tiers)

**Cross-Reference Updates:**
- All FEAT-XXX entries now reference validated business model
- All user research links to confirmed target market
- Team structure updated for v0.4 user research focus

**Context Layer Rebalancing:**
- Strategic: 60% → 30% (business model validated, focus shifts to users)
- Tactical: 40% → 60% (user experience and feature definition primary)
- Operational: 0% → 10% (initial technical considerations for UX)
```

**Gate Promotion Process (v0.6 Architecture → v0.7 Build):**
```markdown
## Context Promotion: v0.6 Architecture → v0.7 Build Execution

**Technical Architecture (TECH-XXX → Implementation Ready):**
✅ TECH-001: System Architecture → Development blueprints ready
✅ TECH-002: Technology Stack → Development environment configured
✅ TECH-003: Data Model → Database schemas deployed to staging
✅ TECH-004: API Specifications → Contract definitions for frontend/backend

**Updated Context Focus:**
- Strategic: 10% → 5% (architecture decisions made, minimal strategic changes)
- Tactical: 40% → 30% (feature specs finalized, implementation focus)
- Operational: 50% → 65% (primary focus on code, testing, integration)

**New Build Context Required:**
- Sprint planning and execution tracking
- Code standards and development workflows
- Active development blockers and progress
- Testing procedures and quality metrics
```

### 3. Gate-Specific Context Weighting

**v0.1 Spark Gate (Strategic Focus):**
```markdown
**Active Context Priorities:**
1. Problem opportunity validation and market signals
2. Customer interview insights and pain point validation
3. Initial solution concept and approach hypothesis
4. Market opportunity size and competitive landscape

**Reduced Context:**
- Detailed technical implementation planning
- Specific feature requirements and specifications
- Operational procedures and development processes

**Key Deliverables:**
- Problem-market fit validation
- Customer interview summary (10+ conversations)
- Solution concept definition
- Market opportunity assessment
```

**v0.5 Red Team Review Gate (Tactical Focus):**
```markdown
**Active Context Priorities:**
1. Risk analysis and assumption validation
2. Mitigation strategies for identified risks
3. Go/no-go decision criteria and validation
4. Technical feasibility and constraint analysis

**Reduced Context:**
- High-level market validation (already completed)
- Detailed implementation specifications (not yet needed)
- Operational deployment procedures (future focus)

**Key Deliverables:**
- Risk assessment and mitigation plan
- Assumption validation results
- Technical feasibility confirmation
- Revised go/no-go recommendation
```

**v0.7 Build Execution Gate (Operational Focus):**
```markdown
**Active Context Priorities:**
1. Sprint execution and feature development progress
2. Code quality, testing, and technical debt management
3. Integration testing and system validation
4. Development blockers and technical problem solving

**Reduced Context:**
- Market validation and customer research (established)
- High-level product strategy (minimal changes during build)
- Future marketing and go-to-market planning

**Key Deliverables:**
- Working MVP implementation
- Code quality and test coverage reports
- Integration testing results
- Technical documentation and deployment readiness
```

### 4. Team Responsibility Evolution by Gate

**v0.1-v0.3 (Strategy Phase) Team Structure:**
```markdown
## TEAM-001: Strategy Lead (v0.1 Spark - v0.3 Commercial)
**Primary Responsibilities:**
- Customer discovery and market research
- Problem validation and solution conceptualization
- Business model development and validation
- Competitive analysis and market positioning

**Context Ownership:**
- All MKT-XXX entries (market insights and validation)
- Strategic DEC-XXX entries (market and business model decisions)
- Customer research and interview documentation
- Business model canvas and revenue projections

## TEAM-002: Research Lead (v0.1 Spark - v0.3 Commercial)
**Primary Responsibilities:**
- Customer interview coordination and analysis
- Market research and competitive intelligence
- User persona development and validation
- Problem-solution fit validation

**Context Ownership:**
- Customer interview transcripts and insights
- Market research reports and analysis
- Competitive analysis and positioning
- User persona definitions and validation data
```

**v0.4-v0.5 (User Experience Phase) Team Structure:**
```markdown
## TEAM-001: Product Manager (v0.4 Journeys - v0.5 Red Team)
**Primary Responsibilities:**
- User journey design and validation
- Feature prioritization and specification
- Cross-functional coordination and decision making
- Risk analysis and mitigation planning

**Context Ownership:**
- All FEAT-XXX entries (feature specifications and user stories)
- Tactical DEC-XXX entries (product and feature decisions)
- User journey flows and interaction design
- Risk assessment and mitigation strategies

## TEAM-003: UX Designer (v0.4 Journeys - v0.5 Red Team)
**Primary Responsibilities:**
- User research and testing coordination
- User journey mapping and flow design
- Design concept development and validation
- User experience specification and guidelines

**Context Ownership:**
- User journey maps and flow documentation
- Design concepts, wireframes, and prototypes
- User testing results and insights
- Design system foundations and interaction patterns
```

**v0.6-v0.8 (Build Phase) Team Structure:**
```markdown
## TEAM-001: Product Manager (v0.6 Architecture - v0.8 Deployment)
**Primary Responsibilities:**
- Technical requirement validation and priority management
- Cross-functional coordination between design and development
- Quality assurance and acceptance criteria validation
- Release planning and deployment coordination

**Context Ownership:**
- FEAT-XXX acceptance criteria and validation
- REL-XXX release planning and coordination
- Technical requirement specifications
- Quality gates and deployment readiness criteria

## TEAM-004: Technical Lead (v0.6 Architecture - v0.8 Deployment)
**Primary Responsibilities:**
- System architecture design and validation
- Technology stack selection and implementation
- Code quality standards and development workflows
- Technical risk management and problem solving

**Context Ownership:**
- All TECH-XXX entries (architecture, implementation, infrastructure)
- Technical DEC-XXX entries (technology and architecture decisions)
- Code standards, development workflows, and quality metrics
- Technical documentation and deployment procedures

## TEAM-005: Developer (v0.7 Build - v0.8 Deployment)
**Primary Responsibilities:**
- Feature implementation according to specifications
- Code quality, testing, and documentation
- Integration testing and system validation
- Bug fixing and performance optimization

**Context Ownership:**
- Implementation details and code documentation
- Testing results and quality metrics
- Development blockers and technical challenges
- Integration testing outcomes and system validation
```

## Gate Transition Workflows

### Workflow 1: Gate Readiness Validation
```
User: "Check readiness for v0.4 User Journeys → v0.5 Red Team Review transition"

Process:
1. Assess completion of required v0.4 deliverables (user journeys, personas, features)
2. Validate all FEAT-XXX entries have complete specifications and user validation
3. Check that user research and testing has been completed satisfactorily
4. Verify team readiness for v0.5 risk analysis and assumption validation
5. Identify any blocking issues or missing context for red team review
6. Generate readiness report with go/no-go recommendation for v0.5
```

### Workflow 2: Execute Gate Transition
```
User: "Execute transition from v0.6 Architecture to v0.7 Build Execution"

Process:
1. Archive v0.6 architecture working documents to temp/v06-architecture-archive/
2. Promote completed architecture decisions to implementation-ready state
3. Shift context layer weights (Strategic 10% → 5%, Tactical 40% → 30%, Operational 50% → 65%)
4. Update team responsibilities for v0.7 build execution priorities
5. Create v0.7 build execution active context structure with sprint planning
6. Generate gate transition summary and handoff documentation for development team
```

### Workflow 3: Context Evolution Management
```
User: "Manage context evolution as we move from v0.2 Market Definition to v0.3 Commercial Model"

Process:
1. Review all temp/v02-market-research/ content from Market Definition gate
2. Identify validated market insights for promotion to SoT (market size, competition)
3. Archive exploratory market research that won't be carried forward
4. Update cross-references to reflect new market understanding
5. Rebalance context layers (Strategic 70% → 60%, Tactical 30% → 40%)
6. Prepare v0.3 commercial model context structure and business model focus
```

### Workflow 4: Gate Retrospective and Learning Capture
```
User: "Complete v0.7 Build Execution gate retrospective and capture learnings"

Process:
1. Gather feedback from all team members on v0.7 build execution performance
2. Identify development process improvements and technical lessons learned
3. Document architecture decisions and their implementation outcomes
4. Update development methodology based on what worked well/poorly during build
5. Archive build-specific working documents and sprint retrospectives
6. Prepare recommendations for future v0.7 build execution gates
```

## Quality Gates by 10-Gate System

### v0.1 Spark Gate Exit Criteria
- [ ] Problem opportunity identified and validated through customer discovery
- [ ] Initial customer interviews conducted (minimum 10 conversations)
- [ ] Problem significance confirmed (clear pain points and impact)
- [ ] Target customer segment hypothesis formed and initially validated
- [ ] Solution approach conceptualized with initial feasibility assessment
- [ ] Market opportunity signals identified (size, growth, competition)
- [ ] Stakeholder alignment on problem focus and solution direction

### v0.2 Market Definition Gate Exit Criteria
- [ ] Target market clearly defined with sizing and segmentation
- [ ] Customer segments validated through expanded research (25+ interviews)
- [ ] Competitive landscape mapped with positioning strategy
- [ ] Market opportunity quantified (TAM, SAM, SOM estimates)
- [ ] Customer needs and pain points thoroughly documented
- [ ] Solution-market fit hypothesis validated with target customers
- [ ] Go-to-market approach conceptualized for target segments

### v0.3 Commercial Model Gate Exit Criteria
- [ ] Business model selected and validated (subscription, transaction, etc.)
- [ ] Pricing strategy defined with customer willingness-to-pay research
- [ ] Revenue projections created with realistic customer acquisition assumptions
- [ ] Unit economics modeled (LTV, CAC, payback period, margins)
- [ ] Partnership strategy defined for customer acquisition and distribution
- [ ] Monetization approach tested with target customers
- [ ] Financial viability confirmed with stakeholder approval

### v0.4 User Journeys Gate Exit Criteria
- [ ] User personas defined and validated through research (3-5 primary personas)
- [ ] End-to-end user journey flows documented and tested
- [ ] Feature requirements specified with user story mapping (P0/P1/P2 priority)
- [ ] Design concepts and wireframes created and user-tested
- [ ] User acceptance criteria defined for all core features
- [ ] Information architecture and interaction patterns defined
- [ ] Accessibility and usability requirements specified

### v0.5 Red Team Review Gate Exit Criteria
- [ ] Risk analysis completed across technical, market, and business dimensions
- [ ] Assumptions documented and validation plans created
- [ ] Technical feasibility validated through proof-of-concepts
- [ ] Market risks assessed with mitigation strategies
- [ ] Go/no-go decision criteria defined and evaluated
- [ ] Resource requirements validated for next phases
- [ ] Stakeholder alignment confirmed on revised direction

### v0.6 Architecture Gate Exit Criteria
- [ ] System architecture designed and documented
- [ ] Technology stack selected with rationale and risk assessment
- [ ] Data model and API specifications defined
- [ ] Infrastructure and scalability plan created
- [ ] Security and compliance requirements specified
- [ ] Development environment and toolchain prepared
- [ ] Integration patterns and dependencies mapped

### v0.7 Build Execution Gate Exit Criteria
- [ ] All MVP features implemented according to specifications
- [ ] Code quality standards met (testing, documentation, review)
- [ ] Security requirements implemented and validated through testing
- [ ] Performance requirements met in staging environment
- [ ] Integration testing completed successfully across all components
- [ ] Technical documentation complete and current
- [ ] Development team handoff to deployment team completed

### v0.8 Deployment Gate Exit Criteria
- [ ] Production environment deployed and configured
- [ ] Monitoring and alerting systems operational
- [ ] Backup and recovery procedures tested and validated
- [ ] Security testing completed in production environment
- [ ] Performance testing passed under realistic load conditions
- [ ] Rollback procedures tested and validated
- [ ] Production support team trained and ready

### v0.9 Go-to-Market Gate Exit Criteria
- [ ] Marketing strategy and campaigns launched
- [ ] Sales enablement materials created and team trained
- [ ] Customer onboarding and support processes operational
- [ ] User feedback collection and analysis systems active
- [ ] Success metrics tracking and reporting functional
- [ ] Initial customer acquisition and conversion tracking
- [ ] Post-launch support and iteration plan defined

### v1.0 Market Adoption Gate Exit Criteria
- [ ] Product-market fit validated through usage and retention data
- [ ] Growth metrics trending toward success criteria
- [ ] Customer acquisition and retention rates sustainable
- [ ] Revenue model and pricing validated in market
- [ ] System performance stable under production load
- [ ] Customer satisfaction and Net Promoter Score targets met
- [ ] Iteration and scaling strategy defined for next version

## Advanced Features

### 1. Gate Health Monitoring
```markdown
**Current Gate: v0.7 Build Execution (Week 6 of 10)**

**Gate Progress: 72%**
✅ Features: 8/12 MVP features complete
⚠️  Testing: Integration testing behind schedule
❌ Documentation: Technical docs significantly behind

**Risk Assessment:**
- Medium risk of v0.8 Deployment gate delay due to testing backlog
- Low risk on feature completion (development velocity good)
- High confidence in code quality (standards being met)

**Recommended Actions:**
- Allocate additional QA resources to integration testing
- Begin v0.8 deployment preparation in parallel
- Prioritize critical technical documentation over comprehensive docs
```

### 2. Context Continuity Tracking
```markdown
**Context Evolution: v0.1 Spark → v0.4 Journeys → v0.7 Build**

**Preserved Strategic Decisions:**
✅ DEC-001: Market Opportunity Focus → Referenced throughout all gates
✅ DEC-002: Business Model Selection → Influences all feature and technical decisions
✅ MET-001: Success Metrics → Guides implementation priorities and acceptance criteria

**Evolved Tactical Context:**
- FEAT-001: Problem hypothesis → User story → Working implementation
- FEAT-002: Solution concept → Detailed journey → Coded feature
- FEAT-003: Market need → Design specification → Deployed functionality

**New Operational Context:**
- TECH-001: Feasibility assessment → Architecture design → Implementation
- TECH-002: Technology exploration → Stack selection → Production deployment
- TEAM-003: Role concepts → Team formation → Development processes
```

### 3. Gate Transition Impact Analysis
```markdown
**v0.7 Build → v0.8 Deployment Transition Impact Analysis:**

**Context Changes:**
- 12 FEAT-XXX entries moving from "In Development" to "Deployment Ready"
- 8 TECH-XXX entries transitioning from development focus to operations
- 3 new TEAM-XXX entries for operations and support roles
- 5 REL-XXX entries activated for release management

**Process Changes:**
- Development velocity focus → Deployment reliability and monitoring focus
- Feature completion priority → System stability and performance optimization
- Individual development work → Cross-functional deployment coordination

**Team Coordination Updates:**
- Daily standups shift from feature progress to deployment readiness
- PM focus moves from feature scope to launch preparation and success metrics
- Technical focus shifts from development to operations, monitoring, and support
```

## Integration with WF-001

This skill directly implements the gate transition workflow documented in WF-001, ensuring consistency between methodology documentation and skill implementation:

- **Context Layer Weights:** Match exactly with WF-001 transition table
- **Archive/Promotion Process:** Follows WF-001 archive and promotion guidelines  
- **Quality Gates:** Aligned with gate-specific deliverables in WF-001
- **Team Responsibility Evolution:** Consistent with WF-001 team structure changes

## Integration with Other Skills

**Works with:**
- `ace-context-manager` - For managing context updates during gate transitions
- `team-context-coordinator` - For coordinating team responsibilities across gates
- `quality-validator` - For validating gate completion criteria and context quality

**Coordinates with:**
- WF-001: Gate Transition Workflow (primary methodology reference)
- WF-002: Weekly Context Review (ongoing maintenance between gates)
- WF-003: Cross-Discipline Context Handoff (team coordination during gates)

## Example Commands

### Assess Gate Readiness
```
"Check if we're ready to transition from v0.4 User Journeys to v0.5 Red Team Review"
→ Comprehensive readiness assessment with go/no-go recommendation using v0.5 criteria
```

### Execute Gate Transition
```
"Execute transition from v0.6 Architecture to v0.7 Build Execution"
→ Complete transition process including context archival, promotion, and rebalancing per WF-001
```

### Monitor Gate Health
```
"Assess our current v0.7 Build Execution progress and identify any risks"
→ Gate progress analysis with risk assessment and recommendations for v0.8 readiness
```

### Plan Gate Evolution
```
"Plan context evolution strategy for the next two gates (v0.8 Deployment → v0.9 GTM)"
→ Strategic planning for systematic context management across multiple gates
```

## Notes

- Gate transitions should be deliberate and validated, not automatic
- Context archival preserves knowledge without cluttering active context
- Each gate has natural rhythms and optimal context configurations per WF-001
- Team responsibilities evolve with gate requirements and focus areas
- Quality gates prevent premature transitions that lead to rework
- Context continuity ensures critical decisions persist across gates
- This v2.0 skill is fully aligned with GHM 10-gate system and WF-001 workflow
