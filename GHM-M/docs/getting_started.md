---
title: "Getting Started with GHM-M"
guide_id: GUIDE-001
version: 1.0
status: Active
target_audience: Beginner
created: 2025-12-26
last_updated: 2025-12-26
---

# Getting Started with GHM-M

> **Guide ID**: GUIDE-001
> **Target Audience**: Practitioners new to GHM-M
> **Time to Complete**: 30-45 minutes
> **Prerequisites**: Basic understanding of markdown and documentation practices

## What is GHM-M?

**GHM-M** (Gear Heart Methodology for Methodologies) is a variant of the Gear Heart Methodology ([MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001), [MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002), [MP-003](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003)), adapted for developing methodologies rather than products.

**Key Difference**: Instead of building software with APIs and databases, you're building a methodology with principles, patterns, and templates.

**Core Idea**: Use GHM-M to develop your methodology—just as GHM uses PRDs to develop products, GHM-M uses MRDs (Methodology Requirements Documents) to develop methodologies.

## Quick Start Checklist

- [ ] Understand the 3+1+SoT+Temp stack ([COMP-001](../active/source_of_truth/COMPONENTS.md#comp-001))
- [ ] Learn the 13 ID prefixes ([COMP-002](../active/source_of_truth/COMPONENTS.md#comp-002))
- [ ] Create your methodology directory structure
- [ ] Initialize your MRD (v0.1 Spark)
- [ ] Create your first EPIC to track foundation work
- [ ] Start building your SoT library

## Core Concepts

### 1. The 3+1+SoT+Temp Stack

**The "3" (Navigation Files)**:
1. **README.md**: Dashboard and navigation hub
2. **MRD.md**: Methodology Requirements Document (your "spec")
3. **CLAUDE.md**: AI agent operating instructions

**The "+1" (Active Work)**:
- **EPIC-XX.md**: Current work window tracking changes

**SoT (Source of Truth Library - 11 files)**:
- Where all IDs live and specifications are maintained
- 11 specialized files for different methodology aspects

**Temp (Temporary Storage)**:
- Work-in-progress content before extracting to SoT

**Learn More**: [COMP-001](../active/source_of_truth/COMPONENTS.md#comp-001) - 3+1+SoT+Temp stack

### 2. The ID System (13 Prefixes)

Every meaningful artifact gets a unique ID with a prefix:

| Prefix | What It Represents | Example |
|--------|-------------------|---------|
| PJ-XXX | Practitioner Journeys | PJ-001: First-time adoption |
| MP-XXX | Methodology Principles | MP-001: Reference not duplicate |
| PAT-XXX | Patterns | PAT-001: ID-based knowledge graph |
| TEMP-XXX | Templates | TEMP-001: EPIC template |
| VAL-XXX | Validation/Case Studies | VAL-000: Dogfooding |
| PUB-XXX | Publication Channels | PUB-001: GitHub |
| PF-XXX | Practitioner Feedback | PF-001: Feedback structure |
| WF-XXX | Workflows | WF-001: MRD lifecycle |
| GUIDE-XXX | How-to Guides | GUIDE-001: This guide |
| TOOL-XXX | Automation Tools | TOOL-001: Session validator |
| COMP-XXX | Core Components | COMP-001: Documentation stack |

**Key Principle**: Reference IDs, don't duplicate content ([MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001))

**Learn More**: [UNIQUE_ID_SYSTEM.md](../active/workflows/UNIQUE_ID_SYSTEM.md)

### 3. Progressive Documentation

Documentation evolves through lifecycle gates ([MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002)):

- **v0.1 Spark**: Initial problem and vision
- **v0.4 Foundation**: Core structure established
- **v0.6 Validation**: Tested and refined
- **v0.8 Polish**: Publication ready
- **v1.0 Launch**: Published and adopted

**Learn More**: [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md) - MRD Version Lifecycle

---

## Step-by-Step Tutorial

### Step 1: Set Up Directory Structure

Create the GHM-M directory structure:

```bash
mkdir -p my-methodology/{active/{epics,source_of_truth,workflows},templates/{methodology,epics,source_of_truth},tools/config,docs,temp,.codex}
```

**Expected Output**:
```
my-methodology/
├── README.md
├── MRD.md
├── CLAUDE.md
├── active/
│   ├── epics/
│   ├── source_of_truth/  (11 SoT files)
│   └── workflows/
├── templates/
│   ├── methodology/
│   ├── epics/
│   └── source_of_truth/
├── tools/
│   └── config/
├── docs/
├── temp/
└── .codex/
```

**Checkpoint**:
- [ ] Directory structure created
- [ ] All folders present

### Step 2: Copy Templates

Copy GHM-M templates to your project:

```bash
# From GHM-M repository
cp GHM-M/templates/methodology/* my-methodology/templates/methodology/
cp GHM-M/templates/epics/* my-methodology/templates/epics/
cp GHM-M/templates/source_of_truth/* my-methodology/templates/source_of_truth/
```

**Checkpoint**:
- [ ] Templates copied (15 templates total)
- [ ] MRD, README, CLAUDE templates present
- [ ] EPIC template present
- [ ] 11 SoT templates present

### Step 3: Initialize Navigation Files

Create your navigation files from templates:

**3a. Create README.md**:
```bash
cp templates/methodology/readme_template.md README.md
# Edit README.md to add your methodology name
```

**3b. Create MRD.md (v0.1 Spark)**:
```bash
cp templates/methodology/mrd_template.md MRD.md
```

Edit MRD.md and fill in:
- Problem statement (what methodology gap are you addressing?)
- Vision (what does success look like?)
- Target practitioners (who will use this?)
- Success metrics (how will you measure adoption?)

**3c. Create CLAUDE.md**:
```bash
cp templates/methodology/claude_template.md CLAUDE.md
# Customize for your project
```

**Checkpoint**:
- [ ] README.md created with your methodology name
- [ ] MRD.md v0.1 Spark section completed
- [ ] CLAUDE.md customized

### Step 4: Create Your First EPIC

Use GHM-M from day one by tracking foundation work in an EPIC:

```bash
cp templates/epics/EPIC_template.md active/epics/EPIC-01-foundation.md
```

Edit `EPIC-01-foundation.md`:
- **Title**: "EPIC-01: Foundation Setup"
- **Goal**: Establish complete GHM-M structure for [your methodology]
- **Section 0**: Update with current session state
- **Section 2**: List foundation tasks as issues

**Sample Issues**:
1. Create directory structure ✅ (you just did this!)
2. Initialize navigation files ✅ (you just did this!)
3. Create SoT library (next step)
4. Create initial IDs
5. Configure tools
6. Write documentation

**Checkpoint**:
- [ ] EPIC-01 created
- [ ] Section 0 (Session State) filled in
- [ ] Issues listed in Section 2

### Step 5: Build SoT Library

Create all 11 Source of Truth files:

```bash
# Create from templates
cp templates/source_of_truth/METHODOLOGY_PRINCIPLES_template.md active/source_of_truth/METHODOLOGY_PRINCIPLES.md
cp templates/source_of_truth/PATTERNS_template.md active/source_of_truth/PATTERNS.md
# ... repeat for all 11 files
```

**Required SoT Files**:
1. PRACTITIONER_JOURNEYS.md (PJ-XXX)
2. METHODOLOGY_PRINCIPLES.md (MP-XXX)
3. PATTERNS.md (PAT-XXX)
4. TEMPLATES.md (TEMP-XXX)
5. VALIDATION.md (VAL-XXX)
6. PUBLICATION.md (PUB-XXX)
7. PRACTITIONER_FEEDBACK.md (PF-XXX)
8. WORKFLOWS.md (WF-XXX)
9. GUIDES.md (GUIDE-XXX)
10. TOOLS.md (TOOL-XXX)
11. COMPONENTS.md (COMP-XXX)

**Checkpoint**:
- [ ] All 11 SoT files created
- [ ] Each file has at least one example ID from template

### Step 6: Create Initial IDs

Add your first real IDs to establish the methodology foundation.

**Start with Principles** (MP-XXX):

Edit `active/source_of_truth/METHODOLOGY_PRINCIPLES.md`:

```markdown
## MP-001: [Your First Core Principle]

**ID**: MP-001
**Category**: [Category name]
**Status**: Active
**Created**: 2025-12-26

### Principle Statement
[What is this principle?]

### Rationale
[Why does this principle exist?]

### Related IDs
[Links to related IDs]
```

**Recommended Starter IDs**:
- **MP-001, MP-002, MP-003**: Your 3 core principles
- **PAT-001**: Your primary methodology pattern
- **COMP-001**: Your documentation architecture
- **PJ-001**: Your target practitioner's journey
- **VAL-000**: Meta-application (using your methodology to build itself)

**Checkpoint**:
- [ ] Minimum 3 methodology principles created (MP-001, MP-002, MP-003)
- [ ] At least 1 pattern created (PAT-001)
- [ ] At least 1 journey created (PJ-001)

### Step 7: Configure Tools

Set up validation and automation:

```bash
# Copy tool configuration
cp GHM-M/tools/config/ghm_m_config.yaml tools/config/ghm_m_config.yaml

# Copy session validator
cp GHM-M/tools/validate_sessions.py tools/validate_sessions.py
chmod +x tools/validate_sessions.py

# Copy tools README
cp GHM-M/tools/README.md tools/README.md
```

Edit `tools/config/ghm_m_config.yaml` to customize for your methodology.

**Test Validation**:
```bash
python tools/validate_sessions.py --epic active/epics/EPIC-01-foundation.md --verbose
```

**Expected Output**: PASS with all checks green

**Checkpoint**:
- [ ] Configuration file copied and customized
- [ ] Session validator working
- [ ] EPIC-01 validates successfully

### Step 8: Update EPIC-01 Section 0

Follow session protocols ([COMP-003](../active/source_of_truth/COMPONENTS.md#comp-003)):

Edit `active/epics/EPIC-01-foundation.md` Section 0:

```markdown
## 0. Session State (MANDATORY)

### Current Session
| Field | Value |
|-------|-------|
| **Session Date** | 2025-12-26 |
| **Agent/Model** | [Your name or agent] |
| **Active Issue** | Foundation complete |
| **Phase** | Build |
| **Status** | In Progress |

### Work Completed This Session
- ✅ Created directory structure
- ✅ Initialized navigation files (README, MRD, CLAUDE)
- ✅ Created EPIC-01
- ✅ Built SoT library (11 files)
- ✅ Created initial IDs (X total)
- ✅ Configured tools

### Stopped At
Foundation setup complete. Ready to begin methodology content development.

### Next Session Should
1. Expand initial IDs with full specifications
2. Create additional patterns and principles
3. Begin validation planning (VAL-XXX)
```

**Checkpoint**:
- [ ] Section 0 updated with current state
- [ ] Work completed list accurate
- [ ] Next steps documented

---

## What You've Accomplished

After completing this tutorial, you have:

✅ **Foundation Established**:
- Complete directory structure
- 3 navigation files (README, MRD, CLAUDE)
- 1 active EPIC tracking your work
- 11 SoT files ready for IDs
- Initial ID set demonstrating the methodology

✅ **Tools Configured**:
- Session validator working
- Configuration files in place
- Ready for automation

✅ **Process Demonstrated**:
- Used GHM-M to set up GHM-M
- Followed session protocols
- Tracked work in EPIC
- Created IDs following prefix conventions

✅ **Ready for v0.4 Foundation Gate**:
- Your methodology is at v0.1 Spark → v0.4 Foundation transition
- Core structure in place
- Can now focus on content development

---

## Next Steps

### Immediate (Finish Foundation):
1. **Expand IDs**: Add full specifications to your starter IDs
2. **Cross-reference**: Link related IDs bidirectionally
3. **Create ID Registry**: Document all IDs in `.codex/ID_REGISTRY.md`
4. **Update README**: Add active IDs and current status

### Short-term (Advance to v0.6):
1. **Develop Content**: Create patterns, workflows, guides
2. **Begin Validation**: Use VAL-000 (meta-application) or pilot projects
3. **Gather Feedback**: Collect PF-XXX from early practitioners
4. **Refine**: Update IDs based on validation findings

### Long-term (Reach v1.0):
1. **Complete Documentation**: All guides, workflows, principles
2. **Polish**: Consistency check, cross-reference validation
3. **Publish**: Execute PUB-XXX publication strategy
4. **Track Adoption**: Monitor practitioner journeys (PJ-XXX)

---

## Common Questions

### Q: Do I need to use all 13 ID prefixes?

**A**: No. Start with the ones you need:
- **Essential**: MP, PAT, COMP, PJ (principles, patterns, components, journeys)
- **Recommended**: VAL, TEMP, WF (validation, templates, workflows)
- **As Needed**: Others as your methodology grows

### Q: Can I use GHM-M for non-methodology projects?

**A**: GHM-M is specifically adapted for methodology development. For product development, use standard GHM. For other documentation needs, consider whether the ID system and progressive documentation model fit your use case.

### Q: How do I handle changes to IDs?

**A**: Never delete IDs. Instead:
1. Update the ID content in its SoT file
2. Track the change in EPIC Section 3A
3. Update cross-references
4. If deprecating, mark status as "Deprecated" and point to replacement

### Q: What if I don't know all my principles yet?

**A**: That's expected! Start with your current understanding:
- v0.1 Spark: Rough ideas
- v0.4 Foundation: Initial principles defined
- v0.6 Validation: Principles tested and refined
- v0.8 Polish: Principles finalized
- v1.0 Launch: Stable principles published

This is [progressive documentation](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002) in action.

### Q: Can I customize GHM-M for my needs?

**A**: Yes! GHM-M itself is a variant of GHM. You can:
- Add custom ID prefixes (update config file)
- Modify templates to suit your style
- Adapt workflows for your process
- Change terminology if needed

Just maintain the core principles: reference not duplicate ([MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)), progressive documentation ([MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002)), and ID-based context ([MP-003](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-003)).

---

## Troubleshooting

### Problem: Session validation failing

**Symptoms**: `python tools/validate_sessions.py` returns errors

**Solution**:
1. Check Section 0 has all required subsections:
   - Current Session table
   - Work Completed This Session
   - Stopped At
   - Next Session Should
2. Verify date format is YYYY-MM-DD
3. Ensure Section 0 header is exactly: `## 0. Session State`

### Problem: Cross-references not working

**Symptoms**: Markdown links to IDs are broken

**Solution**:
1. Verify ID exists in target SoT file
2. Check file path is relative to current file
3. Use correct anchor format: `#mp-001` (lowercase, with hyphen)
4. Example: `[MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001)`

### Problem: Not sure where to create an ID

**Symptoms**: Unsure which SoT file should own a new ID

**Solution**:
1. Consult [UNIQUE_ID_SYSTEM.md](../active/workflows/UNIQUE_ID_SYSTEM.md) prefix guide
2. Ask: "What is the primary purpose of this artifact?"
3. If still unclear, start in `temp/` and move later

---

## Resources

### Core Documentation
- [MRD_VERSION_LIFECYCLE.md](../active/workflows/MRD_VERSION_LIFECYCLE.md) - Lifecycle gates (WF-001)
- [UNIQUE_ID_SYSTEM.md](../active/workflows/UNIQUE_ID_SYSTEM.md) - ID system guide
- [tools/README.md](../tools/README.md) - Tool documentation

### SoT Files (Examples)
- [METHODOLOGY_PRINCIPLES.md](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md) - See MP-001, MP-002, MP-003
- [PATTERNS.md](../active/source_of_truth/PATTERNS.md) - See PAT-001, PAT-002, PAT-003
- [COMPONENTS.md](../active/source_of_truth/COMPONENTS.md) - See COMP-001, COMP-002, COMP-003

### Templates
- `templates/methodology/` - MRD, README, CLAUDE templates
- `templates/epics/` - EPIC template
- `templates/source_of_truth/` - 11 SoT file templates

### Example: GHM-M Itself
- See `GHM-M/` directory for a complete working example
- Review `EPIC-01-foundation.md` to see GHM-M applied to itself (VAL-000)

---

## Feedback

This guide is GUIDE-001. If you have feedback:

1. **Found an error**: Create PF-XXX entry in your practitioner feedback
2. **Have a suggestion**: Same - use PF-XXX
3. **Need clarification**: Note in your temp/ folder for later refinement

---

**Guide ID**: GUIDE-001
**Status**: Active
**Version**: 1.0
**Related IDs**:
- [MP-001](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-001) - Reference not duplicate
- [MP-002](../active/source_of_truth/METHODOLOGY_PRINCIPLES.md#mp-002) - Progressive documentation
- [COMP-001](../active/source_of_truth/COMPONENTS.md#comp-001) - 3+1+SoT+Temp stack
- [COMP-002](../active/source_of_truth/COMPONENTS.md#comp-002) - ID system
- [PJ-001](../active/source_of_truth/PRACTITIONER_JOURNEYS.md#pj-001) - First-time adoption journey
- [WF-001](../active/workflows/MRD_VERSION_LIFECYCLE.md) - MRD lifecycle

**Last Updated**: 2025-12-26
