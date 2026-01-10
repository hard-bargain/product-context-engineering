---
name: quality-validator
description: Comprehensive context quality validation for GHM 10-gate lifecycle implementing PAT-005 Context Quality Pattern. Use when checking completeness, freshness, conciseness, accuracy, and accessibility across v0.1-v1.0 gates.
metadata:
  author: "IBM ACE Team"
  version: "2.0"
  category: "quality-assurance"
  ace_patterns: ["PAT-005"]
  ghm_compatible: true
  update_reason: "Updated for GHM 10-gate system integration and gate-specific quality criteria"
---

# Quality Validator Skill (v2.0 - GHM 10-Gate Integration)

## When to Use This Skill

- **Validate context quality** across all ACE methodology files throughout GHM 10-gate lifecycle
- **Check gate-specific completeness** of Source of Truth entries and cross-references for current gate
- **Assess freshness** and currency of context information relative to gate timeline expectations
- **Ensure conciseness** and clarity appropriate for gate focus and team coordination needs
- **Verify accuracy** of information and decision rationale across gate evolution
- **Test accessibility** and usability of context for team members at different gates
- **Generate quality reports** with gate-specific improvement recommendations
- **Validate gate readiness** with context quality assessment before gate transitions

## GHM 10-Gate Integration

### PAT-005: Context Quality Pattern (Updated for 10 Gates)

**Five Quality Dimensions Applied Across Gates:**

**1. Completeness** - All necessary context documented for current gate and future gate readiness
**2. Freshness** - Context reflects latest understanding appropriate to gate timeline and focus
**3. Conciseness** - Information optimized for gate priorities without unnecessary detail
**4. Accuracy** - Context correctly represents decisions, requirements, and status for gate
**5. Accessibility** - Context findable and usable by team members in current gate configuration

## Gate-Specific Quality Standards

### Freshness Requirements by Gate
```markdown
**Strategic Gates (v0.1-v0.3):**
- Market insights: Updated within 14 days (fast-changing market conditions)
- Customer research: Updated within 7 days (active discovery phase)
- Business model decisions: Updated within 30 days (major strategic pivots)
- Competitive analysis: Updated within 21 days (competitive landscape shifts)

**Experience Gates (v0.4-v0.6):**
- User research: Updated within 7 days (active user testing and validation)
- Design specifications: Updated within 3 days (rapid iteration and testing)
- Feature requirements: Updated within 5 days (active prioritization and scoping)
- Technical feasibility: Updated within 10 days (architecture planning phase)

**Implementation Gates (v0.7-v0.8):**
- Development progress: Updated daily (active sprint execution)
- Technical architecture: Updated within 3 days (implementation discoveries)
- Quality metrics: Updated within 2 days (continuous integration and testing)
- Deployment status: Updated within 1 day (critical deployment phase)

**Market Gates (v0.9-v1.0):**
- Launch metrics: Updated daily (critical launch monitoring)
- Customer feedback: Updated within 2 days (rapid market response needed)
- Performance data: Updated within 6 hours (production monitoring)
- Market adoption: Updated within 7 days (growth tracking and optimization)
```

### Completeness Requirements by Gate
```markdown
**v0.1 Spark Gate Completeness:**
- Problem definition and validation (DEC-XXX strategic)
- Initial customer insights and interviews (MKT-XXX discovery)
- Market opportunity hypothesis (MKT-XXX market sizing)
- Solution concept and approach (DEC-XXX strategic direction)

**v0.4 User Journeys Gate Completeness:**
- User persona definitions and validation (FEAT-XXX personas)
- End-to-end user journey mapping (FEAT-XXX user flows)
- Feature requirements and acceptance criteria (FEAT-XXX specifications)
- Design principles and interaction patterns (DEC-XXX design)

**v0.7 Build Gate Completeness:**
- Technical architecture and implementation plan (TECH-XXX system)
- Code quality standards and testing approach (TECH-XXX quality)
- Sprint planning and development process (TEAM-XXX development)
- Integration testing and validation procedures (TECH-XXX testing)

**v0.9 GTM Gate Completeness:**
- Go-to-market strategy and execution plan (REL-XXX launch)
- Marketing materials and communication strategy (REL-XXX marketing)
- Customer onboarding and support processes (REL-XXX support)
- Success metrics tracking and analysis (MET-XXX performance)
```

## Core Quality Validations

### 1. Gate-Aware Completeness Validation

**Current Gate Context Assessment:**
```markdown
## Completeness Assessment: v0.5 Red Team Review Gate

**Required Strategic Context (From Earlier Gates):**
✅ Market opportunity validated and documented (v0.1-v0.2 deliverables)
✅ Business model defined and approved (v0.3 deliverables)
✅ Customer segments and needs documented (v0.1-v0.2 insights)
✅ Success criteria and metrics established (v0.3 framework)

**Required Tactical Context (Current Gate Focus):**
✅ User journey flows documented and validated (v0.4 deliverables)
✅ Feature requirements specified with acceptance criteria
⚠️  Risk analysis partially complete [v0.5 PRIMARY - NEEDS ATTENTION]
❌ Technical feasibility assessment incomplete [v0.5 BLOCKING]

**Future Gate Preparation:**
⚠️  Architecture planning not started [v0.6 UPCOMING]
❌ Implementation planning premature [v0.7 FUTURE]

**Gate Readiness Assessment: 72% - 1 blocking issue**
**Blocking Issue:** Technical feasibility assessment required for v0.5 completion
**Recommendation:** Complete technical feasibility before proceeding to v0.6 Architecture
```

**Cross-Reference Gate Integrity:**
```markdown
## Cross-Reference Validation: 10-Gate Context Graph

**Strategic Layer References (v0.1-v0.3):**
- Total strategic references: 23
- Valid cross-references: 21
- Broken references: 2 [DEC-004 → MKT-003 invalid, MKT-002 → TEAM-001 missing]
- Forward references to future gates: 5 [appropriate for strategic decisions]

**Tactical Layer References (v0.4-v0.6):**
- Total tactical references: 34
- Valid cross-references: 31
- Broken references: 3 [FEAT-007 → TECH-002 premature, FEAT-009 → DEC-006 missing]
- Backward references to strategic: 18 [good strategic grounding]

**Reference Quality by Gate:**
v0.1-v0.3: 91% valid references ✅
v0.4-v0.6: 88% valid references ⚠️
v0.7-v1.0: 73% valid references ❌ [future content, some speculative]

**Recommendation:** Focus on v0.4-v0.6 reference cleanup, defer v0.7+ validation
```

### 2. Gate-Sensitive Freshness Validation

**Context Currency by Gate Focus:**
```markdown
## Gate-Specific Freshness Analysis: Current v0.5 Red Team Review

**Strategic Context Freshness (Should Be Stable):**
✅ DEC-001: Market direction (45 days old - ACCEPTABLE for strategic)
✅ DEC-002: Business model (32 days old - STABLE and appropriate)
⚠️  MKT-001: Market sizing (52 days old - CONSIDER UPDATE for v0.5 risk analysis)

**Tactical Context Freshness (Should Be Current):**
✅ FEAT-001: User authentication flow (3 days old - CURRENT)
✅ FEAT-002: Workflow builder (5 days old - CURRENT)
❌ FEAT-003: Integration specs (18 days old - STALE for v0.5 risk assessment)

**Risk Analysis Freshness (v0.5 Gate Priority):**
❌ DEC-005: Risk mitigation strategy (MISSING - CRITICAL for v0.5)
❌ TECH-001: Technical risk assessment (12 days old - NEEDS UPDATE for v0.5)

**Gate-Specific Recommendations:**
1. Update FEAT-003 integration specifications (high risk area)
2. Complete missing DEC-005 risk mitigation strategy
3. Refresh TECH-001 with current technical risk assessment
4. MKT-001 market sizing acceptable unless major market changes
```

**Gate Evolution Freshness Tracking:**
```markdown
## Context Evolution Freshness: v0.4 → v0.5 → v0.6

**Context Promoted from v0.4 (Recently Updated):**
✅ User journey specifications (2 days since promotion)
✅ Design system decisions (1 day since promotion)
✅ Feature acceptance criteria (3 days since promotion)

**Context Active in v0.5 (Current Focus):**
❌ Risk analysis framework (MISSING - needs creation)
⚠️  Assumption validation (partially complete - needs finishing)
✅ Go/no-go criteria (defined but needs validation)

**Context Preparation for v0.6 (Future):**
⚠️  Technical architecture planning (preliminary only)
❌ Technology stack selection (too early for v0.5 focus)
✅ Architecture resource planning (high-level only - appropriate)
```

### 3. Gate-Appropriate Conciseness Validation

**Content Optimization by Gate:**
```markdown
## Conciseness Analysis: Content Length vs Gate Requirements

**Strategic Content (Should Be Comprehensive):**
✅ DEC-001: Market strategy (650 words - appropriate depth for strategic decision)
⚠️  DEC-002: Business model (1200 words - could be more concise for team consumption)

**Tactical Content (Should Be Detailed but Focused):**
✅ FEAT-001: Authentication feature (400 words - good detail level for v0.5 risk analysis)
❌ FEAT-002: Workflow builder (950 words - too verbose for tactical context)

**Operational Content (Should Be Precise and Actionable):**
⚠️  TECH-001: Architecture overview (320 words - appropriate but needs risk focus for v0.5)

**Gate-Specific Content Issues:**
- Strategic decisions appropriate length but need risk implications added for v0.5
- Tactical features need conciseness review - focus on risk-relevant details
- Operational content minimal (appropriate for v0.5, will expand in v0.6-v0.7)

**Recommendations:**
1. Add risk implications to strategic decisions (DEC-001, DEC-002)
2. Streamline FEAT-002 to focus on risk-relevant details
3. Expand TECH-001 with technical risk assessment for v0.5
```

### 4. Gate-Specific Accuracy Validation

**Decision-Implementation Alignment Across Gates:**
```markdown
## Accuracy Assessment: Cross-Gate Consistency

**Strategic-to-Tactical Alignment:**
✅ DEC-001 market strategy → FEAT-001 user auth (aligned with enterprise focus)
✅ DEC-002 business model → FEAT-002 workflow builder (supports subscription model)
❌ DEC-003 customer segment → FEAT-003 integrations (enterprise focus vs SMB integration needs)

**Tactical-to-Implementation Accuracy:**
✅ FEAT-001 auth requirements → TECH-001 security architecture (properly aligned)
⚠️  FEAT-002 workflow performance → TECH-001 system design (performance targets unclear)

**Gate Evolution Accuracy:**
- v0.1-v0.3 strategic decisions: 94% consistent with v0.4-v0.5 tactical implementation
- v0.4-v0.5 tactical decisions: 87% aligned with v0.6 architecture direction
- Future gate speculation: 65% accuracy (normal for forward-looking content)

**Truth Reconciliation Required:**
1. Resolve DEC-003 customer segment vs FEAT-003 integration scope conflict
2. Clarify FEAT-002 performance requirements in context of TECH-001 capabilities
3. Validate v0.6 architecture assumptions against v0.4-v0.5 feature requirements
```

**External Validation Against Market Reality:**
```markdown
## External Accuracy Check: Market and Customer Context

**Market Data Validation (v0.1-v0.2 Context):**
- 3 market insights conflict with recent industry reports (need updates)
- 1 competitive analysis outdated due to new market entrants
- Customer segment data validated by recent user research (accurate)

**User Research Validation (v0.4 Context):**
- User journey assumptions validated by 15 user tests (accurate)
- Feature priority confirmed by customer feedback (accurate)
- Performance expectations validated by user research (accurate)

**Technical Reality Check (v0.6 Preparation):**
- Technology stack assumptions validated by proof-of-concept (accurate)
- Performance requirements achievable with selected architecture (accurate)
- Integration complexity underestimated based on partner API analysis (needs update)
```

### 5. Gate-Specific Accessibility Validation

**Team Accessibility by Gate and Role:**
```markdown
## Accessibility Assessment: v0.5 Red Team Review Gate

**PM Context Accessibility: 89%** (Primary Role for v0.5)
✅ Strategic context clear and complete (DEC-XXX, MKT-XXX accessible)
✅ Risk analysis framework understandable and actionable
⚠️  Technical risk context needs simplification for non-technical stakeholders

**Designer Context Accessibility: 76%** (Supporting Role for v0.5)
✅ User experience context clear from v0.4 work
✅ Design implications of risks understandable
❌ Technical risk implications for UX not clearly explained

**Developer Context Accessibility: 82%** (Technical Risk Assessment Role)
✅ Technical architecture context clear for risk assessment
✅ Implementation feasibility assessment accessible
⚠️  Business risk context needs translation for technical audience

**Cross-Functional Accessibility Issues:**
- Risk analysis terminology not consistently defined across disciplines
- Strategic context (v0.1-v0.3) accessible but needs risk implications
- Tactical context (v0.4) accessible but needs technical risk integration

**v0.5 Gate-Specific Improvements:**
1. Create risk analysis glossary for cross-functional team
2. Add technical risk implications to user experience decisions
3. Add business risk context to technical architecture discussions
```

**Gate Transition Accessibility:**
```markdown
## Gate Handoff Accessibility: v0.4 → v0.5 → v0.6

**v0.4 User Journeys → v0.5 Red Team Handoff:**
- New team member could understand v0.4 deliverables: 85%
- v0.4 context supports v0.5 risk analysis: 78%
- Missing links between user decisions and business risks: 15% gap

**v0.5 Red Team → v0.6 Architecture (Future Planning):**
- Risk analysis will support architecture decisions: 73% (needs improvement)
- Technical feasibility context ready for architecture work: 82%
- Business constraints clear for technical planning: 79%

**Accessibility Trend Across Gates:**
- Strategic accessibility remains high across gates (good strategic foundation)
- Tactical accessibility decreases as context becomes more technical
- Cross-functional accessibility needs improvement for v0.5-v0.6 transition
```

## Comprehensive Quality Reports

### Gate-Specific Quality Dashboard
```markdown
## v0.5 Red Team Review - Context Quality Dashboard

**Overall Quality Score: 81/100** ⚠️ Good with Opportunities

**Gate-Specific Quality Breakdown:**
- Strategic Context Quality: 87/100 ✅ (appropriate for mature strategic foundation)
- Tactical Context Quality: 79/100 ⚠️ (needs risk analysis completion)
- Risk Analysis Context: 72/100 ⚠️ (v0.5 primary focus - needs improvement)
- Future Gate Preparation: 65/100 ⚠️ (appropriate for current gate)

**Critical Issues (Block v0.5 Gate Completion):**
1. Technical feasibility assessment incomplete (blocks risk analysis)
2. Risk mitigation strategy missing (core v0.5 deliverable)
3. Cross-functional risk communication gaps (team coordination issue)

**High-Impact Improvements for v0.5:**
1. Complete technical feasibility assessment (+12 points)
2. Create risk mitigation framework (+8 points)
3. Improve cross-discipline risk communication (+6 points)

**Gate Readiness Status: 81% - Complete critical issues for v0.5 transition readiness**
```

### Multi-Gate Quality Trend Analysis
```markdown
## Quality Evolution: v0.1 Spark → v0.5 Red Team Review

**Quality Trend by Gate:**
- v0.1 Spark: 76/100 (appropriate for early exploration)
- v0.2 Market: 82/100 (good market validation completion)
- v0.3 Commercial: 85/100 (strong business model foundation)
- v0.4 User Journeys: 89/100 (excellent user experience work)
- v0.5 Red Team (current): 81/100 (good but needs risk focus completion)

**Quality Pattern Analysis:**
✅ Strategic quality improving through gates v0.1-v0.3 (foundation building)
✅ Tactical quality peaked at v0.4 (excellent UX work)
⚠️  Risk analysis quality needs improvement for v0.5 gate completion
📈 Quality trend positive overall with gate-specific focus areas

**Predictive Quality Assessment for Future Gates:**
- v0.6 Architecture: Projected 83-87% (depends on v0.5 risk analysis completion)
- v0.7 Build: Projected 85-90% (strong foundation if architecture quality maintained)
- v0.8 Deployment: Projected 78-85% (operational quality typically challenging)
```

## Quality Validation Workflows

### Workflow 1: Gate-Specific Quality Audit
```
User: "Run quality audit for current v0.5 Red Team Review gate context"

Process:
1. Assess completeness of v0.5 gate requirements (risk analysis, technical feasibility)
2. Validate freshness of context relevant to risk assessment and decision making
3. Check conciseness and clarity appropriate for v0.5 cross-functional team needs
4. Verify accuracy of risk assumptions and technical assessments
5. Test accessibility of risk context for PM, Designer, Developer roles
6. Generate v0.5-specific quality report with gate transition readiness assessment
```

### Workflow 2: Pre-Gate Transition Quality Validation
```
User: "Validate context quality before v0.5 Red Team → v0.6 Architecture transition"

Process:
1. Assess completion of all v0.5 gate deliverables and quality standards
2. Validate risk analysis context completeness and accuracy for architecture planning
3. Check technical feasibility context readiness for v0.6 system design work
4. Verify team context handoff quality from PM/risk focus to Architect/design focus
5. Generate gate transition quality certification or improvement requirements
6. Recommend delay if critical quality issues would impact v0.6 success
```

### Workflow 3: Cross-Gate Quality Consistency Check
```
User: "Validate quality consistency across v0.1-v0.5 completed gates"

Process:
1. Check strategic decision consistency from v0.1-v0.3 through tactical implementation
2. Validate tactical context evolution from v0.4 user journeys to v0.5 risk analysis
3. Assess cross-reference integrity across all completed gates
4. Verify context weight evolution follows PAT-002 gate alignment pattern
5. Identify quality gaps that could impact future gate success
6. Generate cross-gate consistency report with strategic recommendations
```

### Workflow 4: Gate Quality Trend Analysis and Prediction
```
User: "Analyze quality trends through completed gates and predict v0.6-v1.0 quality needs"

Process:
1. Analyze quality evolution patterns from v0.1-v0.5 completed gates
2. Identify quality strengths and weaknesses by gate type and team focus
3. Predict quality challenges for upcoming v0.6-v0.8 implementation gates
4. Recommend proactive quality improvements based on trend analysis
5. Create quality management strategy for remaining gates in lifecycle
6. Establish quality monitoring and improvement processes for future gates
```

## Integration with GHM 10-Gate System

**Gate-Specific Quality Focus:**
- **v0.1-v0.3:** Strategic quality and market validation accuracy
- **v0.4-v0.6:** Tactical quality and user experience validation
- **v0.7-v0.8:** Operational quality and implementation validation
- **v0.9-v1.0:** Market quality and adoption validation

**Quality Standards Evolution:**
- Quality requirements become more specific and measurable as gates progress
- Cross-functional accessibility becomes more critical in middle gates (v0.4-v0.7)
- Technical quality standards peak during implementation gates (v0.6-v0.8)
- Market quality validation becomes primary focus in launch gates (v0.9-v1.0)

## Integration with Other Skills

**Works with:**
- `ace-context-manager` - Validates quality of extracted content for each gate
- `team-context-coordinator` - Ensures quality standards support team coordination across gates
- `phase-transition-manager` - Validates quality before allowing gate transitions

**Coordinates with:**
- WF-001: Gate Transition Workflow - Provides quality gates for systematic gate evolution
- WF-002: Weekly Context Review - Maintains quality between gate transitions
- All 10 gates for gate-appropriate quality standards and validation

## Example Commands

### Gate-Specific Quality Assessment
```
"Run comprehensive quality audit for v0.5 Red Team Review gate context"
→ Complete quality validation focused on risk analysis and technical feasibility for current gate
```

### Cross-Gate Quality Consistency
```
"Check quality consistency across v0.1-v0.5 completed gates"
→ Validates strategic-tactical-operational alignment across completed gate sequence
```

### Gate Transition Quality Validation
```
"Validate context quality readiness for v0.6 Architecture gate transition"
→ Comprehensive quality assessment with gate transition readiness certification
```

### Predictive Quality Analysis
```
"Analyze quality trends and predict quality challenges for v0.7-v0.8 implementation gates"
→ Quality trend analysis with proactive recommendations for upcoming gates
```

## Notes

- Quality validation must adapt to gate-specific priorities and team focus areas
- Quality standards evolve with gate maturity - strategic quality stable, tactical/operational quality dynamic
- Cross-functional accessibility becomes critical during middle gates (v0.4-v0.7)
- Gate transition quality validation prevents carrying quality issues to future gates
- Quality trends help predict and prevent future gate quality challenges
- Context quality requirements vary significantly by gate focus and team configuration
- This v2.0 skill is fully integrated with GHM 10-gate system and supports gate-appropriate quality validation
