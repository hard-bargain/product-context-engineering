---
title: "AI Context Engineering: Methodology Requirements Document"
version: "0.1"
status: "Spark"
created: "2025-12-26"
updated: "2025-12-26"
lifecycle_stage: "v0.1 Spark"
developed_using: "GHM-M"
validation_case: "VAL-001"
---

# AI Context Engineering — Methodology Requirements Document

> **Purpose**: Enable cross-discipline product teams to effectively manage AI context throughout the product development lifecycle
>
> **Status**: v0.1 Spark — Initial problem definition and vision
>
> **Developed Using**: [GHM-M](../GHM-M/MRD.md) (Gear Heart Methodology for Methodologies)

---

## Metadata

| Field | Value |
|-------|-------|
| **Version** | v0.1 (Spark) |
| **Status** | Active Development |
| **Target Practitioners** | Cross-discipline product teams (strategists, PMs, designers, developers, testers, marketers) |
| **Created** | 2025-12-26 |
| **Last Updated** | 2025-12-26 |
| **Active EPIC** | EPIC-01: ACE Foundation |
| **Development Method** | GHM-M v0.4 |
| **Validation** | Contributing to [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001) |

---

## Version History

| Version | Date | Focus | Key Deliverables | Status |
|---------|------|-------|------------------|--------|
| **v0.1** | 2025-12-26 | Spark | Problem statement, vision, initial scope | 🔄 In Progress |
| v0.4 | TBD | Foundation | Core patterns, practitioner journeys, templates | Pending |
| v0.6 | TBD | Validation | Case studies, refinements | Pending |
| v0.8 | TBD | Polish | Documentation complete, publication ready | Pending |
| v1.0 | TBD | Launch | Published, community building | Pending |

*Note: Using GHM-M's 5-gate lifecycle (simplified from GHM's 10 gates)*

---

## Executive Summary

**The Problem:**
Cross-discipline product teams increasingly rely on AI agents (like Claude, GPT, etc.) throughout the product development lifecycle, but lack systematic approaches for managing AI context. This leads to:
- Inconsistent AI effectiveness across team members and phases
- Context becoming stale or duplicated as products evolve
- Different disciplines reinventing context patterns independently
- Difficulty maintaining context quality at scale
- Poor handoffs between phases and team members

**The Solution:**
AI Context Engineering (ACE) provides a structured methodology for managing AI context across the product lifecycle. It defines:
- Context layers (strategic, tactical, operational) for different team roles
- Phase-aligned context structures matching product development stages
- Discipline-specific patterns for how each role contributes to context
- Evolution workflows for growing context through the lifecycle
- Quality metrics and validation approaches

**The Opportunity:**
As AI becomes central to product development, teams that master context engineering will move faster, maintain higher quality, and scale more effectively. ACE provides the first systematic approach, enabling teams to treat context as a first-class product development artifact.

---

## v0.1: Spark

### 1. Problem Statement

**The Core Challenge:**
Product teams work across multiple disciplines (strategy, management, design, development, testing, marketing) and multiple phases (from concept to launch and beyond). AI agents can support every discipline and phase, but only if they have appropriate context. Currently, there's no methodology for:

1. **Structuring Context**: How should context be organized for different disciplines and phases?
2. **Evolving Context**: How does context grow and change as products move through development?
3. **Maintaining Quality**: How do we ensure context remains accurate, relevant, and complete?
4. **Enabling Collaboration**: How do multiple disciplines contribute to shared context?
5. **Validating Effectiveness**: How do we measure whether context is working?

**Specific Pain Points:**

**For Individual Contributors:**
1. **Starting from scratch**: Every team member reinvents how to structure context for AI
2. **Context staleness**: Context becomes outdated as product evolves, reducing AI effectiveness
3. **Duplication**: Different people maintain overlapping context independently
4. **Handoff failures**: Context doesn't transfer well between phases or team members
5. **No quality standards**: Unclear what "good context" looks like

**For Team Leads:**
1. **Inconsistent AI leverage**: Some team members get great AI support, others struggle
2. **Scaling challenges**: Can't replicate good context practices across growing teams
3. **Phase transitions**: Context breaks down when moving between development phases
4. **Cross-discipline gaps**: Strategists, designers, and developers use incompatible context approaches

**For Organizations:**
1. **Lost productivity**: Teams spend too much time managing context instead of building products
2. **Knowledge loss**: Context expertise trapped in individual practitioners
3. **Onboarding difficulty**: New team members struggle to set up effective AI context
4. **ROI uncertainty**: Unclear whether AI investments are paying off

### 2. Vision

**What This Methodology Enables:**

When teams adopt AI Context Engineering, they have:

**Clear Structure:**
- Predefined context layers (strategic, tactical, operational) for different roles
- Phase-aligned templates matching their product development process
- Discipline-specific patterns (how strategists vs developers structure context)
- Shared vocabulary for discussing and improving context

**Systematic Evolution:**
- Workflows for growing context through product lifecycle
- Clear handoff procedures between phases
- Version control and change management for context
- Progressive refinement as product understanding deepens

**Quality Assurance:**
- Metrics for measuring context effectiveness
- Validation checkpoints at phase transitions
- Automated checks for context health
- Best practices for different contexts and team sizes

**Team Collaboration:**
- Each discipline contributes their expertise to shared context
- Context becomes a team asset, not individual burden
- Cross-functional context reviews ensure completeness
- Onboarding becomes systematic (not tribal knowledge)

**Success Looks Like:**

**For Individual Contributors:**
- Spend 80% less time setting up context (use templates)
- AI effectiveness improves 3x due to better context
- Can onboard to new product in <1 day with context handoff
- Context stays current with minimal maintenance

**For Teams:**
- Every team member uses consistent, high-quality context approaches
- Context evolves smoothly through product phases
- Cross-discipline collaboration improves (shared context language)
- New hires productive with AI in first week

**For Organizations:**
- 10x return on AI investment through better context engineering
- Context patterns scale across products and teams
- AI becomes reliable development accelerator (not hit-or-miss)
- Competitive advantage through superior AI leverage

### 3. Initial Scope

**In Scope for This Methodology:**

**Context Structure:**
- Layer definitions (strategic, tactical, operational)
- Phase alignment (linking context to product development stages)
- Discipline patterns (strategist, PM, designer, developer, tester, marketer)
- Template library for common context types

**Context Evolution:**
- Lifecycle workflows (how context grows through phases)
- Handoff procedures (transferring context between roles/phases)
- Version management (tracking context changes)
- Progressive refinement patterns

**Quality & Validation:**
- Context health metrics
- Validation checkpoints by phase
- Quality assurance practices
- Effectiveness measurement

**Team Practices:**
- Collaboration patterns (how disciplines work together on context)
- Review workflows (context quality reviews)
- Onboarding procedures (getting new members started)
- Scaling approaches (growing from individual to team to org)

**Out of Scope:**

**Technology-Specific:**
- Not tied to specific AI models (Claude, GPT, etc.)
- Not specific to particular tools (though may have tool examples)
- Not prescribing which AI to use

**Process-Specific:**
- Not dictating specific product development process (works with Agile, Waterfall, etc.)
- Not replacing project management methodologies
- Not defining how products should be built

**Organizational:**
- Not covering AI governance or compliance
- Not addressing AI procurement or vendor selection
- Not team structure or hiring recommendations

### 4. Target Practitioners

**Primary Audiences:**

1. **Product Teams (5-20 people)**
   - Cross-functional teams developing products
   - Using AI throughout development lifecycle
   - Need systematic context approach to scale AI effectiveness
   - **Value**: Consistent AI leverage across disciplines and phases

2. **Individual IC Practitioners**
   - Strategists, designers, developers working with AI
   - Want to improve AI effectiveness through better context
   - Currently reinventing context practices independently
   - **Value**: Proven patterns and templates vs starting from scratch

3. **Engineering/Product Leaders**
   - Managing teams using AI for product development
   - Need to scale AI effectiveness across team
   - Responsible for ROI on AI investments
   - **Value**: Systematic methodology to drive consistent results

**Secondary Audiences:**

1. **Platform/Infrastructure Teams**
   - Building shared context infrastructure for organization
   - Need patterns to guide internal tool development
   - **Value**: Requirements and patterns for context tooling

2. **AI/ML Teams**
   - Supporting product teams' AI adoption
   - Need to understand context requirements
   - **Value**: Practitioner perspective on context needs

3. **Consultants/Coaches**
   - Helping organizations adopt AI-assisted development
   - Need methodology to guide engagements
   - **Value**: Structured approach for client work

### 5. Success Metrics (v0.1)

**At this stage (Spark), success means:**

- [x] Problem clearly articulated (documented above)
- [x] Vision documented (clear success criteria)
- [ ] Initial scope defined (in/out of scope clear)
- [ ] Target practitioners identified
- [ ] Validation approach established (VAL-001)
- [ ] Connection to product lifecycle phases mapped
- [ ] Initial patterns identified (at least 3)

**Validation (VAL-001) Metrics:**
- [ ] GHM-M templates worked for ACE development (assess after v0.4)
- [ ] ID-based knowledge graph proved valuable (track during build)
- [ ] Progressive documentation enabled systematic development
- [ ] At least 3 GHM-M refinements identified

---

## Related Methodologies & Frameworks

**Builds On:**
- Product development frameworks (GHM, Agile, Lean)
- Context engineering practices (emerging field)
- Knowledge management methodologies
- Documentation-driven development

**Complements:**
- Specific product development processes
- Team collaboration frameworks
- AI adoption strategies
- DevOps and platform engineering practices

**Differentiators:**
- First systematic methodology for AI context in product development
- Explicitly multi-discipline (not just engineering)
- Phase-aligned with product lifecycle
- Focuses on context as team asset (not individual skill)

---

## Next Steps

### Immediate (v0.1 → v0.4 Foundation)

1. **Map to Product Lifecycle**
   - Define context needs by phase (concept, design, build, test, launch, scale)
   - Identify phase transition handoffs
   - Create phase-aligned context templates

2. **Define Core Patterns**
   - Context layers (strategic, tactical, operational)
   - Discipline patterns (how each role structures context)
   - Evolution workflows (how context grows)
   - Validation criteria

3. **Document Practitioner Journeys**
   - Strategist journey (early phases)
   - Product manager journey (orchestration)
   - Designer journey (design phases)
   - Developer journey (build phases)

4. **Create Foundation Documentation**
   - Getting started guide
   - Pattern library
   - Template collection
   - Best practices

### Future Phases

**v0.6 Validation:**
- Pilot with 2-3 teams
- Gather practitioner feedback
- Refine patterns based on real-world use

**v0.8 Polish:**
- Complete documentation
- Case studies
- Prepare for publication

**v1.0 Launch:**
- Publish methodology
- Build community
- Support adoption

---

## Development Notes

**Using GHM-M:**
This methodology is being developed using [GHM-M](../GHM-M/MRD.md), testing whether GHM-M works for domains beyond methodology development itself. Observations feed into [VAL-001](../GHM-M/active/source_of_truth/VALIDATION.md#val-001).

**Validation Questions:**
1. Do GHM-M templates work for product-focused methodologies?
2. Does ID-based knowledge graph make sense for ACE?
3. How well does 5-gate lifecycle fit ACE development?
4. What refinements does GHM-M need?

---

**Document Version:** v0.1 Spark
**Last Updated:** 2025-12-26
**Developed Using:** GHM-M v0.4
**Status:** In Progress - Building foundation
