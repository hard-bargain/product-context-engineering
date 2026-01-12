# Syncing Personal Repo Updates to IBM Repo
## Safe Merge Strategy Without Losing Work

**Date:** 2026-01-08  
**Situation:** Critical ACE methodology updates in personal repo + local IBM repo changes  
**Goal:** Merge both without losing any work  
**Risk Level:** Low (following this guide)

---

## Current State Assessment

### Your Two Workstreams

**Workstream 1: Personal Repo Updates**
- Location: `~/Projects/product-context-engineering`
- Remote: https://github.com/hard-bargain/product-context-engineering
- Status: Has critical ACE methodology updates
- Need: Pull these into IBM repo

**Workstream 2: IBM Repo Local Changes**
- Location: `~/Projects/ibm-product-context-engineering`
- Remote: git@github.ibm.com:IBM-Context-Engineering/product-context-engineering
- Status: Has local changes you don't want to lose
- Need: Preserve these while adding personal repo updates

---

## Safety First: Backup Everything

Before we start, let's create backups:

```bash
# Backup 1: IBM repo current state
cd ~/Projects/ibm-product-context-engineering
git status > ~/Desktop/ibm-repo-status-backup.txt
git diff > ~/Desktop/ibm-repo-changes-backup.diff

# Backup 2: Create a safety branch
git checkout -b backup/before-sync-$(date +%Y%m%d)
git push -u origin backup/before-sync-$(date +%Y%m%d)

# Backup 3: Return to working branch
git checkout feature/ace-methodology-integration

# Backup 4: Personal repo current state
cd ~/Projects/product-context-engineering
git status > ~/Desktop/personal-repo-status-backup.txt
git log --oneline -10 > ~/Desktop/personal-repo-recent-commits.txt
```

**Result:** You now have 4 backups on your Desktop + a backup branch in IBM repo

---

## Step-by-Step Sync Process

### Step 1: Check What You Have Locally (5 min)

**Check IBM repo uncommitted changes:**
```bash
cd ~/Projects/ibm-product-context-engineering
git status
```

**If you see uncommitted changes:**
```bash
# Save them temporarily
git stash push -m "Local IBM changes before sync - $(date +%Y%m%d)"

# Verify stash was created
git stash list
```

**Check current branch:**
```bash
git branch
# Should show: * feature/ace-methodology-integration
```

### Step 2: Update Personal Repo (2 min)

**Pull latest from your personal GitHub:**
```bash
cd ~/Projects/product-context-engineering
git checkout main  # or master, depending on your default branch
git pull origin main
```

**Verify you have the latest:**
```bash
git log --oneline -5
# Should show your recent critical updates
```

### Step 3: Identify What Files Changed (5 min)

**List files that changed in personal repo:**
```bash
cd ~/Projects/product-context-engineering

# See what changed in last N commits (adjust number as needed)
git log --name-only --oneline -10

# Or see all files changed since a specific date
git log --name-only --since="2026-01-06" --oneline
```

**Make a list of changed files** - you'll need this for selective copying.

### Step 4: Selective File Copy Strategy (10-20 min)

Now we'll copy updated files from personal repo to IBM repo, being careful not to overwrite your IBM-specific changes.

**Strategy A: Copy Specific Updated Files**

For each file that was updated in your personal repo:

```bash
# Example: If AI-Context-Engineering/setup-guides/PROJECT_BOB_FULL_SETUP.md was updated

# 1. Check if you modified this file in IBM repo
cd ~/Projects/ibm-product-context-engineering
git log --oneline -- setup-guides/PROJECT_BOB_FULL_SETUP.md

# 2. If NO IBM-specific changes, safe to copy:
cp ~/Projects/product-context-engineering/AI-Context-Engineering/setup-guides/PROJECT_BOB_FULL_SETUP.md \
   ~/Projects/ibm-product-context-engineering/setup-guides/PROJECT_BOB_FULL_SETUP.md

# 3. If YES IBM-specific changes, need to merge manually (see Strategy B)
```

**Strategy B: Manual Merge for Conflicting Files**

If a file has changes in BOTH repos:

```bash
# 1. Open both versions side-by-side
code ~/Projects/product-context-engineering/[path-to-file]
code ~/Projects/ibm-product-context-engineering/[path-to-file]

# 2. Manually merge the changes
# - Keep IBM-specific content (branding, security, etc.)
# - Add new methodology updates from personal repo
# - Save in IBM repo version

# 3. Mark as resolved
cd ~/Projects/ibm-product-context-engineering
git add [path-to-file]
```

**Strategy C: Copy Entire New Directories**

If personal repo has new directories not in IBM repo:

```bash
# Example: New methodology guides
cp -r ~/Projects/product-context-engineering/AI-Context-Engineering/methodology/new-guides \
      ~/Projects/ibm-product-context-engineering/methodology/
```

### Step 5: Review Changes Before Committing (10 min)

**See what changed:**
```bash
cd ~/Projects/ibm-product-context-engineering
git status
git diff
```

**Review each changed file:**
```bash
# For each file, verify:
# 1. Personal repo updates are included
# 2. IBM-specific content is preserved
# 3. No accidental deletions
```

**If something looks wrong:**
```bash
# Restore a specific file from backup branch
git checkout backup/before-sync-$(date +%Y%m%d) -- path/to/file

# Or restore everything and start over
git reset --hard backup/before-sync-$(date +%Y%m%d)
```

### Step 6: Restore Your Local IBM Changes (5 min)

**If you stashed changes in Step 1:**
```bash
cd ~/Projects/ibm-product-context-engineering

# See what you stashed
git stash list

# Apply your stashed changes
git stash pop

# If there are conflicts, resolve them:
# 1. Open conflicted files
# 2. Look for <<<<<<< markers
# 3. Choose which version to keep
# 4. Remove conflict markers
# 5. Save file
# 6. git add [file]
```

### Step 7: Commit the Sync (5 min)

**Create a clear commit:**
```bash
cd ~/Projects/ibm-product-context-engineering

# Stage all changes
git add .

# Commit with detailed message
git commit -m "sync: Update ACE methodology from personal repo

Synced critical updates from personal repo:
- [List key files/changes updated]
- [List new features/improvements]
- [List any methodology enhancements]

Preserved IBM-specific content:
- IBM branding and terminology
- Security and compliance notes
- IBM-specific workflows

Source: https://github.com/hard-bargain/product-context-engineering
Sync Date: $(date +%Y-%m-%d)
Personal Repo Commit: [paste commit hash from personal repo]"
```

### Step 8: Push to IBM GitHub (2 min)

**Push your synced changes:**
```bash
cd ~/Projects/ibm-product-context-engineering
git push
```

**Verify on IBM GitHub:**
- Visit: https://github.ibm.com/IBM-Context-Engineering/product-context-engineering
- Check your branch: `feature/ace-methodology-integration`
- Verify files look correct

---

## Detailed Workflow Examples

### Example 1: Simple File Update (No Conflicts)

**Scenario:** You updated `PRINCIPLES.md` in personal repo, no IBM changes

```bash
# 1. Check for IBM changes
cd ~/Projects/ibm-product-context-engineering
git log --oneline -- methodology/PRINCIPLES.md
# Output: (empty - no IBM changes)

# 2. Copy updated file
cp ~/Projects/product-context-engineering/AI-Context-Engineering/active/source_of_truth/PRINCIPLES.md \
   ~/Projects/ibm-product-context-engineering/methodology/PRINCIPLES.md

# 3. Review
git diff methodology/PRINCIPLES.md

# 4. Commit
git add methodology/PRINCIPLES.md
git commit -m "sync: Update PRINCIPLES.md from personal repo"
```

### Example 2: File with Conflicts (Both Repos Changed)

**Scenario:** You updated `README.md` in both repos

```bash
# 1. Check what changed in each
cd ~/Projects/product-context-engineering
git log --oneline -3 -- README.md

cd ~/Projects/ibm-product-context-engineering
git log --oneline -3 -- README.md

# 2. Open both files
code ~/Projects/product-context-engineering/AI-Context-Engineering/README.md
code ~/Projects/ibm-product-context-engineering/README.md

# 3. Manually merge:
# - Keep IBM-specific sections (team info, IBM links, etc.)
# - Add new methodology content from personal repo
# - Preserve both sets of changes

# 4. Save IBM version with merged content

# 5. Commit
cd ~/Projects/ibm-product-context-engineering
git add README.md
git commit -m "sync: Merge README updates from personal repo

Added new methodology sections from personal repo while
preserving IBM-specific content and team information."
```

### Example 3: New Files from Personal Repo

**Scenario:** You added new templates in personal repo

```bash
# 1. Copy new files
cp ~/Projects/product-context-engineering/AI-Context-Engineering/templates/new-template.md \
   ~/Projects/ibm-product-context-engineering/templates/

# 2. Review
cd ~/Projects/ibm-product-context-engineering
git status
# Should show: new file: templates/new-template.md

# 3. Commit
git add templates/new-template.md
git commit -m "sync: Add new template from personal repo"
```

### Example 4: Directory Structure Changes

**Scenario:** You reorganized files in personal repo

```bash
# 1. Review new structure
cd ~/Projects/product-context-engineering
tree AI-Context-Engineering/  # or ls -R

# 2. Decide on approach:
# Option A: Copy entire directory (if no IBM changes)
cp -r ~/Projects/product-context-engineering/AI-Context-Engineering/new-directory \
      ~/Projects/ibm-product-context-engineering/

# Option B: Recreate structure manually (if IBM changes exist)
cd ~/Projects/ibm-product-context-engineering
mkdir -p new-directory/subdirectory
# Then copy files individually

# 3. Commit
git add new-directory/
git commit -m "sync: Add new directory structure from personal repo"
```

---

## Handling Specific File Types

### Methodology Documentation Files

**Files:** PRINCIPLES.md, CONTEXT_PATTERNS.md, WORKFLOWS.md, etc.

**Strategy:** Usually safe to copy directly (methodology is universal)

```bash
# Copy methodology files
for file in PRINCIPLES.md CONTEXT_PATTERNS.md WORKFLOWS.md; do
  cp ~/Projects/product-context-engineering/AI-Context-Engineering/active/source_of_truth/$file \
     ~/Projects/ibm-product-context-engineering/methodology/
done
```

### Template Files

**Files:** All files in templates/ directories

**Strategy:** Safe to copy (templates are generic)

```bash
# Copy all templates
cp -r ~/Projects/product-context-engineering/AI-Context-Engineering/setup-guides/templates/* \
      ~/Projects/ibm-product-context-engineering/setup-guides/templates/
```

### Setup Guides

**Files:** PROJECT_BOB_FULL_SETUP.md, QUICK_START_CHECKLIST.md, etc.

**Strategy:** Check for IBM-specific modifications first

```bash
# Check for IBM modifications
cd ~/Projects/ibm-product-context-engineering
git log --oneline -- setup-guides/PROJECT_BOB_FULL_SETUP.md

# If no IBM mods, copy directly
# If IBM mods exist, merge manually
```

### Navigation Files

**Files:** PRD.md, README.md, CLAUDE.md

**Strategy:** ALWAYS merge manually (these are IBM-specific)

```bash
# Open both versions
code ~/Projects/product-context-engineering/AI-Context-Engineering/README.md
code ~/Projects/ibm-product-context-engineering/README.md

# Manually merge:
# - Keep IBM product info
# - Add new methodology sections
# - Preserve IBM team structure
# - Update with new patterns/guidance
```

---

## Conflict Resolution Guide

### If Git Shows Conflicts

```bash
# After git stash pop or git merge, you might see:
# CONFLICT (content): Merge conflict in [filename]

# 1. Open the conflicted file
code [filename]

# 2. Look for conflict markers:
<<<<<<< HEAD
[Your IBM repo version]
=======
[Your stashed/merged version]
>>>>>>> 

# 3. Decide what to keep:
# - Keep both (merge manually)
# - Keep IBM version
# - Keep personal repo version
# - Create new combined version

# 4. Remove conflict markers

# 5. Save file

# 6. Mark as resolved
git add [filename]

# 7. Continue
git commit  # or git stash pop if that's what you were doing
```

### Common Conflict Scenarios

**Scenario 1: Same section updated differently**
```
<<<<<<< HEAD
## IBM Context Engineering Team
- Product Lead: Jane Smith
- Engineering Lead: John Doe
=======
## Team Structure
- Product Manager: [Name]
- Engineering Manager: [Name]
>>>>>>> 
```

**Resolution:** Keep IBM-specific names, use personal repo's structure
```
## Team Structure
- Product Lead: Jane Smith
- Engineering Lead: John Doe
```

**Scenario 2: New content in both versions**
```
<<<<<<< HEAD
### IBM-Specific Process
[IBM content]
=======
### New Methodology Section
[Personal repo content]
>>>>>>> 
```

**Resolution:** Keep both
```
### IBM-Specific Process
[IBM content]

### New Methodology Section
[Personal repo content]
```

---

## Verification Checklist

After syncing, verify everything is correct:

### Files Check
- [ ] All personal repo updates are included
- [ ] All IBM-specific content is preserved
- [ ] No files accidentally deleted
- [ ] New files from personal repo are added
- [ ] Directory structure is correct

### Content Check
- [ ] IBM branding intact (company name, product names)
- [ ] IBM team information preserved
- [ ] IBM-specific processes documented
- [ ] New methodology content added
- [ ] Templates updated
- [ ] Documentation enhanced

### Git Check
- [ ] All changes committed
- [ ] Commit message is clear
- [ ] Changes pushed to IBM GitHub
- [ ] Backup branch exists
- [ ] No uncommitted changes remain

### Functionality Check
- [ ] README.md navigation works
- [ ] All file links are valid
- [ ] Templates are accessible
- [ ] Documentation is complete
- [ ] No broken references

---

## Rollback Plan (If Something Goes Wrong)

### Option 1: Rollback Specific Files

```bash
cd ~/Projects/ibm-product-context-engineering

# Restore specific file from backup branch
git checkout backup/before-sync-$(date +%Y%m%d) -- path/to/file

# Commit the restoration
git add path/to/file
git commit -m "rollback: Restore [filename] from backup"
```

### Option 2: Rollback Everything

```bash
cd ~/Projects/ibm-product-context-engineering

# Reset to backup branch
git reset --hard backup/before-sync-$(date +%Y%m%d)

# Force push (only if you haven't shared the branch)
git push --force

# Or create new branch from backup
git checkout -b feature/ace-methodology-integration-v2 backup/before-sync-$(date +%Y%m%d)
git push -u origin feature/ace-methodology-integration-v2
```

### Option 3: Restore from Desktop Backups

```bash
# If you need to restore from diff backup
cd ~/Projects/ibm-product-context-engineering
git apply ~/Desktop/ibm-repo-changes-backup.diff
```

---

## Best Practices for Future Syncs

### 1. Sync Regularly
- Don't let repos diverge too much
- Sync weekly or after major personal repo updates
- Smaller syncs are easier to manage

### 2. Document Changes
- Keep a log of what you sync
- Note any conflicts and how you resolved them
- Update SYNC_STRATEGY.md with learnings

### 3. Use Branches
- Always create backup branch before syncing
- Consider using separate sync branches
- Merge to main branch after verification

### 4. Communicate with Team
- Let team know you're syncing
- Share what's changing
- Get feedback on conflicts

### 5. Test After Syncing
- Verify all links work
- Check that AI agents can still read files
- Ensure templates are valid
- Test workflows

---

## Quick Reference Commands

### Before Syncing
```bash
# Create backup
cd ~/Projects/ibm-product-context-engineering
git checkout -b backup/before-sync-$(date +%Y%m%d)
git push -u origin backup/before-sync-$(date +%Y%m%d)
git checkout feature/ace-methodology-integration

# Stash local changes
git stash push -m "Local changes before sync"

# Update personal repo
cd ~/Projects/product-context-engineering
git pull origin main
```

### During Syncing
```bash
# Copy file
cp ~/Projects/product-context-engineering/[source] \
   ~/Projects/ibm-product-context-engineering/[dest]

# Check changes
cd ~/Projects/ibm-product-context-engineering
git status
git diff

# Resolve conflicts
code [conflicted-file]
git add [conflicted-file]
```

### After Syncing
```bash
# Restore stashed changes
git stash pop

# Commit
git add .
git commit -m "sync: Update from personal repo"

# Push
git push
```

### If Problems
```bash
# Rollback
git reset --hard backup/before-sync-$(date +%Y%m%d)

# Or restore file
git checkout backup/before-sync-$(date +%Y%m%d) -- [file]
```

---

## Summary

**Safe Sync Process:**
1. ✅ Create backups (branch + desktop files)
2. ✅ Stash local IBM changes
3. ✅ Update personal repo
4. ✅ Identify changed files
5. ✅ Copy/merge selectively
6. ✅ Review all changes
7. ✅ Restore stashed changes
8. ✅ Commit with clear message
9. ✅ Push to IBM GitHub
10. ✅ Verify everything works

**You won't lose any work if you follow this guide!**

---

**Ready to start?** Follow Step 1 above to begin the safe sync process.