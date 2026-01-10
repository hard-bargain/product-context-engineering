# PRD Workflow Skills (24 Skills)

**Source:** GHM (https://github.com/mattgierhart/PRD-driven-context-engineering)  
**Purpose:** Product development workflow skills for navigating the 10-gate lifecycle  
**Status:** Production Ready - All 24 skills operational

---

## Overview

These 24 skills provide specialized capabilities for each stage of the PRD-driven product development lifecycle. They complement the ACE methodology skills by focusing on **what to create** at each gate, while ACE skills focus on **how to manage context** through gates.

---

## Skills by Gate

### v0.1 Spark — Problem & Outcomes (2 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v01-problem-framing](prd-v01-problem-framing/) | Transform raw ideas into testable problem statements | CFD- |
| [prd-v01-user-value-articulation](prd-v01-user-value-articulation/) | Convert pain points into value statements | CFD- |

### v0.2 Market Definition (2 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v02-competitive-landscape-mapping](prd-v02-competitive-landscape-mapping/) | Map competitive landscape and feature matrix | CFD-, BR- |
| [prd-v02-product-type-classification](prd-v02-product-type-classification/) | Classify as Fast Follow/Slice/Innovation | BR- |

### v0.3 Commercial Model (4 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v03-outcome-definition](prd-v03-outcome-definition/) | Define measurable KPIs | KPI- |
| [prd-v03-pricing-model](prd-v03-pricing-model/) | Select pricing structure | BR- |
| [prd-v03-moat-definition](prd-v03-moat-definition/) | Define defensibility strategy | CFD-, BR- |
| [prd-v03-features-value-planning](prd-v03-features-value-planning/) | Prioritize features with traceability | FEA-, BR-FEA- |

### v0.4 User Journeys (3 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v04-persona-definition](prd-v04-persona-definition/) | Create behavioral personas (max 5) | PER- |
| [prd-v04-user-journey-mapping](prd-v04-user-journey-mapping/) | Map user missions with step flows | UJ- |
| [prd-v04-screen-flow-definition](prd-v04-screen-flow-definition/) | Define screen inventory with navigation | SCR-, DES- |

### v0.5 Red Team Review (2 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v05-risk-discovery-interview](prd-v05-risk-discovery-interview/) | Surface risks through guided interview | RISK- |
| [prd-v05-technical-stack-selection](prd-v05-technical-stack-selection/) | Select technical stack (build/buy/integrate) | TECH- |

### v0.6 Architecture (2 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v06-architecture-design](prd-v06-architecture-design/) | Define system architecture | ARC- |
| [prd-v06-technical-specification](prd-v06-technical-specification/) | Create API contracts and data models | API-, DBT- |

### v0.7 Build Execution (3 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v07-epic-scoping](prd-v07-epic-scoping/) | Create context-window-sized work packages | EPIC- |
| [prd-v07-test-planning](prd-v07-test-planning/) | Define test cases before implementation | TEST- |
| [prd-v07-implementation-loop](prd-v07-implementation-loop/) | Execute implementation with traceability | (updates existing IDs) |

### v0.8 Deployment & Ops (3 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v08-release-planning](prd-v08-release-planning/) | Plan deployment environments and rollback | DEP- |
| [prd-v08-runbook-creation](prd-v08-runbook-creation/) | Create operational playbooks | RUN- |
| [prd-v08-monitoring-setup](prd-v08-monitoring-setup/) | Configure metrics, alerts, dashboards | MON- |

### v0.9 Go-to-Market (3 skills)
| Skill | Purpose | Output IDs |
|-------|---------|-----------|
| [prd-v09-gtm-strategy](prd-v09-gtm-strategy/) | Plan launch activities and messaging | GTM- |
| [prd-v09-launch-metrics](prd-v09-launch-metrics/) | Define launch success criteria | KPI- |
| [prd-v09-feedback-loop-setup](prd-v09-feedback-loop-setup/) | Establish feedback channels | CFD- |

---

## Integration with ACE Methodology

### ID Mapping to ACE SoT Files

PRD workflow skills create IDs that map to ACE Source of Truth files:

| PRD ID Prefix | ACE SoT File | Purpose |
|--------------|--------------|---------|
| CFD- | DECISIONS.md or MARKET.md | Customer feedback, problem statements, market insights |
| FEA- | FEATURES.md | Feature definitions and requirements |
| BR- | DECISIONS.md or TECHNICAL.md | Business rules and constraints |
| KPI- | METRICS.md | Key performance indicators |
| TECH-, API-, DBT-, ARC- | TECHNICAL.md | Technical architecture and specifications |
| PER-, UJ-, SCR-, DES- | Templates or new SoT files | User experience artifacts |
| RISK- | DECISIONS.md | Risk register and mitigations |
| EPIC-, TEST- | active/epics/ | Work tracking and test plans |
| DEP-, RUN-, MON- | TECHNICAL.md or RELEASES.md | Deployment and operations |
| GTM- | MARKET.md or RELEASES.md | Go-to-market strategy |

### Using PRD Skills with ACE Skills

**Typical Workflow:**

1. **Use PRD skill** to create gate-specific deliverable
   - Example: `prd-v01-problem-framing` creates CFD- problem statements

2. **Use ACE skill** to manage context
   - Example: `ace-context-manager` extracts CFD- into DECISIONS.md

3. **Use ACE skill** for gate transition
   - Example: `phase-transition-manager` transitions from v0.1 to v0.2

4. **Use ACE skill** for quality validation
   - Example: `quality-validator` checks gate readiness

---

## Skill Structure

Each PRD workflow skill follows the standard format:

```
prd-v{XX}-{name}/
├── SKILL.md           # Core instructions (<5000 tokens)
├── references/        # Deep context, loaded on-demand
│   ├── examples.md
│   └── research-prompts.md (or other references)
├── assets/            # Templates for structured output
│   └── template.md
└── scripts/           # Automation (optional)
```

---

## Usage Examples

### Strategic Gates (v0.1-v0.3)

**Scenario:** Starting a new product idea

```
1. Use prd-v01-problem-framing to define the problem
2. Use prd-v01-user-value-articulation to articulate value
3. Use ace-context-manager to extract into DECISIONS.md
4. Use prd-v02-competitive-landscape-mapping to map competition
5. Use prd-v03-outcome-definition to define KPIs
6. Use quality-validator to check strategic completeness
```

### Experience Gates (v0.4-v0.6)

**Scenario:** Designing user experience and architecture

```
1. Use prd-v04-persona-definition to create personas
2. Use prd-v04-user-journey-mapping to map journeys
3. Use team-context-coordinator for PM → Designer handoff
4. Use prd-v06-architecture-design to design system
5. Use ace-context-manager to populate TECHNICAL.md
```

### Implementation Gates (v0.7-v0.8)

**Scenario:** Building and deploying the product

```
1. Use prd-v07-epic-scoping to create work packages
2. Use prd-v07-test-planning to plan tests
3. Use prd-v07-implementation-loop for execution
4. Use prd-v08-release-planning for deployment
5. Use phase-transition-manager for gate transitions
```

---

## Best Practices

### DO:
✅ Use PRD skills for creating specific deliverables  
✅ Use ACE skills for managing context and transitions  
✅ Follow the gate sequence (v0.1 → v0.9)  
✅ Map PRD IDs to ACE SoT files  
✅ Validate with quality-validator before gate transitions  

### DON'T:
❌ Skip gates or deliverables  
❌ Create PRD artifacts without ACE context management  
❌ Ignore ID traceability between gates  
❌ Transition gates without validation  

---

## Maintenance

### Upstream Sync
These skills are imported from Matt's GHM repository. To sync updates:

```bash
cd ~/Projects/ghm-skills
git pull origin main
cd ~/Projects/ibm-product-context-engineering
cp -r ~/Projects/ghm-skills/skills/prd-v* .codex/skills/prd-workflow/
git add .codex/skills/prd-workflow
git commit -m "sync: Update PRD workflow skills from GHM upstream"
```

### IBM Customization
For IBM-specific adaptations, create copies in `.codex/skills/adapted/` rather than modifying these files directly.

---

## Contributing

1. Upstream improvements should be contributed to Matt's GHM repository
2. IBM-specific changes should go in `.codex/skills/adapted/`
3. Follow the [Agent Skills Specification](https://agentskills.io/specification)

---

## Additional Resources

- [GHM Skills Inventory](https://github.com/mattgierhart/PRD-driven-context-engineering/blob/main/skills/skills-inventory.md)
- [ACE Methodology Summary](../../methodology/ACE_METHODOLOGY_SUMMARY.md)
- [Skills Manifest](../MANIFEST.yaml)
- [GHM Skills Evaluation](../../GHM_SKILLS_EVALUATION.md)

---

**Complete PRD workflow skills ecosystem ready for production use with ACE methodology.**