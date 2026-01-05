# Practitioner Journeys

> **ID Prefix:** PJ-XXX
>
> **Purpose:** Document how different disciplines adopt and use AI Context Engineering
>
> **Last Updated:** 2025-12-26

---

## PJ-001: Strategist Journey

**Persona:** Strategic product leader defining vision and market direction
**Primary Phases:** Concept, Strategy, Validation
**Context Focus:** Strategic layer (80%), Tactical layer (20%)

### Stage 1: Discovery (Week 1)

**Pain Points:**
- "AI gives generic strategy advice that doesn't fit our specific market"
- "Every conversation with AI starts from scratch - it doesn't remember our positioning"
- "Takes too long to explain our business context each time"

**Introduction to ACE:**
- Learns about Strategic Layer pattern (PAT-001)
- Understands how to structure long-term vision for AI
- Sees value in maintaining single source of truth

**First Actions:**
1. Read ACE MRD to understand methodology
2. Review PAT-001 (Context Layer Pattern)
3. Check examples of strategic context

**Time Investment:** 1-2 hours reading and exploration

### Stage 2: Setup (Week 1-2)

**Creating Strategic Context:**
```markdown
## Strategic Context

**Vision**: Enable SMBs to compete with enterprises through AI automation
**Market Opportunity**: $10B TAM, 5M target SMBs in US
**Target Customer**: Operations managers at 10-100 person professional services firms
**Key Pain Point**: Can't afford enterprise tools or dedicated IT staff
**Positioning**: Enterprise-grade automation at SMB budget
**Strategic Priority**: Build marketplace leadership before competitors scale
**Success Metrics**: 100 customers @ $99/user/month by Q1 end
**Competitive Edge**: AI-powered no-code + CRM integration depth
```

**What They Learn:**
- Keep strategic context concise (under 200 lines)
- Focus on "why" not "how"
- Update monthly or on major pivots
- Link to detailed analyses instead of duplicating

**Time Investment:** 2-3 hours initial setup

### Stage 3: Daily Use (Weeks 2-12)

**Typical AI Conversations:**

**Before ACE:**
```
Strategist: "Help me analyze this competitive move by Zapier..."
AI: "Sure, what's your product? Who are your customers? What's your positioning?"
Strategist: *Spends 10 minutes re-explaining context*
```

**After ACE:**
```
Strategist: "Help me analyze this competitive move by Zapier..."
AI: *Already has strategic context - knows positioning, customers, competitive landscape*
AI: "Given your SMB focus and enterprise-grade positioning, here's how Zapier's move affects you..."
Strategist: *Jumps straight to analysis*
```

**Context Maintenance:**
- Updates strategic context when market insights emerge
- Adds competitive intelligence as it's discovered
- Refines positioning based on customer conversations
- Archives outdated hypotheses to temp/

**Time Saved:** ~5 hours/week on re-explaining context

### Stage 4: Phase Transitions (Months 3-6)

**Concept → Design Transition:**
- Shifts from hypothesis-heavy to validated assumptions
- Adds tactical layer with MVP scope
- Reduces strategic detail (80% → 40% of total context)
- Hands off design context to PM/Designer

**Context Evolution:**
```markdown
## Strategic Context (Refined)
Vision: Enable SMBs to compete through AI automation ← Kept
Validated: SMBs will pay $75-150/user (not exact $100) ← Updated
Target refined: Ops managers, not IT staff ← Learned
Positioning: "Zapier for people who need enterprise reliability" ← Refined

## Tactical Context (NEW - Handoff to PM)
MVP Scope: Email automation + Salesforce/HubSpot sync
Key Decision: Using n8n engine (faster TTM vs build custom)
Timeline: 6-month MVP, 8-month to 100 customers
```

**Collaboration:**
- Shares strategic core with PM, Designer, Developer
- PM extends with tactical execution details
- Strategist reviews monthly for strategic alignment

### Stage 5: Mastery (Months 6+)

**Advanced Patterns:**
- Maintains strategic layer across multiple products
- Uses discipline-specific extensions (strategist context)
- Runs quarterly strategic reviews using AI analysis
- Mentors team on strategic context quality

**Impact:**
- AI strategic recommendations 3x more relevant
- Strategic pivots happen faster (context updated immediately)
- Cross-functional alignment improved (shared strategic core)
- New strategists onboard in days (vs weeks)

**ROI Metrics:**
- Time saved: ~7 hours/week
- Decision quality: Measurably better AI inputs
- Team alignment: Fewer "what are we building?" meetings

### Related IDs
- [PAT-001: Context Layer Pattern](CONTEXT_PATTERNS.md#pat-001)
- [PAT-003: Discipline-Specific Context](CONTEXT_PATTERNS.md#pat-003)
- [MP-001: Phase Alignment Principle](PRINCIPLES.md#mp-001)

---

## PJ-002: Product Manager Journey

**Persona:** Product manager orchestrating cross-functional product development
**Primary Phases:** All phases (Concept → Launch → Scale)
**Context Focus:** Balanced - Strategic (30%), Tactical (50%), Operational (20%)

### Stage 1: Discovery (Week 1)

**Pain Points:**
- "I'm the only one who has the full picture - AI doesn't"
- "Context gets out of sync between design, dev, and marketing"
- "I waste time re-explaining features and decisions to AI"
- "AI suggestions don't account for our constraints and tradeoffs"

**Introduction to ACE:**
- Learns about Phase Alignment pattern (PAT-002)
- Understands PM as "context orchestrator" across disciplines
- Sees value in shared core + discipline extensions model

**First Actions:**
1. Review current phase (where product is in lifecycle)
2. Read PAT-002 (Phase Alignment Pattern)
3. Understand tactical layer focus for PMs

**Time Investment:** 2-3 hours reading and planning

### Stage 2: Setup (Weeks 1-2)

**Creating PM Context (Build Phase Example):**
```markdown
## Strategic Context (Shared Core)
[Links to strategist's strategic context]
Vision: Enable SMBs to compete through AI automation
Target: Operations managers at 10-100 person companies

## Tactical Context (PM-Owned)

**Current Phase**: Build (Month 3 of 6)
**Sprint**: Sprint 12 of 24

**Active Features**:
1. Email workflow builder (drag-drop, no-code)
   - Status: UI 80% complete, backend 60%
   - Owner: Sarah (frontend), Mike (backend)
   - Blocker: React Flow state persistence issue
   - ETA: End of Sprint 13

2. CRM integrations (Salesforce, HubSpot)
   - Status: Salesforce 90%, HubSpot 40%
   - Owner: Alex (integrations)
   - Risk: HubSpot API rate limits lower than expected
   - Mitigation: Implementing request queuing

**Key Decisions This Phase**:
- Using n8n workflow engine vs custom build
  - Rationale: 3x faster to market, acceptable tradeoff on customization
  - Trade: Less control over workflow execution
  - Date: 2024-01-05

- 2 CRM integrations for MVP (not 5)
  - Rationale: Validate demand before building more
  - Risk: Customers might need other CRMs
  - Mitigation: Extensibility architecture allows quick adds
  - Date: 2023-12-20

**Dependencies**:
- n8n enterprise license (legal review, ETA: 2024-02-01)
- HubSpot API changes (tracking, potential impact to timeline)

**Success Metrics (Current Phase)**:
- Feature completion: 70% (Target: 100% by end of month)
- Test coverage: 65% (Target: 80%)
- Performance: <2s workflow execution (currently 1.2s)
```

**What They Learn:**
- Balance all three context layers
- Document decisions with rationale (not just decisions)
- Update weekly during active development
- Use references to avoid duplication

**Time Investment:** 4-5 hours initial setup

### Stage 3: Daily Use (Weeks 2-12)

**Typical PM Activities with ACE:**

**Feature Planning:**
```
PM: "Help me plan the analytics dashboard feature"
AI: *Has full context - knows current sprint, constraints, priorities*
AI: "Given Sprint 12 focus on workflow builder and integration blockers,
     analytics dashboard should wait until Sprint 15. Here's why..."
```

**Cross-Discipline Coordination:**
```
PM: "Update developer context with latest design decisions"
AI: *Knows shared core + both contexts*
AI: "Adding design decision from Sarah to tactical layer:
     - New: Workflow nodes use 200px min-width (was 150px)
     - Rationale: Improves readability on small screens
     - Impact: Minor CSS updates in WorkflowBuilder.tsx"
```

**Stakeholder Updates:**
```
PM: "Generate exec update on progress"
AI: *Has strategic + tactical layers*
AI: "Here's a summary tied to strategic goals:
     - Vision: SMB automation
     - This sprint: Workflow builder 80% → directly enables automation
     - Risk: HubSpot integration delayed 2 weeks (affects CRM value prop)
     - Mitigation: Prioritizing Salesforce completion first"
```

**Context Maintenance (Weekly):**
- Monday: Update sprint status and blockers
- Wednesday: Document new decisions/tradeoffs
- Friday: Archive completed work, update next sprint plan

**Time Saved:** ~8 hours/week on context switching and re-explaining

### Stage 4: Phase Transitions (Months 3-6)

**Build → Test Transition:**

**Before Transition (Late Build Phase):**
- Tactical: 60% (feature specs, implementation decisions)
- Operational: 35% (code details, active development)
- Strategic: 5% (vision summary)

**After Transition (Early Test Phase):**
```markdown
## Tactical Context (Shifted Focus)

**Current Phase**: Test (QA Sprint 1 of 4)

**Test Strategy**:
- Unit tests: 80% coverage (target: 85%)
- Integration tests: Focus on CRM sync reliability
- User acceptance: 10 beta customers, 2-week cycle

**Active Test Areas**:
1. Workflow execution reliability
   - Target: 99.9% success rate
   - Current: 98.5% (investigating edge cases)

2. CRM sync accuracy
   - Target: 100% data integrity
   - Current: 99.2% (HubSpot mapping issues)

**Known Issues** (15 total):
- P0: 2 (workflow fails on complex conditions)
- P1: 5 (UI glitches, non-blocking)
- P2: 8 (minor polish items)

**Go/No-Go Criteria**:
- All P0 bugs resolved
- P1 bugs < 3
- 85%+ test coverage
- Beta customer feedback > 4.0/5
```

**Operational layer reduced:** Archived code implementation details to temp/, kept only test-relevant info

### Stage 5: Cross-Phase Management (Months 6-12)

**PM as Context Orchestrator:**

**Managing Multiple Phases Simultaneously:**
```markdown
## Product Context Portfolio

**Version 1.0 (Scale Phase)**:
- Focus: Growth optimization, feature iteration
- Context: Strategic 40%, Tactical 40%, Operational 20%
- AI Use: Data analysis, optimization suggestions

**Version 2.0 (Build Phase)**:
- Focus: New features (multi-step workflows, Slack integration)
- Context: Strategic 10%, Tactical 50%, Operational 40%
- AI Use: Code generation, architecture decisions

**Version 3.0 (Concept Phase)**:
- Focus: Enterprise tier validation
- Context: Strategic 70%, Tactical 30%, Operational 0%
- AI Use: Market research, strategy validation
```

**Context Handoffs:**
- To Designer: Shares tactical layer with feature specs
- To Developer: Extends with technical decisions
- To Tester: Provides acceptance criteria and priorities
- To Marketer: Links strategic positioning for messaging

### Stage 6: Mastery (Month 12+)

**Advanced Patterns:**
- Maintains context across product portfolio
- Uses ACE templates for new feature kickoffs
- Runs automated context health checks weekly
- Mentors team on context quality and evolution

**Impact Metrics:**
- Time saved: ~10 hours/week (coordination and re-explaining)
- Decision quality: Faster, more informed decisions with AI support
- Team alignment: Everyone working from same context
- Velocity: 15% increase (less thrash, better handoffs)

**ROI:**
- Individual: 25% productivity gain
- Team: Reduced miscommunication by 60%
- Organizational: Faster time to market (context enables speed)

### Related IDs
- [PAT-002: Phase Alignment Pattern](CONTEXT_PATTERNS.md#pat-002)
- [PAT-004: Context Evolution Pattern](CONTEXT_PATTERNS.md#pat-004)
- [MP-004: Discipline Collaboration Principle](PRINCIPLES.md#mp-004)

---

## PJ-003: Designer Journey

**Persona:** Product designer creating user experiences and interfaces
**Primary Phases:** Design, Build (for design system)
**Context Focus:** Design Phase - Strategic (20%), Tactical (60%), Operational (20%)

### Stage 1: Discovery (Week 1)

**Pain Points:**
- "AI generates designs that don't match our design system"
- "Have to repeatedly explain our brand, users, and patterns"
- "Design critiques from AI are too generic - don't account for our constraints"
- "AI suggests components we already have (if it knew our system)"

**Introduction to ACE:**
- Learns about Discipline-Specific Context (PAT-003)
- Understands designer extension model (shared core + design specifics)
- Sees value in documenting design system for AI

**First Actions:**
1. Review PAT-003 (Discipline-Specific Context)
2. Identify what belongs in design extension vs shared core
3. Check design system documentation for ACE setup

**Time Investment:** 1-2 hours

### Stage 2: Setup (Weeks 1-2)

**Creating Designer Context Extension:**
```markdown
## Shared Strategic Core
[Links to strategist context]
Vision: Enable SMBs to compete through AI automation
Target: Operations managers at 10-100 person companies

## Designer Context Extension

### Design System

**Component Library**:
- Base: Custom React components + Radix UI primitives
- Location: src/components/ and Storybook
- Documentation: design-system.acme.com

**Typography**:
- Headings: Inter (weights: 600, 700)
- Body: System fonts (San Francisco, Segoe UI, Roboto)
- Code: JetBrains Mono
- Scale: 12/14/16/18/24/32/48px

**Colors**:
- Primary: #3B82F6 (blue-500)
- Secondary: #8B5CF6 (violet-500)
- Neutrals: gray-50 through gray-900
- Semantic: green (success), red (error), yellow (warning)
- Background: white (light mode), gray-900 (dark mode - planned)

**Spacing**:
- Base unit: 4px
- Grid: 8px
- Common: 8, 12, 16, 24, 32, 48, 64px

**Border Radius**:
- Small: 4px (buttons, inputs)
- Medium: 8px (cards)
- Large: 12px (modals)
- Full: 9999px (pills, avatars)

### User Personas

**Primary: "Busy Beth"**
- Role: Operations Manager at 50-person accounting firm
- Age: 38, tech comfort: moderate (uses email, Slack, Google Sheets)
- Pain: Drowning in manual data entry and email follow-ups
- Goal: Automate repetitive tasks without learning to code
- Quote: "I don't have time to learn programming - I need results now"
- Context Needs: Clear labels, help text, no jargon

**Secondary: "Technical Tom"**
- Role: IT Manager at 100-person consulting firm
- Age: 45, tech comfort: high (comfortable with APIs, JSON)
- Pain: Existing tools either too simple or too complex
- Goal: Powerful automation with good UX
- Quote: "I want Zapier's ease with Airflow's power"
- Context Needs: Advanced options, API access, customization

### Interaction Patterns

**Primary Actions**:
- Buttons: Primary action = filled blue, secondary = outline
- Destructive: Red filled (delete, remove, cancel subscription)
- Tertiary: Ghost button (no border, gray text)

**Forms**:
- Labels above inputs (not floating)
- Required fields: Red asterisk
- Validation: Inline on blur, summary on submit
- Help text: Gray, below input

**Navigation**:
- Top nav: Logo left, primary actions right
- Sidebar: Collapsible on mobile, persistent on desktop
- Breadcrumbs: For deep hierarchies

**Feedback**:
- Toast notifications: Top-right, auto-dismiss 5s
- Loading states: Skeleton screens (not spinners)
- Empty states: Illustration + CTA

### Accessibility

**Standards**: WCAG 2.1 AA
**Key Requirements**:
- Color contrast: 4.5:1 minimum for text
- Keyboard navigation: All actions accessible via keyboard
- Screen readers: Semantic HTML, ARIA labels where needed
- Focus indicators: Visible on all interactive elements

### Current Design Phase

**Active Work**: Workflow Builder UI (Sprint 12)
**Design Status**: High-fidelity mockups 90%, prototypes 70%
**Figma**: https://figma.com/file/abc123/workflow-builder
**Design QA**: Accessibility review pending, visual QA complete
```

**What They Learn:**
- Design system belongs in context (enables consistent AI suggestions)
- User personas guide AI's design recommendations
- Document patterns, not every component
- Link to full design system instead of duplicating

**Time Investment:** 3-4 hours documenting design system

### Stage 3: Daily Use (Weeks 2-12)

**Typical Designer Activities:**

**Design Critique:**
```
Designer: "Review this workflow builder layout"
AI: *Has design system context*
AI: "Based on your design system:
     ✅ Spacing follows 8px grid
     ✅ Colors use primary blue (#3B82F6)
     ❌ Button uses 6px radius (should be 4px per system)
     ❌ Missing empty state for 'no workflows yet'
     💡 Consider: Skeleton screen while loading (per your patterns)"
```

**Component Suggestions:**
```
Designer: "Need a way to show workflow execution status"
AI: *Knows existing components*
AI: "You already have StatusBadge component (src/components/StatusBadge.tsx).
     Extend it with new 'running' state:
     - Color: Blue (matches primary)
     - Icon: Animated spinner
     - Text: 'Running...'
     This fits your semantic color pattern."
```

**Copy and Microcopy:**
```
Designer: "Write button text for workflow builder save action"
AI: *Knows personas - Busy Beth hates jargon*
AI: "Avoid: 'Persist Workflow' (too technical)
     Use: 'Save Workflow' (clear, familiar)
     Help text: 'Your workflow will run automatically after saving'"
```

**Accessibility Review:**
```
Designer: "Check this modal for accessibility"
AI: *Has WCAG 2.1 AA requirements*
AI: "Accessibility issues found:
     ❌ Focus not trapped in modal (keyboard can escape)
     ❌ Close button contrast 3.8:1 (needs 4.5:1)
     ✅ Semantic HTML (dialog element)
     ✅ ARIA label present
     Fix: Increase close button opacity to 0.9 for contrast"
```

**Context Maintenance:**
- Weekly: Update active design work
- Bi-weekly: Add new components to design system section
- Monthly: Refine personas based on user research

**Time Saved:** ~6 hours/week on design system lookups and AI re-explaining

### Stage 4: Design → Build Handoff (Month 3)

**Preparing Developer Context:**
```markdown
## Design → Dev Handoff (Sprint 13)

**Component: Workflow Builder**

**Design Specs**:
- Figma: [link]
- Interactions: Drag-drop nodes, click to edit, right-click context menu
- States: Empty, loading (skeleton), populated, error
- Responsive: Desktop-first, mobile TBD (future phase)

**Component Breakdown**:
1. WorkflowCanvas (main container)
   - Uses React Flow library
   - 200px min node width
   - 8px grid snapping

2. NodeEditor (side panel)
   - Opens on node click
   - Form fields per node type
   - Save/Cancel actions

3. ConnectionLine (edges between nodes)
   - Bezier curves
   - Animated on hover
   - Gray when inactive, blue when selected

**Assets Provided**:
- SVG icons (24x24, stroke-2)
- Component tokens (see design system)
- Animation timings (200ms ease-in-out)

**Acceptance Criteria**:
- Matches Figma pixel-perfect on desktop (1440px)
- All interactions feel responsive (<100ms)
- Accessibility: Keyboard navigation works
- Empty state shows helpful CTA
```

**Developer receives:**
- Shared strategic core (vision, users)
- Design specifications and assets
- Component structure and patterns

### Stage 5: Mastery (Months 6+)

**Advanced Patterns:**
- Maintains living design system in context
- Uses AI for design QA before reviews
- Runs accessibility audits with AI assistance
- Generates design variations quickly with AI

**Impact:**
- Design consistency: 95%+ (AI catches system violations)
- Accessibility compliance: 100% WCAG AA (AI pre-checks)
- Design velocity: 40% faster (AI handles routine decisions)
- Developer handoffs: Clearer specs, fewer questions

**ROI:**
- Time saved: ~7 hours/week
- Quality: Fewer design revisions (AI catches issues early)
- Team velocity: Developers spend less time asking design questions

### Related IDs
- [PAT-003: Discipline-Specific Context](CONTEXT_PATTERNS.md#pat-003)
- [MP-002: Quality Over Quantity](PRINCIPLES.md#mp-002)
- [WF-002: Cross-Discipline Handoff](WORKFLOWS.md#wf-002)

---

## PJ-004: Developer Journey

**Persona:** Software developer building product features
**Primary Phases:** Build, Test
**Context Focus:** Build Phase - Strategic (5%), Tactical (35%), Operational (60%)

### Stage 1: Discovery (Week 1)

**Pain Points:**
- "AI generates code that doesn't match our architecture or patterns"
- "Have to explain our tech stack and code conventions every time"
- "AI suggestions ignore our constraints (APIs, libraries, performance requirements)"
- "Code reviews catch issues AI should have known about"

**Introduction to ACE:**
- Learns about Operational Layer focus during Build phase
- Understands value of documenting architecture for AI
- Sees how tactical layer provides feature context for implementation

**First Actions:**
1. Review PAT-001 (Context Layer Pattern) - operational layer focus
2. Review PAT-002 (Phase Alignment) - Build phase specifics
3. Check code architecture examples

**Time Investment:** 1-2 hours

### Stage 2: Setup (Weeks 1-2)

**Creating Developer Context Extension:**
```markdown
## Shared Strategic Core
[Links to shared context]
Vision: SMB automation platform
Target users: Operations managers

## Shared Tactical Context
[Links to PM context]
Current sprint: Sprint 12, Workflow Builder UI
Active features: Email automation, CRM sync

## Developer Context Extension (Operational Layer)

### Tech Stack

**Frontend**:
- Framework: React 18.2
- Language: TypeScript 5.1 (strict mode)
- Styling: TailwindCSS 3.3 + CSS Modules for complex components
- State: Zustand 4.4 (global), React hooks (local)
- Data Fetching: React Query 4.0
- Forms: React Hook Form 7.45
- Routing: React Router 6.15
- Build: Vite 4.4

**Backend**:
- Runtime: Node.js 20 LTS
- Framework: Express 4.18
- Language: TypeScript 5.1
- Database: PostgreSQL 15 (via Supabase)
- ORM: Prisma 5.3
- Auth: Supabase Auth
- API: REST (GraphQL planned for v2)

**Infrastructure**:
- Frontend hosting: Vercel
- Backend hosting: Railway
- Database: Supabase (managed Postgres)
- File storage: Supabase Storage
- Monitoring: Sentry
- Analytics: PostHog

### Code Architecture

**Project Structure**:
```
src/
├── components/          # Reusable UI components
│   ├── ui/              # Base components (Button, Input, etc.)
│   ├── features/        # Feature-specific components
│   └── layouts/         # Layout components
├── features/            # Feature modules (co-located logic)
│   └── workflows/
│       ├── components/  # Workflow-specific components
│       ├── hooks/       # Workflow hooks
│       ├── api/         # Workflow API calls
│       └── types/       # Workflow types
├── hooks/               # Shared custom hooks
├── lib/                 # Utilities and helpers
├── pages/               # Route pages
├── stores/              # Zustand stores
├── types/               # Global TypeScript types
└── utils/               # Utility functions
```

**Architectural Patterns**:
- Feature folders: Co-locate related code
- Custom hooks: Extract reusable logic
- Composition: Prefer composition over prop drilling
- Error boundaries: Wrap features for error isolation
- Suspense: Use for async data loading

### Code Conventions

**TypeScript**:
- Strict mode enabled
- Prefer `interface` over `type` for objects
- No `any` - use `unknown` when type is uncertain
- Export types alongside implementations

**React**:
- Functional components only (no class components)
- Hooks for state and effects
- Props: Destructure in function signature
- Event handlers: Prefix with `handle` (handleClick, handleSubmit)

**Naming**:
- Components: PascalCase (WorkflowBuilder)
- Files: Same as component (WorkflowBuilder.tsx)
- Hooks: camelCase with `use` prefix (useWorkflows)
- Constants: UPPER_SNAKE_CASE
- Functions: camelCase (fetchWorkflow)

**Imports**:
- Absolute imports from `src/` (using `@/` alias)
- Order: React, external libs, internal, relative, styles
- Group and separate with blank lines

**Styling**:
- Tailwind for simple styling
- CSS Modules for complex components
- BEM naming in CSS Modules
- Mobile-first responsive design

### API Conventions

**REST Endpoints**:
- Pattern: `/api/v1/{resource}/{id}/{action}`
- Methods: GET (fetch), POST (create), PUT (update), DELETE (remove)
- Response: Always JSON with `{ data, error }` shape

**Error Handling**:
- HTTP status codes: 200 (ok), 400 (bad request), 401 (unauthorized), 404 (not found), 500 (server error)
- Error format: `{ error: { code, message, details } }`
- Client-side: Show user-friendly messages via toast

**Authentication**:
- Supabase session-based auth
- Protected routes: Check auth in loader
- API: Verify session in middleware

### Testing Standards

**Coverage Target**: 80% overall
- Components: 85%
- Hooks: 90%
- Utilities: 95%

**Testing Stack**:
- Framework: Vitest
- React testing: React Testing Library
- E2E: Playwright (coming soon)

**Test Conventions**:
- File naming: `ComponentName.test.tsx`
- Location: Co-located with component
- Structure: Describe/it blocks
- Assertions: Prefer user-centric queries (getByRole, getByLabelText)

### Current Active Work

**Sprint 12 Focus**: Workflow Builder UI

**Active Files**:
- `src/features/workflows/components/WorkflowBuilder.tsx` - Main builder component
- `src/features/workflows/components/NodeEditor.tsx` - Node configuration panel
- `src/features/workflows/hooks/useWorkflowState.ts` - State management
- `src/features/workflows/api/workflows.ts` - API calls

**Active Libraries**:
- React Flow: Drag-drop workflow canvas
- Zustand: Workflow state persistence
- React Hook Form: Node configuration forms

**Current Blockers**:
- React Flow nodes not persisting state on reconnect
  - Issue: https://github.com/our-org/product/issues/234
  - Workaround: Storing node data in Zustand store
  - ETA fix: Sprint 13

**Recent Decisions**:
- Using React Flow over custom canvas implementation
  - Rationale: Mature library, handles complex interactions
  - Trade: Less control over rendering, but faster development
  - Date: 2024-01-05

### Performance Requirements

**Targets**:
- Page load: <2s (FCP)
- Interaction: <100ms (click to response)
- Workflow execution: <2s average

**Current**:
- Page load: 1.4s (good)
- Interaction: 80ms (good)
- Workflow execution: 1.2s (good)

**Optimization Strategies**:
- Code splitting: Route-based chunks
- Image optimization: Next/Image or responsive images
- Lazy loading: Off-screen components
- Memoization: Expensive calculations only
```

**What They Learn:**
- Document architecture and conventions for consistent AI code
- Keep tech stack and patterns updated
- Include current active work (helps AI stay relevant)
- Link to detailed docs instead of duplicating everything

**Time Investment:** 4-5 hours documenting architecture and conventions

### Stage 3: Daily Use (Weeks 2-12)

**Typical Developer Activities:**

**Feature Implementation:**
```
Developer: "Implement node deletion in workflow builder"
AI: *Has architecture context*
AI: "Based on your patterns:

// src/features/workflows/components/WorkflowBuilder.tsx
const handleNodeDelete = useCallback((nodeId: string) => {
  // Update Zustand store (per your state management)
  useWorkflowStore.getState().removeNode(nodeId);

  // Update React Flow
  setNodes((nodes) => nodes.filter((n) => n.id !== nodeId));

  // Show toast (per your UI patterns)
  toast.success('Node deleted');
}, [setNodes]);

// Add to component
<ReactFlow
  nodes={nodes}
  onNodesDelete={handleNodeDelete}
  // ... other props
/>

Follows your conventions:
✅ Zustand for state
✅ useCallback for performance
✅ Toast for user feedback
✅ TypeScript strict mode"
```

**Code Review:**
```
Developer: "Review this API endpoint implementation"
AI: *Has API conventions*
AI: "Issues found:

❌ Endpoint pattern: /workflows/:id/delete (should be DELETE /api/v1/workflows/:id)
❌ Error format: Returns string (should be { error: { code, message, details }})
✅ Authentication: Correctly checks session
✅ Status codes: Using 200, 404, 500

Fixed version:
app.delete('/api/v1/workflows/:id', async (req, res) => {
  // ... implementation
  if (!workflow) {
    return res.status(404).json({
      error: { code: 'NOT_FOUND', message: 'Workflow not found' }
    });
  }
  // ...
})"
```

**Bug Fixing:**
```
Developer: "Nodes aren't persisting state - help debug"
AI: *Knows current blocker from context*
AI: "This is the known React Flow state persistence issue (Issue #234).

Current workaround (from context):
1. Store node data in Zustand:
   - On node change: Update Zustand store
   - On mount: Restore from Zustand

Here's the implementation:
[... provides code using the documented workaround ...]"
```

**Testing:**
```
Developer: "Generate tests for WorkflowBuilder component"
AI: *Has testing conventions*
AI: "Tests following your standards:

// WorkflowBuilder.test.tsx
import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { WorkflowBuilder } from './WorkflowBuilder';

describe('WorkflowBuilder', () => {
  it('renders empty state when no workflows', () => {
    render(<WorkflowBuilder workflows={[]} />);
    expect(screen.getByRole('heading', { name: /no workflows/i })).toBeInTheDocument();
  });

  it('adds node on button click', async () => {
    // ... using user-centric queries per your conventions
  });
});

Follows conventions:
✅ User-centric queries (getByRole)
✅ Co-located test file
✅ Describe/it structure"
```

**Context Maintenance:**
- Daily: Update active files and current blockers
- Weekly: Document new decisions and patterns
- Bi-weekly: Archive completed sprint work

**Time Saved:** ~10 hours/week on looking up patterns and re-explaining context

### Stage 4: Build → Test Transition (Month 3)

**Shifting Context Focus:**

**Late Build Phase:**
```markdown
## Operational Context (Build Focus)

Active files: [15 files being developed]
Active features: Workflow builder, CRM sync
Tech stack: [full details]
Blockers: React Flow state issue
```

**Early Test Phase:**
```markdown
## Operational Context (Test Focus)

**Testing Priorities**:
1. Workflow execution reliability (P0)
2. CRM sync accuracy (P0)
3. UI responsiveness (P1)

**Test Environment**:
- Staging: staging.acme.com
- Test DB: Seeded with 100 workflows, 50 users
- CI: GitHub Actions (runs on PR)

**Known Issues**:
- P0: Workflow fails on complex AND/OR conditions
  - File: src/features/workflows/engine/conditions.ts:45
  - Reproduction: Create workflow with nested conditions
  - Fix: In progress (Alex working)

**Coverage Status**:
- Overall: 78% (target: 80%)
- Workflows: 82%
- CRM integration: 71% (needs work)

[Archived: Build-phase implementation details to temp/]
```

### Stage 5: Mastery (Months 6+)

**Advanced Patterns:**
- Maintains architecture docs as code evolves
- Uses AI for code generation (80% working code on first try)
- Runs AI-powered code reviews before human review
- Generates tests automatically with high accuracy

**Impact:**
- Code quality: Fewer bugs (AI catches pattern violations)
- Development velocity: 50% faster (AI handles boilerplate)
- Code reviews: 30% faster (AI pre-review catches basic issues)
- Onboarding: New devs productive in days (context is documented)

**ROI:**
- Time saved: ~12 hours/week
- Quality: 40% reduction in code review comments
- Consistency: 95%+ adherence to conventions

### Related IDs
- [PAT-001: Context Layer Pattern](CONTEXT_PATTERNS.md#pat-001)
- [PAT-002: Phase Alignment Pattern](CONTEXT_PATTERNS.md#pat-002)
- [MP-002: Quality Over Quantity](PRINCIPLES.md#mp-002)

---

**Total Journeys:** 4
**Last Updated:** 2025-12-26
**Disciplines Covered:**
- Strategist (PJ-001)
- Product Manager (PJ-002)
- Designer (PJ-003)
- Developer (PJ-004)

**Coming Soon:**
- PJ-005: Tester/QA Journey
- PJ-006: Marketer Journey
