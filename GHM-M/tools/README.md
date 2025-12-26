# GHM-M Tools

> **Purpose**: Automation tools and scripts for GHM-M (Gear Heart Methodology for Methodologies)
>
> **Status**: Phase 4 - Initial tools configured
>
> **Related**: TOOL-001, TOOL-002, TOOL-003

## Available Tools

### TOOL-001: validate_sessions.py

**Purpose**: Validates EPIC Session State compliance (Section 0)

**Usage:**
```bash
# Validate a specific EPIC
python tools/validate_sessions.py --epic active/epics/EPIC-01-foundation.md

# Validate all EPICs
python tools/validate_sessions.py --all

# Strict mode (warnings treated as errors)
python tools/validate_sessions.py --all --strict

# Verbose output
python tools/validate_sessions.py --all --verbose

# JSON output
python tools/validate_sessions.py --all --json
```

**Options:**
- `--epic PATH`: Validate specific EPIC file
- `--all`: Validate all EPICs in active/epics/
- `--epics-dir PATH`: Custom EPIC directory (default: active/epics/)
- `--strict`: Treat warnings as errors
- `--max-stale-days N`: Flag sessions older than N days (default: 7)
- `--verbose, -v`: Show info messages
- `--json`: Output as JSON

**Validates:**
- Section 0 (Session State) presence
- Required subsections: "Stopped At", "Next Session Should"
- Optional subsections: "Files Changed", "Session History"
- Unfilled template placeholders
- Session staleness (configurable threshold)
- Specific file/line references in "Stopped At"
- Actionable items in "Next Session Should"

**Exit Codes:**
- `0`: All validations passed
- `1`: One or more validations failed

---

### TOOL-002: ID Extraction Utilities (Planned)

**Purpose**: Extract and validate IDs from SoT files, generate registry

**Status**: Planned for Phase 4 completion

**Planned Functionality:**
- Scan SoT files for ID definitions (headers matching `## {PREFIX}-{NUMBER}`)
- Extract ID metadata (title, status, relationships)
- Build cross-reference graph
- Detect orphaned IDs (defined but never referenced)
- Detect dangling references (referenced but never defined)
- Auto-generate ID_REGISTRY.md
- Validate bidirectional links

**Planned Usage:**
```bash
# Sync registry from SoT files
python tools/sync_registry.py

# Check cross-references
python tools/check_links.py

# Find orphaned IDs
python tools/find_orphans.py

# Full validation
python tools/validate_all.py
```

---

### TOOL-003: GHM-M Configuration

**Purpose**: Central configuration for GHM-M tools and automation

**Location**: `tools/config/ghm_m_config.yaml`

**Configuration Sections:**
- **ID Patterns**: Regex patterns for 13 ID prefixes
- **ID Metadata**: Name, file, description, color for each prefix
- **SoT Files**: List of Source of Truth file paths
- **Navigation Files**: 3+1 stack (README, MRD, CLAUDE, EPICs)
- **Template Files**: Methodology, EPIC, and SoT templates
- **Graph Styling**: Colors and layout for visualizations
- **Lifecycle Gates**: MRD version lifecycle (v0.1 → v1.0)
- **Session Protocols**: Validation rules for Section 0
- **ID Validation**: Format, uniqueness, cross-reference rules
- **Registry Settings**: Auto-generation, cross-references
- **Output Settings**: Directory, format, timestamps
- **Tool-Specific Settings**: Per-tool configuration
- **Paths**: All relative paths from GHM-M root

**Usage in Python:**
```python
import yaml

with open('tools/config/ghm_m_config.yaml', 'r') as f:
    config = yaml.safe_load(f)

# Access configuration
id_patterns = config['id_patterns']
sot_files = config['sot_files']
```

**Validation:**
```bash
# Check YAML syntax
python -c "import yaml; yaml.safe_load(open('tools/config/ghm_m_config.yaml'))"
```

---

## ID Prefixes (13 Total)

| Prefix | Name | SoT File | Count |
|--------|------|----------|-------|
| PJ-XXX | Practitioner Journeys | PRACTITIONER_JOURNEYS.md | 1 |
| MP-XXX | Methodology Principles | METHODOLOGY_PRINCIPLES.md | 3 |
| PAT-XXX | Patterns | PATTERNS.md | 3 |
| TEMP-XXX | Templates | TEMPLATES.md | 2 |
| VAL-XXX | Validation | VALIDATION.md | 1 |
| PUB-XXX | Publication | PUBLICATION.md | 1 |
| PF-XXX | Practitioner Feedback | PRACTITIONER_FEEDBACK.md | 1 |
| WF-XXX | Workflows | WORKFLOWS.md | 2 |
| GUIDE-XXX | Guides | GUIDES.md | 1 |
| TOOL-XXX | Tools | TOOLS.md | 3 |
| COMP-XXX | Components | COMPONENTS.md | 3 |

**Total IDs**: 21 (as of Phase 3 completion)

---

## Tool Development Status

### Phase 4: Tool Configuration (Current)
- [x] TOOL-003: Configuration file created
- [x] TOOL-001: Session validator adapted and tested
- [ ] TOOL-002: ID utilities (planned)

### Future Tools
- **ID Extraction**: Scan SoT files for IDs
- **Registry Generator**: Auto-generate ID_REGISTRY.md
- **Link Checker**: Validate cross-references
- **Orphan Finder**: Find unused IDs
- **Visualization**: Generate knowledge graphs
- **Template Generator**: Create new files from templates

---

## Dependencies

**Python Version**: 3.8+

**Required Packages** (if any):
```bash
# Currently no external dependencies
# Standard library only: argparse, re, pathlib, datetime
```

**Future Dependencies** (for TOOL-002):
```bash
# Planned for ID utilities and visualizations
pip install pyyaml
pip install graphviz  # For knowledge graph generation
```

---

## Directory Structure

```
tools/
├── README.md                    # This file
├── config/
│   └── ghm_m_config.yaml       # TOOL-003: Central configuration
├── validate_sessions.py         # TOOL-001: Session validator
└── (planned)
    ├── sync_registry.py         # TOOL-002: Registry generator
    ├── check_links.py           # Cross-reference validator
    ├── find_orphans.py          # Orphan ID finder
    └── utils/
        ├── id_parser.py         # ID extraction utilities
        └── graph_generator.py   # Knowledge graph generation
```

---

## Usage Examples

### Validate Session State Before Committing
```bash
# Check if EPIC Section 0 is properly maintained
python tools/validate_sessions.py --all --strict

# If validation passes, safe to commit
git add . && git commit -m "session: [EPIC-XX] ..."
```

### Generate ID Registry (Future)
```bash
# Scan all SoT files and rebuild registry
python tools/sync_registry.py

# Verify no broken links
python tools/check_links.py

# Find IDs that are never referenced
python tools/find_orphans.py
```

### Load Configuration in Custom Scripts
```python
import yaml
from pathlib import Path

# Load GHM-M configuration
config_path = Path('tools/config/ghm_m_config.yaml')
with open(config_path, 'r') as f:
    config = yaml.safe_load(f)

# Access ID patterns
for prefix, pattern in config['id_patterns'].items():
    print(f"{prefix}: {pattern}")

# Access SoT files
for sot_file in config['sot_files']:
    print(f"SoT file: {sot_file}")
```

---

## Integration with Workflows

### Pre-commit Hook (Future)
```bash
#!/bin/bash
# .git/hooks/pre-commit

echo "Validating EPIC Session State..."
python tools/validate_sessions.py --all --strict

if [ $? -ne 0 ]; then
    echo "❌ Session validation failed. Update Section 0 before committing."
    exit 1
fi

echo "✅ Session validation passed"
```

### CI/CD Integration (Future)
```yaml
# .github/workflows/validate.yml
name: Validate GHM-M

on: [push, pull_request]

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Validate Sessions
        run: python tools/validate_sessions.py --all --strict
      - name: Validate IDs
        run: python tools/check_links.py
```

---

## Related Documentation

- **Configuration**: `tools/config/ghm_m_config.yaml`
- **ID Registry**: `.codex/ID_REGISTRY.md`
- **Session Protocols**: `CLAUDE.md` Section 10
- **Tool SoT File**: `active/source_of_truth/TOOLS.md`

---

## Contributing to Tools

When creating new tools:

1. **Follow naming convention**: Use descriptive names (e.g., `sync_registry.py`)
2. **Add to TOOLS.md**: Create new TOOL-XXX entry in SoT file
3. **Update this README**: Document usage and examples
4. **Use configuration**: Load settings from `ghm_m_config.yaml`
5. **Write tests**: Add validation for tool functionality
6. **Document exit codes**: 0 = success, non-zero = failure

---

**Tools Version**: 1.0-M (GHM-M Variant)
**Phase**: 4 (Tool Configuration)
**Last Updated**: 2025-12-26
