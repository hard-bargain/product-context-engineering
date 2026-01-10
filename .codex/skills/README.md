# ACE Skills Directory

**Version:** 2.0 (GHM 10-Gate Integration)  
**Updated:** 2025-01-08  
**Status:** Production Ready

## Overview

This directory contains AI Agent Skills implementing the AI Context Engineering (ACE) methodology with full GHM 10-gate lifecycle integration. Skills support systematic context management through product development gates v0.1 Spark → v1.0 Market Adoption.

## Directory Structure

```
.codex/skills/
├── README.md                          # This file
├── ACE_SKILLS_MANIFEST.yaml          # Version tracking and compatibility
├── imported/                          # GHM skills used as-is (needs restoration)
├── adapted/                           # GHM skills + IBM extensions (future)
└── ace-native/                       # ACE-specific skills (v2.0 complete)
    ├── ace-context-manager/          # Extract and populate product context
    ├── team-context-coordinator/     # Coordinate context across disciplines
    ├── phase-transition-manager/     # Manage 10-gate context evolution
    └── quality-validator/            # Validate context quality across gates
```

## Skills Overview

### ACE-Native Skills (v2.0)

**ace-context-manager**
- **Purpose:** Extract and populate PRODUCT context into Source of Truth files
- **Gates:** v0.1-v1.0 (all gates with appropriate focus)
- **Patterns:** PAT-001, PAT-004, PAT-005
- **Key Feature:** Enhanced 4-gate content filtering prevents infrastructure pollution

**team-context-coordinator** 
- **Purpose:** Coordinate context across PM, Designer, Developer disciplines
- **Gates:** Gate-specific team coordination and handoff management
- **Patterns:** PAT-003
- **Key Feature:** Gate-appropriate discipline leadership and collaboration

**phase-transition-manager**
- **Purpose:** Manage systematic context evolution through 10-gate lifecycle
- **Gates:** v0.1-v1.0 (complete gate transition workflow)
- **Patterns:** PAT-002, PAT-004
- **Key Feature:** Context layer weight shifting and archive/promotion management

**quality-validator**
- **Purpose:** Comprehensive context quality validation
- **Gates:** v0.1-v1.0 (gate-specific quality criteria)
- **Patterns:** PAT-005
- **Key Feature:** Gate-appropriate quality standards and readiness assessment

### GHM Integration Status

**✅ Complete GHM 10-Gate Integration**
- All ACE-native skills updated to v2.0 for 10-gate compatibility
- Context layer weights match WF-001 Gate Transition Workflow exactly
- Gate-specific team coordination and quality validation
- Archive/promotion processes follow documented methodology

**🔄 Infrastructure Restoration Needed**
- Imported GHM skills (file-validator, id-tracker, markdown-processor) need restoration
- Skills testing and validation with real 10-gate content
- Documentation cleanup for any remaining 6-phase references
### PRD Workflow Skills (24 skills)

Complete gate-by-gate product development capabilities from GHM:

**v0.1 Spark — Problem & Outcomes (2 skills):**
- **prd-v01-problem-framing** - Transform raw ideas into testable problem statements (CFD-)
- **prd-v01-user-value-articulation** - Convert pain points into value statements (CFD-)

**v0.2 Market Definition (2 skills):**
- **prd-v02-competitive-landscape-mapping** - Map competitive landscape and feature matrix (CFD-, BR-)
- **prd-v02-product-type-classification** - Classify as Fast Follow/Slice/Innovation (BR-)

**v0.3 Commercial Model (4 skills):**
- **prd-v03-outcome-definition** - Define measurable KPIs (KPI-)
- **prd-v03-pricing-model** - Select pricing structure (BR-)
- **prd-v03-moat-definition** - Define defensibility strategy (CFD-, BR-)
- **prd-v03-features-value-planning** - Prioritize features with traceability (FEA-, BR-FEA-)

**v0.4 User Journeys (3 skills):**
- **prd-v04-persona-definition** - Create behavioral personas (PER-)
- **prd-v04-user-journey-mapping** - Map user missions with step flows (UJ-)
- **prd-v04-screen-flow-definition** - Define screen inventory with navigation (SCR-, DES-)

**v0.5 Red Team Review (2 skills):**
- **prd-v05-risk-discovery-interview** - Surface risks through guided interview (RISK-)
- **prd-v05-technical-stack-selection** - Select technical stack (TECH-)

**v0.6 Architecture (2 skills):**
- **prd-v06-architecture-design** - Define system architecture (ARC-)
- **prd-v06-technical-specification** - Create API contracts and data models (API-, DBT-)

**v0.7 Build Execution (3 skills):**
- **prd-v07-epic-scoping** - Create context-window-sized work packages (EPIC-)
- **prd-v07-test-planning** - Define test cases before implementation (TEST-)
- **prd-v07-implementation-loop** - Execute implementation with traceability

**v0.8 Deployment & Ops (3 skills):**
- **prd-v08-release-planning** - Plan deployment environments and rollback (DEP-)
- **prd-v08-runbook-creation** - Create operational playbooks (RUN-)
- **prd-v08-monitoring-setup** - Configure metrics, alerts, dashboards (MON-)

**v0.9 Go-to-Market (3 skills):**
- **prd-v09-gtm-strategy** - Plan launch activities and messaging (GTM-)
- **prd-v09-launch-metrics** - Define launch success criteria (KPI-)
- **prd-v09-feedback-loop-setup** - Establish feedback channels (CFD-)

See [prd-workflow/README.md](prd-workflow/README.md) for complete documentation.

### Imported Infrastructure Skills (3 skills)

**file-validator** (v1.2)
- **Purpose:** Validate markdown files and check cross-references
- **Integration:** ACE SoT file validation with 10-gate terminology support

**id-tracker** (v1.3)
- **Purpose:** Manage ID-based knowledge graph integrity
- **Integration:** ACE SoT files with 10-gate awareness

**markdown-processor** (v1.1)
- **Purpose:** Process and format markdown content
- **Integration:** ACE template formatting with 10-gate support


## IBM BOB Mode Compatibility

These Codex skills are designed to work with IBM BOB's mode-specific constraints:

### Code Mode
**Compatible Skills:** All skills can be used in Code mode for:
- Updating Source of Truth files (DECISIONS.md, FEATURES.md, etc.)
- Creating and modifying documentation
- Applying systematic context management

**Restrictions:** No MCP/Browser access - skills work with local repository content only

### Plan Mode
**Compatible Skills:** All skills can be used in Plan mode for:
- Planning gate transitions and context evolution
- Designing team coordination strategies
- Architecting context structure improvements

**Restrictions:** No file editing - skills provide planning guidance only

### Advance Mode
**Compatible Skills:** All skills fully functional with:
- MCP access for external research and validation
- Browser access for competitive analysis and market research
- Full file editing and context management capabilities

**Recommended for:** Complex gate transitions, quality validation with external references

### Ask Mode
**Compatible Skills:** All skills can explain:
- ACE methodology concepts and patterns
- Gate-specific context requirements
- Team coordination best practices
- Quality validation criteria

**Restrictions:** Read-only - skills provide explanations and guidance only

### Mode Selection Guide

| Task | Recommended Mode | Skills to Use |
|------|-----------------|---------------|
| Update SoT files | Code | ace-context-manager |
| Plan gate transition | Plan | phase-transition-manager |
| Validate with research | Advance | quality-validator |
| Explain methodology | Ask | Any skill for context |
| Coordinate team handoff | Code/Advance | team-context-coordinator |

See `.bob/rules-*/AGENTS.md` for complete mode-specific constraints.

---

## Usage Guidelines

### Activation Patterns

Skills are designed for progressive disclosure and efficient context loading:

```
Level 1: Metadata (fast discovery)
Level 2: Instructions (skill activation) 
Level 3: Resources (on-demand loading)
```

### Gate-Appropriate Usage

**Strategy Gates (v0.1-v0.3):**
```
Primary: ace-context-manager (strategic content extraction)
Supporting: team-context-coordinator (strategy team coordination)
```

**Experience Gates (v0.4-v0.6):**
```
Primary: team-context-coordinator (UX-focused team handoffs)
Supporting: ace-context-manager (tactical content extraction)
```

**Implementation Gates (v0.7-v0.8):**
```
Primary: phase-transition-manager (operational focus transitions)
Supporting: quality-validator (implementation quality assurance)
```

**Market Gates (v0.9-v1.0):**
```
Primary: quality-validator (launch readiness validation)
Supporting: team-context-coordinator (market launch coordination)
```

### Content Filtering

All skills implement enhanced 4-gate content validation:
1. **Product Impact Test:** Affects user experience or business outcomes?
2. **Gate Relevance Test:** Relevant across multiple gates, not just setup?
3. **Team Universal Test:** Relevant regardless of individual tools?
4. **Durability Test:** Still relevant as we progress through gates?

## Integration with Methodology

### Workflow Integration

Skills directly implement documented workflows:
- **WF-001:** Gate Transition Workflow (primary implementation)
- **WF-002:** Weekly Context Review (quality maintenance)
- **WF-003:** Cross-Discipline Context Handoff (team coordination)

### Pattern Implementation

Skills implement all five ACE patterns:
- **PAT-001:** Context Layer Pattern (strategic/tactical/operational)
- **PAT-002:** Gate Alignment Pattern (10-gate context evolution)
- **PAT-003:** Discipline-Specific Context (team coordination)
- **PAT-004:** Context Evolution Pattern (systematic management)
- **PAT-005:** Context Quality Pattern (validation and assurance)

## Quality Standards

### Skills Quality Requirements

- **Completeness:** All required functionality implemented for 10-gate system
- **Freshness:** Updated for latest methodology version (v0.4 Foundation)
- **Conciseness:** Focused on essential functionality without bloat
- **Accuracy:** Correctly implements methodology patterns and workflows
- **Accessibility:** Usable by all team members regardless of technical background

### Gate Compatibility

- All skills marked `ghm_compatible: true`
- Context layer weights match WF-001 specifications
- Gate terminology consistent with methodology documentation
- Team coordination aligns with gate-specific responsibilities

## Troubleshooting

### Common Issues

**Skills Not Loading:**
- Verify Claude Desktop MCP filesystem access configured
- Check file permissions on `.codex/skills/` directory
- Confirm skills directory in allowed filesystem scope

**Content Filtering Too Restrictive:**
- Review 4-gate validation criteria in ace-context-manager
- Check if content truly belongs in SoT vs setup-guides/ or temp/
- Validate product vs infrastructure classification

**Gate Transitions Not Working:**
- Confirm current gate context in methodology files
- Validate gate readiness criteria before transition
- Check cross-reference integrity in SoT files

### Support and Updates

**For Methodology Questions:**
- Review WF-001, WF-002, WF-003 workflow documentation
- Check PAT-001 through PAT-005 pattern specifications
- Consult ACE methodology summary and practitioner journeys

**For Skills Technical Issues:**
- Check ACE_SKILLS_MANIFEST.yaml for version compatibility
- Review individual SKILL.md files for specific functionality
- Validate Agent Skills specification compliance

## Version History

### v2.0 (2025-01-08) - GHM 10-Gate Integration
**Major Update:** Complete rebuild for 10-gate compatibility
- Replaced 6-phase system with GHM 10-gate lifecycle
- Enhanced content filtering and team coordination
- Full integration with WF-001 Gate Transition Workflow
- Gate-specific quality validation and readiness assessment

### v1.0 (2025-01-07) - Initial Implementation
**Original Version:** ACE-native skills for 6-phase system
- Basic content extraction and team coordination
- Initial ACE methodology pattern implementation
- Lost during methodology merge, rebuilt as v2.0

## Future Development

### Planned Enhancements
- **Imported Skills Restoration:** Complete GHM skills integration
- **Advanced Automation:** Enhanced gate transition and quality monitoring
- **Enterprise Extensions:** IBM-specific adapted skills as needed
- **Integration Tools:** Additional workflow and coordination capabilities

### Contributing
- Follow Agent Skills specification for new skill development
- Maintain GHM compatibility for upstream synchronization
- Test thoroughly with real 10-gate content before deployment
- Document all changes in ACE_SKILLS_MANIFEST.yaml

---

**Skills Status: Production Ready for GHM 10-Gate Methodology**
