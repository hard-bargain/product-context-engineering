# ACE Troubleshooting Guide (Project Bob & Similar Tools)

**Version:** 1.0
**Last Updated:** 2025-01-05

---

## Common Issues & Solutions

### Issue 1: AI Doesn't Seem to Know My Context

**Symptoms:**
- AI gives generic answers
- AI doesn't reference your product specifics
- AI asks for information that's in context files

**Possible Causes & Solutions:**

**A. Context files not loaded**
```
Test: Ask "Can you read .claude/context/strategic.md?"

If AI says it can't access the file:
→ Check file path is correct
→ Check Project Bob has permission to read directory
→ Try absolute path instead of relative path
```

**B. Context not referenced automatically**
```
Solution: Start questions with explicit reference
Example: "Based on .claude/context/master-context.md, what should we prioritize?"

Or create a saved prompt:
"Context: Working on [PRODUCT] in Launch phase.
Reference .claude/context/ for product details.
Question: [your question]"
```

**C. Context files too large**
```
Test: Check file sizes
- strategic.md: Target <200 lines (about 4-6KB)
- tactical.md: Target <300 lines (about 6-9KB)
- operational.md: Target <500 lines (about 10-15KB)

If larger:
→ Extract detailed content to separate docs
→ Link from context files
→ Keep context files to summaries + links
```

---

### Issue 2: AI Responses Are Generic, Not Contextual

**Symptoms:**
- AI says "Generally, you should..."
- AI doesn't use your specific product details
- Advice could apply to any product

**Solutions:**

**A. Make context more specific**
```
Bad: "Our target customer is businesses"
Good: "Our target customer is 10-50 person accounting firms using QuickBooks"

Bad: "We're launching soon"
Good: "Launching January 15, 2025 on Product Hunt, targeting 500 signups week 1"
```

**B. Ask more specific questions**
```
Bad: "Should we add this feature?"
Good: "Given our launch goal of 500 signups by Jan 22 and current blocker of email deliverability, should we prioritize social login or email verification improvements?"
```

**C. Validate context is loaded**
```
Before asking real question, test:
"What phase is [PRODUCT] in and what's our top priority this week?"

If AI answers correctly → context is loaded
Then ask your actual question
```

---

### Issue 3: Context Becomes Stale Quickly

**Symptoms:**
- AI references old priorities
- AI mentions completed tasks as current
- AI doesn't know about recent decisions

**Solutions:**

**A. Set update reminders**
```
Daily (5 min):
- Update tactical.md metrics section
- Update tactical.md blockers section
- Update tactical.md "next 7 days" section

Use calendar reminders or standup time
```

**B. Create update template**
```
Save this as a daily checklist:

## Daily Context Update (5 min)
1. Open tactical.md
2. Update metrics table (signups, conversions, etc.)
3. Add/remove blockers
4. Update "next 7 days" priorities
5. Save and commit

Time: End of day, takes 5 min
```

**C. Use dates instead of relative terms**
```
Bad: "Launching next week"
Good: "Launching January 15, 2025"

Bad: "Current sprint"
Good: "Sprint 12 (Jan 6-17, 2025)"

This way context stays accurate longer
```

---

### Issue 4: Too Much Information, AI Gets Confused

**Symptoms:**
- AI references wrong information
- AI mixes up different contexts
- Responses are inconsistent

**Solutions:**

**A. Follow layer emphasis strictly**
```
In Launch phase:
- Strategic: 30% (200 lines max)
- Tactical: 55% (300 lines max)
- Operational: 15% (500 lines max)

If files are larger, cut content:
→ Move details to separate docs
→ Keep only summaries in context
→ Link to full docs if needed
```

**B. Use clear section headers**
```
In tactical.md, clearly separate:
## Launch Timeline
## Active Campaigns
## Current Blockers
## Next 7 Days

AI can more easily find relevant sections
```

**C. Archive old information**
```
Create temp/ directory:
.claude/context/temp/
  - pre-launch-decisions.md
  - beta-feedback-archive.md
  - old-tactical-context.md

Move completed/historical content there
Keep active context lean
```

---

### Issue 5: Project Bob Specific Issues

**A. Project Bob won't load context files**
```
Check:
1. Does Project Bob have a "workspace" or "project knowledge" feature?
   → Configure it to use .claude/context/

2. Does Project Bob have file size limits?
   → Check settings for max file size
   → Reduce context files if needed

3. Does Project Bob need specific file format?
   → Try different markdown styles
   → Check if .md or .txt is preferred
```

**B. Project Bob only reads at session start**
```
If context only loads when starting new chat:
→ Start fresh chat for important questions
→ Or: Re-reference context in long conversations
→ Or: Use "Context: See .claude/context/master-context.md" periodically
```

**C. Project Bob has token limits**
```
If hitting token limits:
→ Reduce context file sizes
→ Use master-context.md to reference others (don't load all at once)
→ Load specific layer based on question type:
   - Strategic questions: Load strategic.md
   - Tactical questions: Load tactical.md
   - Technical questions: Load operational.md
```

---

### Issue 6: Team Members Can't Use Context

**Symptoms:**
- Works for you, but not for teammates
- Different team members get different results

**Solutions:**

**A. Standardize setup**
```
Create team setup guide:
1. Clone repo
2. Open in Project Bob
3. Configure Project Bob workspace [specific steps]
4. Test with validation questions
5. Document any issues
```

**B. Use shared repo**
```
All team members reference same:
- Strategic context (shared understanding)
- Tactical context (shared priorities)

Each member can have own:
- Operational context (role-specific)
```

**C. Create usage guide**
```
Document for your team:
"How to use ACE in Project Bob"
1. Opening context [your specific steps]
2. Asking context-aware questions
3. Updating context (who, when, how)
4. Common issues and fixes [your experiences]
```

---

### Issue 7: Unsure What to Include in Context

**Symptoms:**
- Context feels incomplete
- Context feels bloated
- AI still asks for information

**Solutions:**

**A. Use the "AI Question Test"**
```
Ask yourself: "What do I repeatedly explain to:
- New team members?
- AI assistants?
- Stakeholders?

Those are your context items.
```

**B. Follow templates strictly at first**
```
Don't add extra sections initially
Fill all template sections first
Use for 1 week
Then add missing pieces you discover
```

**C. Track AI questions**
```
When AI asks for information:
"Could you tell me more about [X]?"

→ That should probably be in context
→ Add to appropriate layer
→ Note: Strategic (why), Tactical (what), Operational (how)
```

---

### Issue 8: Context Has Sensitive Information

**Symptoms:**
- Worried about committing to git
- Corporate data that can't leave environment
- Customer names, financials, etc.

**Solutions:**

**A. Use placeholders**
```
Instead of: "Partnership with Apple Inc."
Use: "[MAJOR TECH PARTNER]"

Instead of: "$2.5M ARR target"
Use: "[REVENUE TARGET]"

AI can still reason with placeholders
```

**B. Separate sensitive context**
```
Create two sets:
.claude/context/         — Public/safe context
.claude/context-private/ — Sensitive details (gitignored)

Or use private repo with access controls
```

**C. Use private repo**
```
Create private repo in corporate GitHub
Only share with team members
Include full context including sensitive data
```

---

## Getting Unstuck

### When Something Isn't Working:

**1. Simplify**
```
Start with minimal context:
- Product name
- Phase (Launch)
- One top priority

Test: Does AI know these basics?
If yes → gradually add more
If no → troubleshoot file loading
```

**2. Test Incrementally**
```
Fill strategic.md → test
Fill tactical.md → test
Fill operational.md → test

Identify exactly where things break
```

**3. Document the Issue**
```
Write down:
- What you tried
- What happened (expected vs actual)
- Error messages if any
- Project Bob version/settings

Share for help or feedback
```

**4. Ask for Help**
```
When asking for help, provide:
- What tool (Project Bob, etc.)
- What you're trying to do
- What you've tried
- Specific error or unexpected behavior

This helps get better assistance
```

---

## Validation Tests

### Use these to verify ACE is working:

**Test 1: Basic Context Awareness**
```
Ask: "What product am I working on and what phase are we in?"
Expected: AI knows product name and "Launch" phase
```

**Test 2: Strategic Understanding**
```
Ask: "Who is our target customer and why do they need our product?"
Expected: Specific answer from strategic.md
```

**Test 3: Tactical Awareness**
```
Ask: "What are my top 3 priorities this week?"
Expected: Specific priorities from tactical.md
```

**Test 4: Operational Knowledge**
```
Ask: "What tech stack are we using?"
Expected: Specific stack from operational.md
```

**Test 5: Cross-Layer Reasoning**
```
Ask: "Should we add [specific feature] before launch?"
Expected: AI considers:
- Strategic: Does it align with vision?
- Tactical: Do we have time? Is it critical?
- Operational: How complex is implementation?
- Gives contextual recommendation
```

**Test 6: Context Freshness**
```
Ask: "What blockers do we have right now?"
Expected: Current blockers from tactical.md (updated this week)
If AI mentions resolved blockers → context is stale
```

---

## When to Get Help vs. When to Iterate

**Get Help When:**
- [ ] Can't get Project Bob to load context files at all
- [ ] Following all steps but AI never references context
- [ ] Technical error messages you don't understand
- [ ] Team-wide issue (works for no one)

**Iterate Yourself When:**
- [ ] Context works but responses not ideal → Improve context content
- [ ] Some things work, some don't → Test incrementally to identify issue
- [ ] Context goes stale → Set up maintenance schedule
- [ ] Need to customize for your workflow → Adapt templates

---

## Success Indicators

**You'll know ACE is working when:**

✅ AI knows your product without you explaining
✅ AI references specific priorities, goals, constraints
✅ AI gives contextual advice, not generic tips
✅ You save time (not re-explaining every conversation)
✅ AI catches misalignments ("That conflicts with your strategic goal of...")
✅ New team members can use AI effectively immediately

---

## Feedback Loop

**As you troubleshoot and learn:**

1. **Document what works** in your environment
2. **Note Project Bob quirks** for future reference
3. **Share findings** to improve ACE
4. **Update this guide** with your solutions

Your experience improves ACE for everyone!

---

**Troubleshooting Guide Version:** 1.0
**For:** Project Bob & similar AI-enabled IDEs
**Main Setup Guide:** PROJECT_BOB_SETUP.md
**Quick Checklist:** QUICK_START_CHECKLIST.md
