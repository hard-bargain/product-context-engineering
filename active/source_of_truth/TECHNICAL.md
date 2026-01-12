# Technical Components - Source of Truth

> **ID Prefix:** TECH-XXX (Technical)
>
> **Purpose:** Technical architecture and implementation components for ACE methodology
>
> **Last Updated:** 2025-01-08

---

## TECH-001: Skills Directory Structure
**Status:** Active  
**Date:** 2025-01-08  
**Layer:** Operational  
**Owner:** Gordon (Account Design Lead)

### Purpose
Organized directory structure for Agent Skills supporting ACE methodology with GHM compatibility and enterprise team collaboration.

### Architecture
```
.codex/skills/
├── README.md                    # Main skills documentation
├── ACE_SKILLS_MANIFEST.yaml    # Version and compatibility tracking
├── imported/                   # GHM skills used as-is
│   ├── file-validator/
│   ├── id-tracker/
│   └── markdown-processor/
├── adapted/                    # GHM skills + team extensions
└── ace-native/                 # ACE-specific patterns
    └── ace-context-manager/
```

### Implementation Details
- **Progressive disclosure** - Skills load metadata first, full content on activation
- **Agent Skills specification** compliance for cross-tool compatibility
- **GHM compatibility tracking** via manifest file
- **Separation of concerns** between imported, adapted, and native skills

### Dependencies
- Claude Desktop with MCP filesystem access
- Git repository within allowed filesystem scope
- Agent Skills specification compliance
- ACE methodology file structure (3+1+SoT+Temp)

### Performance Requirements
- Skill discovery: < 1 second on startup
- Skill activation: < 2 seconds for complex skills
- File operations: Work within Claude Desktop constraints
- Memory efficiency: Progressive loading prevents context window overflow

### Security Considerations
- Local filesystem access only (no external network calls)
- Skills execute within Claude's security sandbox
- No sensitive data stored in skill files
- Git version control for audit trail

### Monitoring & Observability
- Manifest tracks skill inventory and update history
- README files document usage patterns and troubleshooting
- Git history provides change tracking and rollback capability

### Related IDs
- DEC-001: GHM-Compatible Skills Architecture
- DEC-002: Use .codex/skills/ Directory Location
- FEAT-001: Context Manager Skill

---

## TECH-002: MCP Filesystem Configuration
**Status:** Active  
**Date:** 2025-01-08  
**Layer:** Operational  
**Owner:** Gordon (Account Design Lead)

### Purpose
Model Context Protocol (MCP) filesystem access configuration enabling Claude Desktop to read and execute Agent Skills from project directory.

### Architecture
- **MCP Server:** Provides filesystem access to Claude Desktop
- **Allowed directories:** Project repository within Gordon's filesystem scope
- **Read-only access:** Skills and methodology files
- **Read-write access:** Temporary and output directories

### Implementation Details
- Configuration file: `claude_desktop_config.json` 
- Filesystem scope: `/Users/gordonclines/Projects/ibm-product-context-engineering`
- Skills discovery: Automatic scanning of `.codex/skills/` subdirectories
- Skill activation: On-demand loading of SKILL.md files

### Dependencies
- Claude Desktop application with MCP support
- Node.js MCP filesystem server
- Project repository in allowed filesystem scope
- Proper directory permissions for Claude user

### Performance Requirements
- File discovery: < 500ms for skill scanning
- File read operations: < 100ms per SKILL.md file
- Directory traversal: Support for nested skill structures
- Concurrent access: Multiple skill loading without conflicts

### Security Considerations
- Sandboxed filesystem access limited to project directory
- No access to system files or sensitive directories
- Skills cannot modify core methodology files
- All operations logged for audit purposes

### Monitoring & Observability
- MCP connection status visible in Claude Desktop
- File access logs available through MCP server
- Error handling for permission or path issues
- Troubleshooting documentation in setup guides

### Related IDs
- DEC-002: Use .codex/skills/ Directory Location
- TECH-001: Skills Directory Structure
- TEAM-003: Skills Infrastructure Maintenance

---

## TECH-003: Agent Skills Specification Compliance
**Status:** Active  
**Date:** 2025-01-08  
**Layer:** Operational  
**Owner:** Gordon (Account Design Lead)

### Purpose
Ensure all ACE methodology skills comply with the Agent Skills specification for cross-tool compatibility and professional development workflows.

### Architecture
**SKILL.md Structure:**
- YAML frontmatter with required metadata (name, description)
- Markdown body with progressive disclosure patterns
- Optional supporting directories (scripts/, references/, templates/)

**Metadata Requirements:**
- name: 1-64 chars, lowercase-alphanumeric-hyphens
- description: Max 1024 chars, include clear activation triggers
- Optional: metadata section with author, version, category

### Implementation Details
- **Level 1:** Metadata loaded at startup (~100 tokens per skill)
- **Level 2:** Full instructions loaded when skill activated
- **Level 3:** Supporting files loaded on-demand as referenced
- **Progressive loading:** Prevents context window overflow

### Dependencies
- Agent Skills specification v1.0+ compliance
- Markdown processing for SKILL.md files
- YAML parser for frontmatter processing
- File system access for supporting resources

### Performance Requirements
- Metadata parsing: < 50ms per skill
- Skill activation: < 2 seconds including references
- Context efficiency: < 500 tokens per skill activation
- Memory usage: Progressive loading pattern

### Security Considerations
- No executable code in SKILL.md files
- References limited to local project files
- No external network access from skills
- Malicious instruction filtering by Claude

### Monitoring & Observability
- Skill validation during development
- Activation pattern tracking for optimization
- Error handling for malformed skills
- Usage analytics for skill effectiveness

### Related IDs
- TECH-001: Skills Directory Structure
- FEAT-001: Context Manager Skill
- DEC-003: Import Proven Skills Before Building Custom
