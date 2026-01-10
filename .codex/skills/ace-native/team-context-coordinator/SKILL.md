---
name: team-context-coordinator
description: Coordinate context across PM, Designer, and Developer disciplines through GHM 10-gate lifecycle implementing PAT-003 Discipline-Specific Context Pattern. Use when managing handoffs, resolving context conflicts, or ensuring shared understanding across team roles.
metadata:
  author: "IBM ACE Team"
  version: "2.0"
  category: "team-coordination"
  ace_patterns: ["PAT-003"]
  ghm_compatible: true
  update_reason: "Updated for GHM 10-gate system integration and gate-specific team coordination"
---

# Team Context Coordinator Skill (v2.0 - GHM 10-Gate Integration)

## When to Use This Skill

- **Coordinate context across gates** between PM, Designer, and Developer disciplines through v0.1-v1.0 lifecycle
- **Manage gate-specific handoffs** between disciplines as focus shifts from strategy to UX to implementation
- **Resolve context conflicts** when team members have different understanding across gates
- **Prepare discipline-specific context** while maintaining shared strategic core through gate transitions
- **Validate context completeness** before major gate transitions or discipline handoffs
- **Generate team coordination reports** showing context alignment status across 10-gate system
- **Synchronize updates** across multiple discipline contexts as gates evolve

## GHM 10-Gate Integration

### PAT-003: Discipline-Specific Context Pattern (Updated for 10 Gates)

**Shared Strategic Core (30-40% of context) - Consistent Across All Gates:**
- Business decisions affecting all disciplines (DEC-XXX strategic from v0.1-v0.3)
- Market insights driving product direction (MKT-XXX from v0.1-v0.2)
- Success metrics everyone optimizes toward (MET-XXX established v0.3, tracked v1.0)
- Cross-cutting constraints and requirements (established early, evolved through gates)

**Gate-Specific Discipline Extensions:**

### Gates v0.1-v0.3: Strategy Phase (PM + Strategy Lead Primary)
```
**PM/Strategy Lead Extensions (60-70%):**
- Market opportunity analysis and customer discovery (v0.1 Spark)
- Business model development and validation (v0.2-v0.3)
- Competitive analysis and positioning strategy
- Financial modeling and investment case development

**Designer Extensions (10-15%):**
- Early user research and persona hypothesis
- Market design trends and competitive UX analysis
- Initial concept validation and user feedback

**Developer Extensions (10-15%):**
- Technical feasibility assessment for concepts
- High-level architecture exploration
- Technology trend analysis affecting product direction
```

### Gates v0.4-v0.6: User Experience Phase (Designer Primary, PM Coordination)
```
**Designer Extensions (50-60%):**
- User journey mapping and experience design (v0.4)
- Design system development and interaction patterns
- User testing and validation protocols (v0.4-v0.5)
- Design specifications and component documentation

**PM Extensions (25-35%):**
- Feature prioritization and acceptance criteria management
- Cross-functional coordination and stakeholder communication
- Risk analysis and go/no-go decision support (v0.5)
- Business requirements validation and scope management

**Developer Extensions (15-25%):**
- Technical feasibility validation for designs
- Architecture planning and technology selection (v0.6)
- Performance requirements and technical constraints
- Development environment and tooling preparation
```

### Gates v0.7-v0.8: Implementation Phase (Developer Primary, PM Coordination)
```
**Developer Extensions (55-65%):**
- System implementation and code development (v0.7)
- Technical architecture and integration patterns
- Quality assurance and testing protocols
- Deployment and infrastructure management (v0.8)

**PM Extensions (20-30%):**
- Implementation priority and scope management
- Quality gate validation and acceptance criteria
- Stakeholder communication and timeline management
- Business requirement validation during implementation

**Designer Extensions (10-20%):**
- Design quality assurance and implementation review
- User experience validation during development
- Design system maintenance and component updates
- Usability testing with implemented features
```

### Gates v0.9-v1.0: Market Phase (PM Primary, All Disciplines Supporting)
```
**PM Extensions (45-55%):**
- Go-to-market strategy execution and coordination (v0.9)
- Launch metrics and success criteria tracking
- Customer feedback analysis and product iteration
- Market adoption and growth strategy development (v1.0)

**Designer Extensions (20-25%):**
- User onboarding and adoption experience design
- Marketing material and communication design
- User feedback analysis and experience optimization
- Customer success and support experience design

**Developer Extensions (20-30%):**
- Production monitoring and performance optimization
- Customer feedback technical implementation
- System scaling and reliability improvements
- Analytics and data collection implementation
```

## Gate-Specific Team Coordination

### 1. Gate Transition Team Handoffs

**v0.3 Commercial → v0.4 User Journeys (Strategy → UX Focus)**
```markdown
## Strategy Lead → Designer Handoff: v0.3 → v0.4

**Shared Strategic Context Transfer:**
✅ DEC-001: Target market and customer segments (validated through v0.2)
✅ DEC-002: Business model and pricing strategy (finalized v0.3)
✅ MKT-001: Customer needs and pain points (from 25+ interviews)
✅ MET-001: Success metrics and business objectives

**Strategy Context to Designer:**
- Customer persona insights and validation data
- Market positioning requirements affecting UX
- Business model constraints on user experience
- Pricing strategy implications for feature access

**Designer Context Needed for v0.4:**
- User journey mapping methodologies and tools
- Design research and testing protocols
- User experience principles and design system approach
- Interaction design patterns and accessibility requirements

**Success Criteria for Handoff:**
- [ ] Designer understands validated customer needs and market context
- [ ] Business model constraints clearly communicated for UX decisions
- [ ] User research plan aligned with strategic customer insights
- [ ] Timeline and resource expectations agreed for v0.4 user journey work

**Context Gaps to Address:**
⚠️  Designer needs access to customer interview transcripts and insights
⚠️  UX research budget and timeline not confirmed with strategy lead
✅ Market positioning requirements clear for design direction
```

**v0.6 Architecture → v0.7 Build (Design → Development Focus)**
```markdown
## Designer + Architect → Developer Handoff: v0.6 → v0.7

**Shared Context Foundation:**
✅ All strategic decisions from v0.1-v0.3 (market, business model)
✅ All user experience decisions from v0.4-v0.5 (journeys, features)
✅ All architecture decisions from v0.6 (system design, technology)

**Designer Context Transfer:**
- FEAT-001-015: Complete feature specifications with acceptance criteria
- Design system components and interaction patterns
- User journey flows with detailed interaction requirements
- Usability testing results and user validation data

**Architect Context Transfer:**
- TECH-001-010: System architecture and component specifications
- Technology stack decisions and implementation guidelines
- Performance requirements and scalability constraints
- Security and compliance implementation requirements

**Developer Context Needed for v0.7:**
- Sprint planning and development methodology
- Code quality standards and testing requirements
- Development environment and tooling setup
- Integration testing and deployment procedures

**Handoff Validation:**
- [ ] All design specifications have corresponding technical architecture
- [ ] Performance requirements achievable with selected technology
- [ ] User experience requirements technically feasible
- [ ] Development team has necessary skills and resources
```

### 2. Gate-Specific Context Conflict Resolution

**Conflicts Common by Gate:**

**v0.4-v0.5 Gate Conflicts (UX vs Business):**
```markdown
## Conflict Resolution: User Experience vs Business Requirements

**Typical Conflict Pattern:**
- Designer Context: "User testing shows need for comprehensive onboarding (5-7 steps)"
- PM Context: "Business goal requires fast user activation (1-2 steps maximum)"
- Strategic Context: "Market positioning as 'easy to use' solution"

**Resolution Process:**
1. **Surface Strategic Context:** Review DEC-001 market positioning and MET-001 success metrics
2. **Gather User Data:** Analyze user research on onboarding vs activation success
3. **Business Impact Analysis:** Model impact of onboarding length on conversion rates
4. **Aligned Solution:** Progressive onboarding with quick-start option

**Aligned Decision (DEC-005):**
- Implementation: 2-step quick start + optional comprehensive walkthrough
- Success Metric: 70% complete quick start, 30% use full onboarding
- User Value: Choice between fast activation and thorough learning
- Business Value: Balances activation speed with user success
```

**v0.6-v0.7 Gate Conflicts (Design vs Technical):**
```markdown
## Conflict Resolution: Design Requirements vs Technical Constraints

**Typical Conflict Pattern:**
- Designer Context: "Seamless workflow builder needs <500ms response time"
- Developer Context: "Complex workflow processing requires 2-3 seconds minimum"
- Architecture Context: "Current technology stack optimized for data processing, not real-time UX"

**Resolution Process:**
1. **Technical Feasibility Review:** Deep dive on architecture limitations (TECH-001)
2. **Design Alternative Exploration:** UX patterns for handling processing delays
3. **User Experience Testing:** Validate user tolerance for processing delays
4. **Technical Solution Research:** Assess feasibility of architecture changes

**Aligned Decision (TECH-002):**
- Implementation: Optimistic UI updates + background processing + progress indicators
- Technical Approach: Client-side state management with server-side validation
- User Experience: Immediate visual feedback while processing completes
- Performance Target: <200ms visual response, <3s final processing
```

### 3. Cross-Gate Context Synchronization

**Sync Triggers Across 10-Gate System:**
```markdown
## Gate Evolution Sync Requirements

**v0.1-v0.3 Strategy Gates:**
- Major customer insight updates → Affects all downstream UX and technical decisions
- Business model pivots → Requires validation of all feature and technical assumptions
- Market positioning changes → Impacts design direction and technical priorities

**v0.4-v0.6 Experience Gates:**
- User journey modifications → Affects technical architecture and implementation priorities
- Feature scope changes → Requires business impact assessment and technical feasibility review
- Design system updates → Impacts development approach and implementation timelines

**v0.7-v0.8 Implementation Gates:**
- Technical architecture changes → Affects user experience possibilities and business model delivery
- Performance discoveries → May require user experience adjustments and business expectation management
- Implementation challenges → Could impact feature scope and business timeline expectations

**v0.9-v1.0 Market Gates:**
- User feedback and adoption data → Informs technical optimization and experience improvements
- Market performance insights → Guides technical scaling and experience evolution priorities
- Growth challenges → Requires technical architecture and user experience solutions
```

**Sync Process Example (v0.4 User Journey Changes):**
```markdown
## Context Sync: User Journey Modification Impact

**Change:** FEAT-003 user journey simplified based on testing feedback

**Impact Analysis:**
Strategy Impact: Low - Aligns with "ease of use" positioning
Designer Impact: Medium - Requires design system updates and new component creation
Developer Impact: High - Affects planned technical architecture and implementation approach

**Required Context Updates:**
- Update FEAT-003 with revised user journey specifications
- Revise TECH-001 architecture to support simplified workflow
- Update DEC-004 design principles to reflect simplified interaction approach
- Revise MET-002 user success metrics based on new journey expectations

**Sync Actions:**
✅ Designer updated FEAT-003 with new journey specifications
✅ Developer briefed on architecture implications (TECH-001 revision)
✅ PM validated business impact and timeline implications
✅ Strategy lead confirmed alignment with market positioning

**Cross-Reference Updates:**
- FEAT-003 now references updated TECH-001 architecture approach
- DEC-004 design principles updated with simplified interaction philosophy
- MET-002 user success metrics adjusted for new journey expectations
```

## Gate-Specific Coordination Workflows

### Workflow 1: Gate Transition Team Coordination
```
User: "Coordinate team handoff for v0.4 User Journeys → v0.5 Red Team Review transition"

Gate Context:
- Current: v0.4 User Journeys (Designer primary, UX research complete)
- Next: v0.5 Red Team Review (PM primary, risk analysis and validation)
- Team Shift: Designer leadership → PM leadership with risk analysis focus

Process:
1. Validate v0.4 UX deliverables complete (user journeys, design specs, testing results)
2. Prepare Designer → PM handoff package with UX insights and risk implications
3. Brief PM on user experience constraints affecting risk analysis
4. Coordinate team focus shift from design creation to assumption validation
5. Update team context responsibilities for v0.5 risk analysis priorities
6. Schedule risk analysis sessions with design, technical, and market input
```

### Workflow 2: Cross-Discipline Conflict Resolution (Gate-Aware)
```
User: "Resolve conflict between Designer and Developer on v0.6 architecture vs v0.4 UX requirements"

Gate Analysis:
- v0.4 Context: User experience requirements from Designer UX research
- v0.6 Context: Technical architecture constraints from system design
- Conflict: UX requirements technically challenging with selected architecture

Process:
1. Review strategic context (v0.1-v0.3) to understand business priorities
2. Analyze user research data (v0.4) to understand UX requirement importance
3. Review technical architecture decisions (v0.6) to understand constraints
4. Facilitate alignment session with complete context from all relevant gates
5. Develop solution that balances UX goals with technical constraints
6. Document resolution and update affected contexts across gates
```

### Workflow 3: Gate-Specific Context Coverage Analysis
```
User: "Analyze context coverage for PM, Designer, Developer roles for current v0.7 Build gate"

Gate Focus: v0.7 Build Execution (Developer primary, operational focus)

Process:
1. Assess Developer context coverage for v0.7 implementation requirements
2. Validate PM context appropriate for build coordination and business validation
3. Check Designer context sufficient for implementation quality assurance
4. Identify gaps where disciplines lack needed context for v0.7 success
5. Generate recommendations for context improvements specific to build gate
6. Create action plan for team context alignment during implementation phase
```

### Workflow 4: Multi-Gate Context Evolution Coordination
```
User: "Coordinate context evolution as team moves from v0.5 Red Team → v0.8 Deployment (3-gate transition)"

Gate Sequence: v0.5 Red Team → v0.6 Architecture → v0.7 Build → v0.8 Deployment

Process:
1. Map context evolution requirements across 4 gates
2. Plan discipline leadership transitions (PM → Architect → Developer → DevOps)
3. Identify context that persists across all gates vs gate-specific content
4. Coordinate handoff packages between each gate transition
5. Plan team responsibility evolution and coordination requirements
6. Create gate-by-gate team context synchronization schedule
```

## Quality Standards for 10-Gate Team Coordination

### ✅ Well-Coordinated 10-Gate Team Context
- All disciplines understand their gate-specific roles and responsibilities
- Shared strategic core consistent across all team members throughout gates
- Gate transitions include complete context packages with validation
- Conflicts resolved with documented alignment using multi-gate context
- Context synchronized across disciplines as gates evolve
- Team leadership transitions smoothly as gate focus shifts

### ❌ Poor 10-Gate Team Context Coordination
- Disciplines working with context from different gates or outdated assumptions
- Gate transitions missing critical context or causing team misalignment
- Repeated conflicts over same issues across multiple gates
- Context gaps leading to rework when gate focus shifts
- No systematic process for keeping contexts aligned through gate evolution
- Team confusion about responsibilities as gates transition

## Integration with GHM 10-Gate System

**Gates v0.1-v0.3 (Strategy Phase):**
- Focus on PM/Strategy lead context coordination
- Minimal Designer/Developer context needed
- Strategic decisions affect all downstream gates

**Gates v0.4-v0.6 (Experience Phase):**
- Primary Designer context coordination with PM support
- Increased Developer context for feasibility and architecture
- UX decisions affect implementation and market phases

**Gates v0.7-v0.8 (Implementation Phase):**
- Primary Developer context coordination with PM oversight
- Designer context focused on implementation quality assurance
- Technical decisions affect deployment and market success

**Gates v0.9-v1.0 (Market Phase):**
- PM context coordination with all discipline input
- Market feedback affects all discipline contexts
- Success metrics drive future iteration planning

## Advanced Features

### 1. Gate-Specific Context Coverage Analysis
```markdown
**Gate: v0.6 Architecture - Context Coverage Assessment**

**PM Context Coverage: 82%** (Coordination Role)
- Strategic decisions: Complete ✅ (from v0.1-v0.3)
- User experience requirements: Complete ✅ (from v0.4-v0.5)
- Architecture coordination: Partial ⚠️ (needs technical depth)
- Timeline and resource management: Complete ✅

**Designer Context Coverage: 71%** (Consultation Role)
- User experience specifications: Complete ✅
- Design system requirements: Complete ✅
- Technical UX constraints: Missing ❌ (architecture implications)
- Implementation guidance: Partial ⚠️ (needs technical context)

**Developer/Architect Context Coverage: 94%** (Primary Role)
- System architecture: Complete ✅
- Technology stack: Complete ✅
- User experience requirements: Complete ✅
- Performance requirements: Complete ✅
```

### 2. Multi-Gate Handoff Readiness Assessment
```markdown
**Multi-Gate Transition Readiness: v0.6 → v0.7 → v0.8**

**v0.6 Architecture → v0.7 Build Readiness: 85%**
Ready:
✅ Technical architecture specifications complete
✅ Development environment and tooling prepared
✅ Team skills and resources confirmed for implementation

Not Ready:
❌ Performance testing strategy not defined [BLOCKING]
⚠️  Code quality standards need Developer input

**v0.7 Build → v0.8 Deployment (Future Planning): 60%**
Ready:
✅ High-level deployment strategy defined

Not Ready:
❌ Production infrastructure not planned [FUTURE]
❌ Monitoring and alerting strategy not defined [FUTURE]

Recommendation: Focus on v0.6 → v0.7 transition, plan v0.7 → v0.8 during build phase
```

### 3. Gate Conflict Prevention Alerts
```markdown
**Potential Multi-Gate Conflict Detected:**

**Conflict Pattern:** UX requirements (v0.4) vs Technical architecture (v0.6)
- v0.4 Context: "Real-time collaborative editing requires <100ms updates"
- v0.6 Context: "Current architecture supports 500ms update frequency"

**Gate Analysis:**
- Strategic Priority (v0.3): "Best-in-class user experience" positioning
- User Research (v0.4): Real-time collaboration rated as critical feature
- Technical Reality (v0.6): Significant architecture changes needed for <100ms

**Recommendation:**
- Schedule technical deep-dive on real-time architecture requirements
- Consider progressive enhancement approach (500ms → 100ms evolution)
- Validate user research on collaboration update frequency requirements
```

## Error Prevention

### Common 10-Gate Team Coordination Issues

**Gate Context Drift:**
```
Issue: PM working with v0.3 business model while Designer using v0.4 user insights that conflict
Solution: Regular cross-gate context sync meetings, shared strategic core validation
Prevention: Automated context version tracking and team sync alerts
```

**Premature Gate Focus:**
```
Issue: Developer focusing on v0.7 implementation details during v0.5 red team review
Solution: Gate-appropriate context filtering, discipline-specific context boundaries
Prevention: Clear gate focus communication and discipline role definitions
```

**Missing Cross-Gate Implications:**
```
Issue: v0.4 UX decision impacts v0.6 architecture but Developer not informed
Solution: Cross-gate impact analysis for significant decisions
Prevention: Multi-gate dependency mapping and notification system
```

## Integration with Other Skills

**Works with:**
- `ace-context-manager` - For maintaining SoT entries that support gate-specific team coordination
- `phase-transition-manager` - For coordinating team context during gate transitions
- `quality-validator` - For ensuring team context meets quality standards across gates

**Coordinates with:**
- WF-001: Gate Transition Workflow - For systematic gate evolution with team coordination
- WF-003: Cross-Discipline Context Handoff - Direct implementation of discipline handoff workflow
- All 10 gates for discipline-appropriate context coordination

## Example Commands

### Gate-Specific Team Analysis
```
"Analyze team context coordination for v0.5 Red Team Review gate"
→ Generates discipline-specific context analysis with gap identification for risk analysis phase
```

### Cross-Gate Handoff Preparation
```
"Prepare Designer → Developer handoff package for v0.6 Architecture → v0.7 Build transition"
→ Creates complete context transfer documentation across gate boundaries
```

### Multi-Gate Conflict Resolution
```
"Help resolve timeline conflict between PM (v0.3 business) and Developer (v0.6 technical) contexts"
→ Facilitates alignment using strategic core and cross-gate impact analysis
```

### Gate Evolution Team Health Check
```
"Assess team context coordination health across v0.4 → v0.6 → v0.7 gate sequence"
→ Comprehensive analysis of team alignment through major gate transitions
```

## Notes

- Team coordination must adapt to changing gate focus and discipline leadership
- Strategic context from early gates (v0.1-v0.3) provides stable foundation for all coordination
- Discipline leadership transitions require careful context handoff and role clarification
- Gate conflicts often indicate missing cross-gate context rather than genuine disagreement
- Regular context sync prevents larger alignment issues from developing across gates
- Team coordination improves with systematic process adapted to 10-gate lifecycle
- Context coverage requirements vary significantly by gate and discipline role
- This v2.0 skill is fully integrated with GHM 10-gate system and supports gate-appropriate coordination
