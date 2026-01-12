# Context Patterns

> **ID Prefix:** PAT-XXX
>
> **Purpose:** Define reusable patterns for AI context engineering across product development
>
> **Last Updated:** 2025-12-26

---

## PAT-001: Context Layer Pattern

**Status:** Active
**Category:** Structure
**Applies To:** All disciplines, all phases

### Problem
Different team members need different levels of detail in AI context. Strategists need high-level vision; developers need implementation specifics. Mixing all levels creates bloated, unfocused context that confuses AI agents and slows collaboration.

### Solution: Three-Layer Context Architecture

Structure context into three distinct layers, each serving different purposes and audiences:

**1. Strategic Layer** (The "Why")
- **Purpose**: Long-term vision, positioning, business context
- **Audience**: Executives, strategists, product leaders
- **Time Horizon**: 6-18 months
- **Stability**: Changes quarterly or semi-annually
- **AI Use Cases**: Strategic analysis, market positioning, opportunity assessment

**Content:**
- Vision and mission
- Market positioning
- Target customers and segments
- Business model and monetization
- Strategic priorities and goals
- Key success metrics
- Competitive landscape

**Example (Good):**
```markdown
## Strategic Context

**Vision**: Enable small businesses to compete with enterprises through AI-powered automation

**Target Market**:
- SMBs (10-100 employees) in professional services
- Pain point: Can't afford enterprise tools or dedicated IT staff
- Willingness to pay: $50-200/user/month

**Strategic Priority**: Build marketplace leadership in SMB segment before competitors catch up
```

**Example (Bad - Too Tactical):**
```markdown
## Strategic Context

We're building a React app with PostgreSQL backend...
Using Stripe for payments, SendGrid for emails...
Sprint 12 focuses on user dashboard improvements...
```

**2. Tactical Layer** (The "What")
- **Purpose**: Phase-specific plans, decisions, tradeoffs
- **Audience**: Product managers, designers, tech leads
- **Time Horizon**: 1-3 months (current phase)
- **Stability**: Changes weekly or bi-weekly
- **AI Use Cases**: Feature planning, design decisions, technical architecture

**Content:**
- Current phase objectives
- Feature requirements and specs
- Design decisions and rationale
- Technical architecture choices
- Resource allocation
- Risk and mitigation plans
- Dependencies and blockers

**Example (Good):**
```markdown
## Tactical Context (Build Phase - Q1 2024)

**Phase Objective**: Launch MVP with core automation workflows

**Key Features**:
1. Email automation builder (drag-drop, no-code)
2. CRM integration (Salesforce, HubSpot)
3. Usage analytics dashboard

**Critical Decisions**:
- Using n8n workflow engine (vs building custom) - faster time to market
- Starting with 2 CRM integrations (vs 5+) - validate demand first
- Self-service onboarding (no sales-assisted) - reduce CAC

**Dependencies**:
- n8n enterprise license approval (legal review pending)
- CRM API rate limits (testing in progress)
```

**Example (Bad - Too Strategic):**
```markdown
## Tactical Context

Our vision is to democratize automation for SMBs...
We're targeting a $10B market opportunity...
```

**3. Operational Layer** (The "How")
- **Purpose**: Day-to-day execution details, code, tasks
- **Audience**: Individual contributors (developers, designers, testers)
- **Time Horizon**: Days to weeks (current sprint/iteration)
- **Stability**: Changes daily
- **AI Use Cases**: Code generation, debugging, test creation, detailed implementation

**Content:**
- Current task/ticket details
- Code architecture and patterns
- API specifications
- Database schemas
- Test cases and coverage
- Bug reports and fixes
- Implementation notes

**Example (Good):**
```markdown
## Operational Context (Current Sprint)

**Active Task**: Implement email workflow builder UI

**Tech Stack**:
- React Flow for drag-drop canvas
- Zustand for state management
- TailwindCSS for styling

**Key Files**:
- `src/components/WorkflowBuilder.tsx` - Main builder component
- `src/stores/workflowStore.ts` - Workflow state management
- `src/types/workflow.ts` - Type definitions

**Current Blocker**:
React Flow nodes not persisting state on reconnect
- Workaround: Storing node data in Zustand
- Tracking: github.com/ourorg/product/issues/234
```

**Example (Bad - Too Strategic):**
```markdown
## Operational Context

We're building an automation platform to help SMBs compete with enterprises...
```

### Usage Guidelines

**When to Use Each Layer:**

| Scenario | Layer(s) Needed |
|----------|-----------------|
| Strategic planning session | Strategic only |
| Feature spec writing | Strategic + Tactical |
| Code implementation | Tactical + Operational |
| Bug fix | Operational only |
| Architecture decision | Strategic + Tactical |
| Cross-team alignment | Strategic + Tactical |

**Layer Transitions:**
- **Strategic → Tactical**: "Given this vision, what should we build next quarter?"
- **Tactical → Operational**: "Given this feature spec, how do we implement it?"
- **Operational → Tactical**: "This implementation issue reveals a design gap"
- **Tactical → Strategic**: "User feedback suggests our positioning is off"

**Anti-Patterns to Avoid:**

❌ **Layer Mixing**: Putting implementation details in strategic context
❌ **Layer Duplication**: Repeating same info across layers (use references)
❌ **Wrong Layer for Task**: Using strategic context for debugging
❌ **Stale Layers**: Operational context from 3 sprints ago still present
❌ **Missing Layers**: Only operational context, no strategic/tactical framing

### Related IDs
- [WF-001: Phase Transition Workflow](#wf-001) - How layers evolve between phases
- [TEMP-001: Strategic Layer Template](#temp-001) - Template for strategic context
- [MP-001: Phase Alignment Principle](#mp-001) - Why layers align with phases

---

## PAT-002: Phase Alignment Pattern

**Status:** Active
**Category:** Evolution
**Applies To:** All disciplines

### Problem
Context needs vary dramatically across product development lifecycle gates. Early gates focus on "what to build and why" while later gates focus on "how to build and scale." Using same context structure across all gates creates friction and reduces AI effectiveness.

### Solution: Gate-Aligned Context Structure

Adapt context emphasis and detail based on product development gate (following GHM 10-gate lifecycle):

**Quick Reference:**

| Gate | Strategic | Tactical | Operational | Primary Focus |
|------|-----------|----------|-------------|---------------|
| **v0.1 Spark** | 90% | 10% | 0% | Problem/vision validation |
| **v0.2 Market Definition** | 70% | 30% | 0% | Segments, TAM, ICP |
| **v0.3 Commercial Model** | 60% | 40% | 0% | Pricing, positioning, moat |
| **v0.4 User Journeys** | 30% | 60% | 10% | Personas, pain/value alignment |
| **v0.5 Red Team Review** | 20% | 70% | 10% | Risk analysis, mitigation |
| **v0.6 Architecture** | 10% | 40% | 50% | Tech stack, system design |
| **v0.7 Build Execution** | 5% | 30% | 65% | Implementation, EPICs |
| **v0.8 Deployment & Ops** | 5% | 40% | 55% | Infrastructure, monitoring |
| **v0.9 Go-to-Market** | 35% | 50% | 15% | Launch campaigns, messaging |
| **v1.0 Market Adoption** | 40% | 35% | 25% | Optimization, iteration |

---

### v0.1 Spark

**Context Weights:**
- **Strategic**: 90% (Primary)
- **Tactical**: 10% (Minimal)
- **Operational**: 0%

**Focus:**
- Problem statement and validation
- Product vision and mission
- Initial market opportunity
- Desired outcomes and success signals
- Constraints and non-goals

**AI Use Cases:**
- Problem articulation refinement
- Vision statement development
- Opportunity validation
- Constraint analysis

**Example Context:**
```markdown
## v0.1 Spark Context

### Strategic (90%)
**Problem:** SMBs lose $50K/year on manual email workflows
**Vision:** Enable SMBs to compete with enterprises through AI automation
**Opportunity:** $10B market, 5M target SMBs in US
**Hypothesis:** SMBs will pay for no-code automation that saves 10+ hrs/week

### Tactical (10%)
**Initial Scope Ideas:** Email automation + CRM integration
**Success Signal:** 10 SMBs validate pain point in interviews
```

---

### v0.2 Market Definition

**Context Weights:**
- **Strategic**: 70% (Primary)
- **Tactical**: 30% (Secondary)
- **Operational**: 0%

**Focus:**
- Market segmentation and sizing
- Target customer segments (ICP)
- Total Addressable Market (TAM)
- Competitive landscape mapping
- "Not for" statements

**AI Use Cases:**
- Market research synthesis
- Segment analysis and prioritization
- TAM/SAM/SOM calculation
- Competitive positioning

**Example Context:**
```markdown
## v0.2 Market Definition Context

### Strategic (70%)
**Target Segment:** US-based SMBs (10-100 employees) in professional services
**TAM:** $10B (5M SMBs × $2K ACV)
**SAM:** $2B (focus on tech-forward SMBs)
**Competitors:** Zapier (workflow), HubSpot (email), Make (automation)
**Differentiation:** AI-first, no-code, SMB-optimized

### Tactical (30%)
**ICP Criteria:**
- Company size: 10-100 employees
- Industry: Professional services, consulting, agencies
- Pain: 20+ hours/week on manual workflows
- Budget: $100-300/user/month
**Not For:** Enterprises (too complex), solopreneurs (insufficient budget)
```

---

### v0.3 Commercial Model

**Context Weights:**
- **Strategic**: 60% (Primary)
- **Tactical**: 40% (Secondary)
- **Operational**: 0%

**Focus:**
- Monetization strategy and pricing model
- Packaging and tiers
- Competitive pricing analysis
- Unit economics and margins
- Strategic moat and defensibility

**AI Use Cases:**
- Pricing strategy analysis
- Competitive price comparison
- Unit economics modeling
- Monetization optimization

**Example Context:**
```markdown
## v0.3 Commercial Model Context

### Strategic (60%)
**Pricing Model:** Per-user SaaS subscription
**Target Price:** $150/user/month (enterprise-grade value at SMB price)
**Moat:** AI automation library + workflow templates + integrations
**Unit Economics:**
- LTV: $5,400 (36-month average)
- CAC: $1,200
- LTV:CAC = 4.5x

### Tactical (40%)
**Pricing Tiers:**
- Starter: $99/user/mo (1 integration, 100 workflows/mo)
- Professional: $199/user/mo (5 integrations, unlimited workflows)
- Enterprise: Custom (SSO, advanced security, dedicated support)
**Anchor Competitor:** HubSpot at $800/seat/mo (we're 75% cheaper)
```

---

### v0.4 User Journeys

**Context Weights:**
- **Strategic**: 30% (Background)
- **Tactical**: 60% (Primary)
- **Operational**: 10% (Emerging)

**Focus:**
- User personas and archetypes
- Journey maps and workflows
- Pain points and value propositions
- Feature requirements and priorities
- User research insights

**AI Use Cases:**
- Journey map optimization
- Persona refinement
- Feature prioritization
- User story generation

**Example Context:**
```markdown
## v0.4 User Journeys Context

### Strategic (30%)
**Vision:** Enable SMBs to compete with enterprises
**Target:** Professional services SMBs (10-100 employees)

### Tactical (60%)
**Primary Persona:** Operations Manager at 50-person consulting firm
**Key Pain:** Spends 15 hours/week routing client emails manually
**Jobs to be Done:**
1. Automatically route client emails to right consultant
2. Trigger follow-up workflows based on email content
3. Update CRM with email interactions
**Must-Have Features:**
- Email parsing and routing (P0)
- CRM integration - Salesforce/HubSpot (P0)
- Workflow automation builder (P0)
- Email templates and responses (P1)

### Operational (10%)
**Tech Stack Considerations:** Need email API, CRM connectors, workflow engine
```

---

### v0.5 Red Team Review

**Context Weights:**
- **Strategic**: 20% (Background)
- **Tactical**: 70% (Primary)
- **Operational**: 10% (Technical validation)

**Focus:**
- Risk identification and assessment
- Adversarial challenge to assumptions
- Mitigation strategies and contingencies
- Go/no-go decision criteria
- Early warning signals

**AI Use Cases:**
- Risk scenario generation
- Assumption challenge
- Mitigation strategy development
- Competitive response analysis

**Example Context:**
```markdown
## v0.5 Red Team Review Context

### Strategic (20%)
**Vision Validation:** Confirmed - 50 SMBs validated pain point
**Market Validation:** TAM/SAM sizing holds

### Tactical (70%)
**Key Risks:**
1. **Email deliverability** (High) - ISPs may flag automated emails
   - Mitigation: Partner with SendGrid/Postmark
2. **CRM integration complexity** (Medium) - 20+ CRMs to support
   - Mitigation: Start with top 3 (Salesforce, HubSpot, Pipedrive)
3. **AI accuracy** (Medium) - Email routing errors frustrate users
   - Mitigation: Human-in-loop review for first 30 days
**Go/No-Go Criteria:**
- Validated: 10+ SMBs commit to pilot ✅
- Validated: Email deliverability > 95% in testing ✅
- Risk: CRM integration timeline acceptable ✅
**Decision:** GO - proceed to architecture

### Operational (10%)
**Technical Validation Needed:** Email parsing accuracy, CRM API limits
```

---

### v0.6 Architecture

**Context Weights:**
- **Strategic**: 10% (Background)
- **Tactical**: 40% (Requirements)
- **Operational**: 50% (Primary)

**Focus:**
- Technical architecture and system design
- Technology stack selection
- Infrastructure and scalability
- Integration patterns and APIs
- Security and compliance requirements

**AI Use Cases:**
- Architecture pattern recommendations
- Tech stack trade-off analysis
- Scalability assessment
- Security review

**Example Context:**
```markdown
## v0.6 Architecture Context

### Strategic (10%)
**Market:** SMBs, professional services
**Scale Target:** 10K customers, 100K users by year 2

### Tactical (40%)
**Must-Have Features:**
- Email parsing/routing
- Workflow automation
- CRM integrations (Salesforce, HubSpot, Pipedrive)
**Non-Functional Requirements:**
- Email processing: < 30 seconds
- Uptime: 99.9%
- Data residency: US-only option for compliance

### Operational (50%)
**Tech Stack:**
- **Frontend:** React + TypeScript, Next.js
- **Backend:** Node.js + Express, Python (ML services)
- **Database:** PostgreSQL (structured), Redis (cache)
- **Queue:** BullMQ for email processing
- **ML:** OpenAI API for email parsing
- **Infrastructure:** AWS (ECS, RDS, SQS, S3)
**Architecture:**
- Microservices: API service, Email processor, Workflow engine, Integration service
- Event-driven: SQS for async processing
- Security: OAuth 2.0, encryption at rest/transit, SOC 2 compliance path
**Key Design Decisions:**
- Multi-tenant DB with row-level security
- Serverless email processing (cost optimization)
- API-first design for future integrations
```

---

### v0.7 Build Execution

**Context Weights:**
- **Strategic**: 5% (Background)
- **Tactical**: 30% (Sprint planning)
- **Operational**: 65% (Primary)

**Focus:**
- Sprint/EPIC execution and tracking
- Code implementation and patterns
- API design and integration
- Database schemas and queries
- Testing and quality assurance
- Bug fixes and technical debt

**AI Use Cases:**
- Code generation and review
- Debugging and troubleshooting
- Test case generation
- Documentation creation
- Refactoring suggestions

**Example Context:**
```markdown
## v0.7 Build Execution Context

### Strategic (5%)
**Vision:** AI automation for SMBs
**Deadline:** v1.0 launch in 12 weeks

### Tactical (30%)
**Current Sprint:** Sprint 8 of 12
**Sprint Goal:** Complete CRM integration for HubSpot
**Must-Complete:**
- Email routing engine (EPIC-002) - 90% done
- HubSpot integration (EPIC-003) - current sprint
- Workflow builder UI (EPIC-004) - next sprint
**Blockers:**
- HubSpot API rate limits - need caching strategy

### Operational (65%)
**Active Files:**
- `src/integrations/hubspot/client.ts` - HubSpot API client
- `src/integrations/hubspot/sync.ts` - Contact sync logic
- `src/services/workflow/engine.ts` - Workflow execution engine
**Code Patterns:**
- Repository pattern for data access
- Factory pattern for integration clients
- Strategy pattern for routing rules
**Current Task:** Implement HubSpot contact sync with rate limit handling
**Tech Debt:** Email parser needs refactoring (monolithic, 500 lines)
**Test Coverage:** 78% (target: 80%)
```

---

### v0.8 Deployment & Ops

**Context Weights:**
- **Strategic**: 5% (Background)
- **Tactical**: 40% (Deployment planning)
- **Operational**: 55% (Primary)

**Focus:**
- Deployment strategy and infrastructure
- Monitoring and observability
- Incident response and runbooks
- Performance optimization
- Security hardening
- Operational procedures

**AI Use Cases:**
- Runbook generation
- Monitoring alert configuration
- Performance optimization suggestions
- Incident response assistance
- Infrastructure-as-code review

**Example Context:**
```markdown
## v0.8 Deployment & Ops Context

### Strategic (5%)
**Target:** 10K customers, 99.9% uptime

### Tactical (40%)
**Deployment Plan:**
- Soft launch: 50 beta customers (Week 1-2)
- Gradual rollout: 10% → 50% → 100% (Week 3-4)
- Rollback triggers: Error rate > 1%, latency > 2s
**Launch Readiness:**
- Infrastructure: AWS production environment ✅
- Monitoring: DataDog dashboards ✅
- Security: Penetration testing complete ✅
- Documentation: API docs, runbooks ✅

### Operational (55%)
**Infrastructure:**
- **Production:** us-east-1 (primary), us-west-2 (failover)
- **Scaling:** Auto-scaling ECS (2-20 containers)
- **Database:** RDS PostgreSQL with read replicas
- **Monitoring:** DataDog (APM, logs, metrics)
**Runbooks:**
- High email processing latency → Scale email processor workers
- Database connection exhaustion → Check connection pool settings
- CRM API failures → Check rate limits, retry with backoff
**SLOs:**
- Availability: 99.9% (43 min downtime/month)
- Email processing latency: p95 < 30s
- API response time: p95 < 500ms
**On-Call:** PagerDuty rotation, 15-min response SLA
```

---

### v0.9 Go-to-Market

**Context Weights:**
- **Strategic**: 35% (Positioning)
- **Tactical**: 50% (Primary - campaigns)
- **Operational**: 15% (Implementation)

**Focus:**
- Launch strategy and execution
- Marketing messaging and campaigns
- Sales enablement and processes
- Customer support preparation
- Analytics and tracking setup
- Feedback collection mechanisms

**AI Use Cases:**
- Marketing copy generation
- Campaign strategy development
- Sales pitch refinement
- Support documentation creation
- Customer communication templates

**Example Context:**
```markdown
## v0.9 Go-to-Market Context

### Strategic (35%)
**Positioning:** Enterprise-grade AI automation at SMB prices
**Target:** Operations Managers at 50-100 person professional services firms
**Differentiation:**
- AI-first (vs. rule-based: Zapier)
- SMB-optimized (vs. enterprise complexity: HubSpot)
- No-code (vs. developer-required: Make)

### Tactical (50%)
**Launch Timeline:**
- Week 1: Soft launch to 50 beta customers
- Week 2: PR campaign (TechCrunch, Product Hunt)
- Week 3: Paid acquisition starts ($50K budget)
- Week 4: Partner announcements (integrations)
**Marketing Campaigns:**
1. **Content:** "Email Automation ROI Calculator" lead magnet
2. **Paid:** Google Ads ("email automation for SMBs")
3. **Social:** LinkedIn thought leadership (operations managers)
4. **Email:** Drip campaign for trial signups (7-day onboarding)
**Messaging:**
- Headline: "Stop Losing 15 Hours/Week on Email Workflows"
- Value Props: AI automation, 10-min setup, $150/user vs. $800 alternatives
**Sales Process:**
- Self-serve trial (14 days)
- Sales assist for 10+ seat deals
- Customer success onboarding call (week 1)

### Operational (15%)
**Implementation:**
- Analytics: Mixpanel events (signup, activation, retention)
- Support: Intercom chat, email support@
- Documentation: Help center (50 articles ready)
**Launch Checklist:**
- Marketing site live ✅
- Trial signup flow tested ✅
- Email campaigns scheduled ✅
- Support team trained ✅
```

---

### v1.0 Market Adoption

**Context Weights:**
- **Strategic**: 40% (Optimization)
- **Tactical**: 35% (Iteration)
- **Operational**: 25% (Improvements)

**Focus:**
- Adoption metrics and analysis
- Customer feedback and insights
- Feature optimization and iteration
- Growth and scaling strategies
- Retention and churn analysis
- Strategic pivots based on data

**AI Use Cases:**
- Data analysis and insights
- Customer feedback synthesis
- Feature prioritization
- Optimization recommendations
- Churn prediction and prevention

**Example Context:**
```markdown
## v1.0 Market Adoption Context

### Strategic (40%)
**Performance vs. Targets:**
- Target: 100 customers by Month 6
- Actual: 127 customers ✅ (27% ahead)
- Churn: 8% (target: 10%) ✅
**Strategic Insights:**
- Professional services love it (90% of customers)
- Agencies struggling with complexity (source of churn)
- Enterprise interest emerging (5 inbound requests)
**Strategic Decisions:**
- Double down on professional services vertical
- Simplify workflow builder for agencies
- Explore enterprise tier (v1.1)

### Tactical (35%)
**Key Metrics:**
- MRR: $38K (growing 15%/mo)
- CAC: $1,100 (target: $1,200) ✅
- LTV: $6,200 (up from $5,400 projection) ✅
- Activation: 68% (users who send first workflow)
- Feature adoption: Email routing (95%), CRM sync (72%), workflow builder (45%)
**Optimization Priorities:**
1. Increase workflow builder adoption 45% → 65% (biggest value driver)
2. Improve onboarding (activation 68% → 80%)
3. Add Pipedrive integration (top request)
**Customer Feedback Themes:**
- "Love it" (78%): Email routing accuracy, time savings
- "Frustrating" (22%): Workflow builder learning curve, limited templates

### Operational (25%)
**Technical Performance:**
- Uptime: 99.94% ✅
- Email processing latency: p95 = 18s ✅ (target: 30s)
- Support tickets: 45/week (mostly onboarding questions)
**Engineering Focus:**
- Workflow builder UX improvements (EPIC-012)
- Workflow template library (EPIC-013)
- Pipedrive integration (EPIC-014)
**Technical Debt:**
- Email parser refactoring (carried from v0.7) - prioritize in Q2
```

---

### Usage Guidelines

**Gate Transitions:**

When moving between gates, update context weights gradually over 1-2 weeks:

```markdown
## Gate Transition Example: v0.6 Architecture → v0.7 Build

**Week 1 (Late v0.6)**
- Strategic: 10%
- Tactical: 40%
- Operational: 50%

**Week 2 (Early v0.7)**
- Strategic: 7%
- Tactical: 35%
- Operational: 58%

**Week 3 (Full v0.7)**
- Strategic: 5%
- Tactical: 30%
- Operational: 65%
```

**Anti-Patterns:**

❌ **Static Context**: Same context structure used across all gates
❌ **Skipping Strategic Gates**: Jumping from Spark (v0.1) directly to Architecture (v0.6)
❌ **Premature Detail**: Operational context in Market Definition (v0.2)
❌ **Lost Strategy**: No strategic context in Build/Deployment gates
❌ **Abrupt Transitions**: Switching from 90% strategic to 65% operational overnight
❌ **Missing Commercial Validation**: Skipping v0.2 Market Definition or v0.3 Commercial Model

### Related IDs
- [PAT-001: Context Layer Pattern](#pat-001) - Three-layer architecture
- [WF-001: Phase Transition Workflow](#wf-001) - How to transition between phases
- [PJ-001: Product Manager Journey](#pj-001) - How PMs manage phase transitions

---

## PAT-003: Discipline-Specific Context Pattern

**Status:** Active
**Category:** Collaboration
**Applies To:** Cross-discipline teams

### Problem
Different disciplines (strategists, designers, developers, etc.) need different context structures and emphasis. Forcing all disciplines to use identical context creates inefficiency and reduces AI effectiveness for specialized tasks.

### Solution: Discipline-Adapted Context with Shared Core

Maintain shared core context (strategic layer) while allowing discipline-specific extensions:

**Core Context (Shared by All)**
- Product vision and strategy
- Target customers and market
- Key success metrics
- Current phase and objectives

**+ Discipline-Specific Context Extensions**

### Strategist Context

**Additional Layers:**
- Market analysis and trends
- Competitive intelligence
- Business model and economics
- Strategic partnerships and opportunities
- Risk assessment and mitigation

**AI Use Cases:**
- Market opportunity analysis
- Competitive positioning recommendations
- Strategic scenario planning
- Business model validation

**Example:**
```markdown
## Strategist Context Extension

### Market Analysis
**TAM/SAM/SOM**: $10B / $2B / $100M
**Growth Rate**: 25% YoY in SMB automation space
**Key Trends**:
- AI adoption accelerating in SMB segment
- No-code tools reducing technical barriers
- Privacy regulations creating compliance opportunities

### Competitive Landscape
**Direct**: Zapier ($50M ARR, broad but shallow)
**Indirect**: Make.com ($20M ARR, power users)
**Positioning**: Enterprise-grade for SMB budget
```

### Product Manager Context

**Additional Layers:**
- Feature roadmap and prioritization
- User research and feedback
- Cross-functional coordination
- Sprint/release planning
- Success metrics and KPIs

**AI Use Cases:**
- Feature prioritization recommendations
- User feedback synthesis
- Roadmap sequencing optimization
- Success metric tracking

### Designer Context

**Additional Layers:**
- Design system and components
- User personas and journeys
- Accessibility requirements
- Visual design principles
- Interaction patterns

**AI Use Cases:**
- Design critique and suggestions
- Accessibility review
- Copy and microcopy refinement
- User flow optimization

**Example:**
```markdown
## Designer Context Extension

### Design System
**Component Library**: Custom React components + Radix UI
**Typography**: Inter (headings), System fonts (body)
**Colors**: Brand primary (#3B82F6), neutrals, semantic colors
**Spacing**: 4px base unit, 8px grid

### User Personas
**Primary**: "Busy Beth" - SMB operations manager
- Pain: Drowning in repetitive tasks
- Goal: Automate without learning to code
- Comfort: Comfortable with email, basic spreadsheets
```

### Developer Context

**Additional Layers:**
- Technical architecture
- API specifications
- Code patterns and conventions
- Development environment setup
- Testing and deployment processes

**AI Use Cases:**
- Code generation and completion
- Bug fixing and debugging
- Code review and refactoring
- Test case generation

**Example:**
```markdown
## Developer Context Extension

### Tech Stack
**Frontend**: React 18, TypeScript, TailwindCSS, React Query
**Backend**: Node.js, Express, PostgreSQL, Prisma ORM
**Infrastructure**: Vercel (frontend), Railway (backend), Supabase (DB)

### Code Conventions
- Functional components with hooks
- Custom hooks in `src/hooks/`
- API routes in `src/pages/api/`
- Type-first development (TypeScript strict mode)

### Current Architecture
```
src/
├── components/    # Reusable UI components
├── features/      # Feature-specific code
├── hooks/         # Custom React hooks
├── lib/           # Utilities and helpers
├── pages/         # Next.js pages and API routes
└── types/         # TypeScript type definitions
```
```

### Tester/QA Context

**Additional Layers:**
- Test strategy and coverage
- Known issues and bugs
- Test environments and data
- Quality standards and acceptance criteria
- Performance and security requirements

**AI Use Cases:**
- Test case generation
- Bug reproduction steps
- Edge case identification
- Regression test planning

### Marketer Context

**Additional Layers:**
- Messaging and positioning
- Customer segments and personas
- Marketing channels and campaigns
- Content calendar and assets
- Conversion metrics and funnels

**AI Use Cases:**
- Marketing copy generation
- Campaign planning
- Content ideation
- A/B test hypothesis generation

### Usage Guidelines

**Context Sharing Model:**

```
┌─────────────────────────────────────┐
│     Shared Core (All Disciplines)   │
│  - Vision, strategy, customers      │
│  - Current phase and objectives     │
└─────────────────────────────────────┘
         ↓         ↓         ↓
   ┌─────────┐ ┌────────┐ ┌──────────┐
   │Strategist│ │Designer│ │Developer │
   │Extension│ │Extension│ │Extension│
   └─────────┘ └────────┘ └──────────┘
```

**Cross-Discipline References:**

When one discipline needs context from another, use references:

```markdown
## Developer Context

### Design References
See: Designer context for full design system
Key Component: WorkflowBuilder in Figma (link)
Interaction spec: [DES-042](#) in designer context

### Strategic References
Vision: [STRAT-001](#) - SMB automation focus
Target customer: See strategist persona "Busy Beth"
```

**Anti-Patterns:**

❌ **Discipline Silos**: No shared core context
❌ **One-Size-Fits-All**: Forcing designers to maintain developer context
❌ **Context Duplication**: Repeating shared info in each discipline
❌ **Broken References**: Linking to stale or moved context

### Related IDs
- [PAT-001: Context Layer Pattern](#pat-001) - How layers work across disciplines
- [WF-002: Cross-Discipline Handoff](#wf-002) - Transferring context between disciplines
- [PJ-XXX: Practitioner Journeys](#) - How each discipline uses ACE

---

## PAT-004: Context Evolution Pattern

**Status:** Active
**Category:** Lifecycle
**Applies To:** All phases, all disciplines

### Problem
Context grows stale as products evolve. Yesterday's strategic priorities shift, features change scope, code gets refactored. Without systematic evolution, context becomes liability rather than asset—confusing AI agents and slowing teams.

### Solution: Progressive Context Refinement

Treat context as living artifact that evolves through explicit workflows:

**Evolution Triggers:**

1. **Phase Transitions** (Concept → Design → Build...)
   - Review and update all three layers
   - Adjust layer weights per PAT-002
   - Archive outdated phase-specific context

2. **Sprint/Iteration Boundaries**
   - Update operational layer
   - Review tactical layer for changes
   - Flag strategic drift

3. **Major Decisions or Pivots**
   - Immediate strategic layer update
   - Cascade to tactical/operational
   - Document decision rationale

4. **Scheduled Reviews** (Weekly/Monthly)
   - Check context freshness
   - Remove stale information
   - Add new learnings

**Evolution Workflow:**

```markdown
## Context Evolution Checklist

### Weekly (Operational Layer)
- [ ] Update current sprint/task details
- [ ] Remove completed work context
- [ ] Add new blockers or learnings
- [ ] Update code architecture if changed

### Bi-Weekly (Tactical Layer)
- [ ] Review feature specs for changes
- [ ] Update design decisions if revised
- [ ] Refresh dependencies and timelines
- [ ] Add new risks or mitigations

### Monthly (Strategic Layer)
- [ ] Validate vision still accurate
- [ ] Update market/competitive intelligence
- [ ] Refresh success metrics and progress
- [ ] Note strategic pivots or adjustments

### Phase Transitions (All Layers)
- [ ] Archive previous phase context to temp/
- [ ] Shift layer weights per PAT-002
- [ ] Update primary focus areas
- [ ] Refresh cross-discipline references
```

**Versioning Strategy:**

```markdown
## Context Version History

**v2.1** (2024-01-15) - Build Phase, Sprint 12
- Updated: Tech stack (added React Query)
- Removed: Design phase mockup details
- Added: Performance optimization context

**v2.0** (2024-01-01) - Build Phase Start
- Major update: Transitioned from Design to Build
- Shifted weights: Tactical 60% → Operational 60%
- Archived: User research details to temp/design-phase-research.md

**v1.5** (2023-12-15) - Design Phase, Final Sprint
- Updated: Design system with new components
- Added: Developer handoff documentation
- Noted: 3 major design decisions and rationale
```

**Context Pruning Rules:**

| Context Age | Action |
|-------------|--------|
| Current phase | Keep active in main context |
| Previous phase | Summarize, move details to temp/ |
| 2+ phases ago | Archive to temp/, keep only key decisions |
| 6+ months old | Delete unless historically significant |

**Example Evolution:**

**Concept Phase Context:**
```markdown
## Strategic Context (Week 2)
Vision: SMB automation platform
Hypothesis: SMBs will pay $100/user/month
Target: 100 customers in 6 months
```

↓ **Evolves to...**

**Design Phase Context:**
```markdown
## Strategic Context (Week 8)
Vision: SMB automation platform ← Kept
Validated: SMBs will pay $75-150/user (not exact $100) ← Updated with learning
Target: 100 customers in 8 months (adjusted timeline) ← Updated
New: Focus on operations managers, not IT ← Added

## Tactical Context (NEW)
MVP Features: Email automation, 2 CRM integrations
Design system: Custom components + Radix UI
```

↓ **Evolves to...**

**Build Phase Context:**
```markdown
## Strategic Context (Week 14)
Vision: SMB automation for operations teams ← Refined
Validated pricing: $99/user/month ← Finalized
Target: 150 customers in 6 months ← Updated based on early traction

## Tactical Context (Reduced)
Features: See codebase README for current scope ← Moved detail
Key decisions: Using n8n engine, 2 CRM integrations ← Kept only decisions

## Operational Context (NEW)
Current Sprint: Workflow builder UI
Tech Stack: React, TypeScript, PostgreSQL
Active Files: [detailed code context...]
```

### Anti-Patterns:

❌ **Context Hoarding**: Keeping every detail forever
❌ **No Evolution**: Context unchanged for months
❌ **Undocumented Changes**: Updating without noting what/why
❌ **Lost History**: Deleting all old context with no archive

### Related IDs
- [WF-001: Phase Transition Workflow](#wf-001) - How to evolve context between phases
- [PAT-002: Phase Alignment Pattern](#pat-002) - When to shift layer weights
- [TOOL-001: Context Health Checker](#tool-001) - Automated staleness detection

---

## PAT-005: Context Quality Pattern

**Status:** Active
**Category:** Validation
**Applies To:** All contexts

### Problem
"Garbage in, garbage out"—poor quality context produces poor AI results. Without quality standards, teams create bloated, stale, or incomplete context that reduces AI effectiveness and slows collaboration.

### Solution: Context Quality Metrics and Checkpoints

Define measurable quality criteria and regular validation:

**Quality Dimensions:**

**1. Completeness**
Does context include all necessary information for AI to be effective?

**Checklist:**
- [ ] Strategic layer present (vision, customers, metrics)
- [ ] Appropriate detail for current phase (per PAT-002)
- [ ] Cross-references to related context documented
- [ ] Decision rationale captured (not just decisions)
- [ ] Success criteria clearly stated

**Bad (Incomplete):**
```markdown
## Context
We're building an automation platform.
Tech stack: React, Node.js.
```

**Good (Complete):**
```markdown
## Strategic Context
Vision: Enable SMBs to compete with enterprises through AI automation
Target: Operations managers at 10-100 person companies
Success: 100 paying customers at $99/user/month within 6 months

## Tactical Context (Build Phase)
MVP Features: Email automation, CRM sync (Salesforce, HubSpot)
Key Decision: Using n8n engine vs custom (faster TTM, trade: less control)
Dependencies: n8n enterprise license (pending legal review)

## Operational Context (Current Sprint)
Active: Workflow builder UI component
Tech Stack: React 18, TypeScript, TailwindCSS, React Query
Files: src/components/WorkflowBuilder.tsx, src/stores/workflowStore.ts
```

**2. Freshness**
Is context current and relevant, or stale and outdated?

**Freshness Targets:**
- **Strategic Layer**: Updated monthly or on major pivots
- **Tactical Layer**: Updated bi-weekly or at phase transitions
- **Operational Layer**: Updated daily/weekly during active work

**Staleness Indicators:**
- ⚠️ Context references completed work as "upcoming"
- ⚠️ Context mentions team members who left months ago
- ⚠️ Context describes features that were cut or redesigned
- ⚠️ Context includes "current sprint" from 6 sprints ago

**Health Check:**
```markdown
## Context Freshness Check

✅ **Strategic**: Last updated 2024-01-10 (2 weeks ago)
❌ **Tactical**: Last updated 2023-11-15 (2 months ago) ← STALE
✅ **Operational**: Last updated 2024-01-22 (2 days ago)

Action: Review and update tactical layer this week
```

**3. Conciseness**
Is context focused and scannable, or bloated with unnecessary detail?

**Conciseness Rules:**
- Use references/links instead of duplicating content
- Archive historical context to temp/ after phase transitions
- Keep operational layer to <500 lines during active development
- Summarize instead of listing every detail

**Too Bloated:**
```markdown
## Operational Context

### Every Component (200+ listed)
### Every API Endpoint (100+ listed)
### Every Database Table (50+ listed)
### Complete Git History (1000+ commits)
### All Past Bugs (500+ issues)
```

**Right-Sized:**
```markdown
## Operational Context

### Key Components (Top 10 actively changing)
WorkflowBuilder, NodeEditor, ConnectionManager...
Full list: See src/components/README.md

### Critical APIs (Currently implementing)
POST /workflows, GET /workflows/:id, PUT /workflows/:id/nodes
Full spec: See docs/api-spec.md

### Active Work
Current file: src/components/WorkflowBuilder.tsx
Current issue: Node state persistence on reconnect
Related: github.com/org/repo/issues/234
```

**4. Accuracy**
Is context factually correct and aligned with reality?

**Accuracy Checks:**
- URLs and references are valid (not 404)
- Code examples compile/run
- Metrics and numbers are current
- Status reflects actual state (not aspirational)

**Inaccurate:**
```markdown
Our product has 10,000 users ← Actually 847
We use React 17 ← Actually upgraded to React 18
Current priority: Social features ← Actually pivoted to integrations
```

**Accurate:**
```markdown
Our product has 847 active users (goal: 1,000 by Q1 end)
Tech stack: React 18.2, TypeScript 5.1, Node.js 20
Current priority: CRM integrations (pivot from social features in Dec 2023)
```

**5. Accessibility**
Can all team members easily find and understand relevant context?

**Accessibility Criteria:**
- Clear navigation and structure
- Consistent formatting and conventions
- Searchable (good headings, keywords)
- Appropriate for audience (no jargon overload)

**Quality Validation Workflow:**

```markdown
## Weekly Context Quality Review

### Completeness Check
- [ ] All 3 layers present and appropriate for phase
- [ ] Key decisions documented with rationale
- [ ] Cross-references valid

### Freshness Check
- [ ] Strategic layer updated within last month
- [ ] Tactical layer updated within last 2 weeks
- [ ] Operational layer updated within last week
- [ ] No references to obsolete work

### Conciseness Check
- [ ] No duplication (using references instead)
- [ ] Historical context archived
- [ ] Operational layer < 500 lines

### Accuracy Check
- [ ] All links valid
- [ ] Numbers and metrics current
- [ ] Status reflects reality

### Accessibility Check
- [ ] Clear structure and headings
- [ ] Consistent formatting
- [ ] Appropriate detail level

**Quality Score: X/5 dimensions passing**
```

**Quality Metrics:**

| Metric | Target | Current | Status |
|--------|--------|---------|--------|
| Freshness (days since update) | < 7 (operational) | 3 | ✅ |
| Freshness (days since update) | < 14 (tactical) | 18 | ❌ |
| Freshness (days since update) | < 30 (strategic) | 12 | ✅ |
| Size (lines, operational) | < 500 | 342 | ✅ |
| Broken references | 0 | 2 | ❌ |
| Completeness score | 5/5 | 4/5 | ⚠️ |

### Anti-Patterns:

❌ **No Quality Checks**: Never reviewing or validating context
❌ **Perfection Paralysis**: Spending hours polishing instead of working
❌ **Metrics Without Action**: Tracking quality but not improving
❌ **Inconsistent Standards**: Different quality expectations per team member

### Related IDs
- [TOOL-001: Context Health Checker](#tool-001) - Automated quality validation
- [WF-003: Quality Review Workflow](#wf-003) - How to conduct reviews
- [MP-002: Quality Over Quantity](#mp-002) - Principle of concise, high-quality context

---

**Total Patterns:** 5
**Last Updated:** 2025-12-26
**Category Breakdown:**
- Structure: 1 (PAT-001)
- Evolution: 1 (PAT-002)
- Collaboration: 1 (PAT-003)
- Lifecycle: 1 (PAT-004)
- Validation: 1 (PAT-005)
