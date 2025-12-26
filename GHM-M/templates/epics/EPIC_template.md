---
version: 5.0-M
purpose: Execution container for a single lifecycle window. Tracks scope, SoT IDs, gate movement, and session handoffs.
last_updated: 2025-12-26
authority: Pair with `workflows/MRD_VERSION_LIFECYCLE.md` for gate rituals and reviews.
variant: GHM-M (Methodologies)
---

# EPIC-{NUMBER}: {Feature / Outcome}

> **Load Order (3 + 1 + SoT)**
> 1. `README.md` → current status + navigation.
> 2. `MRD.md` → lifecycle intent (note target gate).
> 3. `CLAUDE.md` → behavior rules for agents touching documentation.
> 4. `epics/EPIC-{NUMBER}.md` → this file (**read Session State first**).
> 5. Linked SoT files (IDs listed in Section 3A).

> **Status Icons**: ✅ Done · 🚧 In Progress · 🟡 Ready · 📋 Planning · 🚫 Blocked · 🔴 Risk

---

## 0. Session State (MANDATORY)

> ⚠️ **AGENTS: Update this section BEFORE ending your session. This is required, not optional.**
>
> Reference: [CLAUDE.md Section 10: Session Protocols](../CLAUDE.md#10-session-protocols)

### Current Session
| Field | Value |
|-------|-------|
| **Session Date** | {YYYY-MM-DD HH:MM} |
| **Agent/Model** | {Claude-Opus-4 / Claude-Sonnet / etc.} |
| **Active Issue** | #{ID} – {Title} |
| **Phase** | {Plan / Build / Verify / Wrap} |
| **Status** | 🚧 In Progress / 🚫 Blocked / ✅ Completed |

### Work Completed This Session
- [ ] {Specific task completed, linked to Issue/ID}
- [ ] {Another task}

### Stopped At (Be Specific)
> {Exact point where work stopped. Include file paths, section names, ID numbers if relevant.}
>
> Example: "Completed MP-042 documentation. Validation case study written but needs practitioner feedback integration in VAL-015. Need to update cross-references in METHODOLOGY_PRINCIPLES.md:45."

### Blockers (If Any)
| Blocker | Related ID | Needs |
|---------|------------|-------|
| {Description} | {MP-XXX / PAT-XXX} | {What's needed to unblock} |

### Next Session Should
1. {First priority action}
2. {Second priority action}
3. {Any warnings or context the next agent needs}

### Files Changed This Session
| File | Change Type | Notes |
|------|-------------|-------|
| `{path/to/file}` | Created / Modified / Deleted | {Brief description} |

---

### Session History
| # | Date | Agent | Started At | Ended At | Status | Key Outcome |
|---|------|-------|------------|----------|--------|-------------|
| 1 | {YYYY-MM-DD} | {Model} | {Task/Issue} | {Stopping point} | ✅/🚧/🚫 | {One-line summary} |

> Move "Current Session" to this table when starting a new session.

---

## 1. Epic Snapshot

### Goal & Definition of Done
- **Goal (tie to MRD)**: {"Advance v0.x requirement {anchor} into publication readiness."}
- **Practitioner Outcome**: {What methodology practitioners gain when this publishes.}
- **Definition of Done**:
  - [ ] Required capability available to target practitioner persona (reference PJ-XXX).
  - [ ] Relevant SoT files updated (IDs tracked below).
  - [ ] Validation + case studies recorded (link to VAL-XXX).
  - [ ] README + MRD change log updated if gate advances.

### Dependencies & Risk Notes
- **Upstream**: {EPIC / external constraint}
- **Downstream**: {EPIC / publication dependency}
- **Risk Summary**: {Key risk + mitigation reference}

### Lifecycle Alignment
- **Current MRD Gate**: v0.{x}
- **Target Gate After EPIC**: v0.{x+1}
- **Gate Criteria References**: See [`workflows/MRD_VERSION_LIFECYCLE.md`](../workflows/MRD_VERSION_LIFECYCLE.md) (consult section for v0.{x}).

---

## 2. Issue Manifest
| Issue | Phase | Context Windows (Est → Actual) | Status | Evidence | Linked PR |
|-------|-------|---------------------------------|--------|----------|-----------|
| #{ID} – {Title} | {Plan / Build / Verify / Wrap} | 1 → 1 | 🚧 | `{path/to/artifact}` | #PR |

- **Naming**: Issues follow `EPIC-{NUMBER}-{slug}` for clarity.
- **Context Windows**: Maintain 1 window per issue. Split if expanding.
- **Evidence**: Attach validation outputs, case studies, or SoT IDs confirming completion.

---

## 3. Scope & File Impact
| Operation | Count | Notes |
|-----------|-------|-------|
| Files to Create | {#} | |
| Files to Modify | {#} | |
| Files to Delete | {#} | |
| Critical Dependencies | {#} | |
| Required Validations | {#} | |

### Planned SoT Touchpoints
- [ ] README.md (lifecycle metrics)
- [ ] MRD.md (if gate advances)
- [ ] PRACTITIONER_JOURNEYS.md (PJ-XXX)
- [ ] METHODOLOGY_PRINCIPLES.md (MP-XXX)
- [ ] PATTERNS.md (PAT-XXX)
- [ ] TEMPLATES.md (TEMP-XXX)
- [ ] VALIDATION.md (VAL-XXX)
- [ ] PUBLICATION.md (PUB-XXX)
- [ ] PRACTITIONER_FEEDBACK.md (PF-XXX)
- [ ] WORKFLOWS.md (WF-XXX)
- [ ] GUIDES.md (GUIDE-XXX)
- [ ] TOOLS.md (TOOL-XXX)
- [ ] COMPONENTS.md (COMP-XXX)
- [ ] Other: __________________

---

## 3A. ID Tracking (Knowledge Graph)

**IDs Modified This EPIC**
| ID | Type | SoT File | Description | Status | Date | Notes |
|----|------|----------|-------------|--------|------|-------|
| PAT-### | Pattern | PATTERNS.md | {Change summary} | 🚧 | YYYY-MM-DD | {Notes} |

**IDs Created This EPIC**
| ID | Type | SoT File | Description | Status | Date | Related IDs |
|----|------|----------|-------------|--------|------|-------------|
| VAL-### | Validation | VALIDATION.md | {Purpose} | ✅ | YYYY-MM-DD | PAT-### |

**Referenced (No Change)**
- MP-### — {Reason}
- TEMP-### — {Reason}

**Impact Narrative**
- {2-3 sentences describing how the above IDs change the methodology.}

> Update `methodology/ID_REGISTRY.md` (or equivalent) after each working session.

---

## 4. Phases & Rituals
| Phase | Objective | Key Actions | Exit Signals |
|-------|-----------|-------------|--------------|
| **Plan** | Confirm scope, dependencies, risks | Sync with MRD + lifecycle gate, outline validation, capture unknowns. | ✅ Risks logged, SoT touchpoints identified. |
| **Build** | Implement scoped work | Pair with CLAUDE.md rules, keep issues within window. | ✅ Methodology artifacts created, peer reviewed. |
| **Verify** | Validate + integrate | Execute required validations, capture case studies, update SoT IDs. | ✅ Validation evidence captured, cross-refs verified. |
| **Wrap** | Documentation & handoff | Update README, MRD, SoT, archive temps, log learnings. | ✅ Checklist complete, gate review ready. |

Phase loops are expected. Log each return in Section 5.

---

## 5. Phase Re-entry Log

> Track phase loops here. For session-level handoffs, use Section 0 (Session State).

| Date | Returned To Phase | Trigger | Action | Outcome | Session # |
|------|-------------------|---------|--------|---------|-----------|
| YYYY-MM-DD | Build | {Gap in validation / feedback} | {Action taken} | {Result} | {#} |

---

## 6. Task Checklist (Tie to Issues)

### Task {N} — {Summary} (`Issue #{ID}` · Phase {Plan/Build/Verify/Wrap})
- Status: 📋 / 🔄 / ✅ / 🚫
- Acceptance Criteria:
  - [ ] {Criterion}
  - [ ] {Criterion}
- Validation Command: `{validation script or peer review checklist}`

*(Duplicate per task.)*

---

## 7. Temp Files & Extraction

### Temp Artifacts Created
| Temp File | Owner | Purpose | Extraction Target (SoT) | Archived On | Archive Path |
|-----------|-------|---------|-------------------------|-------------|--------------|
| temp/{file}.md | {Name} | {Why it exists} | {SoT file / ID} | YYYY-MM-DD | archive/YYYY-MM/ |

### Wrap Checklist
- [ ] **Session State updated** (Section 0 - current session moved to history).
- [ ] README metrics refreshed.
- [ ] MRD change log updated (if gate movement).
- [ ] SoT files updated & cross-linked.
- [ ] Temp artifacts harvested + archived.
- [ ] Linked PRs merged and tagged with EPIC ID.
- [ ] All session blockers resolved or documented for next EPIC.

---

## 8. Epic Completion Review
- **Issues & Scope**
  - [ ] Manifest complete, no dangling work.
  - [ ] Deferred scope captured as new issues/EPIC.
- **Validation & Quality**
  - [ ] Required validations run with evidence.
  - [ ] Case studies documented (VAL-XXX entries).
  - [ ] Peer review notes captured in PF-XXX entries.
- **Lifecycle & Docs**
  - [ ] Gate review request filed (reference Section 4 exit signals).
  - [ ] README, MRD, and SoT updated + cross-referenced.
  - [ ] Learnings captured in README "EPIC Learning" section.

**Next Gate Review**: {Date / participants}

---

**Template Version:** 5.0-M (GHM-M Variant)
**Based On:** GHM EPIC Template v5.0
**Last Updated:** 2025-12-26
