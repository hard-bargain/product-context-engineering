---
title: "MRD Version Lifecycle Workflow"
version: 1.0-M
updated: "2025-12-26"
authority: "GHM-M (Methodologies) · WF-001"
scope: "Lifecycle gate checks for advancing MRD v0.1 → v1.0"
variant: "Adapted for methodology development"
---

# MRD Version Lifecycle · v0.1 → v1.0

> **Purpose**: Define the non-skippable lifecycle gates for an MRD (Methodology Requirements Document) within GHM-M.
> **Audience**: Methodology developers, reviewers, practitioners, and agents validating readiness at each gate.
> **Companion Docs**: `README.md`, `MRD.md`, `CLAUDE.md`, [`UNIQUE_ID_SYSTEM.md`](UNIQUE_ID_SYSTEM.md), SoT library files.
> **Reference**: Based on GHM PRD lifecycle, adapted for methodology development context.

---

## Quick Reference Ladder

| Gate | Owner | Focus | Primary Outputs | Key IDs |
|------|-------|-------|-----------------|---------|
| **v0.1 Spark** | Methodology Lead | Problem + vision | MRD spark narrative, open questions | PF-, VAL- |
| **v0.4 Foundation** | Methodology Lead | Core structure | Navigation files, SoT library, templates | MP-, PAT-, TEMP-, COMP- |
| **v0.6 Validation** | Methodology Lead | Testing & refinement | Case studies, practitioner feedback | VAL-, PF-, PJ- |
| **v0.8 Polish** | Methodology Lead | Publication readiness | Guides, workflows, complete docs | GUIDE-, WF-, PUB- |
| **v1.0 Launch** | Methodology Lead | Publication & adoption | Published methodology, adoption tracking | PUB-, PF-, VAL- |

> **Note**: GHM-M uses a simplified 5-gate lifecycle instead of GHM's 10 gates, as methodology development differs from product development.

---

## Gate Comparison: GHM vs. GHM-M

| GHM (Product) | GHM-M (Methodology) | Rationale |
|---------------|---------------------|-----------|
| v0.1 Spark | v0.1 Spark | Same - initial problem/vision |
| v0.2 Market Definition | *Skipped* | No market segmentation for methodologies |
| v0.3 Commercial Model | *Skipped* | No monetization for open methodologies |
| v0.4 User Journeys | v0.4 Foundation | Becomes structural foundation |
| v0.5 Red Team Review | *Integrated into v0.6* | Validation happens through practitioner testing |
| v0.6 Architecture | *Skipped* | No technical architecture for methodologies |
| v0.7 Build Execution | *Integrated into v0.4-v0.6* | EPICs track methodology development |
| v0.8 Deployment & Ops | v0.8 Polish | Becomes publication preparation |
| v0.9 Go-to-Market | *Integrated into v1.0* | Publication and adoption combined |
| v1.0 Market Adoption | v1.0 Launch | Publication + initial adoption tracking |

---

## Gate Deliverables & Documentation Discipline

### v0.1 Spark

**Purpose**: Articulate the methodology problem and envision the solution.

**MRD Sections:**
- Executive summary with methodology vision
- Problem statement (what methodology gaps exist?)
- Target practitioners (who will use this?)
- Desired outcomes and success metrics
- Constraints and non-goals
- Open questions for v0.4

**SoT Updates:**
- **PF-XXX**: Seed practitioner feedback IDs (methodology pain points)
- **VAL-XXX**: Early validation ideas or meta-application plan
- **PJ-XXX**: Initial practitioner journey sketches (optional)

**Temp Files:**
- Spark research notes (methodology landscape analysis)
- Problem exploration scratchpads
- Vision brainstorming docs

**Artifacts to Archive:**
- Research notes → `archive/YYYY-MM/spark-research/`
- Vision iterations → `archive/YYYY-MM/vision-drafts/`

**Exit Criteria:**
- [ ] Problem statement articulates methodology gap clearly
- [ ] Target practitioners identified with at least one PJ-XXX draft
- [ ] Success metrics defined (adoption, usage, feedback)
- [ ] Open questions documented for v0.4

---

### v0.4 Foundation

**Purpose**: Establish the core structural elements of the methodology.

**MRD Sections:**
- Methodology principles (MP-XXX references)
- Core patterns (PAT-XXX references)
- Component overview (COMP-XXX references)
- Template catalog (TEMP-XXX references)
- Validation approach (VAL-XXX plan)

**SoT Updates:**
- **MP-XXX**: Create methodology principles (minimum 3)
- **PAT-XXX**: Create core patterns (minimum 3)
- **COMP-XXX**: Define core components (minimum 3)
- **TEMP-XXX**: Create initial templates (minimum 2)
- **WF-XXX**: Define key workflows
- **TOOL-XXX**: Plan automation tools (if applicable)
- **PJ-XXX**: Refine practitioner journeys

**Navigation Files:**
- `README.md`: Complete navigation hub with SoT index
- `MRD.md`: Updated to v0.4 with foundation references
- `CLAUDE.md`: Agent operating guide finalized

**Templates:**
- Create all methodology templates (MRD, README, CLAUDE, EPIC, SoT)
- Document template usage patterns

**Temp Files:**
- ID brainstorming sessions
- SoT file drafts before finalization
- Template iterations

**Artifacts to Archive:**
- SoT drafts → `archive/YYYY-MM/sot-drafts/`
- Template iterations → `archive/YYYY-MM/template-versions/`

**Exit Criteria:**
- [ ] 3+1+SoT+Temp stack complete and cross-referenced
- [ ] Minimum viable ID set created (across all 11 SoT files)
- [ ] Templates ready for practitioner use
- [ ] EPIC-XX tracking foundation work demonstrates GHM-M in action
- [ ] All principles, patterns, components have clear definitions

---

### v0.6 Validation

**Purpose**: Test the methodology with real use cases and gather practitioner feedback.

**MRD Sections:**
- Validation strategy and results
- Case studies and meta-application outcomes
- Practitioner feedback summary
- Refinements based on validation
- Risk analysis and mitigation

**SoT Updates:**
- **VAL-XXX**: Create validation case studies (minimum 1 meta-application)
- **PF-XXX**: Capture practitioner feedback from testing
- **PJ-XXX**: Validate practitioner journeys with real users
- **MP-XXX**: Refine principles based on validation findings
- **PAT-XXX**: Update patterns based on practical application
- **GUIDE-XXX**: Draft preliminary guides based on common questions

**Validation Activities:**
- **Meta-application**: Use GHM-M to develop itself (dogfooding)
- **Pilot projects**: Apply methodology to 1-3 sample projects
- **Practitioner reviews**: Get feedback from target users
- **Edge case testing**: Identify where methodology breaks down

**Temp Files:**
- Validation logs and session notes
- Practitioner interview transcripts
- Case study drafts before SoT extraction
- Feedback synthesis working docs

**Artifacts to Archive:**
- Validation session logs → `archive/YYYY-MM/validation/`
- Pilot project artifacts → `archive/YYYY-MM/pilots/`
- Feedback raw data → `archive/YYYY-MM/feedback/`

**Exit Criteria:**
- [ ] At least one complete VAL-XXX case study (preferably meta-application)
- [ ] Practitioner feedback from minimum 3 users (PF-XXX IDs)
- [ ] All critical practitioner journeys validated with real users
- [ ] Refinements integrated back into SoT files
- [ ] Risk analysis completed with mitigation strategies
- [ ] No blocking issues preventing publication

---

### v0.8 Polish

**Purpose**: Prepare the methodology for publication with complete documentation.

**MRD Sections:**
- Publication readiness checklist
- Distribution strategy
- Documentation completeness review
- Known limitations and future work
- Maintenance and evolution plan

**SoT Updates:**
- **GUIDE-XXX**: Complete all planned guides (getting started, advanced, reference)
- **WF-XXX**: Document all critical workflows in detail
- **PUB-XXX**: Define publication channels and strategies
- **TOOL-XXX**: Finalize automation tools and documentation
- **All SoT files**: Final polish, consistency check, cross-reference validation

**Documentation Polish:**
- Proofread all SoT files for clarity and consistency
- Validate all cross-references (no broken ID links)
- Ensure consistent terminology throughout
- Add examples and illustrations where helpful
- Verify all templates are complete and usable

**Tool Configuration:**
- ID registry complete and accurate
- Validation scripts working
- Configuration files tested
- Tool documentation complete

**Temp Files:**
- Documentation review notes
- Consistency check logs
- Cross-reference validation reports
- Polish iteration tracking

**Artifacts to Archive:**
- Review notes → `archive/YYYY-MM/polish/`
- Validation reports → `archive/YYYY-MM/validation-reports/`

**Exit Criteria:**
- [ ] All GUIDE-XXX entries complete and reviewed
- [ ] All WF-XXX workflows documented in detail
- [ ] Publication channels identified (PUB-XXX)
- [ ] All tools working and documented (TOOL-XXX)
- [ ] Cross-reference validation passing (no broken ID links)
- [ ] Proofing complete (spelling, grammar, formatting)
- [ ] Known limitations documented honestly
- [ ] README shows methodology as "v0.8 - Publication Ready"

---

### v1.0 Launch

**Purpose**: Publish the methodology and track initial adoption.

**MRD Sections:**
- Launch summary and timeline
- Distribution execution notes
- Adoption tracking approach
- Feedback loop procedures
- Evolution and maintenance plan

**SoT Updates:**
- **PUB-XXX**: Execute publication to all defined channels
- **PF-XXX**: Set up feedback capture mechanisms
- **VAL-XXX**: Track post-launch validation and adoption metrics
- **PJ-XXX**: Monitor actual practitioner journeys vs. planned
- **All SoT files**: Mark as v1.0 stable

**Publication Activities:**
- Publish to primary channel (e.g., GitHub repository public)
- Announce to target practitioner communities
- Set up feedback collection mechanisms
- Create adoption tracking dashboard
- Establish maintenance cadence

**Adoption Tracking:**
- Number of practitioners who discover methodology
- Number who adopt and apply it
- Common pain points and questions (PF-XXX)
- Success stories and case studies (VAL-XXX)
- Evolution requests and feature gaps

**Temp Files:**
- Launch checklists and tracking
- Feedback triage notes
- Adoption metrics working docs
- Evolution roadmap drafts

**Artifacts to Archive:**
- Launch artifacts → `archive/YYYY-MM/launch/`
- Initial feedback → `archive/YYYY-MM/v1.0-feedback/`

**Exit Criteria:**
- [ ] Methodology published to all PUB-XXX channels
- [ ] Announcement distributed to target practitioners
- [ ] Feedback mechanisms active and monitored
- [ ] Adoption tracking in place
- [ ] Maintenance plan documented and scheduled
- [ ] Evolution roadmap drafted based on early feedback
- [ ] README shows methodology as "v1.0 - Published"

---

## Gate Checklists (Detailed)

### v0.1 Spark Checklist
- [ ] Problem statement articulates specific methodology gap
- [ ] Problem references practitioner pain points (PF-XXX or evidence)
- [ ] Target practitioners identified with personas or archetypes
- [ ] Desired outcomes include measurable success criteria
- [ ] Constraints explicitly state what methodology won't do
- [ ] Open questions documented with owners for v0.4
- [ ] Vision statement compelling and differentiated

### v0.4 Foundation Checklist
- [ ] README.md navigation hub complete with all 11 SoT file links
- [ ] MRD.md updated to v0.4 with foundation section
- [ ] CLAUDE.md finalized with GHM-M specific guidance
- [ ] All 11 SoT files created with initial IDs:
  - [ ] PRACTITIONER_JOURNEYS.md (minimum 1 PJ-XXX)
  - [ ] METHODOLOGY_PRINCIPLES.md (minimum 3 MP-XXX)
  - [ ] PATTERNS.md (minimum 3 PAT-XXX)
  - [ ] TEMPLATES.md (minimum 2 TEMP-XXX)
  - [ ] VALIDATION.md (minimum 1 VAL-XXX plan)
  - [ ] PUBLICATION.md (minimum 1 PUB-XXX)
  - [ ] PRACTITIONER_FEEDBACK.md (structure ready)
  - [ ] WORKFLOWS.md (minimum 2 WF-XXX)
  - [ ] GUIDES.md (minimum 1 GUIDE-XXX planned)
  - [ ] TOOLS.md (minimum 1 TOOL-XXX if applicable)
  - [ ] COMPONENTS.md (minimum 3 COMP-XXX)
- [ ] All templates created (MRD, README, CLAUDE, EPIC, 11 SoT)
- [ ] ID system documented (13 prefixes defined)
- [ ] Cross-references between SoT files working
- [ ] At least one EPIC tracking foundation work

### v0.6 Validation Checklist
- [ ] Meta-application case study complete (VAL-XXX)
- [ ] Minimum 3 practitioners provided feedback (PF-XXX)
- [ ] All critical practitioner journeys tested
- [ ] Refinements from validation integrated into SoT
- [ ] Known limitations documented in MRD
- [ ] Risk analysis complete with mitigation strategies
- [ ] No blocking issues preventing publication
- [ ] Validation results documented in VAL-XXX IDs

### v0.8 Polish Checklist
- [ ] All planned GUIDE-XXX entries complete
- [ ] All critical WF-XXX workflows documented
- [ ] Publication channels defined (PUB-XXX)
- [ ] Tools working and documented (TOOL-XXX)
- [ ] Cross-reference validation passing (run TOOL-002 if available)
- [ ] Consistency check complete (terminology, formatting)
- [ ] All SoT files proofread and polished
- [ ] Templates tested and validated
- [ ] README lifecycle shows "v0.8 - Publication Ready"

### v1.0 Launch Checklist
- [ ] Methodology published to all PUB-XXX channels
- [ ] Announcement sent to target practitioner communities
- [ ] Feedback mechanisms active (email, issues, forms)
- [ ] Adoption tracking dashboard or process established
- [ ] Maintenance cadence defined (weekly, monthly, quarterly)
- [ ] Evolution roadmap started based on initial feedback
- [ ] All SoT files marked as v1.0 stable
- [ ] README lifecycle shows "v1.0 - Published"

---

## Gate Review Ritual

1. **Prepare** — Methodology lead assembles evidence:
   - MRD sections for this gate
   - SoT IDs created/updated
   - EPIC references showing work completed
   - README lifecycle widget updated

2. **Review** — Cross-functional review (if applicable):
   - Methodology developers walk through checklist
   - Practitioners (if available) provide feedback
   - Subject matter experts review for accuracy
   - Technical reviewers check tooling/automation

3. **Decide** — Gate decision:
   - **Approve**: All criteria met, advance to next gate
   - **Approve with actions**: Minor items, advance but track actions
   - **Block**: Critical gaps, address before advancing
   - Document decision in EPIC or MRD change log

4. **Record** — Update documentation:
   - Add entry to MRD change log with gate advancement
   - Update README lifecycle section
   - Note decision and actions in active EPIC
   - Archive temp files from this gate

5. **Follow-up** — Track actions:
   - Create new EPIC/issues for action items
   - Update SoT files with refinements
   - Confirm action completion before closing gate
   - Update ID_REGISTRY if new IDs created

---

## Loopbacks & Exceptions

**Loopbacks** (returning to earlier gate):
- Must create new MRD change log entry (e.g., `v0.4r2` for second revision)
- Document reason for loopback with triggering evidence (ID or metric)
- Update README "Active IDs" to show which SoT artifacts changed
- Archive previous version's temp files before creating new ones

**Emergency Skips** (rare):
- Require explicit rationale documented in MRD
- Mitigation plan required (how will gap be addressed?)
- Schedule follow-up gate review with date
- Document in EPIC retrospective
- Track as risk in VAL-XXX or MRD risk section

**Common Loopback Scenarios:**
- v0.6 → v0.4: Validation revealed structural issues needing redesign
- v0.8 → v0.6: Polish uncovered gaps requiring more validation
- v1.0 → v0.8: Launch feedback identified missing documentation

---

## Companion Resources

**Within GHM-M:**
- [`UNIQUE_ID_SYSTEM.md`](UNIQUE_ID_SYSTEM.md) — ID prefix definitions and usage rules
- `templates/methodology/mrd_template.md` — MRD scaffold aligned to this lifecycle
- `templates/epics/EPIC_template.md` — Execution container with ID ledger
- `active/source_of_truth/WORKFLOWS.md` — WF-001 and WF-002 workflow details
- `tools/config/ghm_m_config.yaml` — Tool configuration for lifecycle tracking

**From Base GHM:**
- `PRD-driven-context-engineering/methodology/workflows/PRD_VERSION_LIFECYCLE.md` — Original product lifecycle
- `PRD-driven-context-engineering/CLAUDE.md` — Session protocols (Section 10)

---

## Lifecycle Progression Examples

### Example 1: GHM-M Self-Development (VAL-000)

| Date | Gate | Evidence | Notes |
|------|------|----------|-------|
| 2025-12-26 | v0.1 Spark | MRD.md initial spark | Problem: Adapt GHM for methodologies |
| 2025-12-26 | v0.4 Foundation | EPIC-01 complete (Phases 1-4) | 21 IDs, 15 templates, 3 tools configured |
| TBD | v0.6 Validation | VAL-000 case study | Using GHM-M to build GHM-M |
| TBD | v0.8 Polish | All guides complete | Final review and consistency check |
| TBD | v1.0 Launch | Published to GitHub | Initial practitioner feedback loop active |

### Example 2: Hypothetical New Methodology

| Date | Gate | Evidence | Notes |
|------|------|----------|-------|
| 2025-01-15 | v0.1 Spark | MRD.md v0.1 | Problem: Need better API design methodology |
| 2025-02-01 | v0.4 Foundation | EPIC-01, EPIC-02 | 15 IDs across 8 SoT files |
| 2025-03-15 | v0.6 Validation | VAL-001, VAL-002, VAL-003 | 3 pilot projects, 5 practitioner reviews |
| 2025-03-20 | v0.4r2 (loopback) | Validation revealed gap | Need to add security pattern (PAT-XXX) |
| 2025-04-10 | v0.6r2 | VAL-004 | Security pattern validated |
| 2025-05-01 | v0.8 Polish | 8 guides complete | Cross-references validated |
| 2025-05-15 | v1.0 Launch | Published to community | 12 early adopters tracked |

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0-M | 2025-12-26 | Initial GHM-M lifecycle created, adapted from GHM PRD lifecycle |

---

**Workflow ID**: WF-001
**Last Updated**: 2025-12-26
**Status**: Active (v1.0-M)
**Related IDs**: MP-002 (Progressive documentation), PAT-002 (Progressive documentation pattern), TEMP-002 (MRD template)
