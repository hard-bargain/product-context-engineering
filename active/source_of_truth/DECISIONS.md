# Decisions - Source of Truth

> **ID Prefix:** DEC-XXX (Decisions)
>
> **Purpose:** Strategic and tactical decisions for ACE methodology implementation
>
> **Last Updated:** 2025-01-08

---

## DEC-001: GHM-Compatible Skills Architecture
**Status:** Active  
**Date:** 2025-01-08  
**Layer:** Strategic  
**Owner:** Gordon (Account Design Lead)

### Context
Need to integrate Agent Skills with IBM ACE methodology while maintaining compatibility with upstream Gear Heart Methodology (GHM) for future updates and community collaboration.

### Decision
Use hybrid skills architecture with three categories:
- **imported/** - GHM skills used as-is
- **adapted/** - GHM skills extended for team collaboration  
- **ace-native/** - IBM-specific ACE methodology skills

### Rationale
- Maintains compatibility with GHM upstream repository
- Enables clear separation of concerns
- Allows for easy updates from GHM community
- Provides structure for IBM enterprise extensions
- Supports both individual and team workflows

### Alternatives Considered
- **Pure ACE approach:** Would lose GHM community benefits
- **Pure GHM approach:** Wouldn't meet IBM team collaboration needs  
- **Fork GHM:** Would create maintenance burden and lose upstream updates

### Implications
- Can leverage GHM skills and updates directly
- Need to maintain compatibility testing for GHM changes
- Must document IBM-specific extensions clearly
- Requires version management across skill categories

### Success Criteria
- Skills work with Claude Desktop via MCP filesystem access
- GHM skills import and function without modification
- Team collaboration features work across disciplines
- Update process maintains compatibility

### Related IDs
- TECH-001: Skills Directory Structure
- FEAT-001: Context Manager Skill
- TEAM-001: Skills Integration Ownership

---

## DEC-002: Use .codex/skills/ Directory Location  
**Status:** Active  
**Date:** 2025-01-08  
**Layer:** Tactical  
**Owner:** Gordon (Account Design Lead)

### Context
Agent Skills specification supports multiple directory locations, but industry is converging on standard locations for different AI coding assistants.

### Decision
Use `.codex/skills/` as the primary location for ACE methodology skills, following GHM and broader industry patterns.

### Rationale
- Matches GHM repository structure exactly
- Compatible with Claude Code, Codex, and other tools
- Industry standard emerging around this location
- Supports MCP filesystem access patterns
- Maintains professional development workflow

### Alternatives Considered
- **~/.claude/skills/:** User-global location, less project-specific
- **methodology/skills/:** ACE-specific location, breaks compatibility
- **skills/:** Root level, could conflict with other skill systems

### Implications
- Skills are project-scoped and version controlled
- Easy integration with development workflows
- Compatible with existing tools and automation
- Requires MCP filesystem access configuration

### Success Criteria
- Claude Desktop automatically discovers skills
- Skills activate based on task relevance
- Compatible with other Agent Skills implementations
- Works within IBM enterprise security constraints

### Related IDs
- TECH-001: Skills Directory Structure
- DEC-001: GHM-Compatible Architecture
- TECH-002: MCP Filesystem Configuration

---

## DEC-003: Import Proven Skills Before Building Custom
**Status:** Active  
**Date:** 2025-01-08  
**Layer:** Tactical  
**Owner:** Gordon (Account Design Lead)

### Context
Limited development time and need to prove value quickly while building skills infrastructure for ACE methodology.

### Decision
Import and test proven general-purpose skills (file-validator, id-tracker, markdown-processor) before building complex custom skills.

### Rationale
- Validates infrastructure and integration patterns
- Provides immediate value to team workflows
- Reduces risk of building on unproven foundation
- Establishes skill development and testing patterns
- Enables learning from existing skill design

### Alternatives Considered
- **Build custom first:** Higher risk, longer time to value
- **Import everything:** Could introduce incompatible or low-value skills
- **Build everything custom:** Would miss community expertise and patterns

### Implications  
- Can demonstrate working skills system immediately
- Foundation testing reduces risk for custom skills
- Team can provide feedback on skill activation patterns
- Creates baseline for measuring custom skill effectiveness

### Success Criteria
- Imported skills activate and function correctly
- Team finds imported skills useful for current workflows
- Infrastructure supports both simple and complex skills
- Patterns established for building ACE-native skills

### Related IDs
- FEAT-001: Context Manager Skill
- TECH-003: Skill Testing and Validation
- TEAM-002: Skills Usage Training
