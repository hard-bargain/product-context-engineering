# MCP Filesystem Configuration

> **Purpose:** Personal development setup for Claude Desktop MCP integration
> **Category:** Infrastructure Setup (NOT product context)
> **Audience:** Individual developers setting up local environment

---

## Overview

Model Context Protocol (MCP) filesystem access configuration enabling Claude Desktop to read and execute Agent Skills from project directory.

**⚠️ Important:** This is infrastructure setup documentation, not product architecture. This content was originally misclassified in TECHNICAL.md SoT but has been moved here as it's about development tooling, not product components.

## Configuration Details

### MCP Server Setup
- **MCP Server:** Provides filesystem access to Claude Desktop
- **Configuration file:** `claude_desktop_config.json` 
- **Filesystem scope:** Project repository directory
- **Access levels:** Read-only for skills/methodology, read-write for temp/output

### Implementation Steps

1. **Install MCP filesystem server** (Node.js based)
2. **Configure Claude Desktop** to connect to MCP server
3. **Set filesystem scope** to project directory
4. **Test skills discovery** and activation

### Performance Expectations
- File discovery: < 500ms for skill scanning
- File read operations: < 100ms per SKILL.md file
- Directory traversal: Support for nested skill structures
- Concurrent access: Multiple skill loading without conflicts

### Security Considerations
- Sandboxed filesystem access limited to project directory
- No access to system files or sensitive directories
- Skills cannot modify core methodology files
- All operations logged for audit purposes

### Troubleshooting
- Check MCP connection status in Claude Desktop
- Review file access logs through MCP server
- Verify directory permissions for Claude user
- Consult setup guides for common issues

## Why This Was Moved

This content was originally in `TECHNICAL.md` as `TECH-002: MCP Filesystem Configuration` but was moved because:

- **Personal/Environment Specific:** Configuration varies by individual developer setup
- **Infrastructure vs. Product:** About development tooling, not user-facing product architecture
- **Temporary/Setup Context:** Relevant during initial setup, not ongoing product development
- **Tool-Specific:** Tied to specific development tools that may change

## Related Documentation

- [Skills Integration Overview](../README.md)
- [Claude Desktop Setup](../CLAUDE_AI_SETUP.md)
- [Troubleshooting Guide](../TROUBLESHOOTING.md)

---

**Remember:** Keep infrastructure setup separate from product Source of Truth to maintain clarity and prevent context pollution.
