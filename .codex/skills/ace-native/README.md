# ACE-Native Skills (IBM-Specific Patterns)

**Purpose:** Skills built specifically for ACE methodology patterns not covered by GHM.

## Design Principles

### ACE Pattern Implementation
Each skill implements specific ACE methodology patterns:
- **PAT-001:** Context Layer Pattern (Strategic, Tactical, Operational)
- **PAT-002:** Phase Alignment Pattern (6 product development phases)
- **PAT-003:** Discipline-Specific Context Pattern (PM, Designer, Developer)
- **PAT-004:** Context Evolution Pattern (systematic evolution workflows)
- **PAT-005:** Context Quality Pattern (validation and metrics)

### Team-First Design
Unlike GHM's individual focus, ACE-native skills are designed for:
- **Multi-person teams** (10-50 people)
- **Cross-discipline collaboration** 
- **Enterprise scale** and security
- **Systematic handoffs** and coordination

### IBM Integration
Skills include enterprise features:
- **Security compliance** (data classification, access control)
- **IBM tool integration** (GitHub Enterprise, Project Bob)
- **Governance workflows** (approval chains, audit trails)
- **Scalability patterns** (works across multiple product teams)

## Planned Skills

### 1. ace-context-manager
**Pattern:** PAT-001, PAT-004, PAT-005  
**Purpose:** Populate and maintain Source of Truth files using ACE methodology

**Capabilities:**
- Extract decisions from documents → DEC-XXX entries
- Extract features from requirements → FEAT-XXX entries  
- Maintain cross-references between SoT files
- Validate ID-based knowledge graph consistency
- Support team collaboration on context updates

### 2. team-context-coordinator
**Pattern:** PAT-003  
**Purpose:** Coordinate context across PM, Designer, Developer disciplines

**Capabilities:**
- Manage shared strategic core across disciplines
- Synchronize discipline-specific context extensions
- Orchestrate cross-team handoffs (Design → Dev, Dev → QA)
- Resolve context conflicts between team members

### 3. phase-transition-manager
**Pattern:** PAT-002  
**Purpose:** Implement systematic phase transitions with proper context evolution

**Capabilities:**
- Archive previous phase context appropriately
- Shift layer weights per phase alignment pattern
- Update cross-references for new phase focus
- Coordinate team transition activities

### 4. quality-validator
**Pattern:** PAT-005  
**Purpose:** Implement context quality validation across all ACE patterns

**Capabilities:**
- Check context freshness across all layers
- Validate cross-reference integrity
- Assess completeness for current phase
- Generate quality reports for team reviews

## Development Status

| Skill | Status | Priority | ACE Patterns |
|-------|---------|----------|--------------|
| ace-context-manager | Planned | High | PAT-001, PAT-004, PAT-005 |
| team-context-coordinator | Planned | High | PAT-003 |
| phase-transition-manager | Planned | Medium | PAT-002 |
| quality-validator | Planned | Medium | PAT-005 |

## Usage

ACE-native skills work specifically with IBM ACE methodology:
- **Require ACE file structure** (3+1+SoT+Temp)
- **Understand IBM context** (security, teams, tools)
- **Implement ACE patterns** systematically
- **Support enterprise scale** (multiple teams, governance)

## Development Process

1. **Design skill** to implement specific ACE pattern
2. **Follow Agent Skills specification** for compatibility
3. **Test with IBM team workflows**
4. **Validate enterprise requirements**
5. **Document ACE pattern implementation**
6. **Integrate with existing skills ecosystem**

---

**Coming Next:** `ace-context-manager` skill to populate SoT files from existing product knowledge.
