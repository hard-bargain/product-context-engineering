---
title: "GHM-M Principles"
version: 1.0
created: 2025-12-26
last_updated: 2025-12-26
status: Active
---

# GHM-M Principles

> **Purpose**: Explain the core principles and philosophy of GHM-M (Gear Heart Methodology for Methodologies)
>
> **Audience**: Practitioners evaluating or adopting GHM-M
>
> **Related IDs**: [MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001), [MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002), [MP-003](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003)

---

## What is GHM-M?

**GHM-M** is an adaptation of the Gear Heart Methodology (GHM) for developing methodologies instead of products.

**The Core Insight**: If GHM uses PRDs (Product Requirements Documents) to build products, then GHM-M uses MRDs (Methodology Requirements Documents) to build methodologies.

**Meta-Application**: GHM-M was created by applying GHM to the problem of "how do we adapt GHM for methodology development?" It is both a variant of GHM and a demonstration of GHM's adaptability.

---

## Why GHM-M Exists

### The Problem

GHM is designed for product development with terminology and structures focused on:
- User journeys (not practitioner journeys)
- API contracts (not methodology patterns)
- Database schemas (not document templates)
- Unit tests (not case studies)
- Deployment (not publication)

When trying to use GHM to develop a *methodology*, this terminology creates friction.

### The Solution

GHM-M adapts GHM by:
1. **Terminology**: Methodology-specific language (practitioners, patterns, validation)
2. **ID System**: 13 new prefixes for methodology artifacts
3. **SoT Library**: 11 files for methodology components (not 10+ for product components)
4. **Lifecycle**: Simplified 5-gate process (v0.1→v0.4→v0.6→v0.8→v1.0)
5. **Validation**: Case studies and meta-application instead of automated testing

---

## The Three Core Principles

GHM-M is built on three foundational principles adapted from GHM:

### MP-001: Reference, Don't Duplicate

**Principle**: Every concept has one canonical location. Cross-references use IDs, not duplicate prose.

**Why It Matters**:
- **Prevents Drift**: When content is duplicated, updates happen inconsistently
- **Enables Context**: AI agents load precise context via ID references
- **Maintains Truth**: Single source of truth prevents conflicting information
- **Scales Knowledge**: Large documentation sets remain navigable

**Example**:
```markdown
❌ Bad: Duplicate the principle across files
✅ Good: Define once in METHODOLOGY_PRINCIPLES.md, reference everywhere with [MP-001]
```

**Learn More**: [MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)

### MP-002: Progressive Documentation

**Principle**: Documentation evolves through lifecycle gates, growing more complete as the methodology matures.

**Why It Matters**:
- **Reduces Pressure**: Don't need perfect documentation on day one
- **Tracks Evolution**: Shows methodology development journey
- **Gates Quality**: Each gate has specific criteria before advancement
- **Enables Iteration**: Can loop back to refine based on validation

**Lifecycle Gates**:
- **v0.1 Spark**: Initial problem and vision
- **v0.4 Foundation**: Core structure established
- **v0.6 Validation**: Tested with practitioners
- **v0.8 Polish**: Publication ready
- **v1.0 Launch**: Published and adopted

**Learn More**: [MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002), [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md)

### MP-003: ID-Based Context

**Principle**: Unique IDs create a knowledge graph that AI agents can navigate efficiently.

**Why It Matters**:
- **Fast Context Loading**: Agents find relevant info in <1 minute vs 5-10 minutes
- **Precise References**: No ambiguity about what's being referenced
- **Dependency Tracking**: Can see relationships between IDs
- **Change Impact**: Know what's affected when an ID changes

**ID System**: 13 prefixes for 13 artifact types (PJ, MP, PAT, TEMP, VAL, PUB, PF, WF, GUIDE, TOOL, COMP)

**Learn More**: [MP-003](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003), [UNIQUE_ID_SYSTEM.md](../active/workflows/UNIQUE_ID_SYSTEM.md)

---

## Core Components

### COMP-001: The 3+1+SoT+Temp Stack

**What It Is**: A documentation architecture with four layers.

**The "3" (Navigation)**:
1. **README.md**: Dashboard showing current state
2. **MRD.md**: Methodology requirements (your "spec")
3. **CLAUDE.md**: AI agent operating instructions

**The "+1" (Active Work)**:
- **EPIC-XX.md**: Current work window tracking changes

**SoT (Source of Truth - 11 files)**:
- Where IDs live and specifications are maintained
- Each file owns a specific ID prefix

**Temp (Temporary Storage)**:
- Work-in-progress before extracting to SoT
- Not authoritative until moved

**Learn More**: [COMP-001](../active/source_of_truth/COMPONENTS.md#comp-001)

### COMP-002: The ID System (13 Prefixes)

**What It Is**: A taxonomy of methodology artifacts with unique identifiers.

**The Prefixes**:

| Category | Prefixes | Purpose |
|----------|----------|---------|
| **People & Process** | PJ, PF | Practitioner journeys and feedback |
| **Foundation** | MP, PAT, COMP | Principles, patterns, components |
| **Artifacts** | TEMP, GUIDE, TOOL | Templates, guides, automation |
| **Execution** | WF, VAL, PUB | Workflows, validation, publication |

**Key Rules**:
- IDs are created in SoT files (never in navigation files)
- IDs are referenced everywhere (using markdown links)
- IDs are never deleted (deprecated instead)
- IDs enable bidirectional traceability

**Learn More**: [COMP-002](../active/source_of_truth/COMPONENTS.md#comp-002)

### COMP-003: Session Protocols

**What It Is**: Mandatory procedures for maintaining EPIC Section 0 across sessions.

**Why It Matters**:
- **Continuity**: Next session/agent knows exactly where you stopped
- **Accountability**: Clear record of what was done
- **Quality**: Prevents forgotten work or incomplete handoffs
- **Traceability**: Can understand methodology development history

**Required in Section 0**:
- Current session metadata (date, agent, active issue)
- Work completed this session
- Exact stopping point
- Next session instructions
- Files changed

**Learn More**: [COMP-003](../active/source_of_truth/COMPONENTS.md#comp-003), [CLAUDE.md Section 10](../CLAUDE.md#10-session-protocols)

---

## Key Patterns

### PAT-001: ID-Based Knowledge Graph

**What It Is**: Using unique IDs to create a navigable knowledge graph of methodology artifacts.

**How It Works**:
1. Define artifact once in its SoT file with an ID
2. Reference ID everywhere using markdown links
3. Maintain bidirectional relationships
4. Update in one place, reflected everywhere

**Implements**: [MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001), [MP-003](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003)

**Learn More**: [PAT-001](../active/source_of_truth/PATTERNS.md#pat-001)

### PAT-002: Progressive Documentation

**What It Is**: Systematic evolution of documentation through lifecycle gates.

**How It Works**:
1. Start with v0.1 Spark (problem + vision)
2. Build to v0.4 Foundation (structure + initial IDs)
3. Validate at v0.6 (testing + practitioner feedback)
4. Polish at v0.8 (complete + consistent)
5. Launch at v1.0 (published + adopted)

**Implements**: [MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002)

**Learn More**: [PAT-002](../active/source_of_truth/PATTERNS.md#pat-002), [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md)

### PAT-003: Session Protocols

**What It Is**: Standardized handoff procedures for continuity across sessions.

**How It Works**:
1. Start session: Read EPIC Section 0
2. Do work: Track in EPIC Section 3A
3. End session: Update Section 0 with current state
4. Commit: Follow session commit message format
5. Next session: Previous agent's Section 0 provides context

**Implements**: [COMP-003](../active/source_of_truth/COMPONENTS.md#comp-003)

**Learn More**: [PAT-003](../active/source_of_truth/PATTERNS.md#pat-003)

---

## GHM vs. GHM-M: Key Differences

### Terminology

| GHM (Product) | GHM-M (Methodology) | Why Changed |
|---------------|---------------------|-------------|
| PRD | MRD | Product → Methodology Requirements |
| Users | Practitioners | People who use the methodology |
| User Journeys (UJ) | Practitioner Journeys (PJ) | How they adopt the methodology |
| Business Rules (BR) | Methodology Principles (MP) | Core governing principles |
| API Contracts (API) | Patterns (PAT) | Reusable methodology patterns |
| Database Schema (DBT) | Templates (TEMP) | Document templates |
| Test Cases (TEST) | Validation (VAL) | Case studies and evidence |
| Deployment (DEP) | Publication (PUB) | How methodology is distributed |
| Customer Feedback (CFD) | Practitioner Feedback (PF) | Feedback from users |

### Lifecycle

| GHM (10 gates) | GHM-M (5 gates) | Why Simplified |
|----------------|-----------------|----------------|
| v0.1 Spark | v0.1 Spark | Same - problem + vision |
| v0.2 Market, v0.3 Commercial | *Skipped* | No market analysis for methodologies |
| v0.4 User Journeys | v0.4 Foundation | Structure vs. journeys |
| v0.5 Red Team | *Integrated into v0.6* | Validation happens through testing |
| v0.6 Architecture | *Skipped* | No technical architecture |
| v0.7 Build | *Integrated* | EPICs track work throughout |
| v0.8 Deployment | v0.8 Polish | Publication prep |
| v0.9 GTM | *Integrated into v1.0* | Publication + adoption combined |
| v1.0 Adoption | v1.0 Launch | Same endpoint |

### SoT Library

| GHM (10+ files) | GHM-M (11 files) | Purpose |
|-----------------|------------------|---------|
| USER_JOURNEYS.md | PRACTITIONER_JOURNEYS.md | Discovery → Adoption → Mastery |
| BUSINESS_RULES.md | METHODOLOGY_PRINCIPLES.md | Core governing principles |
| API_CONTRACTS.md | PATTERNS.md | Reusable methodology patterns |
| ACTUAL_SCHEMA.md | TEMPLATES.md | Document structures |
| testing_playbook.md | VALIDATION.md | Case studies + evidence |
| deployment_playbook.md | PUBLICATION.md | Distribution channels |
| customer_feedback.md | PRACTITIONER_FEEDBACK.md | User feedback |
| *(New)* | WORKFLOWS.md | Methodology processes |
| *(New)* | GUIDES.md | How-to documentation |
| *(New)* | TOOLS.md | Automation scripts |
| *(New)* | COMPONENTS.md | Core building blocks |

---

## Validation Approach

### VAL-000: Meta-Application (Dogfooding)

**The Ultimate Validation**: Use GHM-M to develop GHM-M itself.

**How It Works**:
1. Apply GHM-M to the problem: "Adapt GHM for methodology development"
2. Track all work in EPIC-01 (Foundation Setup)
3. Use all 13 ID prefixes
4. Follow all lifecycle gates
5. Document learnings as practitioner feedback

**What It Proves**:
- GHM-M can be applied to methodology development
- All components work together
- Documentation scales
- Session protocols maintain continuity
- ID system prevents duplication

**Learn More**: [VAL-000](../active/source_of_truth/VALIDATION.md#val-000)

### Other Validation Methods

- **Pilot Projects**: Apply to developing other methodologies
- **Practitioner Feedback**: Gather PF-XXX from early adopters
- **Case Studies**: Document VAL-XXX for successful applications
- **Peer Review**: Expert validation of principles and patterns

---

## Practitioner Journeys

### PJ-001: First-Time Methodology Adoption

**Who**: Someone developing a new methodology

**Journey Stages**:
1. **Discovery**: Learn about GHM-M ([GUIDE-001](getting_started.md))
2. **Evaluation**: Understand if it fits their needs (this document)
3. **Adoption**: Set up structure and create first IDs ([GUIDE-001](getting_started.md))
4. **Mastery**: Develop complete methodology using GHM-M
5. **Evolution**: Adapt GHM-M for their specific context

**Key Resources**:
- Getting Started: [GUIDE-001](getting_started.md)
- MRD Lifecycle: [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md)
- ID System: [UNIQUE_ID_SYSTEM.md](../active/workflows/UNIQUE_ID_SYSTEM.md)
- Example: GHM-M itself (this repository)

**Learn More**: [PJ-001](../active/source_of_truth/PRACTITIONER_JOURNEYS.md#pj-001)

---

## When to Use GHM-M

### ✅ Good Fit:

- **Developing a new methodology** from scratch
- **Documenting an existing methodology** with structure
- **Evolving a methodology** through clear stages
- **Collaborating on methodology** with multiple contributors
- **Using AI agents** to help develop methodology
- **Need traceability** of methodology design decisions

### ❌ Poor Fit:

- **Product development** → Use standard GHM instead
- **One-off documentation** → Too much overhead
- **Already established methodology** → Unless doing major revision
- **Simple how-to guides** → Simpler approaches better
- **Proprietary/secret methodology** → If can't leverage ID cross-references

---

## Getting Started

Ready to use GHM-M? Follow these steps:

1. **Read**: [Getting Started Guide](getting_started.md) (GUIDE-001)
2. **Set Up**: Create directory structure and templates
3. **Initialize**: Create MRD v0.1 Spark with your problem statement
4. **Build**: Create SoT library with initial IDs
5. **Track**: Use EPIC-01 to track foundation work
6. **Validate**: Apply to a pilot project or meta-application

**Time Investment**:
- Initial setup: 1-2 hours
- Foundation (v0.4): 4-8 hours
- Full methodology (v1.0): Varies by complexity

---

## Philosophy

### Methodology as Code

GHM-M treats methodology development like software development:
- **Version control**: Track changes over time
- **Progressive refinement**: Iterate toward completeness
- **Modular design**: Components reference each other
- **Testing/validation**: Prove methodology works
- **Documentation**: Maintain specs and guides
- **Collaboration**: Multiple contributors can work together

### Knowledge Graphs Over Documents

Traditional documentation is prose. GHM-M documentation is a knowledge graph:
- **Nodes**: IDs representing concepts
- **Edges**: References between IDs
- **Navigation**: Follow links to explore
- **Updates**: Change once, reflected everywhere
- **AI-friendly**: Agents load context via IDs

### Single Source of Truth

Every artifact lives in exactly one place:
- **Principle**: Defined in METHODOLOGY_PRINCIPLES.md
- **Pattern**: Defined in PATTERNS.md
- **Component**: Defined in COMPONENTS.md
- **References**: Everywhere, pointing to the source

This prevents the documentation drift that plaguesmost methodology development efforts.

---

## Evolution & Customization

### GHM-M is Itself Evolving

This is v1.0-M (M for Methodologies). Future versions may:
- Add new ID prefixes for new artifact types
- Refine lifecycle gates based on practitioner feedback
- Create specialized variants (e.g., GHM-M-Educational)
- Develop additional patterns and templates
- Integrate with other methodology frameworks

### You Can Adapt It

GHM-M demonstrates that GHM is adaptable. You can:
- Create your own variant (GHM-X)
- Add custom ID prefixes
- Modify lifecycle gates
- Change terminology
- Adapt templates

**Just preserve the core principles**: reference not duplicate, progressive documentation, ID-based context.

---

## Resources

### Core Documentation
- **Getting Started**: [GUIDE-001](getting_started.md)
- **MRD Lifecycle**: [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md)
- **ID System**: [UNIQUE_ID_SYSTEM.md](../active/workflows/UNIQUE_ID_SYSTEM.md)
- **Session Protocols**: [CLAUDE.md Section 10](../CLAUDE.md#10-session-protocols)

### SoT Library
- **Principles**: [METHODOLOGY_PRINCIPLES.md](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md)
- **Patterns**: [PATTERNS.md](../active/source_of_truth/PATTERNS.md)
- **Components**: [COMPONENTS.md](../active/source_of_truth/COMPONENTS.md)
- **All 11 files**: See `active/source_of_truth/` directory

### Templates
- **Methodology**: `templates/methodology/` (MRD, README, CLAUDE)
- **EPICs**: `templates/epics/EPIC_template.md`
- **SoT**: `templates/source_of_truth/` (11 templates)

### Example Application
- **GHM-M Itself**: This entire repository demonstrates GHM-M
- **EPIC-01**: `active/epics/EPIC-01-foundation.md` shows meta-application
- **VAL-000**: [Validation case study](../active/source_of_truth/VALIDATION.md#val-000)

---

## Contributing

GHM-M welcomes practitioner feedback:

**Found an issue?**
- Create PF-XXX entry describing the problem
- Reference relevant IDs (MP, PAT, COMP)
- Propose solution if you have one

**Have a suggestion?**
- Describe the enhancement
- Explain the use case
- Show how it aligns with core principles

**Built something with GHM-M?**
- Share your VAL-XXX case study
- Document your practitioner journey (PJ-XXX)
- Contribute patterns (PAT-XXX) you discovered

---

## Summary

**GHM-M is**:
- An adaptation of GHM for methodology development
- Built on 3 core principles (MP-001, MP-002, MP-003)
- Uses 13 ID prefixes for methodology artifacts
- Follows a 5-gate lifecycle (v0.1 → v1.0)
- Validated through meta-application (using GHM-M to build GHM-M)

**GHM-M enables**:
- Systematic methodology development
- Knowledge graph documentation
- AI agent collaboration
- Progressive refinement
- Traceable design decisions

**GHM-M demonstrates**:
- GHM's adaptability beyond products
- The power of ID-based documentation
- How methodologies can be "code-like"
- Meta-application as validation

**Start using it**: [Getting Started Guide](getting_started.md)

---

**Version**: 1.0-M
**Created**: 2025-12-26
**Status**: Active
**Related IDs**:
- [MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001) - Reference not duplicate
- [MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002) - Progressive documentation
- [MP-003](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003) - ID-based context
- [COMP-001](../active/source_of_truth/COMPONENTS.md#comp-001) - 3+1+SoT+Temp stack
- [COMP-002](../active/source_of_truth/COMPONENTS.md#comp-002) - ID system
- [COMP-003](../active/source_of_truth/COMPONENTS.md#comp-003) - Session protocols
- [PAT-001](../active/source_of_truth/PATTERNS.md#pat-001) - ID-based knowledge graph
- [PAT-002](../active/source_of_truth/PATTERNS.md#pat-002) - Progressive documentation
- [PAT-003](../active/source_of_truth/PATTERNS.md#pat-003) - Session protocols
- [PJ-001](../active/source_of_truth/PRACTITIONER_JOURNEYS.md#pj-001) - First-time adoption
- [VAL-000](../active/source_of_truth/VALIDATION.md#val-000) - Meta-application
- [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md) - MRD lifecycle
- [GUIDE-001](getting_started.md) - Getting started guide
