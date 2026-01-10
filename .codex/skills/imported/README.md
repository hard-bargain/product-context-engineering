# Imported Skills (GHM Upstream)

**Purpose:** Direct imports from Gear Heart Methodology that work as-is for IBM teams.

## Current Status
- **GHM Source:** https://github.com/mattgierhart/PRD-driven-context-engineering
- **Last Sync:** 2025-01-07
- **Imported Skills:** 0 (initial setup)

## Import Strategy

### What We Import
- **General-purpose skills** that work for individual contributors
- **Methodology-agnostic skills** (file validation, ID tracking, etc.)
- **Proven skills** with clear documentation and examples

### What We Adapt Instead
- **Single-user focused** skills → Move to `../adapted/` with team extensions
- **GHM-specific workflows** → Adapt for ACE methodology differences
- **Enterprise gaps** → Add security/compliance layers

## Directory Structure

Each imported skill follows GHM's original structure:
```
skill-name/
├── SKILL.md              # Original GHM skill file
├── scripts/              # Any bundled scripts (if present)
└── references/           # Supporting documentation (if present)
```

## Usage

Imported skills work exactly as designed in GHM:
- **Individual productivity** patterns
- **PRD-focused workflows** (compatible with our multi-team PRD)
- **Standard file operations** (validation, formatting, etc.)

## Update Process

1. **Monitor GHM repository** for new/updated skills
2. **Evaluate compatibility** with ACE methodology
3. **Import directly** if no adaptation needed
4. **Document source** in skill metadata
5. **Update manifest** with new imports

## Next Steps

1. **Identify 2-3 GHM skills** to import as proof of concept
2. **Test compatibility** with Claude Desktop
3. **Validate workflows** work with IBM ACE structure
4. **Set up sync process** for ongoing updates

---

**Coming Next:** Initial GHM skill imports for testing and validation.
