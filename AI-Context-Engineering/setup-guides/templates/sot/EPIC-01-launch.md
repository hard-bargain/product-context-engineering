# EPIC-01: Launch Execution (Gates v0.8-v0.9-v1.0)

**EPIC Owner:** [PM/Launch Manager Name]
**Status:** 🔄 In Progress
**Timeline:** [Start Date] → [Target Launch Date]

**⚠️ NOTE**: ACE uses 10 gates. "Launch" spans v0.8 (Deployment), v0.9 (GTM), and v1.0 (Adoption).
Consider creating separate EPICs for each gate if timelines are distinct.
- EPIC-01a: v0.8 Deployment & Ops (Issues 1-15)
- EPIC-01b: v0.9 Go-to-Market (Issues 16-35)
- EPIC-01c: v1.0 Market Adoption (Issues 36-40)
**Team:** ~30 people across 5 functions

---

## Section 0: Session State

**Last Session:** [Date/Time]
**Current Focus:** [What we're working on right now]
**Blocking Issues:** [List any blockers, or "None"]
**Next Session Goal:** [What to accomplish next]

**For AI Agents:**
- Read this section first for current state
- Check Section 2 for active issues
- Review Section 4 for context on what's been completed
- This EPIC tracks Launch phase execution

---

## Section 1: EPIC Definition

### Mission

Execute successful launch of [PRODUCT NAME] v1.0, achieving [PRIMARY GOAL] by [LAUNCH DATE].

### Success Criteria

**Launch is successful when:**
- [ ] All must-have features ([FEAT-001](#feat-001) through [FEAT-00X](#feat-00x)) shipped
- [ ] [MET-001](#met-001): [Primary metric] reaches [target] by week 4
- [ ] [MET-002](#met-002): [Secondary metric] reaches [target] by week 4
- [ ] No P0 bugs in production
- [ ] Launch collateral complete (landing page, announcement, demos)
- [ ] All launch channels activated (Product Hunt, email, sales, etc.)
- [ ] Monitoring and on-call coverage established

### Scope

**In Scope (This EPIC):**
- Pre-launch preparation (beta testing, marketing materials, deployment readiness)
- Launch week execution (go-live, monitoring, rapid response)
- Post-launch iteration (first 4 weeks, critical fixes, early feedback)

**Out of Scope:**
- Post-launch features (v1.1+) — Will be tracked in future EPICs
- Major pivots or strategic changes — Escalate to leadership
- Long-term growth initiatives — Different EPIC after launch stabilizes

### Timeline

**Phase 1: Pre-Launch** ([Start] → [Launch -1 week])
- Finalize all must-have features
- Complete beta testing
- Prepare launch collateral
- Set up monitoring and on-call

**Phase 2: Launch Week** ([Launch Date] → [Launch +7 days])
- Execute launch sequence
- Monitor metrics and systems 24/7
- Rapid response to issues
- Daily team standups

**Phase 3: Post-Launch** ([Launch +1 week] → [Launch +4 weeks])
- Stabilize product based on feedback
- Fix critical bugs
- Iterate on early user feedback
- Transition to steady-state operations

---

## Section 2: Issue Manifest

### How to Use This Section

**Issue Format:** [ID] — [Status] — [Title] — Owner: [Name] — Due: [Date]

**Status Indicators:**
- ⏳ **Not Started**
- 🔄 **In Progress**
- ✅ **Done**
- 🔴 **Blocked**

### Phase 1: Pre-Launch (Issues 1-20)

**1.1 Feature Completion (Issues 1-5)**

**Issue 1** — ⏳ — Complete [FEAT-001] — Owner: [Name] — Due: [Date]
- **Description:** [What needs to be done]
- **Definition of Done:** [Specific completion criteria]
- **Blockers:** [None or list]

**Issue 2** — ⏳ — Complete [FEAT-002] — Owner: [Name] — Due: [Date]
- **Description:** [What needs to be done]
- **Definition of Done:** [Specific completion criteria]
- **Blockers:** [None or list]

**Issue 3** — ⏳ — Complete [FEAT-003] — Owner: [Name] — Due: [Date]
- **Description:** [What needs to be done]
- **Definition of Done:** [Specific completion criteria]
- **Blockers:** [None or list]

**Issue 4** — ⏳ — Complete [FEAT-004] — Owner: [Name] — Due: [Date]
- **Description:** [What needs to be done]
- **Definition of Done:** [Specific completion criteria]
- **Blockers:** [None or list]

**Issue 5** — ⏳ — Complete [FEAT-005] — Owner: [Name] — Due: [Date]
- **Description:** [What needs to be done]
- **Definition of Done:** [Specific completion criteria]
- **Blockers:** [None or list]

**1.2 Beta Testing (Issues 6-8)**

**Issue 6** — ⏳ — Recruit beta testers — Owner: [Name] — Due: [Date]
- **Description:** Recruit [N] beta testers from target customer segment
- **Definition of Done:** [N] beta users active in product
- **Blockers:** [None or list]

**Issue 7** — ⏳ — Run beta testing program — Owner: [Name] — Due: [Date]
- **Description:** [Duration] beta testing with structured feedback
- **Definition of Done:** All beta users complete testing, feedback collected
- **Blockers:** [None or list]

**Issue 8** — ⏳ — Address beta feedback — Owner: [Name] — Due: [Date]
- **Description:** Prioritize and fix critical beta feedback
- **Definition of Done:** All P0/P1 feedback addressed
- **Blockers:** [None or list]

**1.3 Launch Collateral (Issues 9-14)**

**Issue 9** — ⏳ — Launch landing page — Owner: [Name] — Due: [Date]
- **Description:** Design, build, and deploy launch landing page
- **Definition of Done:** Landing page live, tested, analytics configured
- **Blockers:** [None or list]

**Issue 10** — ⏳ — Product demo video — Owner: [Name] — Due: [Date]
- **Description:** Create 2-3 minute product demo video
- **Definition of Done:** Video produced, uploaded, embedded on landing page
- **Blockers:** [None or list]

**Issue 11** — ⏳ — Launch announcement — Owner: [Name] — Due: [Date]
- **Description:** Write blog post and email announcement
- **Definition of Done:** Announcement drafted, reviewed, scheduled
- **Blockers:** [None or list]

**Issue 12** — ⏳ — Sales enablement materials — Owner: [Name] — Due: [Date]
- **Description:** Create sales deck, one-pager, demo script
- **Definition of Done:** Sales team trained and equipped
- **Blockers:** [None or list]

**Issue 13** — ⏳ — Product Hunt submission — Owner: [Name] — Due: [Date]
- **Description:** Prepare and schedule Product Hunt launch
- **Definition of Done:** Product Hunt page ready, launch date scheduled
- **Blockers:** [None or list]

**Issue 14** — ⏳ — Press outreach — Owner: [Name] — Due: [Date]
- **Description:** Contact [N] relevant press/influencers
- **Definition of Done:** Outreach complete, follow-ups scheduled
- **Blockers:** [None or list]

**1.4 Infrastructure & Monitoring (Issues 15-18)**

**Issue 15** — ⏳ — Production deployment ready — Owner: [Name] — Due: [Date]
- **Description:** Finalize production infrastructure and deployment
- **Definition of Done:** Can deploy to production reliably
- **Blockers:** [None or list]

**Issue 16** — ⏳ — Monitoring and alerting — Owner: [Name] — Due: [Date]
- **Description:** Set up full monitoring, logging, alerting
- **Definition of Done:** All critical systems monitored, alerts configured
- **Blockers:** [None or list]

**Issue 17** — ⏳ — On-call rotation — Owner: [Name] — Due: [Date]
- **Description:** Set up on-call schedule for launch week
- **Definition of Done:** Schedule published, team trained, runbooks ready
- **Blockers:** [None or list]

**Issue 18** — ⏳ — Rollback plan — Owner: [Name] — Due: [Date]
- **Description:** Document and test rollback procedures
- **Definition of Done:** Rollback plan documented and tested
- **Blockers:** [None or list]

**1.5 Team Readiness (Issues 19-20)**

**Issue 19** — ⏳ — Launch readiness review — Owner: [Name] — Due: [Date]
- **Description:** All-hands review of launch readiness
- **Definition of Done:** Leadership approves go/no-go for launch
- **Blockers:** [None or list]

**Issue 20** — ⏳ — Team launch training — Owner: [Name] — Due: [Date]
- **Description:** Train all teams on launch plans and responsibilities
- **Definition of Done:** All teams briefed and ready
- **Blockers:** [None or list]

### Phase 2: Launch Week (Issues 21-30)

**Issue 21** — ⏳ — Deploy v1.0 to production — Owner: [Name] — Due: [Launch Date]
- **Description:** Execute production deployment
- **Definition of Done:** v1.0 live in production, verified working
- **Blockers:** [None or list]

**Issue 22** — ⏳ — Activate all launch channels — Owner: [Name] — Due: [Launch Date]
- **Description:** Publish announcements, activate Product Hunt, send emails
- **Definition of Done:** All launch channels live
- **Blockers:** [None or list]

**Issue 23** — ⏳ — Monitor metrics (Day 1) — Owner: [Name] — Due: [Launch +1]
- **Description:** 24/7 monitoring of launch metrics and systems
- **Definition of Done:** Day 1 metrics reviewed, issues addressed
- **Blockers:** [None or list]

**Issue 24** — ⏳ — Rapid response team (Week 1) — Owner: [Name] — Due: [Launch +7]
- **Description:** Respond to issues, feedback, questions in real-time
- **Definition of Done:** Week 1 complete, all critical issues addressed
- **Blockers:** [None or list]

**Issue 25** — ⏳ — Daily launch standups — Owner: [Name] — Due: [Launch +7]
- **Description:** Daily team sync during launch week
- **Definition of Done:** 7 daily standups completed
- **Blockers:** [None or list]

**Issue 26** — ⏳ — Customer support setup — Owner: [Name] — Due: [Launch Date]
- **Description:** Activate customer support channels
- **Definition of Done:** Support team ready, systems live
- **Blockers:** [None or list]

**Issue 27** — ⏳ — Track launch metrics — Owner: [Name] — Due: [Launch +7]
- **Description:** Daily metric tracking and reporting
- **Definition of Done:** Metrics dashboard updated daily
- **Blockers:** [None or list]

**Issue 28** — ⏳ — Media and community engagement — Owner: [Name] — Due: [Launch +7]
- **Description:** Engage with press, Product Hunt, social media
- **Definition of Done:** Active engagement throughout launch week
- **Blockers:** [None or list]

**Issue 29** — ⏳ — Bug triage and fixes — Owner: [Name] — Due: [Launch +7]
- **Description:** Triage bugs, fix critical issues immediately
- **Definition of Done:** All P0 bugs fixed, P1 bugs triaged
- **Blockers:** [None or list]

**Issue 30** — ⏳ — Week 1 retrospective — Owner: [Name] — Due: [Launch +7]
- **Description:** Review launch week, capture learnings
- **Definition of Done:** Retrospective complete, action items identified
- **Blockers:** [None or list]

### Phase 3: Post-Launch Stabilization (Issues 31-40)

**Issue 31** — ⏳ — Week 2 iteration — Owner: [Name] — Due: [Launch +14]
- **Description:** Implement improvements based on week 1 feedback
- **Definition of Done:** Top 3 improvements shipped
- **Blockers:** [None or list]

**Issue 32** — ⏳ — Week 3 iteration — Owner: [Name] — Due: [Launch +21]
- **Description:** Continue iterating on feedback
- **Definition of Done:** Next 3 improvements shipped
- **Blockers:** [None or list]

**Issue 33** — ⏳ — Week 4 iteration — Owner: [Name] — Due: [Launch +28]
- **Description:** Final stabilization improvements
- **Definition of Done:** Product stable, feedback addressed
- **Blockers:** [None or list]

**Issue 34** — ⏳ — Customer feedback collection — Owner: [Name] — Due: [Launch +28]
- **Description:** Systematic collection of customer feedback
- **Definition of Done:** [N] customer interviews, feedback synthesized
- **Blockers:** [None or list]

**Issue 35** — ⏳ — Metric analysis — Owner: [Name] — Due: [Launch +28]
- **Description:** Analyze first 4 weeks of metrics
- **Definition of Done:** Metric report created, insights documented
- **Blockers:** [None or list]

**Issue 36** — ⏳ — v1.1 planning — Owner: [Name] — Due: [Launch +28]
- **Description:** Plan next release based on learnings
- **Definition of Done:** v1.1 scope defined, prioritized
- **Blockers:** [None or list]

**Issue 37** — ⏳ — Team transition to steady-state — Owner: [Name] — Due: [Launch +28]
- **Description:** Move from launch mode to normal operations
- **Definition of Done:** Normal sprint cadence resumed
- **Blockers:** [None or list]

**Issue 38** — ⏳ — Documentation updates — Owner: [Name] — Due: [Launch +28]
- **Description:** Update all docs based on launch learnings
- **Definition of Done:** Docs current and accurate
- **Blockers:** [None or list]

**Issue 39** — ⏳ — Launch retrospective (full team) — Owner: [Name] — Due: [Launch +28]
- **Description:** Full team retrospective on launch
- **Definition of Done:** Retro complete, learnings documented
- **Blockers:** [None or list]

**Issue 40** — ⏳ — Close EPIC-01 — Owner: [Name] — Due: [Launch +28]
- **Description:** Complete EPIC, transition to next phase
- **Definition of Done:** All success criteria met, EPIC closed
- **Blockers:** [None or list]

---

## Section 3: EPIC Metadata

### 3A. Issue Tracking

**Total Issues:** 40
**Completed:** 0
**In Progress:** 0
**Not Started:** 40
**Blocked:** 0

**Progress:** 0% (0/40 complete)

### 3B. IDs Created/Referenced in This EPIC

**Features (FEAT-XXX):**
- FEAT-001 through FEAT-005 (must-have features for launch)

**Metrics (MET-XXX):**
- MET-001 (primary launch metric)
- MET-002 (secondary launch metric)

**Decisions (DEC-XXX):**
- [List any major decisions made during launch execution]

**Technical (TECH-XXX):**
- [List any technical items related to launch]

### 3C. Key Milestones

| Milestone | Target Date | Status | Owner |
|-----------|-------------|--------|-------|
| All features code complete | [Date] | ⏳ | [Name] |
| Beta testing complete | [Date] | ⏳ | [Name] |
| Launch collateral ready | [Date] | ⏳ | [Name] |
| Infrastructure ready | [Date] | ⏳ | [Name] |
| **PUBLIC LAUNCH** | **[Launch Date]** | ⏳ | [Name] |
| Week 1 stable | [Launch +7] | ⏳ | [Name] |
| Week 4 stable | [Launch +28] | ⏳ | [Name] |
| EPIC complete | [Launch +28] | ⏳ | [Name] |

### 3D. Team Allocation

**Product & Strategy ([N] people):**
- Launch planning and coordination
- Customer feedback and iteration
- Metrics analysis

**Engineering ([N] people):**
- Feature completion
- Bug fixes and stabilization
- Infrastructure and monitoring

**Design ([N] people):**
- Launch collateral
- UX refinements based on feedback
- Design system updates

**Marketing ([N] people):**
- Launch campaigns
- Content creation
- Community engagement

**Sales/CS ([N] people):**
- Sales enablement
- Customer support
- Early customer success

---

## Section 4: Completion Log

**When issues are completed, move them here with completion date and notes.**

### Completed Issues

**[Date]: Issue [N] — [Title]**
- **Owner:** [Name]
- **Completion Notes:** [What was done, any important details]
- **Related:** [Links to commits, docs, decisions, etc.]

---

**EPIC Status:** 🔄 In Progress
**Last Updated:** [Date]
**Owner:** [PM/Launch Manager Name]
**Next Review:** [Date — daily during launch, weekly after]
