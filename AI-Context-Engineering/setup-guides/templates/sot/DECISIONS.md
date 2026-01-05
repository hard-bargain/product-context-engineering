# Decision Log

**Purpose:** Track all major product decisions with context and rationale.
**Last Updated:** [DATE]
**Owner:** [PM/Product Lead]

---

## How to Use This File

**When to Add a Decision:**
- Strategic pivots or direction changes
- Major feature scope decisions (in/out)
- Technical architecture choices
- Go-to-market approach changes
- Pricing or business model decisions
- Any decision that significantly impacts the product or team

**Decision Format:**
```
## DEC-XXX: [Decision Title]

**Date:** [When decided]
**Decided By:** [Name/Role or "Team consensus"]
**Status:** ✅ Final / 🔄 Under Review / ❌ Reversed

### Context

[What situation prompted this decision? What was the problem or question?]

### Options Considered

**Option A:** [Description]
- **Pros:** [List]
- **Cons:** [List]

**Option B:** [Description]
- **Pros:** [List]
- **Cons:** [List]

**Option C:** [Description] (if applicable)
- **Pros:** [List]
- **Cons:** [List]

### Decision

**We decided:** [Clear statement of what was decided]

### Rationale

[Why did we choose this option? What were the key factors?]

**Key Factors:**
1. [Factor 1 and why it mattered]
2. [Factor 2 and why it mattered]
3. [Factor 3 and why it mattered]

### Impact

**Affects:**
- [Team/function 1]: [How this impacts them]
- [Team/function 2]: [How this impacts them]
- [Area 3]: [Impact description]

**Timeline:** [When this takes effect, any transition period]

### Success Criteria

**We'll know this was the right decision if:**
- [Measurable outcome 1]
- [Measurable outcome 2]
- [Measurable outcome 3]

**Review Date:** [When to revisit this decision]

### Related

- **PRD:** [Section reference if applicable]
- **Features:** [FEAT-XXX if applicable]
- **Technical:** [TECH-XXX if related]
- **Metrics:** [MET-XXX if tracked]
```

---

## Strategic Decisions

### DEC-001: [First Major Decision - Example: Target Market Selection]

**Date:** [DATE]
**Decided By:** [Name/Team]
**Status:** ✅ Final

#### Context

[Example: "We needed to decide our initial target customer segment. With limited resources, we couldn't serve everyone effectively."]

#### Options Considered

**Option A: Focus on Enterprise (Fortune 500)**
- **Pros:** Higher revenue per customer, longer retention, established budgets
- **Cons:** Long sales cycles, need sales team, requires enterprise features

**Option B: Focus on SMBs (10-100 employees)**
- **Pros:** Faster sales cycles, self-serve possible, large market, quicker feedback
- **Cons:** Lower revenue per customer, more price sensitive, higher churn risk

**Option C: Consumer/Individual Users**
- **Pros:** Largest market, viral growth potential, simple product needs
- **Cons:** Low willingness to pay, high acquisition costs, support intensive

#### Decision

**We decided:** Focus on SMBs (10-100 employees) for initial launch.

#### Rationale

**Key Factors:**
1. **Speed to market:** SMB sales cycles (2-4 weeks) vs. enterprise (6-12 months) allows faster validation
2. **Product-market fit:** Can iterate quickly based on SMB feedback
3. **Resource constraints:** Don't have sales team for enterprise yet
4. **Market size:** 30M SMBs in target regions provides large addressable market

#### Impact

**Affects:**
- **Product:** Feature set optimized for SMB needs (ease of use over enterprise features)
- **Marketing:** Messaging focused on SMB pain points, self-serve GTM
- **Sales:** Self-serve onboarding, minimal sales touch until proven
- **Pricing:** Price point [$XX-XXX] aligned with SMB budgets

**Timeline:** Immediate effect on product roadmap and GTM strategy

#### Success Criteria

**We'll know this was right if:**
- Achieve [X] SMB customers by month 3
- Conversion rate from trial to paid >=[X]%
- Customer feedback validates SMB-focused features

**Review Date:** [3 months after launch]

#### Related

- **PRD:** Target Market section
- **MKT-001:** SMB Persona definition
- **FEAT-001-005:** Launch features optimized for SMBs

---

### DEC-002: [Second Decision - Example: Pricing Model]

**Date:** [DATE]
**Decided By:** [Name/Team]
**Status:** ✅ Final

#### Context

[Describe the situation that required a pricing decision]

#### Options Considered

**Option A: Freemium**
- **Pros:** [List]
- **Cons:** [List]

**Option B: Paid-only subscription**
- **Pros:** [List]
- **Cons:** [List]

**Option C: Usage-based pricing**
- **Pros:** [List]
- **Cons:** [List]

#### Decision

**We decided:** [Clear statement]

#### Rationale

[Why this option was chosen]

#### Impact

[Who/what this affects]

#### Success Criteria

[How to measure if this was right]

#### Related

[Links to other docs/IDs]

---

### DEC-003: [Third Decision]

**Date:** [DATE]
**Decided By:** [Name/Team]
**Status:** ✅ Final

[Follow same structure as above]

---

## Product Scope Decisions

### DEC-010: [Example: Feature Inclusion/Exclusion Decision]

**Date:** [DATE]
**Decided By:** [Name/Team]
**Status:** ✅ Final

#### Context

[Why did this feature decision need to be made?]

#### Options Considered

**Option A: Include [Feature X] in v1.0**
- **Pros:** [Benefits of including]
- **Cons:** [Costs/risks of including]

**Option B: Defer [Feature X] to v1.1**
- **Pros:** [Benefits of deferring]
- **Cons:** [Costs/risks of deferring]

#### Decision

**We decided:** [Include or defer, with clear scope]

#### Rationale

[Reasoning based on launch timeline, customer needs, complexity, etc.]

#### Impact

**Affects:**
- **Engineering:** [Impact on development timeline]
- **Product:** [Impact on scope and priorities]
- **Customers:** [Impact on value proposition]

#### Success Criteria

[How to validate this was the right scope decision]

#### Related

- **FEAT-XXX:** [Related feature]
- **EPIC-01:** [Impact on launch timeline]

---

## Technical Decisions

### DEC-020: [Example: Technical Architecture Decision]

**Date:** [DATE]
**Decided By:** [Engineering Lead/Team]
**Status:** ✅ Final

#### Context

[What technical decision needed to be made and why?]

#### Options Considered

**Option A: [Technical approach 1]**
- **Pros:** [Technical benefits]
- **Cons:** [Technical tradeoffs]

**Option B: [Technical approach 2]**
- **Pros:** [Technical benefits]
- **Cons:** [Technical tradeoffs]

#### Decision

**We decided:** [Clear technical decision]

#### Rationale

[Technical reasoning, including scalability, maintainability, team expertise, etc.]

#### Impact

**Affects:**
- **Engineering:** [How this impacts development]
- **Operations:** [How this impacts deployment/monitoring]
- **Costs:** [Infrastructure cost implications]

#### Success Criteria

[How to measure if this technical choice was right]

#### Related

- **TECH-XXX:** [Related technical documentation]

---

## Go-to-Market Decisions

### DEC-030: [Example: Launch Channel Decision]

**Date:** [DATE]
**Decided By:** [Marketing/Product Lead]
**Status:** ✅ Final

#### Context

[What GTM decision was needed?]

#### Options Considered

[List channel/campaign/messaging options]

#### Decision

[Clear GTM decision]

#### Rationale

[Why this GTM approach]

#### Impact

[Team and budget implications]

#### Success Criteria

[How to measure GTM effectiveness]

#### Related

- **MKT-XXX:** [Related market docs]
- **MET-XXX:** [Related metrics]

---

## Reversed Decisions

### When a Decision Is Reversed

Move the decision here and update its status to ❌ Reversed.

**Format:**
```
## DEC-XXX: [Original Decision] — ❌ REVERSED

**Original Date:** [When first decided]
**Reversed Date:** [When reversed]
**Reversed By:** [Who/what triggered reversal]

### Why It Was Reversed

[What changed? What did we learn?]

### New Decision

[What are we doing instead? Link to new DEC-XXX if created]
```

---

## Decision Tracking

### By Status

**Active Decisions (✅ Final):**
- DEC-001: [Title]
- DEC-002: [Title]
- DEC-003: [Title]
- [Add more]

**Under Review (🔄):**
- [None currently / List decisions being discussed]

**Reversed (❌):**
- [None currently / List reversed decisions]

### By Type

**Strategic:** DEC-001, DEC-002, DEC-003
**Product Scope:** DEC-010
**Technical:** DEC-020
**Go-to-Market:** DEC-030

### Review Schedule

**Quarterly Reviews:**
- Review all strategic decisions (DEC-001-009)
- Validate assumptions still hold
- Update as needed based on learnings

**As-Needed Reviews:**
- When metrics significantly miss targets
- When major market changes occur
- When customer feedback contradicts assumptions

---

## Decision-Making Process

**For major decisions:**

1. **Frame the Decision**
   - What exactly are we deciding?
   - By when do we need to decide?
   - Who has decision-making authority?

2. **Gather Information**
   - What data do we have?
   - What customer insights are relevant?
   - What are the technical constraints?

3. **Identify Options**
   - Brainstorm all reasonable options
   - Don't prematurely eliminate choices

4. **Analyze Options**
   - List pros/cons for each
   - Consider impact on team, customers, business
   - Identify risks and mitigations

5. **Make Decision**
   - Decision maker chooses based on analysis
   - Clearly document the decision
   - Assign DEC-XXX ID

6. **Communicate**
   - Share decision with all affected parties
   - Explain rationale
   - Update relevant documentation (PRD, EPIC, SoT files)

7. **Execute & Monitor**
   - Implement the decision
   - Track success criteria
   - Review at scheduled date

---

**Last Updated:** [DATE]
**Total Decisions:** [Count]
**Next ID:** DEC-XXX
