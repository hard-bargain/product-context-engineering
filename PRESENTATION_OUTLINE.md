# Presentation Outline: GHM as Product Development Methodology

## Slide 1: Title
**From Context Chaos to Context Engineering**
*A New Paradigm for AI-Powered Product Development*

---

## Slide 2: The Problem (Context Fragmentation)

### Pain Points in Modern Product Development
- 📁 **Doc Sprawl**: Specs in Confluence, tasks in Jira, discussions in Slack
- 🔄 **Repeated Context**: AI agents need 5-10 min context dumps per session
- 🧠 **Tribal Knowledge**: Critical decisions locked in people's heads
- 🔍 **Search Hell**: Teams spend more time finding info than building
- 🔌 **Onboarding Tax**: New members take days/weeks to get context

### The AI Amplification Effect
- AI can code 10x faster... but only if it has the right context
- Context window ≠ Contextual understanding
- Without structure, AI becomes a faster typist, not a thinking partner

---

## Slide 3: The Evolution of Development Methodologies

### Three Epochs

| Era | Paradigm | Strength | Weakness |
|-----|----------|----------|----------|
| **Waterfall** (1970s-2000s) | Upfront certainty | Clear documentation | Rigid, slow to adapt |
| **Agile** (2000s-2020s) | Iterative delivery | Fast adaptation | Fragmented knowledge |
| **Context Engineering** (2020s+) | Structured memory | Adaptable + Coherent | Requires discipline |

### GHM: The Third Epoch
- Preserves Agile's adaptability
- Restores Waterfall's coherence
- Optimized for human-AI collaboration

---

## Slide 4: Introducing Gear Heart Methodology (GHM)

### One-Line Definition
> A **PRD-driven context engineering workflow** that treats documentation as dynamic memory for AI agents and shared contracts for humans.

### Core Innovation: The 3+1+SoT+Temp Stack

```
[3 Navigation Files] → Orient anyone in <5 minutes
     ↓
[+1 Active EPIC] → Current work window + ID deltas
     ↓
[SoT Library] → Durable, ID-based specifications
     ↑
[Temp Scratchpads] → Harvested into SoT, then deleted
```

---

## Slide 5: Layer 1 - The Three Navigation Files

### Your Product's "Front Page"

| File | Purpose | Audience | Update Frequency |
|------|---------|----------|------------------|
| **CLAUDE.md** | How AI should behave | AI agents | Per-project setup |
| **PRD.md** | What we're building & why | Everyone | Per version (v0.1→v1.0) |
| **README.md** | Where we are now | Everyone | Weekly/as needed |

### Why This Works
- **Predictable**: Always the same 3 files, same location
- **Minimal**: Sub-5-minute onboarding for humans or AI
- **Referenced, not duplicated**: Points to SoT via IDs

---

## Slide 6: The ID-Based Knowledge Graph

### Traditional Docs: Copy-Paste Hell

```
PRD.md: "Users must verify email..."
EPIC-123.md: "Users must verify email..."
api-docs.md: "Email verification required..."
test-plan.md: "Test email verification..."
```
**Problem**: Update one, forget the others = drift

### GHM: Reference, Don't Duplicate

```
BR-021: Email Verification Required
  Status: Active
  Created: 2025-01-15
  Owner: Product
  Content: Users must verify email within 24 hours...

Referenced by:
  - UJ-014 (User onboarding journey)
  - API-031 (Email verification endpoint)
  - TC-089 (Email verification test)
  - PRD.md Section 4.2
```

**Result**: Single source of truth, zero drift

---

## Slide 7: ID Types & the Knowledge Graph

### Standard ID Prefixes

| Prefix | Type | Example |
|--------|------|---------|
| **BR-XXX** | Business Rules | BR-112: Free plan limited to 5 projects |
| **UJ-XXX** | User Journeys | UJ-014: New user onboarding flow |
| **API-XXX** | API Contracts | API-007: Authentication endpoint spec |
| **DBT-XXX** | Database/Schema | DBT-003: User table schema |
| **CFD-XXX** | Customer Feedback | CFD-010: Dark mode feature request |
| **TC-XXX** | Test Cases | TC-021: Login integration test |
| **DS-XXX** | Datasets | DS-005: Golden dataset for regression |

### The Graph in Action
- **Traceability**: User journey → Business rule → API → Test → Implementation
- **Impact Analysis**: Change BR-021 → See all affected items
- **Context Loading**: AI agent: "Load BR-021, API-031, UJ-014" (30 seconds)

---

## Slide 8: The PRD Lifecycle (v0.1 → v1.0)

### Progressive Product Definition

Traditional PRD: Write everything upfront (waterfall thinking)
GHM PRD: Evolves through 10 validated stages

| Version | Gate Question | Output |
|---------|---------------|--------|
| **v0.1 Spark** | Do we agree on the problem? | Problem statement |
| **v0.2 Market** | Who is this NOT for? | ICP definition |
| **v0.3 Commercial** | How do we win? | Business model |
| **v0.4 Journeys** | Do these solve real pains? | User journeys |
| **v0.5 Red Team** | What breaks first? | Risk analysis |
| **v0.6 Architecture** | Is the stack feasible? | Tech design |
| **v0.7 Build** | Do we have a realistic plan? | EPICs & tests |
| **v0.8 Deploy** | Can we safely ship? | Ops playbook |
| **v0.9 GTM** | How do we attract users? | Marketing plan |
| **v1.0 Adoption** | Are customers paying? | Live optimization |

### Key Insight
You can't skip stages, but you CAN iterate backward (e.g., v0.7 → v0.4 if journeys need revision)

---

## Slide 9: Multi-Agent Collaboration

### Traditional: Serial Context Dumps

```
Human → Research Agent (10-min dump)
  ↓
Research Agent → Architecture Agent (another 10-min dump)
  ↓
Architecture Agent → Implementation Agent (another 10-min dump)
```
**Total onboarding time: 30+ minutes**

### GHM: Parallel, Self-Service Context

```
Human writes: "AURA (research agent): Analyze market for UJ-014, UJ-022"

AURA reads:
  - README.md (30 sec) → Current status
  - PRD.md (2 min) → Product vision
  - UJ-014, UJ-022 from SoT (1 min) → Specific journeys
  Total: 3.5 minutes

AURA writes findings to CFD-XXX IDs in SoT

APOLLO (architecture agent) reads:
  - README.md (30 sec)
  - PRD.md (2 min)
  - CFD-XXX findings from AURA (30 sec)
  Total: 3 minutes
```

**Total onboarding time: 3-4 minutes per agent**

---

## Slide 10: Session Protocols (Long-Running AI)

### The Problem: Context Continuity
- AI sessions end (timeout, crash, context limit)
- Next agent needs to resume work
- Traditional: Start over or guess where to continue

### GHM Solution: EPIC Section 0 (Session State)

Every active EPIC includes:
```markdown
## Section 0: Session State

### Last Session
- Agent: APOLLO-architecture
- Ended: 2025-01-15 14:30 UTC
- Status: In progress
- Last Action: Completed API-031 design, started DBT-007 schema

### Handoff Notes
- DBT-007 needs review for indexing strategy
- Waiting on CFD-015 feedback from PM
- Next: Implement API-031 after DBT-007 approved

### IDs Modified This Session
- Created: API-031, DBT-007
- Modified: UJ-014 (added API references)
```

### Result
Next agent resumes in <2 minutes with full context

---

## Slide 11: Validation & Quality Gates

### Test-First Philosophy
GHM embeds testing at every stage:

| Test Type | Mapped To | Purpose |
|-----------|-----------|---------|
| **Unit Tests** | BR-XXX, API-XXX | Logic correctness |
| **Integration Tests** | API-XXX, DBT-XXX | System seams |
| **E2E Tests** | UJ-XXX | User journey validation |
| **Golden Datasets** | DS-XXX | AI output evaluation |
| **Performance Tests** | Performance targets | SLO compliance |

### Gates Block Progress
- Can't advance PRD v0.6 → v0.7 without architecture validation
- Can't deploy (v0.8) without passing security checks
- Can't claim v1.0 without real customer adoption data

---

## Slide 12: Practical Example - User Authentication Feature

### Without GHM
- Specs in 5 different documents
- Tests somewhere in Jira
- Implementation decisions in Slack threads
- New dev spends 2 days understanding the system

### With GHM

#### Navigation (30 seconds)
- README.md → Points to `UJ-014` (auth journey) and `EPIC-002` (auth implementation)

#### User Journey (1 minute)
- UJ-014: New user registration and login
  - References: BR-021 (email verification), BR-034 (password rules)
  - Tested by: TC-105 (E2E auth test)

#### Business Rules (2 minutes)
- BR-021: Email verification required within 24h
- BR-034: Password minimum 12 chars, special char required

#### API Contracts (2 minutes)
- API-031: POST /auth/register
- API-032: POST /auth/login
- API-033: POST /auth/verify-email

#### Tests (1 minute)
- TC-105: E2E user registration flow
- TC-089: Email verification unit test
- DS-012: Golden auth dataset (100 test users)

**Total onboarding: 6.5 minutes** (vs. 2 days)

---

## Slide 13: Visualization Suite

### Making the Invisible Visible

GHM includes Python tools to generate:

1. **ID Knowledge Graph**
   - Visual network of how IDs interconnect
   - See orphaned IDs (not referenced anywhere)
   - Identify circular dependencies

2. **Validation Reports**
   - Missing cross-references
   - IDs referenced but not defined
   - Temp files past expiration date

3. **Provenance Tracking**
   - Git SHA for every generated artifact
   - Config hash for reproducibility
   - Build metadata

```bash
python tools/generate-visuals.py --all
# Outputs docs/generated/id_graph.html
```

---

## Slide 14: Real-World Applications

### Ideal Use Cases

#### 1. AI-First Startups
- Building products where AI agents are primary contributors
- Need structured handoffs between sessions
- **Value**: 10x faster iteration with maintained context

#### 2. Distributed Teams
- Remote teams across timezones
- Need async collaboration without meetings
- **Value**: Self-service context loading, no "can you explain..." Slack threads

#### 3. Rapid Prototyping → Production
- Move fast but maintain quality
- Progressive PRD lifecycle guides evolution
- **Value**: Gate-based quality without waterfall slowdown

#### 4. Multi-Agent AI Systems
- Research agents, architecture agents, testing agents
- Common ID language enables collaboration
- **Value**: Specialized agents work in parallel, not serial

#### 5. Knowledge-Intensive Products
- Complex business rules, compliance requirements
- Traceability from requirement → test → implementation
- **Value**: Audit-ready documentation with zero extra effort

---

## Slide 15: Adoption Path

### Minimum Viable GHM (Week 1)

**Step 1: Create the 3 Navigation Files**
- Copy templates from `templates/product/`
- Fill in README.md with current status
- Write initial PRD.md (even if it's just v0.1 Spark)
- Create CLAUDE.md with AI agent instructions

**Step 2: Set Up SoT Library**
- Create `active/source_of_truth/` directory
- Start with just 2 files:
  - `USER_JOURNEYS.md` → Define your first 3 journeys (UJ-001, UJ-002, UJ-003)
  - `BUSINESS_RULES.md` → Define your first 3 rules (BR-001, BR-002, BR-003)

**Step 3: Create Your First EPIC**
- Copy `templates/epics/EPIC_template.md` to `active/epics/EPIC-001.md`
- Fill in Section 0 (Session State)
- Fill in Section 3A (ID Tracking) as you work

**Result**: You now have a GHM-compliant repository!

---

## Slide 16: Adoption Path (Continued)

### Scaling GHM (Month 1)

**Week 2: Expand SoT**
- Add `API_CONTRACTS.md` with API-XXX IDs
- Add `ACTUAL_SCHEMA.md` with DBT-XXX IDs
- Add `customer_feedback.md` with CFD-XXX IDs

**Week 3: Introduce Agents**
- Create agent briefs in `active/agents/`
- Define AURA (research), APOLLO (architecture), etc.
- Use agents with Section 0 handoff protocols

**Week 4: Automation**
- Run `python tools/generate_visuals.py --all`
- Set up validation hooks: `python tools/validate_sessions.py`
- Consider git pre-commit hooks for ID validation

### Full GHM (Month 2+)

- Progress PRD through lifecycle stages (v0.1 → v0.7+)
- Build test suite mapped to IDs
- Generate visualizations for stakeholder reviews
- Establish team rituals around EPIC gates

---

## Slide 17: Common Objections & Responses

### "This seems like a lot of overhead"

**Response**:
- Initial setup: ~4 hours to create navigation files and first EPIC
- Ongoing: 5-10 min per day to update Section 3A with ID deltas
- **ROI**: Save 30+ min per day per person in context searching
- **Break-even**: Week 1

### "Our team won't maintain this"

**Response**:
- Enforcement via automation: `validate_sessions.py` fails CI if Section 0 not updated
- Make it easy: Templates for everything
- Make it valuable: Visualizations show the value of maintenance

### "We already use [Confluence/Notion/Linear]"

**Response**:
- GHM is methodology, not a tool
- You can keep using your existing tools
- GHM adds the **structure** those tools lack
- Example: Linear epics → GHM EPICs with Section 3A for ID tracking

### "This only works for small teams"

**Response**:
- GHM scales via modularity
- Large teams: Multiple products, each with their own 3+1+SoT+Temp stack
- Shared SoT library for cross-product concerns
- Monorepo or multi-repo both supported

---

## Slide 18: Comparison to Existing Approaches

### GHM vs. Traditional Documentation

| Aspect | Traditional Docs | GHM |
|--------|------------------|-----|
| **Structure** | Freestyle, varies by author | Standardized 3+1+SoT+Temp |
| **Cross-refs** | Copy-paste or links | ID-based graph |
| **Update frequency** | Quarterly (or never) | Continuous (part of workflow) |
| **AI accessibility** | Search + scan entire docs | Load specific IDs in seconds |
| **Validation** | Manual reviews | Automated scripts |

### GHM vs. Agile Ceremonies

| Aspect | Agile Ceremonies | GHM |
|--------|------------------|-----|
| **Sprint planning** | Meeting-based | EPIC Section 2 (async) |
| **Daily standup** | Synchronous | EPIC Section 0 updates (async) |
| **Retrospectives** | Discussion → lost | Harvested to SoT IDs (durable) |
| **Documentation** | "Just enough" → sparse | Progressive, ID-based (rich) |

### GHM vs. Shape Up

| Aspect | Shape Up | GHM |
|--------|----------|-----|
| **Pitch** | 1-2 page pitch doc | PRD v0.1-v0.3 (Spark → Commercial) |
| **Betting table** | Choose pitches | PRD gates (pass/fail criteria) |
| **Scope hammering** | Team defines scope | EPIC Section 2 + 3A (ID tracking) |
| **Cool-down** | 2-week experimentation | Temp scratchpads (continuous, harvested) |
| **AI integration** | Not addressed | First-class: CLAUDE.md, Session Protocols |

---

## Slide 19: Future Vision

### Where GHM is Heading

**Short Term (2025)**
- IDE plugins for ID navigation (Cmd+Click BR-021 → jumps to definition)
- GitHub/GitLab integration (PR reviews show impacted IDs)
- Slack/Discord bots ("@ghm-bot load UJ-014")

**Medium Term (2026)**
- Real-time collaborative knowledge graphs
- AI-powered ID suggestion (auto-detect when to create BR-XXX)
- Template marketplace (industry-specific SoT structures)

**Long Term (2027+)**
- Cross-company ID federation (standardized BR-XXX definitions)
- Autonomous product managers (AI that can progress PRD lifecycle)
- Regulatory compliance automation (auto-generate audit reports from ID graph)

---

## Slide 20: Call to Action

### Start Your Context Engineering Journey Today

**Option 1: Experiment (1 day)**
```bash
git clone https://github.com/mattgierhart/PRD-driven-context-engineering.git
cd PRD-driven-context-engineering
# Read docs/getting_started.md
# Try tools/generate_visuals.py
```

**Option 2: Adopt for a New Project (1 week)**
- Use GHM for your next greenfield project
- Follow the "Minimum Viable GHM" guide
- Measure: Time to onboard new contributor (should be <30 min)

**Option 3: Retrofit Existing Project (2-4 weeks)**
- Create the 3 navigation files
- Migrate top 10 most-referenced specs to SoT with IDs
- Create EPIC for current sprint
- Measure: Reduction in "where is this documented?" Slack messages

### Resources
- **Repo**: github.com/mattgierhart/PRD-driven-context-engineering
- **License**: MIT (free for commercial use)
- **Community**: [Link to discussions/Discord]

---

## Slide 21: Summary

### The GHM Thesis

**Problem**: Context fragmentation kills velocity in AI-powered development

**Solution**: Structured, ID-based knowledge graph that serves as:
- Dynamic memory for AI agents
- Single source of truth for humans
- Progressive contract that evolves product from spark to market

**Implementation**: 3+1+SoT+Temp stack
- 3 navigation files (CLAUDE, PRD, README)
- +1 active EPIC (current work window)
- SoT library (ID-based specs)
- Temp scratchpads (harvested, not permanent)

**Result**:
- 10x faster AI onboarding (10 min → 30 sec)
- Zero doc drift (IDs prevent duplication)
- Audit-ready traceability (journey → rule → test → code)
- Continuous delivery without continuous chaos

### The New Paradigm
**Waterfall** (rigid) → **Agile** (fragmented) → **Context Engineering** (structured + adaptive)

---

## Appendix: Additional Talking Points

### For Technical Audiences
- "Think of SoT as a git-tracked database with markdown as the storage format"
- "IDs are like foreign keys, but for documentation"
- "The 3 navigation files are like a README.md on steroids"
- "Session protocols solve the 'agent state machine' problem"

### For Business Audiences
- "Reduce onboarding from weeks to hours"
- "AI agents that remember everything, not just one conversation"
- "Audit trails without extra documentation work"
- "Scale knowledge, not headcount"

### For Product Audiences
- "PRD lifecycle is like semantic versioning for product definition"
- "User journeys with traceable implementation (UJ-XXX → API-XXX → code)"
- "Customer feedback that doesn't disappear into Slack (CFD-XXX IDs)"
- "Red team review (v0.5) catches risks before architecture (v0.6)"

### For Founders
- "Ship faster without losing context"
- "New hires productive on day 1, not week 4"
- "AI as a force multiplier, not just a faster typist"
- "One methodology from idea (v0.1) to scale (v1.0)"

---

## Research Questions for Deeper Analysis

1. **Has this been used in production?**
   - Look for case studies in the repo
   - Check GitHub issues for user reports
   - Search for blog posts or talks by Matt Gierhart

2. **What's the learning curve?**
   - Time to create first GHM-compliant repo
   - Common mistakes in adoption
   - What's the "aha moment" for teams?

3. **How does it handle edge cases?**
   - Very large projects (1000+ IDs)
   - Regulated industries (HIPAA, SOC2)
   - Multi-tenant products

4. **What's the tooling ecosystem?**
   - Are there community plugins?
   - Integration with popular tools (Jira, Figma, etc.)
   - Commercial support or SaaS offerings?

5. **How does it compare empirically?**
   - Metrics: Time to onboard, doc drift rate, deployment frequency
   - Before/after studies
   - A/B tests (GHM team vs. traditional team)

---

## Presentation Delivery Tips

### Opening (Hook)
"Raise your hand if you've ever spent 30 minutes searching for a product spec you KNOW exists somewhere..."
[Pause for laughs/groans]
"What if I told you there's a methodology that guarantees you find any spec in under 30 SECONDS?"

### Middle (Demonstrations)
- Live demo of `generate_visuals.py` showing ID graph
- Show a real EPIC with Section 0 and Section 3A
- Navigate from README → UJ-014 → BR-021 → API-031 in real time

### Closing (Call to Action)
"Context engineering is not just about organizing docs. It's about creating a shared memory that outlives any one person, any one conversation, any one sprint. It's about treating your knowledge as code: versioned, tested, and executable. The question isn't whether your team needs this. The question is: Can you afford NOT to have it?"

---

*This outline provides a complete narrative arc from problem to solution to adoption. Adapt depth/length based on audience and time constraints (30 min, 60 min, or half-day workshop).*
