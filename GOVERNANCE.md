# Governance & Approval Processes
## ACE Methodology Governance for IBM Context Engineering

**Purpose:** Define who can update what, approval processes, and governance for maintaining the ACE structure  
**Version:** 1.0  
**Last Updated:** 2026-01-06  
**Owner:** [Product Lead / Team Lead]

---

## Overview

The ACE methodology relies on accurate, up-to-date information in the Source of Truth (SoT) files. This document defines:
- Who owns each file
- Who can make updates
- What requires approval
- Review and sign-off processes
- Escalation paths

---

## File Ownership & Approval Matrix

### Source of Truth Files

| File | Primary Owner | Can Update | Requires Approval | Approver |
|------|--------------|------------|-------------------|----------|
| **DECISIONS.md** | Product Lead | Product team, Leadership | Yes (for DEC-XXX) | Product Lead + relevant function lead |
| **FEATURES.md** | Product Manager | Product, Engineering, Design | Yes (for new FEAT-XXX) | Product Manager |
| **TECHNICAL.md** | Engineering Lead | Engineering team | Yes (for TECH-XXX) | Engineering Lead |
| **MARKET.md** | Product Marketing | Product, Marketing | Yes (for MKT-XXX) | Product Marketing Lead |
| **METRICS.md** | Product Manager | Product, Analytics | Yes (for new MET-XXX) | Product Manager + Analytics Lead |
| **TEAM.md** | Team Lead / HR | Team leads | Yes (always) | Team Lead |
| **RELEASES.md** | Release Manager | Product, Engineering | Yes (for REL-XXX) | Release Manager + Product Lead |

### Navigation Files

| File | Primary Owner | Can Update | Requires Approval | Approver |
|------|--------------|------------|-------------------|----------|
| **PRD.md** | Product Lead | Product team | Yes (always) | Product Lead |
| **README.md** | Product Manager | Anyone (status updates) | No (for status), Yes (for structure) | Product Manager |
| **CLAUDE.md** | Methodology Owner | Methodology team | Yes (always) | Methodology Owner |

### Active Work

| File | Primary Owner | Can Update | Requires Approval | Approver |
|------|--------------|------------|-------------------|----------|
| **EPIC-XX.md** | Epic Owner | Epic team members | No (for progress), Yes (for scope) | Epic Owner |
| **SoT files** | See above | See above | See above | See above |

---

## AI Agent Governance

### IBM BOB Mode Restrictions

AI agents working through IBM BOB must respect mode-specific constraints:

| Mode | File Editing | MCP/Browser Access | Typical Use Cases |
|------|-------------|-------------------|-------------------|
| **Code** | ✅ Markdown only | ❌ No | Update SoT files, documentation |
| **Plan** | ❌ No | ❌ No | Design structure, plan transitions |
| **Advance** | ✅ Full access | ✅ Yes | Research, validation, complex updates |
| **Ask** | ❌ No | ❌ No | Explain methodology, answer questions |

**Enforcement:** IBM BOB automatically enforces these restrictions. See `.bob/rules-*/AGENTS.md` for complete mode-specific rules.

### Codex Skills Usage Guidelines

When using Codex skills (`.codex/skills/`), agents must:

1. **Respect File Ownership**
   - Skills requiring SoT updates must follow approval matrix above
   - Use temp/brainstorm/ for drafts requiring approval
   - Never bypass approval processes

2. **Follow Mode Constraints**
   - Skills requiring file editing: Use Code or Advance mode only
   - Skills requiring research: Use Advance mode only
   - Skills for planning: Compatible with Plan mode

3. **Maintain Quality Standards**
   - Use quality-validator skill before committing major changes
   - Follow 4-gate content filtering (Product Impact, Gate Relevance, Team Universal, Durability)
   - Validate cross-references and ID integrity

4. **Document AI-Assisted Changes**
   - Commit messages should indicate AI assistance: "AI-assisted: [description]"
   - Include skill used if applicable: "Using ace-context-manager: Extract decisions from PRD"
   - Human review required before pushing to main branch

### AI Agent Approval Requirements

| Change Type | AI Can Draft | Human Approval Required | Approver |
|------------|--------------|------------------------|----------|
| Status updates | ✅ Yes, can commit | ❌ No | N/A |
| New ID entries | ✅ Yes, draft only | ✅ Yes | Per approval matrix |
| Structural changes | ✅ Yes, draft only | ✅ Yes | Product Lead + Methodology Owner |
| Major decisions | ✅ Yes, draft only | ✅ Yes | Multi-stakeholder per matrix |

### Best Practices for AI-Assisted Work

**DO:**
- ✅ Use AI to draft content in temp/brainstorm/
- ✅ Have AI extract and organize existing information
- ✅ Use AI for quality validation and consistency checks
- ✅ Let AI suggest improvements to structure and organization
- ✅ Use AI to maintain cross-references and ID integrity

**DON'T:**
- ❌ Let AI commit major decisions without human review
- ❌ Bypass approval processes with AI automation
- ❌ Use AI to make strategic decisions autonomously
- ❌ Allow AI to modify governance or approval processes
- ❌ Skip human validation of AI-generated content

### Escalation for AI-Related Issues

**If AI makes inappropriate changes:**
1. Revert the commit immediately
2. Review what went wrong
3. Update AI guidance (AGENTS.md, CLAUDE.md, or skill documentation)
4. Notify team of the issue and resolution

**If AI guidance conflicts with governance:**
1. Human governance rules take precedence
2. Update AI documentation to align with governance
3. Escalate to Methodology Owner for resolution

---

## Update Types & Approval Requirements

### Type 1: Status Updates (No Approval Needed)
**Examples:**
- Updating epic progress (X% complete)
- Marking features as "In Progress" or "Done"
- Adding metrics data
- Updating "This Week's Priorities" in README
- Adding notes to existing entries

**Process:**
1. Make the update
2. Commit with clear message
3. Push to branch
4. No approval needed

**Who Can Do This:**
- Anyone on the team for their area of responsibility

### Type 2: New ID Entries (Approval Required)
**Examples:**
- Adding new DEC-XXX decision
- Creating new FEAT-XXX feature
- Adding new TECH-XXX technical decision
- Creating new MET-XXX metric

**Process:**
1. Draft the entry in temp/brainstorm/
2. Share with approver for review
3. Get approval (Slack/email/meeting)
4. Add to appropriate SoT file
5. Commit with approval reference
6. Push to branch

**Who Can Do This:**
- File owner or designated team members
- Must get approval from designated approver

### Type 3: Structural Changes (Approval Required)
**Examples:**
- Changing file organization
- Modifying ID system
- Adding new SoT files
- Changing navigation structure

**Process:**
1. Propose change in temp/brainstorm/
2. Discuss with team
3. Get approval from Product Lead + Methodology Owner
4. Implement change
5. Update documentation
6. Announce to team

**Who Can Do This:**
- Methodology Owner
- Must get team consensus

### Type 4: Major Decisions (Multi-Level Approval)
**Examples:**
- Strategic product decisions (DEC-XXX)
- Major technical architecture changes (TECH-XXX)
- Go-to-market strategy changes
- Team structure changes (TEAM-XXX)

**Process:**
1. Draft decision in temp/brainstorm/
2. Circulate for feedback
3. Present in team meeting
4. Get approval from:
   - Primary approver (see matrix)
   - Affected function leads
   - Product Lead (if strategic)
5. Document in appropriate SoT file
6. Announce decision to team

**Who Can Do This:**
- Leadership team
- Requires multi-stakeholder approval

---

## Detailed Approval Processes

### Process A: Adding a New Decision (DEC-XXX)

**When:** Team makes a strategic or product decision that should be documented

**Steps:**
1. **Draft** (Decision maker)
   - Use temp/brainstorm/decision-draft.md
   - Include: Context, Decision, Rationale, Alternatives, Implications
   - Assign next DEC-XXX number

2. **Review** (Relevant stakeholders)
   - Share draft with affected teams
   - Gather feedback (24-48 hours)
   - Revise as needed

3. **Approval** (Product Lead + Function Lead)
   - Present in leadership meeting or async
   - Get explicit approval from:
     - Product Lead (always)
     - Relevant function lead (Engineering, Design, Marketing, etc.)
   - Document approval in commit message

4. **Document** (Decision maker)
   - Add to DECISIONS.md with DEC-XXX
   - Cross-reference related IDs
   - Commit: "feat(decisions): Add DEC-XXX [decision title] - Approved by [names]"

5. **Announce** (Decision maker)
   - Post in team Slack channel
   - Link to the decision in DECISIONS.md
   - Highlight implications for team

**Timeline:** 2-5 days depending on complexity

### Process B: Adding a New Feature (FEAT-XXX)

**When:** New feature is proposed or approved for development

**Steps:**
1. **Draft** (Product Manager)
   - Use temp/brainstorm/feature-draft.md
   - Include: User value, Description, Acceptance criteria, Dependencies
   - Assign next FEAT-XXX number

2. **Review** (Cross-functional)
   - Engineering: Technical feasibility
   - Design: Design requirements
   - Product: Priority and scope
   - Gather feedback (1-2 days)

3. **Approval** (Product Manager)
   - Get explicit approval from Product Manager
   - Ensure alignment with roadmap
   - Confirm resource availability

4. **Document** (Product Manager)
   - Add to FEATURES.md with FEAT-XXX
   - Link to related TECH-XXX, MET-XXX
   - Create Jira ticket if needed
   - Commit: "feat(features): Add FEAT-XXX [feature name] - Approved by [PM name]"

5. **Track** (Epic Owner)
   - Add to relevant EPIC-XX.md
   - Assign to team member
   - Set timeline

**Timeline:** 1-3 days

### Process C: Technical Decision (TECH-XXX)

**When:** Major technical decision needs to be documented

**Steps:**
1. **Draft** (Engineering Lead or Engineer)
   - Use temp/brainstorm/tech-decision-draft.md
   - Include: Problem, Solution, Alternatives, Trade-offs
   - Assign next TECH-XXX number

2. **Review** (Engineering Team)
   - Share in engineering channel
   - Technical review (2-3 days)
   - Address concerns

3. **Approval** (Engineering Lead)
   - Get explicit approval from Engineering Lead
   - Ensure alignment with architecture
   - Consider long-term implications

4. **Document** (Decision maker)
   - Add to TECHNICAL.md with TECH-XXX
   - Link to affected FEAT-XXX
   - Update architecture docs if needed
   - Commit: "feat(technical): Add TECH-XXX [decision title] - Approved by [Eng Lead]"

5. **Communicate** (Decision maker)
   - Post in engineering channel
   - Update team in standup
   - Document in code if applicable

**Timeline:** 2-5 days

### Process D: Team Structure Changes (TEAM-XXX)

**When:** Team structure, roles, or responsibilities change

**Steps:**
1. **Propose** (Team Lead / HR)
   - Draft change in temp/brainstorm/
   - Include rationale and impact

2. **Review** (Leadership)
   - Discuss in leadership meeting
   - Consider impact on all teams
   - Get consensus

3. **Approval** (Team Lead + HR)
   - Get explicit approval from Team Lead
   - HR sign-off if needed
   - Document approval

4. **Document** (Team Lead)
   - Update TEAM.md with TEAM-XXX
   - Update org chart
   - Update responsibilities
   - Commit: "feat(team): Update TEAM-XXX [change description] - Approved by [Team Lead]"

5. **Announce** (Team Lead)
   - Announce to full team
   - Update team meeting
   - Answer questions

**Timeline:** 1-2 weeks (includes HR processes)

---

## RACI Matrix for SoT Files

### DECISIONS.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Product Lead** | ✓ | ✓ | - | - |
| **Function Leads** | ✓ | - | ✓ | ✓ |
| **Product Manager** | ✓ | - | ✓ | ✓ |
| **Team Members** | - | - | ✓ | ✓ |

### FEATURES.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Product Manager** | ✓ | ✓ | - | - |
| **Engineering Lead** | - | - | ✓ | ✓ |
| **Design Lead** | - | - | ✓ | ✓ |
| **Engineers** | ✓ (updates) | - | ✓ | ✓ |
| **Designers** | ✓ (updates) | - | ✓ | ✓ |

### TECHNICAL.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Engineering Lead** | ✓ | ✓ | - | - |
| **Engineers** | ✓ | - | ✓ | ✓ |
| **Product Manager** | - | - | ✓ | ✓ |
| **DevOps** | ✓ | - | ✓ | ✓ |

### MARKET.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Product Marketing** | ✓ | ✓ | - | - |
| **Product Manager** | ✓ | - | ✓ | ✓ |
| **Sales** | - | - | ✓ | ✓ |
| **Customer Success** | - | - | ✓ | ✓ |

### METRICS.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Product Manager** | ✓ | ✓ | - | - |
| **Analytics Lead** | ✓ | - | ✓ | ✓ |
| **Engineering** | ✓ (instrumentation) | - | ✓ | ✓ |
| **Leadership** | - | - | ✓ | ✓ |

### TEAM.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Team Lead** | ✓ | ✓ | - | - |
| **HR** | ✓ | - | ✓ | ✓ |
| **Function Leads** | - | - | ✓ | ✓ |
| **All Team Members** | - | - | - | ✓ |

### RELEASES.md

| Role | Responsible | Accountable | Consulted | Informed |
|------|------------|-------------|-----------|----------|
| **Release Manager** | ✓ | ✓ | - | - |
| **Product Manager** | ✓ | - | ✓ | ✓ |
| **Engineering Lead** | ✓ | - | ✓ | ✓ |
| **All Teams** | - | - | ✓ | ✓ |

---

## Escalation Paths

### Level 1: File Owner
**For:** Routine updates, clarifications, minor changes

**Contact:** File owner (see matrix above)  
**Response Time:** 1 business day  
**Resolution:** Owner approves or provides feedback

### Level 2: Function Lead
**For:** Cross-functional issues, priority conflicts, resource constraints

**Contact:** Relevant function lead (Engineering, Product, Design, etc.)  
**Response Time:** 2 business days  
**Resolution:** Function lead makes decision or escalates

### Level 3: Product Lead
**For:** Strategic decisions, major changes, unresolved conflicts

**Contact:** Product Lead  
**Response Time:** 3 business days  
**Resolution:** Product Lead makes final decision

### Level 4: Leadership Team
**For:** Company-wide impact, major strategic shifts, budget implications

**Contact:** Leadership team meeting  
**Response Time:** 1 week (next leadership meeting)  
**Resolution:** Leadership consensus decision

---

## Communication Norms

### When to Update SoT Files

**Daily:**
- Epic progress updates
- Feature status changes
- Blocker documentation

**Weekly:**
- README.md "This Week's Priorities"
- Metrics data updates
- Team availability changes

**As Needed:**
- New decisions (DEC-XXX)
- New features (FEAT-XXX)
- Technical decisions (TECH-XXX)
- Market insights (MKT-XXX)

**Monthly:**
- Team structure review (TEAM.md)
- Metrics review (METRICS.md)
- Release retrospectives (RELEASES.md)

### Announcement Channels

**For All Updates:**
- Commit message must be clear and descriptive
- Include approval reference if applicable

**For New IDs (DEC, FEAT, TECH, etc.):**
- Post in relevant Slack channel
- Link to the entry in SoT file
- Tag affected team members
- Highlight key implications

**For Major Decisions:**
- Announce in team all-hands
- Send email summary
- Post in multiple channels
- Schedule Q&A if needed

---

## Review Cycles

### Weekly Review
**Who:** File owners  
**What:** Check for outdated information, update statuses  
**Time:** 15 minutes per file

### Monthly Review
**Who:** Product Lead + Function Leads  
**What:** Review all SoT files for accuracy and completeness  
**Time:** 1 hour meeting

### Quarterly Review
**Who:** Full team  
**What:** Review methodology effectiveness, suggest improvements  
**Time:** 2 hour workshop

---

## Conflict Resolution

### If Two People Claim Ownership
1. Check this GOVERNANCE.md for designated owner
2. If unclear, escalate to Product Lead
3. Product Lead assigns ownership
4. Update GOVERNANCE.md if needed

### If Approval is Delayed
1. Remind approver (Slack/email)
2. If no response in 2 days, escalate to their manager
3. If urgent, escalate to Product Lead immediately
4. Document delay and resolution

### If Disagreement on Content
1. Discuss in relevant channel (Slack)
2. If no consensus, schedule 30-min meeting
3. If still no consensus, escalate to next level
4. Document decision and rationale

---

## Onboarding New Team Members

### Week 1: Read-Only Access
- New member reads all SoT files
- Understands structure and IDs
- Asks questions in onboarding channel
- No update permissions yet

### Week 2: Guided Updates
- New member makes first updates with mentor
- Learns approval processes
- Practices using IDs
- Gets feedback on commits

### Week 3+: Full Access
- New member can make updates in their area
- Follows approval processes
- Contributes to SoT maintenance
- Helps onboard next new member

---

## Audit Trail

### All Updates Must Include:
- Clear commit message
- Reference to approval (if required)
- Link to related IDs
- Date of update
- Name of updater

### Commit Message Format:
```
<type>(<scope>): <description> - Approved by <name>

Examples:
feat(decisions): Add DEC-015 API architecture - Approved by Jane Smith
fix(features): Update FEAT-023 acceptance criteria - Approved by John Doe
docs(team): Update TEAM-003 engineering team - Approved by Sarah Chen
```

### Git History as Audit Trail
- All changes tracked in git
- Can see who changed what when
- Can revert if needed
- Provides accountability

---

## Enforcement

### Violations
**Minor:** Update without proper commit message
- **Action:** Friendly reminder, ask to amend commit

**Moderate:** Update without required approval
- **Action:** Revert change, require proper approval process

**Major:** Unauthorized structural changes
- **Action:** Revert immediately, escalate to Product Lead

### Accountability
- File owners responsible for their files
- Product Lead responsible for overall governance
- All team members responsible for following processes

---

## Continuous Improvement

### Feedback Mechanisms
- Monthly governance review in team meeting
- Quarterly survey on process effectiveness
- Open Slack channel for suggestions
- Regular retrospectives

### Process Updates
- Governance processes can be updated
- Requires Product Lead approval
- Must be announced to full team
- Update this document with version history

---

## Quick Reference

### "Can I update this?"

1. **Check the matrix** above for your file
2. **Determine update type** (Status, New ID, Structural, Major)
3. **Follow the process** for that type
4. **Get approval** if required
5. **Commit with clear message**
6. **Announce** if it's a new ID or major change

### "Who do I ask about X?"

- **Decisions:** Product Lead
- **Features:** Product Manager
- **Technical:** Engineering Lead
- **Market:** Product Marketing
- **Metrics:** Product Manager + Analytics
- **Team:** Team Lead
- **Releases:** Release Manager

### "How long will approval take?"

- **Status updates:** Immediate (no approval)
- **New IDs:** 1-3 days
- **Structural changes:** 1-2 weeks
- **Major decisions:** 2-5 days

---

## Version History

- **v1.0** (2026-01-06): Initial governance document

---

**Document Owner:** [Product Lead]  
**Last Review:** 2026-01-06  
**Next Review:** 2026-02-06  
**Questions:** Contact [Product Lead] or post in #ace-methodology Slack channel