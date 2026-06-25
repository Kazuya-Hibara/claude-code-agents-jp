# 🔨 Phase 3 プレイブック — ビルドと反復

> **期間**: 2-12週間 (スコープにより変動) | **Agents**: 15-30+ | **Gate Keeper**: Agents Orchestrator

---

## 目的

継続的な Dev↔QA ループを通じて、すべての機能を実装する。各タスクは次のタスクに進む前に検証される。ここが作業の大部分を占めるフェーズであり、NEXUS のオーケストレーションが最も大きな価値を発揮する場面である。

## 事前条件

- [ ] Phase 2 Quality Gate を通過済み (基盤が検証済み)
- [ ] Sprint Prioritizer の backlog が RICE scores 付きで利用可能
- [ ] CI/CD pipeline が稼働中
- [ ] design system と component library が準備済み
- [ ] auth system 付きの API scaffold が準備済み

## Dev↔QA ループ — コアメカニクス

Agents Orchestrator は、すべてのタスクをこのサイクルで管理する。

```
FOR EACH task IN sprint_backlog (ordered by RICE score):

  1. ASSIGN task to appropriate Developer Agent (see assignment matrix)
  2. Developer IMPLEMENTS task
  3. Evidence Collector TESTS task
     - Visual screenshots (desktop, tablet, mobile)
     - Functional verification against acceptance criteria
     - Brand consistency check
  4. IF verdict == PASS:
       Mark task complete
       Move to next task
     ELIF verdict == FAIL AND attempts < 3:
       Send QA feedback to Developer
       Developer FIXES specific issues
       Return to step 3
     ELIF attempts >= 3:
       ESCALATE to Agents Orchestrator
       Orchestrator decides: reassign, decompose, defer, or accept
  5. UPDATE pipeline status report
```

## Agent 割り当てマトリクス

### Primary Developer の割り当て

| タスクカテゴリ | Primary Agent | Backup Agent | QA Agent |
|--------------|--------------|-------------|----------|
| **React/Vue/Angular UI** | Frontend Developer | Rapid Prototyper | Evidence Collector |
| **REST/GraphQL API** | Backend Architect | Senior Developer | API Tester |
| **Database operations** | Backend Architect | — | API Tester |
| **Mobile (iOS/Android)** | Mobile App Builder | — | Evidence Collector |
| **ML model/pipeline** | AI Engineer | — | Test Results Analyzer |
| **CI/CD/Infrastructure** | DevOps Automator | Infrastructure Maintainer | Performance Benchmarker |
| **Premium/complex feature** | Senior Developer | Backend Architect | Evidence Collector |
| **Quick prototype/POC** | Rapid Prototyper | Frontend Developer | Evidence Collector |
| **WebXR/immersive** | XR Immersive Developer | — | Evidence Collector |
| **visionOS** | visionOS Spatial Engineer | macOS Spatial/Metal Engineer | Evidence Collector |
| **Cockpit controls** | XR Cockpit Interaction Specialist | XR Interface Architect | Evidence Collector |
| **CLI/terminal tools** | Terminal Integration Specialist | — | API Tester |
| **Code intelligence** | LSP/Index Engineer | — | Test Results Analyzer |
| **Performance optimization** | Performance Benchmarker | Infrastructure Maintainer | Performance Benchmarker |

### Specialist Support (必要に応じて起動)

| Specialist | 起動タイミング | トリガー |
|-----------|-----------------|---------|
| UI Designer | Component に視覚的な改善が必要なとき | Developer が design guidance を依頼 |
| Whimsy Injector | Feature に楽しさや個性が必要なとき | UX review が機会を特定 |
| Visual Storyteller | Visual narrative content が必要なとき | Content に visual assets が必要 |
| Brand Guardian | Brand consistency に懸念があるとき | QA が brand deviation を発見 |
| XR Interface Architect | Spatial interaction design が必要なとき | XR feature に UX guidance が必要 |
| Analytics Reporter | 深い data analysis が必要なとき | Feature に analytics integration が必要 |

## 並行 Build トラック

NEXUS-Full deployments では、4つのトラックが同時に進行する。

### Track A: Core Product Development
```
Managed by: Agents Orchestrator (Dev↔QA loop)
Agents: Frontend Developer, Backend Architect, AI Engineer,
        Mobile App Builder, Senior Developer
QA: Evidence Collector, API Tester, Test Results Analyzer

Sprint cadence: 2-week sprints
Daily: Task implementation + QA validation
End of sprint: Sprint review + retrospective
```

### Track B: Growth & Marketing Preparation
```
Managed by: Project Shepherd
Agents: Growth Hacker, Content Creator, Social Media Strategist,
        App Store Optimizer

Sprint cadence: Aligned with Track A milestones
Activities:
- Growth Hacker → Design viral loops and referral mechanics
- Content Creator → Build launch content pipeline
- Social Media Strategist → Plan cross-platform campaign
- App Store Optimizer → Prepare store listing (if mobile)
```

### Track C: Quality & Operations
```
Managed by: Agents Orchestrator
Agents: Evidence Collector, API Tester, Performance Benchmarker,
        Workflow Optimizer, Experiment Tracker

Continuous activities:
- Evidence Collector → Screenshot QA for every task
- API Tester → Endpoint validation for every API task
- Performance Benchmarker → Periodic load testing
- Workflow Optimizer → Process improvement identification
- Experiment Tracker → A/B test setup for validated features
```

### Track D: Brand & Experience Polish
```
Managed by: Brand Guardian
Agents: UI Designer, Brand Guardian, Visual Storyteller,
        Whimsy Injector

Triggered activities:
- UI Designer → Component refinement when QA identifies visual issues
- Brand Guardian → Periodic brand consistency audit
- Visual Storyteller → Visual narrative assets as features complete
- Whimsy Injector → Micro-interactions and delight moments
```

## Sprint 実行テンプレート

### Sprint Planning (Day 1)

```
Sprint Prioritizer activates:
1. Review backlog with updated RICE scores
2. Select tasks for sprint based on team velocity
3. Assign tasks to developer agents
4. Identify dependencies and ordering
5. Set sprint goal and success criteria

Output: Sprint Plan with task assignments
```

### Daily Execution (Day 2 to Day N-1)

```
Agents Orchestrator manages:
1. Current task status check
2. Dev↔QA loop execution
3. Blocker identification and resolution
4. Progress tracking and reporting

Status report format:
- Tasks completed today: [list]
- Tasks in QA: [list]
- Tasks in development: [list]
- Blocked tasks: [list with reason]
- QA pass rate: [X/Y]
```

### Sprint Review (Day N)

```
Project Shepherd facilitates:
1. Demo completed features
2. Review QA evidence for each task
3. Collect stakeholder feedback
4. Update backlog based on learnings

Participants: All active agents + stakeholders
Output: Sprint Review Summary
```

### Sprint Retrospective

```
Workflow Optimizer facilitates:
1. What went well?
2. What could improve?
3. What will we change next sprint?
4. Process efficiency metrics

Output: Retrospective Action Items
```

## Orchestrator の意思決定ロジック

### タスク失敗時の対応

```
WHEN task fails QA:
  IF attempt == 1:
    → Send specific QA feedback to developer
    → Developer fixes ONLY the identified issues
    → Re-submit for QA
    
  IF attempt == 2:
    → Send accumulated QA feedback
    → Consider: Is the developer agent the right fit?
    → Developer fixes with additional context
    → Re-submit for QA
    
  IF attempt == 3:
    → ESCALATE
    → Options:
      a) Reassign to different developer agent
      b) Decompose task into smaller sub-tasks
      c) Revise approach/architecture
      d) Accept with known limitations (document)
      e) Defer to future sprint
    → Document decision and rationale
```

### 並行タスク管理

```
WHEN multiple tasks have no dependencies:
  → Assign to different developer agents simultaneously
  → Each runs independent Dev↔QA loop
  → Orchestrator tracks all loops concurrently
  → Merge completed tasks in dependency order

WHEN task has dependencies:
  → Wait for dependency to pass QA
  → Then assign dependent task
  → Include dependency context in handoff
```

## Quality Gate チェックリスト

| # | 基準 | Evidence Source | Status |
|---|-----------|----------------|--------|
| 1 | すべての sprint tasks が QA を通過 (100% 完了) | Evidence Collector screenshots per task | ☐ |
| 2 | すべての API endpoints が検証済み | API Tester regression report | ☐ |
| 3 | Performance baselines を達成 (P95 < 200ms) | Performance Benchmarker report | ☐ |
| 4 | Brand consistency が検証済み (95%+ adherence) | Brand Guardian audit | ☐ |
| 5 | critical bugs なし (未解決の P0/P1 がゼロ) | Test Results Analyzer summary | ☐ |
| 6 | すべての acceptance criteria を満たしている | Task-by-task verification | ☐ |
| 7 | すべての PRs で code review が完了 | Git history evidence | ☐ |

## Gate 判定

**Gate Keeper**: Agents Orchestrator

- **PASS**: Feature-complete application → Phase 4 activation
- **CONTINUE**: More sprints needed → Continue Phase 3
- **ESCALATE**: Systemic issues → Studio Producer intervention

## Phase 4 への Handoff

```markdown
## Phase 3 → Phase 4 Handoff Package

### For Reality Checker:
- Complete application (all features implemented)
- All QA evidence from Dev↔QA loops
- API Tester regression results
- Performance Benchmarker baseline data
- Brand Guardian consistency audit
- Known issues list (if any accepted limitations)

### For Legal Compliance Checker:
- Data handling implementation details
- Privacy policy implementation
- Consent management implementation
- Security measures implemented

### For Performance Benchmarker:
- Application URLs for load testing
- Expected traffic patterns
- Performance budgets from architecture

### For Infrastructure Maintainer:
- Production environment requirements
- Scaling configuration needs
- Monitoring alert thresholds
```

---

*Phase 3 は、すべての sprint tasks が QA を通過し、すべての API endpoints が検証され、performance baselines を満たし、critical bugs が未解決のまま残っていない状態になった時点で完了となる。*