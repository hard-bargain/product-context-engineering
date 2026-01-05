# Getting Started with AI Context Engineering

> **ID:** GUIDE-001
>
> **Purpose:** Step-by-step guide for teams adopting ACE methodology
>
> **Last Updated:** 2025-12-26
>
> **Estimated Time:** 2-4 hours initial setup, ongoing maintenance

---

## Who This Guide Is For

**You should read this if:**
- Your team uses AI agents (Claude, GPT, etc.) for product development
- AI effectiveness is inconsistent across team members
- You spend too much time re-explaining context to AI
- Context gets out of sync between team members and phases

**Prerequisites:**
- Cross-discipline product team (at least 2-3 roles)
- Using AI for product development work
- Product in active development (Concept → Launch)
- Willingness to invest in systematic context management

---

## Quick Start (15 minutes)

**Try ACE Before Full Adoption:**

###Step 1: Pick One Layer (5 min)

Choose the layer most relevant to your current work:

**If you're in Concept/Strategy phase:**
- Start with Strategic Layer ([TEMP-001](../active/source_of_truth/TEMPLATES.md#temp-001))

**If you're in Design/Build phase:**
- Start with Tactical Layer ([TEMP-002](../active/source_of_truth/TEMPLATES.md#temp-002))

**If you're actively coding:**
- Start with Operational Layer ([TEMP-003](../active/source_of_truth/TEMPLATES.md#temp-003))

### Step 2: Fill One Template (10 min)

Copy the template and fill in the basics:
- Vision/objectives
- Current work
- Key constraints
- Success criteria

### Step 3: Test with AI (5 min)

Ask AI a question using your new context:
- "What should I prioritize next?"
- "Help me make this technical decision"
- "Review this design for our users"

**If AI's answer is noticeably better → continue with full setup below**

---

## Full Setup (2-4 hours)

### Phase 1: Assess Your Current State (30 min)

**Step 1: Identify Your Phase**

Where is your product in the lifecycle?

| Phase | Signs You're Here | Primary Focus |
|-------|-------------------|---------------|
| **Concept** | Validating idea, researching market | Strategic context |
| **Design** | Creating mockups, user research | Tactical + Design specs |
| **Build** | Writing code, implementing features | Operational + Code |
| **Test** | QA, bug fixes, validation | Operational + Test cases |
| **Launch** | Go-to-market, releasing | Tactical + Marketing |
| **Scale** | Growth, optimization, iteration | Balanced layers |

**Step 2: Audit Your Disciplines**

Who's on your team and what roles?

```markdown
## Team Discipline Audit

Cross off roles you don't have:

- [ ] Strategist / Product Lead
- [ ] Product Manager
- [ ] Designer / UX
- [ ] Developer (Frontend)
- [ ] Developer (Backend)
- [ ] QA / Tester
- [ ] Marketer
- [ ] Other: _____________

Primary disciplines (3-5): [List the core roles that need context]
```

**Step 3: Assess Current Pain**

Rate these pain points (1-5, where 5 = severe):

- [ ] AI gives generic advice (doesn't understand our context): __/5
- [ ] Constantly re-explaining our product to AI: __/5
- [ ] AI suggestions ignore our constraints: __/5
- [ ] Context inconsistent between team members: __/5
- [ ] Context gets stale as product evolves: __/5

**If total score > 15** → ACE will provide significant value

### Phase 2: Set Up Shared Core (60 min)

**Step 1: Create Strategic Context (30 min)**

Use [TEMP-001 Strategic Layer Template](../active/source_of_truth/TEMPLATES.md#temp-001):

```markdown
## Strategic Context - Our Product

### Vision
[One sentence: What does this product enable?]

### Target Customers
**Primary Persona:**
- Name: "[Memorable name]"
- Role: [Their job]
- Pain: [Their #1 frustration]
- Goal: [What success looks like]

### Positioning
[For [customer] who [pain], we [solution]. Unlike [alternative], we [differentiator].]

### Success Metrics
- [Metric 1]: Current XX, Target XXX
- [Metric 2]: Current XX, Target XXX
```

**Step 2: Share with Team (15 min)**

Save as: `context/shared-core.md`

Have each team member review:
- [ ] Vision clear?
- [ ] Customer description accurate?
- [ ] Success metrics aligned?

Make adjustments based on feedback.

**Step 3: Validate with AI (15 min)**

Test if AI understands your shared core:

```
You: "Who are our customers?"
AI: [Should describe your target persona accurately]

You: "What's our product vision?"
AI: [Should state your vision correctly]

You: "How do we differentiate from competitors?"
AI: [Should explain your positioning]
```

Refine strategic context if AI's answers are off.

### Phase 3: Add Your Discipline Context (60-90 min)

Each key discipline creates their extension:

**Product Manager** (60 min)
- Use [TEMP-002 Tactical Layer Template](../active/source_of_truth/TEMPLATES.md#temp-002)
- Document: Current sprint, active features, key decisions
- Save as: `context/pm-extension.md`

**Designer** (45 min)
- Use [Discipline-Specific Pattern](../active/source_of_truth/CONTEXT_PATTERNS.md#pat-003)
- Document: Design system, personas, interaction patterns
- Save as: `context/designer-extension.md`

**Developer** (60 min)
- Use [TEMP-003 Operational Layer Template](../active/source_of_truth/TEMPLATES.md#temp-003)
- Document: Tech stack, architecture, code conventions
- Save as: `context/developer-extension.md`

**Other Disciplines** (30-45 min each)
- Follow [Discipline Pattern](../active/source_of_truth/CONTEXT_PATTERNS.md#pat-003)
- Document role-specific details
- Save as: `context/[role]-extension.md`

### Phase 4: Link Everything Together (30 min)

**Create Master Context Document:**

```markdown
# Product Context for AI

## Quick Links
- [Shared Strategic Core](./context/shared-core.md)
- [PM Context](./context/pm-extension.md)
- [Designer Context](./context/designer-extension.md)
- [Developer Context](./context/developer-extension.md)

## How to Use This
1. **Everyone reads**: Shared Strategic Core
2. **Read your discipline**: Your extension file
3. **Reference others**: When collaborating cross-discipline
4. **Keep current**: Update weekly (see maintenance below)

## Current Phase
**Phase:** [Your current phase]
**Focus:** [Primary layer emphasis]
**Active Work:** [Current sprint/iteration]

## Context Owners
- Strategic: [Name] - Monthly updates
- Tactical: [Name] - Weekly updates
- Operational: [Name] - Daily/Weekly updates
```

Save as: `context/README.md`

### Phase 5: Test & Validate (30 min)

**Run AI Validation Tests:**

Test AI understanding across disciplines:

**Strategic Test:**
```
"Given our vision and target market, what features should we prioritize?"
Expected: AI considers your strategic goals, not generic advice
```

**Tactical Test:**
```
"We have a blocker with [X]. What should we do?"
Expected: AI knows your current sprint, dependencies, constraints
```

**Operational Test:**
```
"Implement [feature] following our patterns"
Expected: AI generates code matching your conventions and architecture
```

**Cross-Discipline Test:**
```
"The designer wants [X] but the developer says [Y]. How do we resolve this?"
Expected: AI understands both contexts and suggests informed compromise
```

**If 3+ tests pass → context is working! If < 3 pass → refine and retest**

---

## Daily Usage Patterns

### For Strategists

**Morning (5 min):**
- Review strategic context for staleness
- Add any new market insights

**Weekly (15 min):**
- Update competitive landscape
- Refine positioning based on learnings
- Validate metrics and progress

**With AI:**
```
"Analyze this competitor move given our positioning..."
"Help me validate this strategic assumption..."
"What market trends affect our roadmap?"
```

### For Product Managers

**Daily (10 min):**
- Update tactical context with sprint changes
- Document new decisions and blockers
- Note cross-team dependencies

**Weekly (30 min):**
- Archive completed work
- Update feature status
- Review and update risks

**With AI:**
```
"Help me prioritize these features given our constraints..."
"Generate stakeholder update from context..."
"What's the critical path for this sprint?"
```

### For Developers

**Daily (5 min):**
- Update active files list
- Document new blockers
- Note architecture decisions

**Weekly (20 min):**
- Archive completed sprint code details
- Update tech stack if changed
- Refresh performance metrics

**With AI:**
```
"Implement [feature] following our patterns..."
"Review this code for compliance with our conventions..."
"Help debug this issue given our architecture..."
```

### For Designers

**Daily (5 min):**
- Update active design work
- Note design decisions

**Weekly (20 min):**
- Add new components to design system
- Update personas based on research
- Document design handoffs

**With AI:**
```
"Critique this design for our users..."
"Generate component following our design system..."
"Check this for accessibility compliance..."
```

---

## Maintenance Workflows

### Weekly Review (30 min)

**Every Friday (or end of sprint):**

Follow [WF-002: Weekly Context Review](../active/source_of_truth/WORKFLOWS.md#wf-002):

```markdown
## Weekly Context Review Checklist

- [ ] Strategic layer: Reviewed (update if needed)
- [ ] Tactical layer: Updated with week's changes
- [ ] Operational layer: Current work reflected
- [ ] Completed work archived
- [ ] New decisions documented
- [ ] Blockers current
- [ ] AI validation test passed
```

### Phase Transitions (2-3 hours)

**When changing phases (e.g., Design → Build):**

Follow [WF-001: Phase Transition Workflow](../active/source_of_truth/WORKFLOWS.md#wf-001):

1. Archive phase-specific details (60 min)
2. Shift context layer weights (30 min)
3. Add new phase context (60 min)
4. Update cross-discipline references (30 min)
5. Validate transition (30 min)

### Monthly Deep Review (90 min)

**First week of each month:**

1. **Audit all context** (30 min)
   - Check for broken links
   - Validate accuracy
   - Assess completeness

2. **Measure effectiveness** (30 min)
   - AI response quality
   - Team context usage
   - Time savings

3. **Refine and optimize** (30 min)
   - Remove unused sections
   - Add missing high-value content
   - Improve frequently-accessed areas

---

## Common Pitfalls & Solutions

### Pitfall 1: Context Too Long

**Symptom:** Context files > 1000 lines, AI responses slow

**Solution:**
- Use references instead of duplication ([MP-002](../active/source_of_truth/PRINCIPLES.md#mp-002))
- Archive historical details to separate files
- Keep strategic < 200 lines, tactical < 300 lines, operational < 500 lines

### Pitfall 2: Context Gets Stale

**Symptom:** AI gives outdated suggestions

**Solution:**
- Set calendar reminders for weekly reviews
- Assign clear context owners per layer
- Run freshness checks (automated if possible)

### Pitfall 3: Discipline Silos

**Symptom:** Designer and developer contexts contradict each other

**Solution:**
- Establish shared strategic core that all reference
- Use cross-references between disciplines
- Regular cross-discipline context reviews

### Pitfall 4: Too Much Upfront

**Symptom:** Team spends weeks creating perfect context, never launches

**Solution:**
- Start with 80% solution (2-4 hours)
- Iterate based on usage
- Add detail only where AI struggles

### Pitfall 5: No Adoption

**Symptom:** Team doesn't use or update context

**Solution:**
- Start with pain points (where AI currently fails)
- Demonstrate quick wins (better AI responses)
- Make it easy (templates, clear ownership)
- Build into workflow (weekly reviews)

---

## Measuring Success

### Week 1 Metrics

**Baseline before ACE:**
- Time spent re-explaining context: __ hours/week
- AI response quality (1-5): __
- Team context alignment (1-5): __

**After 1 week with ACE:**
- Time spent: __ hours/week (target: -30%)
- AI quality: __ (target: +1 point)
- Alignment: __ (target: +1 point)

### Month 1 Metrics

| Metric | Before ACE | After ACE | Target |
|--------|------------|-----------|--------|
| Re-explaining time | __ hrs/week | __ hrs/week | -50% |
| AI response quality | __/5 | __/5 | 4+/5 |
| Team alignment | __/5 | __/5 | 4+/5 |
| Context freshness | N/A | __% current | 80%+ |
| Onboarding time | __ days | __ days | -50% |

### ROI Calculation

```markdown
## ACE ROI (Monthly)

Time Investment:
- Setup: 2-4 hours (one-time)
- Weekly reviews: 30 min × 4 = 2 hours/month
- Total: ~6 hours first month, 2 hours ongoing

Time Savings:
- Re-explaining context: 5 hours/week × 4 = 20 hours/month
- Better AI responses: 3 hours/week × 4 = 12 hours/month
- Faster onboarding: 10 hours/new hire
- Total: 32+ hours/month saved

ROI: 32 hours saved / 2 hours invested = 16x return
```

---

## Next Steps

### After Initial Setup

**Week 1:**
- [ ] Use context daily with AI
- [ ] Collect team feedback
- [ ] Identify quick improvements

**Week 2:**
- [ ] First weekly review
- [ ] Refine based on usage
- [ ] Add missing high-value details

**Month 1:**
- [ ] First monthly deep review
- [ ] Measure effectiveness metrics
- [ ] Expand to additional disciplines

**Month 2-3:**
- [ ] First phase transition (if applicable)
- [ ] Optimize context structure
- [ ] Train new team members

### Advanced Patterns

Once comfortable with basics:
- Explore [All ACE Patterns](../active/source_of_truth/CONTEXT_PATTERNS.md)
- Implement [Quality Metrics](../active/source_of_truth/CONTEXT_PATTERNS.md#pat-005)
- Create custom templates for your domain
- Build automation for context health checks

---

## Getting Help

**Questions about ACE?**
- Review [ACE Principles](../active/source_of_truth/PRINCIPLES.md)
- Check [Practitioner Journeys](../active/source_of_truth/PRACTITIONER_JOURNEYS.md) for your role
- See [Patterns](../active/source_of_truth/CONTEXT_PATTERNS.md) for detailed guidance

**Common questions:**
- "Which phase am I in?" → See Phase Assessment above
- "How much detail?" → Start minimal, add where AI struggles
- "Who owns what?" → Strategic: Strategist, Tactical: PM, Operational: Discipline leads
- "How often update?" → Strategic: Monthly, Tactical: Weekly, Operational: Daily/Weekly

---

**Guide Version:** 1.0
**Last Updated:** 2025-12-26
**Estimated Reading Time:** 30 minutes
**Estimated Setup Time:** 2-4 hours
**ROI:** 16x+ time savings
