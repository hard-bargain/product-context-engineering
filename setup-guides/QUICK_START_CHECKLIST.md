# ACE Quick Start Checklist (Project Bob)

**Product Phase:** Launch
**Estimated Time:** 30-60 minutes
**Goal:** Get AI context working in Project Bob

---

## Pre-Setup
- [ ] Project Bob installed and configured
- [ ] Connected to corporate GitHub
- [ ] New repo created or identified
- [ ] Have PROJECT_BOB_SETUP.md guide open

---

## Step 1: Create Structure (5 min)
- [ ] Create `.claude/context/` directory
- [ ] Create 4 files: strategic.md, tactical.md, operational.md, master-context.md
- [ ] Commit to git

---

## Step 2: Strategic Context (10 min)
Copy template from setup guide, fill in:
- [ ] Product name and vision
- [ ] Target customer
- [ ] Value proposition
- [ ] Launch goals
- [ ] Go-to-market approach
- [ ] Save and commit

---

## Step 3: Tactical Context (15 min)
Copy template from setup guide, fill in:
- [ ] Launch timeline
- [ ] Current milestones
- [ ] Active campaigns
- [ ] This week's priorities
- [ ] Current blockers
- [ ] Key metrics
- [ ] Save and commit

---

## Step 4: Operational Context (10 min)
Copy template from setup guide, fill in:
- [ ] Tech stack (frontend, backend, infrastructure)
- [ ] Architecture overview
- [ ] Deployment process
- [ ] Monitoring setup
- [ ] Save and commit

---

## Step 5: Master Context (5 min)
- [ ] Copy master-context.md template
- [ ] Update product name and dates
- [ ] Verify file references are correct
- [ ] Save and commit

---

## Step 6: Configure Project Bob (5 min)
- [ ] Check for context file settings in Project Bob
- [ ] Point to `.claude/context/` or master-context.md
- [ ] Or: Note how to manually reference context

---

## Step 7: Validate Setup (10 min)

Test these questions in Project Bob AI:

**Test 1: Strategic**
- [ ] "What is our target customer?"
- [ ] AI gives accurate answer from strategic.md

**Test 2: Tactical**
- [ ] "What are our top priorities this week?"
- [ ] AI gives accurate answer from tactical.md

**Test 3: Operational**
- [ ] "What's our tech stack?"
- [ ] AI gives accurate answer from operational.md

**Test 4: Reasoning**
- [ ] "Should we delay launch for feature X?"
- [ ] AI references context, gives contextual advice

---

## Success Criteria

✅ **Setup is successful when:**
- [ ] All 4 context files created and populated
- [ ] Files committed to git
- [ ] Project Bob AI can answer context questions accurately
- [ ] AI responses are contextual (not generic)
- [ ] You can work faster with AI assistance

---

## Troubleshooting Quick Reference

**AI doesn't know context:**
→ Explicitly reference in question: "Based on .claude/context/strategic.md..."

**Responses are too generic:**
→ Include specific context: "Given our launch goal of [X]..."

**Files too large:**
→ Reduce to target sizes: Strategic <200 lines, Tactical <300, Operational <500

**Project Bob won't load context:**
→ Check file locations, size limits, or use manual reference method

---

## Maintenance Quick Guide

**Daily (5 min):**
- [ ] Update tactical.md metrics
- [ ] Update tactical.md blockers

**Weekly (15 min):**
- [ ] Update tactical.md "next 7 days"
- [ ] Run context quality check
- [ ] Test AI effectiveness

**Monthly (15 min):**
- [ ] Review strategic.md
- [ ] Update any strategic changes

---

## Getting Help

**During setup:**
1. Keep notes of issues
2. Document Project Bob-specific quirks
3. Test incrementally
4. Ask questions as you go

**After setup:**
1. Use for 1 week
2. Track time savings
3. Note what works / doesn't work
4. Provide feedback for ACE improvement

---

**This setup becomes VAL-002 for the ACE methodology!**

Your real-world experience helps validate and improve ACE for future users.

---

**Checklist Version:** 1.0
**For:** Project Bob (Launch Phase)
**Full Guide:** See PROJECT_BOB_SETUP.md
