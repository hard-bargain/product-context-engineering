# Setup Guide Migration Note

**Date:** 2026-01-08
**Status:** Pending Update

## Context

ACE has been updated from a 6-phase model (Concept/Design/Build/Test/Launch/Scale) to a 10-gate model (v0.1 Spark → v1.0 Market Adoption) to align with the full GHM product development lifecycle.

##Files Needing Gate-Specific Updates

The following setup guides reference "Launch phase" but should be updated to clarify which specific gates they cover:

1. **PROJECT_BOB_FULL_SETUP.md** (1,350 lines)
   - Currently: "Launch Phase" context emphasis
   - Should specify: Which gates does this cover?
     - v0.8 Deployment & Ops?
     - v0.9 Go-to-Market?
     - v1.0 Market Adoption?
   - Recommendation: User should identify their actual gate first

2. **templates/sot/EPIC-01-launch.md** (400 lines)
   - Currently: "Launch Execution" EPIC
   - Should clarify: This likely spans v0.8-v0.9 gates
   - May need separate EPICs for v0.8, v0.9, v1.0

3. **docs/getting_started.md** (539 lines)
   - References to phases should be updated to gates
   - Phase transition examples should use gate transitions

## What's Already Updated

✅ Core methodology files updated to 10 gates:
- PAT-002: Gate Alignment Pattern with full 10-gate structure
- MP-001: Gate Alignment Principle
- WF-001: Gate Transition Workflow
- TEMPLATES.md: Gate-based templates
- ACE_METHODOLOGY_SUMMARY.md: Complete gate reference table

## Action Items for User

Before using the setup guides in Project Bob:

1. **Identify Your Actual Gate:**
   - Review the 10-gate structure in PAT-002 (CONTEXT_PATTERNS.md)
   - Determine which gate best describes your product's current state
   - "Launch" could be v0.8 (Deployment), v0.9 (GTM), or v1.0 (Adoption)

2. **Adapt Setup Guides:**
   - Use PROJECT_BOB_FULL_SETUP.md as a template
   - Adjust context weights based on your gate (see PAT-002 table)
   - Update SoT templates with gate-specific deliverables

3. **Consider Gate Coverage:**
   - If spanning multiple gates (e.g., v0.8 → v0.9), consider separate EPICs
   - Each gate has distinct deliverables and context needs

## Quick Reference: 10 Gates

| Gate | Strategic | Tactical | Operational | Primary Focus |
|------|-----------|----------|-------------|---------------|
| v0.8 Deployment & Ops | 5% | 40% | 55% | Infrastructure, monitoring |
| v0.9 Go-to-Market | 35% | 50% | 15% | Launch campaigns, messaging |
| v1.0 Market Adoption | 40% | 35% | 25% | Optimization, iteration |

See [CONTEXT_PATTERNS.md](../active/source_of_truth/CONTEXT_PATTERNS.md#pat-002) for complete details.
