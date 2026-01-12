# Metrics & KPIs

**Purpose:** Define and track all product metrics and KPIs.
**Last Updated:** [DATE]
**Owner:** [Product Lead / Data/Analytics Lead]

---

## How to Use This File

**What Goes Here:**
- Metric definitions (what and how we measure)
- Targets and goals
- Current performance
- Metric analysis and insights

**ID Prefix:** MET-XXX

**Companion:** README.md has live metric dashboard (updated daily)
This file has metric definitions (updated when metrics change)

---

## North Star Metric

### MET-001: [Your North Star Metric]

**Definition:** [Clear definition of what you're measuring]

**Example:** Weekly Active Users (WAU) — Users who complete at least one [core action] per week

#### Why This Metric

[Explain why this is your north star - it captures value delivery, predicts retention/growth, aligns team, etc.]

#### Measurement

**Tracking:**
- Tool: [Google Analytics, Mixpanel, Amplitude, custom, etc.]
- Event: [Specific event or query]
- Frequency: Updated [real-time, daily, weekly]

**Calculation:**
```
[Formula or query logic]
```

#### Targets

| Timeframe | Target | Current | Status |
|-----------|--------|---------|--------|
| Week 1 post-launch | [N] | [Actual] | 🟢/🟡/🔴 |
| Week 4 post-launch | [N] | [Actual] | 🟢/🟡/🔴 |
| Month 3 | [N] | [Actual] | 🟢/🟡/🔴 |
| Month 6 | [N] | [Actual] | 🟢/🟡/🔴 |
| Year 1 | [N] | - | ⏳ |

#### Analysis

**Last Week:** [N] ([+/-X%] vs. previous week)
**Last Month:** [N] ([+/-X%] vs. previous month)
**Trend:** 📈 Growing / → Flat / 📉 Declining

**Drivers:**
- [Factor increasing/decreasing this metric]
- [Second factor]

**Action Items:**
- [What we're doing to improve this metric]

---

## Launch Metrics (Week 1-4)

### MET-002: Signups

**Definition:** New user accounts created

#### Measurement

**Tracking:**
- Event: user_signup_completed
- Excludes: Test accounts, spam accounts

**Calculation:**
```
COUNT(DISTINCT user_id)
WHERE signup_completed_at BETWEEN [start] AND [end]
AND is_test_account = false
```

#### Targets

| Period | Target | Current | Status |
|--------|--------|---------|--------|
| Week 1 | [N] | [Actual] | 🟢/🟡/🔴 |
| Week 2 | [N] | [Actual] | 🟢/🟡/🔴 |
| Week 3 | [N] | [Actual] | 🟢/🟡/🔴 |
| Week 4 | [N] | [Actual] | 🟢/🟡/🔴 |
| **Month 1 Total** | **[N]** | **[Actual]** | 🟢/🟡/🔴 |

#### Analysis

**Signup Sources:**
- Product Hunt: [N] ([X]%)
- Direct: [N] ([X]%)
- Referral: [N] ([X]%)
- Other: [N] ([X]%)

**Conversion Funnel:**
- Landing page views: [N]
- Signup started: [N] ([X]% of views)
- Signup completed: [N] ([X]% of started)
- **Overall conversion:** [X]% (views → signup)

---

### MET-003: Trial to Paid Conversion

**Definition:** Percentage of trial users who convert to paying customers

#### Measurement

**Tracking:**
- Cohort: Users who started trial in [period]
- Event: Subscription activated

**Calculation:**
```
(Paid subscriptions / Total trial starts) × 100
```

#### Targets

| Cohort | Trial Starts | Paid Conversions | Conversion Rate | Target |
|--------|--------------|------------------|-----------------|--------|
| Week 1 | [N] | [N] | [X]% | [Target]% |
| Week 2 | [N] | [N] | [X]% | [Target]% |
| Week 3 | [N] | [N] | [X]% | [Target]% |
| Week 4 | [N] | [N] | [X]% | [Target]% |

**Target:** [X]% trial-to-paid conversion

#### Analysis

**Conversion Factors:**
- Users who convert typically: [Pattern 1]
- Users who don't convert typically: [Pattern 2]

**Action Items:**
- [Initiative to improve conversion]

---

### MET-004: Activation Rate

**Definition:** Percentage of signups who complete "aha moment" / core value action

**Aha Moment:** [Define what action indicates user "gets it"]

**Example:** Created first workflow, invited team member, completed onboarding

#### Measurement

**Tracking:**
- Event: [specific activation event]
- Timeframe: Within [X] days of signup

**Calculation:**
```
(Users who completed [aha moment] / Total signups) × 100
Within [X] days of signup
```

#### Targets

| Cohort | Signups | Activated | Activation Rate | Target |
|--------|---------|-----------|-----------------|--------|
| Week 1 | [N] | [N] | [X]% | [Target]% |
| Week 2 | [N] | [N] | [X]% | [Target]% |
| Week 3 | [N] | [N] | [X]% | [Target]% |
| Week 4 | [N] | [N] | [X]% | [Target]% |

**Target:** [X]% activation rate

#### Analysis

**Time to Activation:**
- Median: [N] hours/days
- Fast activators (< [X] hours): [Y]% (typically convert at [Z]%)
- Slow activators (> [X] days): [Y]% (typically convert at [Z]%)

**Activation Blockers:**
- [Common barrier 1]
- [Common barrier 2]

**Action Items:**
- [Initiative to improve activation]

---

### MET-005: Retention (D7, D30)

**Definition:** Percentage of users who return and are active after D days

**Active Defined As:** [User completed at least one core action]

#### Measurement

**Tracking:**
- D7: Active 7 days after signup
- D30: Active 30 days after signup

**Calculation:**
```
(Users active on day D / Users who signed up D days ago) × 100
```

#### Targets

| Cohort | Signup Date | D7 Retention | D30 Retention | Target D7 | Target D30 |
|--------|-------------|--------------|---------------|-----------|------------|
| Week 1 | [Date] | [X]% | [X]% | [Target]% | [Target]% |
| Week 2 | [Date] | [X]% | - | [Target]% | - |
| Week 3 | [Date] | - | - | [Target]% | - |

**Targets:**
- D7: [X]%
- D30: [X]%

#### Analysis

**Retention Curve:**
```
D1:  [X]% active
D3:  [X]% active
D7:  [X]% active
D14: [X]% active
D30: [X]% active
```

**High Retention Cohorts:**
- Users who [behavior 1] retain at [X]%
- Users who [behavior 2] retain at [X]%

**Low Retention Cohorts:**
- Users who [behavior 1] retain at [X]%
- Reason: [Analysis]

---

## Product Health Metrics

### MET-010: Net Promoter Score (NPS)

**Definition:** "How likely are you to recommend [Product] to a colleague?" (0-10 scale)

#### Measurement

**Survey:**
- Trigger: [After X days of usage / Random sampling / etc.]
- Frequency: [Once per user every X days]
- Tool: [In-app survey tool]

**Scoring:**
- Promoters: 9-10
- Passives: 7-8
- Detractors: 0-6
- **NPS = % Promoters - % Detractors**

#### Targets

| Period | NPS | Promoters | Passives | Detractors | Responses | Target |
|--------|-----|-----------|----------|------------|-----------|--------|
| Week 1 | [Score] | [X]% | [X]% | [X]% | [N] | [Target] |
| Week 2 | [Score] | [X]% | [X]% | [X]% | [N] | [Target] |
| Month 1 | [Score] | [X]% | [X]% | [X]% | [N] | [Target] |

**Target:** NPS > [Score] (Industry benchmark: [X])

#### Analysis

**Promoter Reasons:**
- [Common theme 1]
- [Common theme 2]

**Detractor Reasons:**
- [Common complaint 1] → [Action: FEAT-XXX]
- [Common complaint 2] → [Action: ...]

---

### MET-011: Customer Satisfaction (CSAT)

**Definition:** "How satisfied are you with [specific experience]?" (1-5 scale)

**Measured At:**
- Post-onboarding
- Post-support interaction
- Post-feature use

[Similar structure to MET-010]

---

## Business Metrics

### MET-020: Monthly Recurring Revenue (MRR)

**Definition:** Predictable monthly revenue from subscriptions

#### Measurement

**Calculation:**
```
SUM(active_subscription_monthly_value)
Where subscription_status = 'active'
```

**Includes:**
- Monthly subscriptions: [Plan value]
- Annual subscriptions: [Annual value / 12]

**Excludes:**
- One-time payments
- Refunded/disputed payments

#### Targets

| Month | Target MRR | Actual MRR | New MRR | Churned MRR | Net New |
|-------|------------|------------|---------|-------------|---------|
| Month 1 | $[X] | $[Actual] | +$[N] | -$[N] | +$[N] |
| Month 2 | $[X] | $[Actual] | +$[N] | -$[N] | +$[N] |
| Month 3 | $[X] | - | - | - | - |

#### Analysis

**MRR Growth Rate:** [X]% MoM

**MRR Composition:**
- [Plan 1]: $[X] ([Y]%)
- [Plan 2]: $[X] ([Y]%)
- [Plan 3]: $[X] ([Y]%)

---

### MET-021: Customer Acquisition Cost (CAC)

**Definition:** Total cost to acquire a customer

#### Measurement

**Calculation:**
```
CAC = (Marketing Spend + Sales Spend) / New Customers
```

**Includes:**
- Marketing: Ads, content, tools, events
- Sales: Salaries, tools, travel
- Timeframe: [This month / This quarter]

#### Targets

| Period | Marketing | Sales | Total Spend | New Customers | CAC | Target |
|--------|-----------|-------|-------------|---------------|-----|--------|
| Month 1 | $[X] | $[X] | $[Total] | [N] | $[CAC] | <$[Target] |
| Month 2 | $[X] | $[X] | $[Total] | [N] | $[CAC] | <$[Target] |

**Target:** CAC < $[X]

#### Analysis

**CAC by Channel:**
- Product Hunt: $[X]
- Content/SEO: $[X]
- Paid ads: $[X]
- Referral: $[X]

**CAC:LTV Ratio:** [Currently 1:X, Target 1:3+]

---

### MET-022: Churn Rate

**Definition:** Percentage of customers who cancel per month

#### Measurement

**Customer Churn:**
```
(Customers lost this month / Customers at start of month) × 100
```

**Revenue Churn (MRR):**
```
(MRR lost this month / MRR at start of month) × 100
```

#### Targets

| Month | Customers Start | Customers Lost | Customer Churn | MRR Churn | Target |
|-------|-----------------|----------------|----------------|-----------|--------|
| Month 1 | [N] | [N] | [X]% | [X]% | <[Target]% |
| Month 2 | [N] | [N] | [X]% | [X]% | <[Target]% |

**Target:** Customer churn < [X]% per month

#### Analysis

**Churn Reasons:**
- [Reason 1]: [X]% of churned customers
- [Reason 2]: [X]% of churned customers

**Churn Prevention:**
- [Initiative 1]
- [Initiative 2]

---

## Feature Metrics

### MET-030: [Feature Name] Adoption

**Definition:** Percentage of users who use [FEAT-XXX]

**Related:** [FEAT-XXX](#feat-xxx)

#### Measurement

**Adoption:**
```
(Users who used feature / Total active users) × 100
```

#### Targets

| Period | Active Users | Feature Users | Adoption Rate | Target |
|--------|--------------|---------------|---------------|--------|
| Week 1 | [N] | [N] | [X]% | [Target]% |
| Month 1 | [N] | [N] | [X]% | [Target]% |

**Target:** [X]% adoption

#### Analysis

**Usage Frequency:**
- Daily: [X]% of feature users
- Weekly: [X]% of feature users
- Monthly: [X]% of feature users

**Impact on Retention:**
- Users who use this feature retain at [X]%
- Users who don't retain at [X]%

---

## Technical Metrics

### MET-040: System Uptime

**Definition:** Percentage of time product is available

**Target:** 99.9% uptime

[Track in monitoring tools - Pingdom, etc.]

---

### MET-041: API Response Time

**Definition:** Average API response time

**Targets:**
- p50: < 200ms
- p95: < 500ms
- p99: < 1000ms

[Track in monitoring tools - DataDog, New Relic, etc.]

---

## Metric Review Process

### Daily (During Launch)

**Review:**
- MET-001: North Star Metric
- MET-002: Signups
- MET-003: Trial to Paid
- MET-040: System Uptime

**Update:** README.md metrics dashboard

### Weekly

**Review:**
- All launch metrics (MET-002 through MET-005)
- Product health (MET-010, MET-011)
- Feature adoption (MET-030+)

**Analyze:**
- Week-over-week trends
- Identify issues early
- Adjust tactics

### Monthly

**Review:**
- All metrics
- Business metrics (MRR, CAC, Churn)
- Full funnel analysis

**Report:**
- Monthly metrics report to team
- Insights and learnings
- Next month targets

---

## Metric Definitions Template

**For adding new metrics:**

### MET-XXX: [Metric Name]

**Definition:** [What you're measuring]
**Why It Matters:** [Business/product importance]

#### Measurement

**Tracking:** [Where/how tracked]
**Calculation:** [Formula]

#### Targets

[Table with targets and actuals]

#### Analysis

[Key insights and trends]

---

**Last Updated:** [DATE]
**Total Metrics:** [Count]
**Next ID:** MET-XXX
**Live Dashboard:** See README.md
