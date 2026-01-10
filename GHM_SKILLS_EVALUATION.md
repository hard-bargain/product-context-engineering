# GHM Skills Evaluation for IBM Implementation

**Date:** 2026-01-09  
**Source:** https://github.com/mattgierhart/PRD-driven-context-engineering  
**Purpose:** Evaluate Matt's 24 GHM PRD skills for potential implementation in IBM Context Engineering repo

---

## Executive Summary

Matt's GHM repository contains **24 PRD-focused skills** organized across 9 product lifecycle gates (v0.1-v0.9). These are **complementary but different** from our current 7 ACE skills:

- **GHM Skills (24):** PRD-driven, product development workflow skills
- **ACE Skills (7):** Context management and methodology implementation skills

**Recommendation:** Implement GHM skills as a **separate skill category** in our `.codex/skills/` structure.

---

## Complete GHM Skills Inventory (24 Skills)

### v0.1 Spark — Problem & Outcomes (2 skills)
1. **problem-framing** - Transform raw ideas into testable problem statements (CFD-)
2. **user-value-articulation** - Convert pain points into value statements (CFD-)

### v0.2 Market Definition (2 skills)
3. **competitive-landscape-mapping** - Map competitive landscape and feature matrix (CFD-, BR-)
4. **product-type-classification** - Classify as Fast Follow/Slice/Innovation (BR-)

### v0.3 Commercial Model (4 skills)
5. **outcome-definition** - Define measurable KPIs (KPI-)
6. **pricing-model** - Select pricing structure (BR-)
7. **moat-definition** - Define defensibility strategy (CFD-, BR-)
8. **features-value-planning** - Prioritize features with traceability (FEA-, BR-FEA-)

### v0.4 User Journeys (3 skills)
9. **persona-definition** - Create behavioral personas (PER-)
10. **user-journey-mapping** - Map user missions with step flows (UJ-)
11. **screen-flow-definition** - Define screen inventory with navigation (SCR-, DES-)

### v0.5 Red Team Review (2 skills)
12. **risk-discovery-interview** - Surface risks through guided interview (RISK-)
13. **technical-stack-selection** - Select technical stack (TECH-)

### v0.6 Architecture (2 skills)
14. **architecture-design** - Define system architecture (ARC-)
15. **technical-specification** - Create API contracts and data models (API-, DBT-)

### v0.7 Build Execution (3 skills)
16. **epic-scoping** - Create context-window-sized work packages (EPIC-)
17. **test-planning** - Define test cases before implementation (TEST-)
18. **implementation-loop** - Execute implementation with traceability

### v0.8 Deployment & Ops (3 skills)
19. **release-planning** - Plan deployment and rollback (DEP-)
20. **runbook-creation** - Create operational playbooks (RUN-)
21. **monitoring-setup** - Configure metrics, alerts, dashboards (MON-)

### v0.9 Go-to-Market (3 skills)
22. **gtm-strategy** - Plan launch activities (GTM-)
23. **launch-metrics** - Define launch success criteria (KPI-)
24. **feedback-loop-setup** - Establish feedback channels (CFD-)

---

## Current ACE Skills (7 Skills)

### ACE-Native Skills (4)
1. **ace-context-manager** - Extract and populate product context into SoT files
2. **team-context-coordinator** - Coordinate context across PM/Designer/Developer
3. **phase-transition-manager** - Manage 10-gate context evolution
4. **quality-validator** - Validate context quality across gates

### Imported GHM Skills (3)
5. **file-validator** - Validate markdown files and cross-references
6. **id-tracker** - Manage ID-based knowledge graph integrity
7. **markdown-processor** - Process and format markdown content

---

## Comparison Analysis

### Skill Type Differences

| Aspect | GHM PRD Skills (24) | ACE Skills (7) |
|--------|---------------------|----------------|
| **Focus** | Product development workflow | Context management methodology |
| **Purpose** | Create PRD artifacts (CFD-, FEA-, API-, etc.) | Manage SoT files and gate transitions |
| **Scope** | Specific deliverables per gate | Cross-cutting methodology support |
| **Usage** | Task-specific (e.g., "define personas") | Process-oriented (e.g., "transition gates") |
| **Output** | PRD sections with IDs | SoT file updates and validations |

### Complementary Nature

**GHM Skills answer:** "What do I need to create at this gate?"
- Problem statements (CFD-)
- Feature definitions (FEA-)
- API contracts (API-)
- Test plans (TEST-)

**ACE Skills answer:** "How do I manage context through gates?"
- Extract context from conversations
- Coordinate team handoffs
- Transition between gates
- Validate quality standards

### Overlap Analysis

**Minimal Overlap:**
- GHM `epic-scoping` ≈ ACE `phase-transition-manager` (both handle work organization)
- GHM `technical-specification` ≈ ACE `ace-context-manager` (both extract technical info)

**Mostly Complementary:**
- 22 of 24 GHM skills have no direct ACE equivalent
- 5 of 7 ACE skills have no direct GHM equivalent

---

## Integration Recommendation

### Proposed Structure

```
.codex/skills/
├── README.md                          # Updated with both skill types
├── MANIFEST.yaml                      # Track all skills
│
├── ace-native/                        # Context management (4 skills)
│   ├── ace-context-manager/
│   ├── team-context-coordinator/
│   ├── phase-transition-manager/
│   └── quality-validator/
│
├── imported/                          # Infrastructure (3 skills)
│   ├── file-validator/
│   ├── id-tracker/
│   └── markdown-processor/
│
├── prd-workflow/                      # NEW: PRD development (24 skills)
│   ├── v01-problem-framing/
│   ├── v01-user-value-articulation/
│   ├── v02-competitive-landscape-mapping/
│   ├── v02-product-type-classification/
│   ├── v03-outcome-definition/
│   ├── v03-pricing-model/
│   ├── v03-moat-definition/
│   ├── v03-features-value-planning/
│   ├── v04-persona-definition/
│   ├── v04-user-journey-mapping/
│   ├── v04-screen-flow-definition/
│   ├── v05-risk-discovery-interview/
│   ├── v05-technical-stack-selection/
│   ├── v06-architecture-design/
│   ├── v06-technical-specification/
│   ├── v07-epic-scoping/
│   ├── v07-test-planning/
│   ├── v07-implementation-loop/
│   ├── v08-release-planning/
│   ├── v08-runbook-creation/
│   ├── v08-monitoring-setup/
│   ├── v09-gtm-strategy/
│   ├── v09-launch-metrics/
│   └── v09-feedback-loop-setup/
│
└── adapted/                           # Future: IBM-specific extensions
```

### Implementation Phases

#### Phase 1: Foundation (Immediate)
1. Create `.codex/skills/prd-workflow/` directory
2. Copy GHM skills structure (24 skills)
3. Update MANIFEST.yaml to track 31 total skills (7 ACE + 24 PRD)
4. Update `.codex/skills/README.md` with both skill types

#### Phase 2: Integration (Week 1-2)
5. Adapt GHM skill IDs to ACE SoT structure:
   - CFD- → Map to DECISIONS.md or MARKET.md
   - FEA- → Map to FEATURES.md
   - TECH-, API-, DBT- → Map to TECHNICAL.md
   - KPI- → Map to METRICS.md
   - PER-, UJ-, SCR- → Create new SoT files or use templates
6. Update skill descriptions for IBM context
7. Test skills with IBM product scenarios

#### Phase 3: Documentation (Week 3)
8. Create PRD_WORKFLOW_GUIDE.md
9. Update CLAUDE.md with PRD workflow guidance
10. Add examples of using both skill types together

---

## Usage Scenarios

### Scenario 1: Starting a New Product (v0.1-v0.3)
**Use GHM PRD Skills:**
1. `problem-framing` - Define the problem
2. `user-value-articulation` - Articulate value
3. `competitive-landscape-mapping` - Map competition
4. `outcome-definition` - Define KPIs
5. `features-value-planning` - Prioritize features

**Use ACE Skills:**
- `ace-context-manager` - Extract decisions into DECISIONS.md
- `quality-validator` - Validate strategic completeness

### Scenario 2: Designing User Experience (v0.4)
**Use GHM PRD Skills:**
1. `persona-definition` - Create personas
2. `user-journey-mapping` - Map journeys
3. `screen-flow-definition` - Define screens

**Use ACE Skills:**
- `team-context-coordinator` - Coordinate PM → Designer handoff
- `ace-context-manager` - Populate FEATURES.md with UX requirements

### Scenario 3: Technical Implementation (v0.6-v0.7)
**Use GHM PRD Skills:**
1. `architecture-design` - Design system
2. `technical-specification` - Define APIs
3. `epic-scoping` - Create work packages
4. `test-planning` - Plan tests

**Use ACE Skills:**
- `phase-transition-manager` - Transition from UX to Build gate
- `team-context-coordinator` - Coordinate Designer → Developer handoff
- `file-validator` - Validate technical documentation

### Scenario 4: Gate Transition (Any Gate)
**Use ACE Skills Primary:**
1. `phase-transition-manager` - Execute gate transition
2. `quality-validator` - Validate gate readiness
3. `team-context-coordinator` - Manage team handoffs

**Use GHM Skills Supporting:**
- Relevant gate-specific skills to complete deliverables

---

## Benefits of Integration

### 1. Complete Product Lifecycle Coverage
- **Strategic (v0.1-v0.3):** GHM skills create PRD content, ACE skills manage context
- **Experience (v0.4-v0.6):** GHM skills define UX/tech, ACE skills coordinate teams
- **Implementation (v0.7-v0.8):** GHM skills guide execution, ACE skills track evolution
- **Market (v0.9-v1.0):** GHM skills plan launch, ACE skills validate readiness

### 2. Skill Specialization
- **GHM skills:** Deep expertise in specific deliverables
- **ACE skills:** Broad methodology and process management
- **Together:** Comprehensive product development support

### 3. Flexibility
- Teams can use GHM skills for PRD-driven development
- Teams can use ACE skills for context management
- Teams can use both for complete lifecycle support

### 4. Upstream Compatibility
- GHM skills remain compatible with Matt's upstream repo
- Easy to sync updates from GHM repository
- ACE skills remain IBM-specific

---

## Implementation Considerations

### Technical
- **Skill Loading:** 31 total skills may impact context window
- **Solution:** Progressive disclosure - load only relevant skills per gate
- **Naming:** Avoid conflicts between GHM and ACE skill names

### Process
- **Training:** Team needs to understand when to use which skills
- **Documentation:** Clear guidance on GHM vs ACE skill usage
- **Governance:** Update GOVERNANCE.md with PRD workflow approval processes

### Maintenance
- **GHM Updates:** Sync periodically from Matt's repo
- **ACE Updates:** Continue independent development
- **Integration:** Test both skill types work together

---

## Recommended Next Steps

### Immediate (This Week)
1. ✅ **Review this evaluation** with team
2. 📋 **Decide on integration approach** (full 24 skills or phased)
3. 📋 **Create implementation plan** if approved

### Short-Term (Week 1-2)
4. 📋 **Copy GHM skills** to `.codex/skills/prd-workflow/`
5. 📋 **Update MANIFEST.yaml** with 31 skills
6. 📋 **Adapt skill IDs** to ACE SoT structure
7. 📋 **Test with IBM scenarios**

### Medium-Term (Week 3-4)
8. 📋 **Create PRD_WORKFLOW_GUIDE.md**
9. 📋 **Update team documentation**
10. 📋 **Train team on both skill types**

---

## Questions for Discussion

1. **Scope:** Do we want all 24 GHM skills or start with a subset (e.g., v0.1-v0.3)?
2. **Timing:** Implement now or wait until Phase 2 (SoT population) is complete?
3. **Customization:** How much should we adapt GHM skills for IBM context?
4. **Maintenance:** Who owns syncing updates from Matt's GHM repo?
5. **Training:** What training do teams need to use both skill types effectively?

---

## Conclusion

Matt's 24 GHM PRD skills are **highly valuable and complementary** to our 7 ACE skills:

- **GHM Skills:** Provide specific PRD development capabilities
- **ACE Skills:** Provide methodology and context management
- **Together:** Complete product lifecycle support

**Recommendation:** Implement GHM skills as `.codex/skills/prd-workflow/` to create a comprehensive 31-skill ecosystem for IBM product development.

**Total Skills After Integration:** 31 skills
- 4 ACE-native (context management)
- 3 Imported (infrastructure)
- 24 PRD-workflow (product development)

This positions IBM Context Engineering as having the most comprehensive AI-assisted product development skill library available.