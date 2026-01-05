# ACE Setup Guide for Project Bob (Launch Phase)

**Version:** 1.0
**Target Tool:** Project Bob (AI-enabled IDE)
**Product Phase:** Launch
**Setup Time:** 30-60 minutes

---

## Overview

This guide will help you set up AI Context Engineering (ACE) in Project Bob for a product in the Launch phase. You'll create a structured context that optimizes AI assistance for launch activities.

**Launch Phase Context Emphasis:**
- Strategic: 30% (go-to-market strategy, positioning)
- Tactical: 55% (launch execution, campaigns, metrics)
- Operational: 15% (deployment, critical fixes)

---

## Prerequisites

- [ ] Project Bob installed and configured
- [ ] Connected to corporate GitHub account
- [ ] Anthropic models available in Project Bob
- [ ] New repo created (or ready to create)

---

## Setup Process

### Step 1: Create Repository Structure (5 min)

In Project Bob, create this directory structure in your project root:

```
your-product/
├── .claude/
│   └── context/
│       ├── strategic.md
│       ├── tactical.md
│       ├── operational.md
│       └── master-context.md
├── README.md
└── .gitignore
```

**Commands to run in Project Bob terminal:**
```bash
mkdir -p .claude/context
touch .claude/context/strategic.md
touch .claude/context/tactical.md
touch .claude/context/operational.md
touch .claude/context/master-context.md
```

---

### Step 2: Create Strategic Context (10 min)

Copy this template into `.claude/context/strategic.md` and fill in your product details:

```markdown
# Strategic Context — [PRODUCT NAME]

**Last Updated:** [DATE]
**Product Phase:** Launch
**Context Weight:** 30% (Launch phase emphasis)

---

## Product Vision

**Mission:**
[One sentence: What change are you bringing to the world?]

**Vision:**
[2-3 sentences: What does success look like in 12-18 months?]

---

## Target Market

**Primary Customer Segment:**
[Who are you targeting? Be specific: industry, company size, role, etc.]

**Customer Problem:**
[What pain point are you solving?]

**Why Now:**
[Why is this the right time for your solution?]

---

## Positioning & Differentiation

**Core Value Proposition:**
[One sentence: Why should customers choose you?]

**Key Differentiators:**
1. [What makes you different from alternatives?]
2. [Second key differentiator]
3. [Third key differentiator]

**Competitive Landscape:**
- Primary competitors: [List 2-3]
- Our advantage: [How you win]

---

## Launch Strategy

**Launch Date:** [Target date or "Launching now"]

**Go-To-Market Approach:**
[How are you reaching customers? Channels, partnerships, etc.]

**Launch Goals:**
1. [Primary goal: signups, revenue, users, etc.]
2. [Secondary goal]
3. [Third goal if applicable]

**Success Metrics:**
- Week 1: [Target metric]
- Month 1: [Target metric]
- Month 3: [Target metric]

---

## Business Model

**Revenue Model:**
[How do you make money? Pricing approach?]

**Unit Economics:**
- CAC: [Customer acquisition cost, if known]
- LTV: [Lifetime value, if known]
- Target margin: [If applicable]

---

## Strategic Risks

**Top 3 Launch Risks:**
1. [Risk + mitigation strategy]
2. [Risk + mitigation strategy]
3. [Risk + mitigation strategy]

---

## Strategic Decisions Log

**Recent Major Decisions:**

**[DATE]**: [Decision made]
- **Context:** [Why this decision was needed]
- **Decision:** [What we decided]
- **Rationale:** [Why we chose this path]
- **Impact:** [Expected outcome]

[Add more decisions as they happen]

---

**Document Status:** ✅ Active (Launch Phase)
**Next Review:** [Date - typically monthly]
```

**Validation:** Ask Project Bob AI: "What is our target customer and why are we launching now?" — It should give accurate answers from your strategic context.

---

### Step 3: Create Tactical Context (15 min)

Copy this template into `.claude/context/tactical.md` and fill in your launch details:

```markdown
# Tactical Context — [PRODUCT NAME]

**Last Updated:** [DATE]
**Product Phase:** Launch
**Context Weight:** 55% (Launch phase — highest emphasis)

---

## Current Phase: Launch

**Phase Duration:** [Start date] → [Expected end of launch phase]
**Phase Owner:** [Name/role responsible for launch execution]

**Phase Objectives:**
1. [Primary objective: e.g., "Acquire first 100 paying customers"]
2. [Secondary objective: e.g., "Achieve 4.5+ star rating"]
3. [Third objective: e.g., "Generate 50 case study leads"]

---

## Launch Timeline & Milestones

**Launch Sequence:**

| Milestone | Date | Status | Owner |
|-----------|------|--------|-------|
| Beta testing complete | [DATE] | ✅ Done / 🔄 In Progress / ⏳ Pending | [Name] |
| Marketing materials ready | [DATE] | [Status] | [Name] |
| Launch announcement | [DATE] | [Status] | [Name] |
| Product Hunt launch | [DATE] | [Status] | [Name] |
| Sales outreach begins | [DATE] | [Status] | [Name] |
| First customer event | [DATE] | [Status] | [Name] |

---

## Launch Campaigns & Activities

### Campaign 1: [Campaign Name]

**Objective:** [What this campaign aims to achieve]
**Channel:** [Where: Product Hunt, email, ads, etc.]
**Timeline:** [Start → End]
**Target Metrics:** [Specific goals]
**Status:** [In Progress / Planned / Complete]

**Key Messages:**
- [Core message 1]
- [Core message 2]

**Collateral Needed:**
- [ ] [Asset 1: landing page, video, etc.]
- [ ] [Asset 2]

### Campaign 2: [Campaign Name]

[Repeat structure above]

---

## Feature Status (Launch Readiness)

| Feature | Status | Launch Blocker? | Notes |
|---------|--------|-----------------|-------|
| [Feature 1] | ✅ Shipped | No | [Any notes] |
| [Feature 2] | 🔄 Final testing | Yes | [What's remaining] |
| [Feature 3] | ⏳ Post-launch | No | [Planned for v1.1] |

---

## Launch Metrics Dashboard

**Daily Tracking (During Launch):**

| Metric | Target | Current | Trend |
|--------|--------|---------|-------|
| Signups | [Daily target] | [Actual] | 📈 / 📉 / → |
| Conversions | [Target %] | [Actual %] | [Trend] |
| Active users | [Target] | [Actual] | [Trend] |
| Revenue | [Target] | [Actual] | [Trend] |

**Last Updated:** [Date/time]

---

## Cross-Functional Coordination

**Weekly Launch Standup:**
- **When:** [Day/time]
- **Attendees:** [Roles: PM, Marketing, Sales, Eng, etc.]
- **Agenda:** Metrics review, blockers, next 7 days

**Current Cross-Team Dependencies:**

1. **Dependency:** [What's needed]
   - **From:** [Team/person]
   - **For:** [Why it's needed]
   - **By When:** [Deadline]
   - **Status:** [On track / At risk / Blocked]

---

## Active Blockers & Issues

**P0 (Launch Blockers):**

1. **[Issue Title]**
   - **Impact:** [Why this blocks launch]
   - **Owner:** [Who's resolving]
   - **ETA:** [Expected resolution date]
   - **Mitigation:** [What we're doing]

**P1 (High Priority, Non-Blocking):**

[List issues that should be fixed but won't delay launch]

---

## Customer Feedback Loop

**Beta Customer Feedback:**

**Positive Themes:**
- [What customers love]
- [Common praise]

**Pain Points:**
- [What customers struggle with]
- [Common complaints]

**Feature Requests:**
- [Most requested feature 1] — [Frequency: mentioned by X customers]
- [Most requested feature 2] — [Frequency]

**Action Items:**
- [ ] [How we're addressing feedback item 1]
- [ ] [How we're addressing feedback item 2]

---

## Launch Communications

**Internal Updates:**
- **Frequency:** [Daily during launch week, then weekly]
- **Channel:** [Slack #launch, email, etc.]
- **Format:** [Brief update template]

**External Communications:**
- **Press contacts:** [If applicable]
- **Influencer outreach:** [Status]
- **Community engagement:** [Where: Reddit, forums, etc.]

---

## Risk Management

**Launch Risks (from Strategic):**

**[Risk 1 from strategic context]**
- **Likelihood:** High / Medium / Low
- **Monitoring:** [How we're watching for this]
- **Response Plan:** [What we'll do if it happens]

**[Risk 2]**
- [Same structure]

---

## Key Decisions This Phase

**Recent Tactical Decisions:**

**[DATE]**: [Decision]
- **Context:** [What prompted this]
- **Decision:** [What we decided to do]
- **Impact:** [How this affects launch execution]
- **Stakeholders Informed:** [Who knows about this]

[Add decisions as they happen — these are more frequent than strategic decisions]

---

## Next 7 Days (Rolling Window)

**This Week's Focus:**
1. [Top priority 1]
2. [Top priority 2]
3. [Top priority 3]

**Key Deliverables:**
- [ ] [Deliverable 1] — Due [date] — Owner: [name]
- [ ] [Deliverable 2] — Due [date] — Owner: [name]
- [ ] [Deliverable 3] — Due [date] — Owner: [name]

**Meetings/Events:**
- [DATE/TIME]: [Event name and purpose]
- [DATE/TIME]: [Event name and purpose]

---

**Document Status:** ✅ Active (Updated daily/weekly during launch)
**Next Review:** [Date — should be this week]
```

**Validation:** Ask Project Bob AI: "What are our blockers for this week and what's our top priority?" — It should reference your tactical context accurately.

---

### Step 4: Create Operational Context (10 min)

Copy this template into `.claude/context/operational.md`:

```markdown
# Operational Context — [PRODUCT NAME]

**Last Updated:** [DATE]
**Product Phase:** Launch
**Context Weight:** 15% (Launch phase — minimal operational detail)

---

## Tech Stack

**Frontend:**
- Framework: [e.g., React, Vue, Next.js]
- Language: [TypeScript, JavaScript]
- Key libraries: [List 3-5 main dependencies]

**Backend:**
- Framework: [e.g., Node/Express, Django, Rails]
- Language: [Python, JavaScript, Ruby, etc.]
- Database: [PostgreSQL, MongoDB, etc.]

**Infrastructure:**
- Hosting: [Vercel, AWS, GCP, Heroku, etc.]
- CI/CD: [GitHub Actions, GitLab CI, etc.]
- Monitoring: [Sentry, DataDog, LogRocket, etc.]

---

## Code Architecture (High-Level)

**Project Structure:**
```
/src
  /components   — [Brief description]
  /pages        — [Brief description]
  /lib          — [Brief description]
  /api          — [Brief description]
```

**Key Patterns:**
- State management: [Redux, Context, Zustand, etc.]
- Styling: [Tailwind, CSS Modules, styled-components, etc.]
- API approach: [REST, GraphQL, tRPC, etc.]

---

## Launch-Critical Systems

**Monitoring & Alerting:**
- Error tracking: [Tool and threshold for alerts]
- Performance monitoring: [What we track]
- Uptime monitoring: [Tool and SLAs]

**Deployment Process:**
- **Production deploys:** [Who can deploy, process]
- **Rollback procedure:** [How to revert if needed]
- **Launch day protocol:** [Extra precautions during launch]

**Known Technical Debt:**
- [Item 1] — Not addressing until post-launch
- [Item 2] — Not blocking launch

---

## Active Development (Launch Week)

**Current Sprint:** [Sprint number/name]
**Sprint Duration:** [Dates]

**In Progress:**
- [Task 1] — [Developer name] — [ETA]
- [Task 2] — [Developer name] — [ETA]

**Deployed Recently:**
- [Feature/fix] — [Date deployed] — [Why it matters for launch]

---

## Launch-Day Playbook

**Pre-Launch Checklist:**
- [ ] All critical features tested in production
- [ ] Monitoring and alerts configured
- [ ] Error budget defined
- [ ] On-call schedule set
- [ ] Rollback plan documented

**Launch Day:**
- [ ] Deploy at [time]
- [ ] Monitor for [duration]
- [ ] Team available for [hours]

**Post-Launch:**
- [ ] Monitor metrics for [duration]
- [ ] Daily check-ins for first [X days]
- [ ] Review and address bugs daily

---

## Performance Targets

**Launch Acceptance Criteria:**
- Page load time: < [X seconds]
- API response time: < [X ms]
- Error rate: < [X%]
- Uptime: > [X%]

**Current Performance:**
[Update weekly during launch phase]

---

## Critical Bugs & Technical Issues

**P0 (Launch Blockers):**
[Any critical technical issues that must be fixed before launch]

**P1 (High Priority):**
[Issues to fix during launch week if possible]

**Known Issues (Not Addressing):**
[Issues we're aware of but accepting for launch]

---

**Document Status:** ✅ Active (Minimal updates during launch)
**Next Review:** [Post-launch — when transitioning to Scale phase]
```

**Validation:** Ask Project Bob AI: "What's our tech stack and what are we monitoring during launch?" — It should provide accurate technical details.

---

### Step 5: Create Master Context File (5 min)

Copy this into `.claude/context/master-context.md`:

```markdown
# Master Context — [PRODUCT NAME]

**Version:** 1.0 (Launch Phase)
**Last Updated:** [DATE]
**Current Phase:** Launch
**Phase Context Emphasis:** Strategic 30% | Tactical 55% | Operational 15%

---

## How to Use This Context

This is the master context file for [PRODUCT NAME]. It provides AI assistants with structured information about our product, organized by context layers.

**For AI Assistants:**
When helping with [PRODUCT NAME], always reference these context files in order of emphasis:

1. **Tactical Context (55%)** — `.claude/context/tactical.md`
   - Current launch activities, campaigns, metrics, blockers
   - Most important during Launch phase
   - Updated daily/weekly

2. **Strategic Context (30%)** — `.claude/context/strategic.md`
   - Product vision, market, positioning, launch strategy
   - Important for alignment and decision-making
   - Updated monthly or on major pivots

3. **Operational Context (15%)** — `.claude/context/operational.md`
   - Tech stack, architecture, deployment, monitoring
   - Minimal detail during Launch phase (not primary focus)
   - Updated as needed for launch-critical issues

---

## Quick Reference

**Product:** [PRODUCT NAME]
**Phase:** Launch ([START DATE] → [END DATE])
**Launch Goal:** [Primary goal from strategic context]
**This Week's Priority:** [Top priority from tactical context]
**Current Blocker:** [If any, from tactical context]

---

## Context File Locations

- Strategic: `.claude/context/strategic.md`
- Tactical: `.claude/context/tactical.md`
- Operational: `.claude/context/operational.md`
- This file: `.claude/context/master-context.md`

---

## Usage Patterns

**For Launch Execution Questions:**
"How should we prioritize..." → Reference tactical + strategic
"What's our go-to-market..." → Reference strategic + tactical
"Should we add this feature..." → Reference tactical (roadmap) + strategic (vision)

**For Technical Questions:**
"How to implement..." → Reference operational + tactical (for priorities)
"What's our tech stack..." → Reference operational
"Should we refactor..." → Reference tactical (is it launch-critical?) + operational

**For Strategic Questions:**
"How does this align..." → Reference strategic + tactical (current execution)
"Who is our customer..." → Reference strategic
"What's our differentiation..." → Reference strategic

---

## Context Maintenance

**During Launch Phase:**
- **Tactical:** Update daily (metrics, blockers, next 7 days)
- **Strategic:** Update on major pivots only (should be stable)
- **Operational:** Update as needed for launch-critical changes

**After Launch (Scale Phase):**
Context emphasis will shift to:
- Strategic: 40% (growth strategy becomes more important)
- Tactical: 35% (steady state operations)
- Operational: 25% (scaling infrastructure becomes focus)

---

## Context Quality Checks

**Weekly Review (5 minutes):**
- [ ] All dates current (no references to "last week" from weeks ago)
- [ ] Metrics updated (no stale numbers)
- [ ] Blockers accurate (resolved items removed)
- [ ] Team members current (no departed team members listed)

**AI Effectiveness Test:**
Ask Project Bob: "What are we focused on this week and why?"
Expected: AI should give specific, accurate answer referencing tactical and strategic context.

---

**Document Status:** ✅ Active
**Next Phase:** Scale (projected [DATE])
**Next Context Review:** [DATE]
```

---

### Step 6: Configure Project Bob (5 min)

**In Project Bob settings/configuration:**

1. **Enable Context Files:**
   - Check if Project Bob has a "context files" or "project knowledge" setting
   - Point it to `.claude/context/` directory or `master-context.md`

2. **Set Context Loading:**
   - Configure Project Bob to load master-context.md first
   - Then load the three layer files (strategic, tactical, operational)

3. **Test Context Loading:**
   - Open Project Bob AI chat
   - Type: "What product are we working on?"
   - Expected: AI should know your product name and context

**If Project Bob doesn't have explicit context file settings:**
- You may need to manually reference context in conversations
- Start conversations with: "Context: See .claude/context/master-context.md"

---

### Step 7: Initial Validation (10 min)

Test your ACE setup with these questions in Project Bob:

**Test 1: Strategic Understanding**
```
Q: "What is our target customer and what problem do we solve for them?"
Expected: Accurate answer from strategic.md
```

**Test 2: Tactical Awareness**
```
Q: "What are our top priorities this week?"
Expected: Accurate answer from tactical.md
```

**Test 3: Operational Knowledge**
```
Q: "What's our tech stack?"
Expected: Accurate answer from operational.md
```

**Test 4: Cross-Layer Reasoning**
```
Q: "Should we delay launch to add [feature X]?"
Expected: AI should reference:
- Strategic: Is this aligned with our goals?
- Tactical: Do we have time? Is it a blocker?
- Decision based on context, not generic advice
```

**Validation Checklist:**
- [ ] AI knows product name and vision
- [ ] AI knows current phase (Launch)
- [ ] AI can reference specific priorities
- [ ] AI can reference blockers
- [ ] AI gives contextual answers (not generic advice)

---

## Project Bob Specific Tips

### If Project Bob Doesn't Auto-Load Context:

**Option 1: Manual Reference**
Start conversations with:
```
Context: I'm working on [PRODUCT NAME] in Launch phase.
See .claude/context/master-context.md for full context.
```

**Option 2: Conversation Templates**
Create saved prompts in Project Bob:
```
[PRODUCT CONTEXT]
Product: [NAME]
Phase: Launch
Priorities: [from tactical.md]
Context files: .claude/context/

Question: [your actual question]
```

**Option 3: Workspace Setup**
- If Project Bob has "workspaces" or "projects", configure one for your product
- Set context files as workspace knowledge base

### Troubleshooting

**Issue: AI doesn't seem to know context**
- Check: Are context files in the right location?
- Check: Does Project Bob have context file size limits?
- Try: Explicitly mention context file in your question
- Try: Ask "Can you read .claude/context/strategic.md?"

**Issue: Responses are generic, not contextual**
- Cause: AI not referencing your context files
- Fix: Start question with "Based on our context in .claude/context/..."
- Fix: Reference specific details: "Given our launch goal of [X]..."

**Issue: Context files too large**
- Cause: Some tools have token limits
- Fix: Reduce each file to target sizes (Strategic <200 lines, Tactical <300, Operational <500)
- Fix: Move detailed content to separate docs, link from context files

---

## Maintenance Schedule

**During Launch (Next 30-60 days):**

| Frequency | Task | Time | File |
|-----------|------|------|------|
| Daily | Update metrics | 5 min | tactical.md |
| Daily | Update blockers | 5 min | tactical.md |
| Weekly | Update next 7 days | 10 min | tactical.md |
| Weekly | Context quality check | 5 min | all files |
| Weekly | AI effectiveness test | 5 min | validation |
| Monthly | Strategic review | 15 min | strategic.md |

**After Launch → Scale Phase:**
- Context emphasis shifts (Strategic 40%, Tactical 35%, Operational 25%)
- Follow Phase Transition Workflow (see ACE documentation)
- Estimated transition time: 2-3 hours

---

## Getting Help

**When working through this setup:**

1. **Keep notes** of any issues or questions you encounter
2. **Document what works** in Project Bob (for future reference)
3. **Share feedback** about what was unclear or difficult
4. **Test iteratively** — Don't fill everything perfectly before testing

**Common Questions:**

**Q: How much detail should I include?**
A: Start minimal. You can always add more. Follow target line counts.

**Q: What if I don't know some information yet?**
A: Mark as [TBD] or [To be determined] and fill in later.

**Q: Should I commit context files to git?**
A: Generally yes, but check corporate policy. Consider:
- Exclude sensitive data (API keys, customer names)
- Use .gitignore for truly confidential context
- Or use a private repo

**Q: How do I handle confidential information?**
A: Options:
1. Use placeholders: "[CLIENT NAME]", "[REVENUE TARGET]"
2. Store sensitive context separately
3. Use a private repo with access controls

---

## Next Steps After Setup

Once ACE is working in Project Bob:

1. **Use it daily** for 1 week
2. **Document time savings** (how much faster are you?)
3. **Note friction points** (what's hard or unclear?)
4. **Share feedback** (helps improve ACE)
5. **Consider expanding** to team members (if valuable)

This implementation becomes **VAL-002** (external validation) for the ACE methodology!

---

**Setup Guide Version:** 1.0
**Last Updated:** 2025-01-05
**Maintained By:** ACE Methodology Team
**Questions?** Reference full ACE documentation in AI-Context-Engineering repo
