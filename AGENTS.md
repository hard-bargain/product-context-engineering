# AGENTS.md

**Version:** 1.1
**Last Updated:** 2026-01-09

---

## 🔔 Agent Implementation Status

**Agent System:** ⏸️ PAUSED - Awaiting upstream GHM agent specifications
**Skills System:** ✅ COMPLETE - All 31 skills production-ready
**What Works Now:** AURA agent + complete skills library available for use
**Blocking:** Waiting for Matt Gierhart to complete agent codification in GHM repository

📄 See `.codex/agents/IMPLEMENTATION_STATUS.md` for complete details.

---

This file provides guidance to agents when working with code in this repository.

## Repository Purpose
This is a **documentation and methodology repository** for product context engineering - NOT a code project. It contains guides, processes, and documentation for working with AI and cross-discipline product development teams throughout the product lifecycle.

## Repository Structure
- **README.md**: High-level overview of the product context engineering methodology
- **.gitignore**: Only excludes .DS_Store files

## Key Non-Obvious Information

### Documentation Focus
- This is a **process/methodology repository**, not a software project
- No build tools, test frameworks, or code compilation required
- Content is pure documentation (Markdown files)
- Changes typically involve updating guides, adding new documentation, or refining processes

### Working with This Repository
- No package managers or dependencies to install
- No build/test/lint commands - standard Markdown editing applies
- Changes are documentation updates, not code changes
- Pull requests should focus on clarity, accuracy, and completeness of documentation

## AI Agent Systems

### Codex Skills System (`.codex/`)
Product development skills for AI agents working with the ACE (AI Context Engineering) methodology:
- **`skills/ACE_SKILLS_MANIFEST.yaml`**: Complete skill catalog organized by the 10-gate ACE methodology
- **`skills/ace-native/`**: ACE-specific skills (context manager, phase transitions, quality validation, team coordination)
- **`skills/imported/`**: General-purpose skills (file validation, ID tracking, markdown processing)
- **`skills/prd-workflow/`**: 24 gate-specific workflow skills covering all phases of product development

### Agent System (`.codex/agents/`)
Specialized AI agents for different phases of product development:
- **`agents/primary/`**: Primary orchestrator agents (AURA for research/strategy, APOLLO for build, JANUS for GTM)
- **`agents/sub-agents/`**: Specialized agents for specific tasks
- **`AGENT_SKILL_MATRIX.md`**: Comprehensive mapping of agents to skills
- **`COORDINATION_PROTOCOLS.md`**: Guidelines for agent handoffs and collaboration

See `.codex/agents/README.md` and `.codex/skills/README.md` for complete documentation.

### ACE Methodology Integration
The repository implements the **3+1+SoT+Temp** architecture:
- **3 Navigation Files**: README.md, PRD.md, CLAUDE.md
- **1 Active Directory**: `active/` for current work
- **Source of Truth (SoT)**: `active/source_of_truth/` with 7 core files (DECISIONS, FEATURES, TECHNICAL, MARKET, METRICS, TEAM, RELEASES)
- **Temp Workspace**: `temp/` for experiments and brainstorming

See `methodology/ACE_METHODOLOGY_SUMMARY.md` for the complete 10-gate product lifecycle framework.

## Best Practices for AI Agents

### When Working in This Repository
1. **Read first**: Always read existing documentation before proposing changes
2. **Maintain consistency**: Follow existing formatting, structure, and terminology
3. **Update cross-references**: When adding new content, update related files that reference it
4. **Use the ID system**: Reference existing IDs rather than duplicating information
5. **Preserve context**: Ensure changes maintain the narrative flow and don't orphan content

### Skills Usage
- Reference specific skills from `.codex/skills/` when working on product development tasks
- Follow the 10-gate lifecycle structure when creating or updating methodology content
- Use ACE-native skills for cross-discipline context coordination

### Agent Coordination
- Follow protocols in `.codex/agents/COORDINATION_PROTOCOLS.md` for multi-agent workflows
- Check `.codex/agents/AGENT_SKILL_MATRIX.md` to identify which agent is best suited for specific tasks
- Document handoffs clearly when transitioning between agents
