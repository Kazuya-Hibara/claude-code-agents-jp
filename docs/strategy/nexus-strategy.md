# 🌐 NEXUS — Network of EXperts, Unified in Strategy

## The Agency のマルチエージェント・オーケストレーション完全運用プレイブック

> **NEXUS** は、The Agency の独立した AI スペシャリスト群を、同期されたインテリジェンス・ネットワークへ変換します。これはプロンプト集ではありません。The Agency を、あらゆるプロジェクト、プロダクト、組織に対する戦力増幅装置へ変える **デプロイメント・ドクトリン** です。

---

## 目次

1. [戦略的基盤](#1-strategic-foundation)
2. [NEXUS 運用モデル](#2-the-nexus-operating-model)
3. [Phase 0 — インテリジェンス & ディスカバリー](#3-phase-0--intelligence--discovery)
4. [Phase 1 — 戦略 & アーキテクチャ](#4-phase-1--strategy--architecture)
5. [Phase 2 — 基盤 & スキャフォールディング](#5-phase-2--foundation--scaffolding)
6. [Phase 3 — 構築 & 反復](#6-phase-3--build--iterate)
7. [Phase 4 — 品質 & 強化](#7-phase-4--quality--hardening)
8. [Phase 5 — ローンチ & グロース](#8-phase-5--launch--growth)
9. [Phase 6 — 運用 & 進化](#9-phase-6--operate--evolve)
10. [Agent Coordination Matrix](#10-agent-coordination-matrix)
11. [Handoff Protocols](#11-handoff-protocols)
12. [Quality Gates](#12-quality-gates)
13. [Risk Management](#13-risk-management)
14. [Success Metrics](#14-success-metrics)
15. [Quick-Start Activation Guide](#15-quick-start-activation-guide)

---

## 1. 戦略的基盤

### 1.1 NEXUS が解決すること

個々の agent は強力です。しかし coordination がなければ、次のような問題を生みます。
- アーキテクチャ判断の衝突
- division 間での作業重複
- handoff 境界での品質ギャップ
- 共有コンテキストや組織的記憶の欠如

**NEXUS は、以下を定義することで、これらの失敗パターンを排除します**。
- 各 phase で **誰が** activate するか
- **何を**、誰のために作るか
- **いつ**、誰に hand off するか
- 次へ進む前に品質を **どのように** 検証するか
- パイプライン内で各 agent が存在する **理由**（乗客を作らない）

### 1.2 Core Principles

| Principle | 説明 |
|-----------|-------------|
| **Pipeline Integrity** | Quality gate を通過しない phase は進めない |
| **Context Continuity** | すべての handoff が完全なコンテキストを運ぶ。cold start する agent を作らない |
| **Parallel Execution** | 独立した workstream を並行実行し、timeline を圧縮する |
| **Evidence Over Claims** | すべての品質評価には主張ではなく証拠を要求する |
| **Fail Fast, Fix Fast** | escalation 前の retry は task あたり最大 3 回 |
| **Single Source of Truth** | canonical spec は 1 つ、task list は 1 つ、architecture doc は 1 つ |

### 1.3 Division 別 Agent Roster

| Division | Agents | Primary NEXUS Role |
|----------|--------|--------------------|
| **Engineering** | Frontend Developer, Backend Architect, Mobile App Builder, AI Engineer, DevOps Automator, Rapid Prototyper, Senior Developer | すべての technical system を構築、deploy、保守する |
| **Design** | UI Designer, UX Researcher, UX Architect, Brand Guardian, Visual Storyteller, Whimsy Injector, Image Prompt Engineer | visual identity、user experience、brand consistency を定義する |
| **Marketing** | Growth Hacker, Content Creator, Twitter Engager, TikTok Strategist, Instagram Curator, Reddit Community Builder, App Store Optimizer, Social Media Strategist | acquisition、engagement、市場での存在感を推進する |
| **Product** | Sprint Prioritizer, Trend Researcher, Feedback Synthesizer | 何を、いつ、なぜ作るかを定義する |
| **Project Management** | Studio Producer, Project Shepherd, Studio Operations, Experiment Tracker, Senior Project Manager | timeline、resource、cross-functional coordination を orchestrate する |
| **Testing** | Evidence Collector, Reality Checker, Test Results Analyzer, Performance Benchmarker, API Tester, Tool Evaluator, Workflow Optimizer | evidence-based assessment によって品質を検証する |
| **Support** | Support Responder, Analytics Reporter, Finance Tracker, Infrastructure Maintainer, Legal Compliance Checker, Executive Summary Generator | operations、compliance、business intelligence を維持する |
| **Spatial Computing** | XR Interface Architect, macOS Spatial/Metal Engineer, XR Immersive Developer, XR Cockpit Interaction Specialist, visionOS Spatial Engineer, Terminal Integration Specialist | immersive および spatial computing experience を構築する |
| **Specialized** | Agents Orchestrator, Analytics Reporter, LSP/Index Engineer, Sales Data Extraction Agent, Data Consolidation Agent, Report Distribution Agent | 横断的 coordination、deep analytics、code intelligence を担う |

---

## 2. NEXUS 運用モデル

### 2.1 7 Phase Pipeline

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        NEXUS PIPELINE                                   │
│                                                                         │
│  Phase 0        Phase 1         Phase 2          Phase 3                │
│  DISCOVER  ───▶ STRATEGIZE ───▶ SCAFFOLD   ───▶  BUILD                 │
│  Intelligence   Architecture    Foundation       Dev ↔ QA Loop          │
│                                                                         │
│  Phase 4        Phase 5         Phase 6                                 │
│  HARDEN   ───▶  LAUNCH    ───▶  OPERATE                                │
│  Quality Gate   Go-to-Market    Sustained Ops                           │
│                                                                         │
│  ◆ Quality Gate between every phase                                     │
│  ◆ Parallel tracks within phases                                        │
│  ◆ Feedback loops at every boundary                                     │
└─────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Command Structure

```
                    ┌──────────────────────┐
                    │  Agents Orchestrator  │  ◄── Pipeline Controller
                    │  (Specialized)        │
                    └──────────┬───────────┘
                               │
              ┌────────────────┼────────────────┐
              │                │                │
     ┌────────▼──────┐ ┌──────▼───────┐ ┌──────▼──────────┐
     │ Studio        │ │ Project      │ │ Senior Project   │
     │ Producer      │ │ Shepherd     │ │ Manager          │
     │ (Portfolio)   │ │ (Execution)  │ │ (Task Scoping)   │
     └───────────────┘ └──────────────┘ └─────────────────┘
              │                │                │
              ▼                ▼                ▼
     ┌─────────────────────────────────────────────────┐
     │           Division Leads (per phase)             │
     │  Engineering │ Design │ Marketing │ Product │ QA │
     └─────────────────────────────────────────────────┘
```

### 2.3 Activation Modes

NEXUS は 3 つの deployment configuration をサポートします。

| Mode | Agents Active | Use Case | Timeline |
|------|--------------|----------|----------|
| **NEXUS-Full** | All | enterprise product launch、full lifecycle | 12-24 週間 |
| **NEXUS-Sprint** | 15-25 | feature development、MVP build | 2-6 週間 |
| **NEXUS-Micro** | 5-10 | bug fix、content campaign、single deliverable | 1-5 日 |

---

## 3. Phase 0 — インテリジェンス & ディスカバリー

> **Objective**: resource を投入する前に landscape を理解する。problem が検証されるまで build しない。

### 3.1 Active Agents

| Agent | Role in Phase | Primary Output |
|-------|--------------|----------------|
| **Trend Researcher** | market intelligence lead | TAM/SAM/SOM を含む Market Analysis Report |
| **Feedback Synthesizer** | user needs analysis | pain point を含む Synthesized Feedback Report |
| **UX Researcher** | user behavior analysis | personas と journey maps を含む Research Findings |
| **Analytics Reporter** | data landscape assessment | available signals を含む Data Audit Report |
| **Legal Compliance Checker** | regulatory scan | Compliance Requirements Matrix |
| **Tool Evaluator** | technology landscape | Tech Stack Assessment |

### 3.2 Parallel Workstreams

```
WORKSTREAM A: Market Intelligence          WORKSTREAM B: User Intelligence
├── Trend Researcher                       ├── Feedback Synthesizer
│   ├── Competitive landscape              │   ├── Multi-channel feedback collection
│   ├── Market sizing (TAM/SAM/SOM)        │   ├── Sentiment analysis
│   └── Trend lifecycle mapping            │   └── Pain point prioritization
│                                          │
├── Analytics Reporter                     ├── UX Researcher
│   ├── Existing data audit                │   ├── User interviews/surveys
│   ├── Signal identification              │   ├── Persona development
│   └── Baseline metrics                   │   └── Journey mapping
│                                          │
└── Legal Compliance Checker               └── Tool Evaluator
    ├── Regulatory requirements                ├── Technology assessment
    ├── Data handling constraints               ├── Build vs. buy analysis
    └── Jurisdiction mapping                   └── Integration feasibility
```

### 3.3 Phase 0 Quality Gate

**Gate Keeper**: Executive Summary Generator

| Criterion | Threshold | Evidence Required |
|-----------|-----------|-------------------|
| market opportunity が検証済み | TAM > minimum viable threshold | source 付き Trend Researcher report |
| user need が確認済み | 3 件以上の validated pain points | Feedback Synthesizer + UX Researcher data |
| regulatory path が明確 | blocking compliance issues なし | Legal Compliance Checker matrix |
| data foundation が評価済み | key metrics が特定済み | Analytics Reporter audit |
| technology feasibility が確認済み | stack validated | Tool Evaluator assessment |

**Output**: Executive Summary（500 語以内、SCQA format）→ Decision: GO / NO-GO / PIVOT

---

## 4. Phase 1 — 戦略 & アーキテクチャ

> **Objective**: 1 行の code を書く前に、何を構築するのか、どう構造化するのか、success が何を意味するのかを定義する。

### 4.1 Active Agents

| Agent | Role in Phase | Primary Output |
|-------|--------------|----------------|
| **Studio Producer** | strategic portfolio alignment | Strategic Portfolio Plan |
| **Senior Project Manager** | spec-to-task conversion | Comprehensive Task List |
| **Sprint Prioritizer** | feature prioritization | Prioritized Backlog（RICE scored） |
| **UX Architect** | technical architecture + UX foundation | Architecture Spec + CSS Design System |
| **Brand Guardian** | brand identity system | Brand Foundation Document |
| **Backend Architect** | system architecture | System Architecture Specification |
| **AI Engineer** | AI/ML architecture（該当する場合） | ML System Design |
| **Finance Tracker** | budget and resource planning | ROI projections 付き Financial Plan |

### 4.2 Execution Sequence

```
STEP 1: Strategic Framing (Parallel)
├── Studio Producer → Strategic Portfolio Plan (vision, objectives, ROI targets)
├── Brand Guardian → Brand Foundation (purpose, values, visual identity system)
└── Finance Tracker → Budget Framework (resource allocation, cost projections)

STEP 2: Technical Architecture (Parallel, after Step 1)
├── UX Architect → CSS Design System + Layout Framework + UX Structure
├── Backend Architect → System Architecture (services, databases, APIs)
├── AI Engineer → ML Architecture (models, pipelines, inference strategy)
└── Senior Project Manager → Task List (spec → tasks, exact requirements)

STEP 3: Prioritization (Sequential, after Step 2)
└── Sprint Prioritizer → RICE-scored backlog with sprint assignments
    ├── Input: Task List + Architecture Spec + Budget Framework
    ├── Output: Prioritized sprint plan with dependency map
    └── Validation: Studio Producer confirms strategic alignment
```

### 4.3 Phase 1 Quality Gate

**Gate Keeper**: Studio Producer + Reality Checker（dual sign-off）

| Criterion | Threshold | Evidence Required |
|-----------|-----------|-------------------|
| architecture がすべての requirements をカバー | spec coverage 100% | Senior PM task list cross-referenced |
| brand system が完成 | logo、colors、typography、voice が定義済み | Brand Guardian deliverable |
| technical feasibility が検証済み | すべての components に implementation path がある | Backend Architect + UX Architect specs |
| budget 承認済み | organizational constraints の範囲内 | Finance Tracker plan |
| sprint plan が現実的 | velocity-based estimation | Sprint Prioritizer backlog |

**Output**: Approved Architecture Package → Phase 2 activation

---

## 5. Phase 2 — 基盤 & スキャフォールディング

> **Objective**: 以降のすべての work が依存する technical および operational foundation を構築する。muscle を追加する前に skeleton を立ち上げる。

### 5.1 Active Agents

| Agent | Role in Phase | Primary Output |
|-------|--------------|----------------|
| **DevOps Automator** | CI/CD pipeline + infrastructure | Deployment Pipeline + IaC Templates |
| **Frontend Developer** | project scaffolding + component library | App Skeleton + Design System Implementation |
| **Backend Architect** | database + API foundation | Schema + API Scaffold + Auth System |
| **UX Architect** | CSS system implementation | Design Tokens + Layout Framework |
| **Infrastructure Maintainer** | cloud infrastructure setup | Monitoring + Logging + Alerting |
| **Studio Operations** | process setup | collaboration tools + workflows |

### 5.2 Parallel Workstreams

```
WORKSTREAM A: Infrastructure              WORKSTREAM B: Application Foundation
├── DevOps Automator                      ├── Frontend Developer
│   ├── CI/CD pipeline (GitHub Actions)   │   ├── Project scaffolding
│   ├── Container orchestration           │   ├── Component library setup
│   └── Environment provisioning          │   └── Design system integration
│                                         │
├── Infrastructure Maintainer             ├── Backend Architect
│   ├── Cloud resource provisioning       │   ├── Database schema deployment
│   ├── Monitoring (Prometheus/Grafana)   │   ├── API scaffold + auth
│   └── Security hardening               │   └── Service communication layer
│                                         │
└── Studio Operations                     └── UX Architect
    ├── Git workflow + branch strategy        ├── CSS design tokens
    ├── Communication channels                ├── Responsive layout system
    └── Documentation templates               └── Theme system (light/dark/system)
```

### 5.3 Phase 2 Quality Gate

**Gate Keeper**: DevOps Automator + Evidence Collector

| Criterion | Threshold | Evidence Required |
|-----------|-----------|-------------------|
| CI/CD pipeline が operational | build + test + deploy が working | Pipeline execution logs |
| database schema が deployed | すべての tables/indexes が created | migration success + schema dump |
| API scaffold が responding | health check endpoints が live | curl response screenshots |
| frontend が rendering | skeleton app が browser で load される | Evidence Collector screenshots |
| monitoring が active | dashboard が metrics を表示 | Grafana/monitoring screenshots |
| design system が implemented | tokens + components が available | Component library demo |

**Output**: full DevOps pipeline を備えた working skeleton application → Phase 3 activation

---

## 6. Phase 3 — 構築 & 反復

> **Objective**: 継続的な Dev↔QA loop を通じて features を実装する。すべての task は、次に進む前に validation される。ここで作業の大部分が発生する。

### 6.1 Dev↔QA Loop

これは NEXUS の中核です。Agents Orchestrator は **task-by-task quality loop** を管理します。

```
┌─────────────────────────────────────────────────────────┐
│                   DEV ↔ QA LOOP                          │
│                                                          │
│  ┌──────────┐    ┌──────────┐    ┌──────────────────┐   │
│  │ Developer │───▶│ Evidence │───▶│ Decision Logic    │   │
│  │ Agent     │    │ Collector│    │                   │   │
│  │           │    │ (QA)     │    │ PASS → Next Task  │   │
│  │ Implements│    │          │    │ FAIL → Retry (≤3) │   │
│  │ Task N    │    │ Tests    │    │ BLOCKED → Escalate│   │
│  │           │◀───│ Task N   │◀───│                   │   │
│  └──────────┘    └──────────┘    └──────────────────┘   │
│       ▲                                    │             │
│       │            QA Feedback             │             │
│       └────────────────────────────────────┘             │
│                                                          │
│  Orchestrator tracks: attempt count, QA feedback,        │
│  task status, cumulative quality metrics                 │
└─────────────────────────────────────────────────────────┘
```

### 6.2 Task Type 別 Agent Assignment

| Task Type | Primary Developer | QA Agent | Specialist Support |
|-----------|------------------|----------|-------------------|
| Frontend UI | Frontend Developer | Evidence Collector | UI Designer, Whimsy Injector |
| Backend API | Backend Architect | API Tester | Performance Benchmarker |
| Database | Backend Architect | API Tester | Analytics Reporter |
| Mobile | Mobile App Builder | Evidence Collector | UX Researcher |
| AI/ML Feature | AI Engineer | Test Results Analyzer | Analytics Reporter |
| Infrastructure | DevOps Automator | Performance Benchmarker | Infrastructure Maintainer |
| Premium Polish | Senior Developer | Evidence Collector | Visual Storyteller |
| Rapid Prototype | Rapid Prototyper | Evidence Collector | Experiment Tracker |
| Spatial/XR | XR Immersive Developer | Evidence Collector | XR Interface Architect |
| visionOS | visionOS Spatial Engineer | Evidence Collector | macOS Spatial/Metal Engineer |
| Cockpit UI | XR Cockpit Interaction Specialist | Evidence Collector | XR Interface Architect |
| CLI/Terminal | Terminal Integration Specialist | API Tester | LSP/Index Engineer |
| Code Intelligence | LSP/Index Engineer | Test Results Analyzer | Senior Developer |

### 6.3 Parallel Build Tracks

複雑な projects では、複数の tracks が同時に実行されます。

```
TRACK A: Core Product                    TRACK B: Growth & Marketing
├── Frontend Developer                   ├── Growth Hacker
│   └── UI implementation                │   └── Viral loops + referral system
├── Backend Architect                    ├── Content Creator
│   └── API + business logic             │   └── Launch content + editorial calendar
├── AI Engineer                          ├── Social Media Strategist
│   └── ML features + pipelines          │   └── Cross-platform campaign
│                                        ├── App Store Optimizer (if mobile)
│                                        │   └── ASO strategy + metadata
│                                        │
TRACK C: Quality & Operations            TRACK D: Brand & Experience
├── Evidence Collector                   ├── UI Designer
│   └── Continuous QA screenshots        │   └── Component refinement
├── API Tester                           ├── Brand Guardian
│   └── Endpoint validation              │   └── Brand consistency audit
├── Performance Benchmarker              ├── Visual Storyteller
│   └── Load testing + optimization      │   └── Visual narrative assets
├── Workflow Optimizer                   └── Whimsy Injector
│   └── Process improvement                  └── Delight moments + micro-interactions
└── Experiment Tracker
    └── A/B test management
```

### 6.4 Phase 3 Quality Gate

**Gate Keeper**: Agents Orchestrator

| Criterion | Threshold | Evidence Required |
|-----------|-----------|-------------------|
| すべての tasks が QA 合格 | task completion 100% | task ごとの Evidence Collector screenshots |
| API endpoints validated | すべての endpoints が tested | API Tester report |
| performance baselines 達成 | P95 < 200ms, LCP < 2.5s | Performance Benchmarker report |
| brand consistency verified | adherence 95%+ | Brand Guardian audit |
| critical bugs なし | open P0/P1 issues ゼロ | Test Results Analyzer summary |

**Output**: feature-complete application → Phase 4 activation

---

## 7. Phase 4 — 品質 & 強化

> **Objective**: 最終品質 gauntlet。Reality Checker はデフォルトで "NEEDS WORK" と判断する。production readiness は圧倒的な evidence で証明しなければならない。

### 7.1 Active Agents

| Agent | Role in Phase | Primary Output |
|-------|--------------|----------------|
| **Reality Checker** | final integration testing（defaults to NEEDS WORK） | Reality-Based Integration Report |
| **Evidence Collector** | comprehensive visual evidence | Screenshot Evidence Package |
| **Performance Benchmarker** | load testing + optimization | Performance Certification |
| **API Tester** | full API regression suite | API Test Report |
| **Test Results Analyzer** | aggregate quality metrics | Quality Metrics Dashboard |
| **Legal Compliance Checker** | final compliance audit | Compliance Certification |
| **Infrastructure Maintainer** | production readiness check | Infrastructure Readiness Report |
| **Workflow Optimizer** | process efficiency review | Optimization Recommendations |

### 7.2 Hardening Sequence

```
STEP 1: Evidence Collection (Parallel)
├── Evidence Collector → Full screenshot suite (desktop, tablet, mobile)
├── API Tester → Complete endpoint regression
├── Performance Benchmarker → Load test at 10x expected traffic
└── Legal Compliance Checker → Final regulatory audit

STEP 2: Analysis (Parallel, after Step 1)
├── Test Results Analyzer → Aggregate all test data into quality dashboard
├── Workflow Optimizer → Identify remaining process inefficiencies
└── Infrastructure Maintainer → Production environment validation

STEP 3: Final Judgment (Sequential, after Step 2)
└── Reality Checker → Integration Report
    ├── Cross-validates ALL previous QA findings
    ├── Tests complete user journeys with screenshot evidence
    ├── Verifies specification compliance point-by-point
    ├── Default verdict: NEEDS WORK
    └── READY only with overwhelming evidence across all criteria
```

### 7.3 Phase 4 Quality Gate（THE FINAL GATE）

**Gate Keeper**: Reality Checker（sole authority）

| Criterion | Threshold | Evidence Required |
|-----------|-----------|-------------------|
| user journeys complete | すべての critical paths が working | end-to-end screenshots |
| cross-device consistency | Desktop + Tablet + Mobile | responsive screenshots |
| performance certified | P95 < 200ms, uptime > 99.9% | load test results |
| security validated | critical vulnerabilities ゼロ | security scan report |
| compliance certified | すべての regulatory requirements を満たす | Legal Compliance Checker report |
| specification compliance | spec requirements の 100% | point-by-point verification |

**Verdict Options**:
- **READY** — launch へ進む（first pass ではまれ）
- **NEEDS WORK** — specific fix list とともに Phase 3 へ戻る（想定内）
- **NOT READY** — major architectural issues。Phase 1/2 へ戻る

**Expected**: 初回 implementation は通常 2-3 revision cycles を必要とします。B/B+ rating は正常で健全です。

---

## 8. Phase 5 — ローンチ & グロース

> **Objective**: すべての channel にまたがる go-to-market execution を同時に coordinate する。launch 時の impact を最大化する。

### 8.1 Active Agents

| Agent | Role in Phase | Primary Output |
|-------|--------------|----------------|
| **Growth Hacker** | launch strategy lead | viral loops を含む Growth Playbook |
| **Content Creator** | launch content | blog posts、videos、social content |
| **Social Media Strategist** | cross-platform campaign | Campaign Calendar + Content |
| **Twitter Engager** | Twitter/X launch campaign | thread strategy + engagement plan |
| **TikTok Strategist** | TikTok viral content | short-form video strategy |
| **Instagram Curator** | visual launch campaign | visual content + stories |
| **Reddit Community Builder** | authentic community launch | community engagement plan |
| **App Store Optimizer** | store optimization（mobile の場合） | ASO Package |
| **Executive Summary Generator** | stakeholder communication | Launch Executive Summary |
| **Project Shepherd** | launch coordination | Launch Checklist + Timeline |
| **DevOps Automator** | deployment execution | zero-downtime deployment |
| **Infrastructure Maintainer** | launch monitoring | real-time dashboards |

### 8.2 Launch Sequence

```
T-7 DAYS: Pre-Launch
├── Content Creator → Launch content queued and scheduled
├── Social Media Strategist → Campaign assets finalized
├── Growth Hacker → Viral mechanics tested and armed
├── App Store Optimizer → Store listing optimized
├── DevOps Automator → Blue-green deployment prepared
└── Infrastructure Maintainer → Auto-scaling configured for 10x

T-0: Launch Day
├── DevOps Automator → Execute deployment
├── Infrastructure Maintainer → Monitor all systems
├── Twitter Engager → Launch thread + real-time engagement
├── Reddit Community Builder → Authentic community posts
├── Instagram Curator → Visual launch content
├── TikTok Strategist → Launch videos published
├── Support Responder → Customer support active
└── Analytics Reporter → Real-time metrics dashboard

T+1 TO T+7: Post-Launch
├── Growth Hacker → Analyze acquisition data, optimize funnels
├── Feedback Synthesizer → Collect and analyze early user feedback
├── Analytics Reporter → Daily metrics reports
├── Content Creator → Response content based on reception
├── Experiment Tracker → Launch A/B tests
└── Executive Summary Generator → Daily stakeholder briefings
```

### 8.3 Phase 5 Quality Gate

**Gate Keeper**: Studio Producer + Analytics Reporter

| Criterion | Threshold | Evidence Required |
|-----------|-----------|-------------------|
| deployment successful | zero-downtime、すべての health checks が pass | DevOps deployment logs |
| systems stable | 最初の 48 時間で P0/P1 incidents なし | Infrastructure monitoring |
| user acquisition active | channels が traffic を driving | Analytics Reporter dashboard |
| feedback loop operational | user feedback が collected | Feedback Synthesizer report |
| stakeholders informed | executive summary delivered | Executive Summary Generator output |

**Output**: active growth channels を持つ stable launched product → Phase 6 activation

---

## 9. Phase 6 — 運用 & 進化

> **Objective**: continuous improvement を伴う sustained operations。product は live になった。次はそれを成長させる。

### 9.1 Active Agents（Ongoing）

| Agent | Cadence | Responsibility |
|-------|---------|---------------|
| **Infrastructure Maintainer** | Continuous | system reliability、uptime、performance |
| **Support Responder** | Continuous | customer support と issue resolution |
| **Analytics Reporter** | Weekly | KPI tracking、dashboards、insights |
| **Feedback Synthesizer** | Bi-weekly | user feedback analysis and synthesis |
| **Finance Tracker** | Monthly | financial performance、budget tracking |
| **Legal Compliance Checker** | Monthly | regulatory monitoring and compliance |
| **Trend Researcher** | Monthly | market intelligence and competitive analysis |
| **Executive Summary Generator** | Monthly | C-suite reporting |
| **Sprint Prioritizer** | Per sprint | backlog grooming and sprint planning |
| **Experiment Tracker** | Per experiment | A/B test management and analysis |
| **Growth Hacker** | Ongoing | acquisition optimization and growth experiments |
| **Workflow Optimizer** | Quarterly | process improvement and efficiency gains |

### 9.2 Continuous Improvement Cycle

```
┌──────────────────────────────────────────────────────────┐
│              CONTINUOUS IMPROVEMENT LOOP                   │
│                                                           │
│  MEASURE          ANALYZE           PLAN          ACT     │
│  ┌─────────┐     ┌──────────┐     ┌─────────┐   ┌─────┐ │
│  │Analytics │────▶│Feedback  │────▶│Sprint   │──▶│Build│ │
│  │Reporter  │     │Synthesizer│    │Prioritizer│  │Loop │ │
│  └─────────┘     └──────────┘     └─────────┘   └─────┘ │
│       ▲                                            │      │
│       │              Experiment                    │      │
│       │              Tracker                       │      │
│       └────────────────────────────────────────────┘      │
│                                                           │
│  Monthly: Executive Summary Generator → C-suite report    │
│  Monthly: Finance Tracker → Financial performance         │
│  Monthly: Legal Compliance Checker → Regulatory update    │
│  Monthly: Trend Researcher → Market intelligence          │
│  Quarterly: Workflow Optimizer → Process improvements     │
└──────────────────────────────────────────────────────────┘
```

---

## 10. Agent Coordination Matrix

### 10.1 Full Cross-Division Dependency Map

この matrix は、どの agent が他の agent に消費される output を生成するかを示します。読み方: **Row agent produces → Column agent consumes**。

```
PRODUCER →          │ ENG │ DES │ MKT │ PRD │ PM  │ TST │ SUP │ SPC │ SPZ
────────────────────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼─────┼────
Engineering         │  ●  │     │     │     │     │  ●  │  ●  │  ●  │
Design              │  ●  │  ●  │  ●  │     │     │  ●  │     │  ●  │
Marketing           │     │     │  ●  │  ●  │     │     │  ●  │     │
Product             │  ●  │  ●  │  ●  │  ●  │  ●  │     │     │     │  ●
Project Management  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●  │  ●
Testing             │  ●  │  ●  │     │  ●  │  ●  │  ●  │     │  ●  │
Support             │  ●  │     │  ●  │  ●  │  ●  │     │  ●  │     │  ●
Spatial Computing   │  ●  │  ●  │     │     │     │  ●  │     │  ●  │
Specialized         │  ●  │     │     │  ●  │  ●  │  ●  │  ●  │     │  ●

● = Active dependency (producer creates artifacts consumed by this division)
```

### 10.2 Critical Handoff Pairs

これらは NEXUS で最も traffic の多い handoff relationships です。

| From | To | Artifact | Frequency |
|------|----|----------|-----------|
| Senior Project Manager | All Developers | Task List | Per sprint |
| UX Architect | Frontend Developer | CSS Design System + Layout Spec | Per project |
| Backend Architect | Frontend Developer | API Specification | Per feature |
| Frontend Developer | Evidence Collector | Implemented Feature | Per task |
| Evidence Collector | Agents Orchestrator | QA Verdict（PASS/FAIL） | Per task |
| Agents Orchestrator | Developer（any） | QA Feedback + Retry Instructions | Per failure |
| Brand Guardian | All Design + Marketing | Brand Guidelines | Per project |
| Analytics Reporter | Sprint Prioritizer | Performance Data | Per sprint |
| Feedback Synthesizer | Sprint Prioritizer | User Insights | Per sprint |
| Trend Researcher | Studio Producer | Market Intelligence | Monthly |
| Reality Checker | Agents Orchestrator | Integration Verdict | Per phase |
| Executive Summary Generator | Studio Producer | Executive Brief | Per milestone |

---

## 11. Handoff Protocols

### 11.1 Standard Handoff Template

すべての agent-to-agent handoff には、以下を含める必要があります。

```markdown
## NEXUS Handoff Document

### Metadata
- **From**: [Agent Name] ([Division])
- **To**: [Agent Name] ([Division])
- **Phase**: [Current NEXUS Phase]
- **Task Reference**: [Task ID from Sprint Prioritizer backlog]
- **Priority**: [Critical / High / Medium / Low]
- **Timestamp**: [ISO 8601]

### Context
- **Project**: [Project name and brief description]
- **Current State**: [What has been completed so far]
- **Relevant Files**: [List of files/artifacts to review]
- **Dependencies**: [What this work depends on]

### Deliverable Request
- **What is needed**: [Specific, measurable deliverable]
- **Acceptance criteria**: [How success will be measured]
- **Constraints**: [Technical, timeline, or resource constraints]
- **Reference materials**: [Links to specs, designs, previous work]

### Quality Expectations
- **Must pass**: [Specific quality criteria]
- **Evidence required**: [What proof of completion looks like]
- **Handoff to next**: [Who receives the output and what they need]
```

### 11.2 QA Feedback Loop Protocol

task が QA に fail した場合、feedback は actionable でなければなりません。

```markdown
## QA Failure Feedback

### Task: [Task ID and description]
### Attempt: [1/2/3] of 3 maximum
### Verdict: FAIL

### Specific Issues Found
1. **[Issue Category]**: [Exact description with screenshot reference]
   - Expected: [What should happen]
   - Actual: [What actually happens]
   - Evidence: [Screenshot filename or test output]

2. **[Issue Category]**: [Exact description]
   - Expected: [...]
   - Actual: [...]
   - Evidence: [...]

### Fix Instructions
- [Specific, actionable fix instruction 1]
- [Specific, actionable fix instruction 2]

### Files to Modify
- [file path 1]: [what needs to change]
- [file path 2]: [what needs to change]

### Retry Expectations
- Fix the above issues and re-submit for QA
- Do NOT introduce new features — fix only
- Attempt [N+1] of 3 maximum
```

### 11.3 Escalation Protocol

task が 3 回の retry attempts を超えた場合:

```markdown
## Escalation Report

### Task: [Task ID]
### Attempts Exhausted: 3/3
### Escalation Level: [To Agents Orchestrator / To Studio Producer]

### Failure History
- Attempt 1: [Summary of issues and fixes attempted]
- Attempt 2: [Summary of issues and fixes attempted]
- Attempt 3: [Summary of issues and fixes attempted]

### Root Cause Analysis
- [Why the task keeps failing]
- [What systemic issue is preventing resolution]

### Recommended Resolution
- [ ] Reassign to different developer agent
- [ ] Decompose task into smaller sub-tasks
- [ ] Revise architecture/approach
- [ ] Accept current state with known limitations
- [ ] Defer to future sprint

### Impact Assessment
- **Blocking**: [What other tasks are blocked by this]
- **Timeline Impact**: [How this affects the overall schedule]
- **Quality Impact**: [What quality compromises exist]
```

---

## 12. Quality Gates

### 12.1 Gate Summary

| Phase | Gate Name | Gate Keeper | Pass Criteria |
|-------|-----------|-------------|---------------|
| 0 → 1 | Discovery Gate | Executive Summary Generator | market validated、user need confirmed、regulatory path clear |
| 1 → 2 | Architecture Gate | Studio Producer + Reality Checker | architecture complete、brand defined、budget approved、sprint plan realistic |
| 2 → 3 | Foundation Gate | DevOps Automator + Evidence Collector | CI/CD working、skeleton app running、monitoring active |
| 3 → 4 | Feature Gate | Agents Orchestrator | all tasks pass QA、critical bugs なし、performance baselines met |
| 4 → 5 | Production Gate | Reality Checker（sole authority） | user journeys complete、cross-device consistent、security validated、spec compliant |
| 5 → 6 | Launch Gate | Studio Producer + Analytics Reporter | deployment successful、systems stable、growth channels active |

### 12.2 Gate Failure Handling

```
IF gate FAILS:
  ├── Gate Keeper produces specific failure report
  ├── Agents Orchestrator routes failures to responsible agents
  ├── Failed items enter Dev↔QA loop (Phase 3 mechanics)
  ├── Maximum 3 gate re-attempts before escalation to Studio Producer
  └── Studio Producer decides: fix, descope, or accept with risk
```

---

## 13. Risk Management

### 13.1 Risk Categories and Owners

| Risk Category | Primary Owner | Mitigation Agent | Escalation Path |
|---------------|--------------|-------------------|-----------------|
| Technical Debt | Backend Architect | Workflow Optimizer | Senior Developer |
| Security Vulnerability | Legal Compliance Checker | Infrastructure Maintainer | DevOps Automator |
| Performance Degradation | Performance Benchmarker | Infrastructure Maintainer | Backend Architect |
| Brand Inconsistency | Brand Guardian | UI Designer | Studio Producer |
| Scope Creep | Senior Project Manager | Sprint Prioritizer | Project Shepherd |
| Budget Overrun | Finance Tracker | Studio Operations | Studio Producer |
| Regulatory Non-Compliance | Legal Compliance Checker | Support Responder | Studio Producer |
| Market Shift | Trend Researcher | Growth Hacker | Studio Producer |
| Team Bottleneck | Project Shepherd | Studio Operations | Studio Producer |
| Quality Regression | Reality Checker | Evidence Collector | Agents Orchestrator |

### 13.2 Risk Response Matrix

| Severity | Response Time | Decision Authority | Action |
|----------|--------------|-------------------|--------|
| **Critical**（P0） | Immediate | Studio Producer | All-hands、他の work を停止 |
| **High**（P1） | < 4 hours | Project Shepherd | dedicated agent assignment |
| **Medium**（P2） | < 24 hours | Agents Orchestrator | next sprint priority |
| **Low**（P3） | < 1 week | Sprint Prioritizer | backlog item |

---

## 14. Success Metrics

### 14.1 Pipeline Metrics

| Metric | Target | Measurement Agent |
|--------|--------|-------------------|
| phase completion rate | first attempt で 95% | Agents Orchestrator |
| task first-pass QA rate | 70%+ | Evidence Collector |
| task あたり average retries | < 1.5 | Agents Orchestrator |
| pipeline cycle time | sprint estimate ±15% 以内 | Project Shepherd |
| quality gate pass rate | first attempt で 80%+ | Reality Checker |

### 14.2 Product Metrics

| Metric | Target | Measurement Agent |
|--------|--------|-------------------|
| API response time（P95） | < 200ms | Performance Benchmarker |
| page load time（LCP） | < 2.5s | Performance Benchmarker |
| system uptime | > 99.9% | Infrastructure Maintainer |
| Lighthouse score | > 90（Performance + Accessibility） | Frontend Developer |
| security vulnerabilities | critical ゼロ | Legal Compliance Checker |
| spec compliance | 100% | Reality Checker |

### 14.3 Business Metrics

| Metric | Target | Measurement Agent |
|--------|--------|-------------------|
| user acquisition（MoM） | 20%+ growth | Growth Hacker |
| activation rate | first week で 60%+ | Analytics Reporter |
| retention（Day 7 / Day 30） | 40% / 20% | Analytics Reporter |
| LTV:CAC ratio | > 3:1 | Finance Tracker |
| NPS score | > 50 | Feedback Synthesizer |
| portfolio ROI | > 25% | Studio Producer |

### 14.4 Operational Metrics

| Metric | Target | Measurement Agent |
|--------|--------|-------------------|
| deployment frequency | 1 日に複数回 | DevOps Automator |
| mean time to recovery | < 30 minutes | Infrastructure Maintainer |
| compliance adherence | 98%+ | Legal Compliance Checker |
| stakeholder satisfaction | 4.5/5 | Executive Summary Generator |
| process efficiency gain | 四半期ごとに 20%+ | Workflow Optimizer |

---

## 15. Quick-Start Activation Guide

### 15.1 NEXUS-Full Activation（Enterprise）

```bash
# Step 1: Initialize NEXUS pipeline
"Activate Agents Orchestrator in NEXUS-Full mode for [PROJECT NAME].
 Project specification: [path to spec file].
 Execute complete 7-phase pipeline with all quality gates."

# The Orchestrator will:
# 1. Read the project specification
# 2. Activate Phase 0 agents for discovery
# 3. Progress through all phases with quality gates
# 4. Manage Dev↔QA loops automatically
# 5. Report status at each phase boundary
```

### 15.2 NEXUS-Sprint Activation（Feature/MVP）

```bash
# Step 1: Initialize sprint pipeline
"Activate Agents Orchestrator in NEXUS-Sprint mode for [FEATURE/MVP NAME].
 Requirements: [brief description or path to spec].
 Skip Phase 0 (market already validated).
 Begin at Phase 1 with architecture and sprint planning."

# Recommended agent subset (15-25):
# PM: Senior Project Manager, Sprint Prioritizer, Project Shepherd
# Design: UX Architect, UI Designer, Brand Guardian
# Engineering: Frontend Developer, Backend Architect, DevOps Automator
# + AI Engineer or Mobile App Builder (if applicable)
# Testing: Evidence Collector, Reality Checker, API Tester, Performance Benchmarker
# Support: Analytics Reporter, Infrastructure Maintainer
# Specialized: Agents Orchestrator
```

### 15.3 NEXUS-Micro Activation（Targeted Task）

```bash
# Step 1: Direct agent activation
"Activate [SPECIFIC AGENT] for [TASK DESCRIPTION].
 Context: [relevant background].
 Deliverable: [specific output expected].
 Quality check: Evidence Collector to verify upon completion."

# Common NEXUS-Micro configurations:
#
# Bug Fix:
#   Backend Architect → API Tester → Evidence Collector
#
# Content Campaign:
#   Content Creator → Social Media Strategist → Twitter Engager
#   + Instagram Curator + Reddit Community Builder
#
# Performance Issue:
#   Performance Benchmarker → Infrastructure Maintainer → DevOps Automator
#
# Compliance Audit:
#   Legal Compliance Checker → Executive Summary Generator
#
# Market Research:
#   Trend Researcher → Analytics Reporter → Executive Summary Generator
#
# UX Improvement:
#   UX Researcher → UX Architect → Frontend Developer → Evidence Collector
```

### 15.4 Agent Activation Prompt Templates

#### Orchestrator 用（Pipeline Start）
```
You are the Agents Orchestrator running NEXUS pipeline for [PROJECT].

Project spec: [path]
Mode: [Full/Sprint/Micro]
Current phase: [Phase N]

Execute the NEXUS protocol:
1. Read the project specification
2. Activate Phase [N] agents per the NEXUS strategy
3. Manage handoffs using the NEXUS Handoff Template
4. Enforce quality gates before phase advancement
5. Track all tasks with status reporting
6. Run Dev↔QA loops for all implementation tasks
7. Escalate after 3 failed attempts per task

Report format: NEXUS Pipeline Status Report (see template in strategy doc)
```

#### Developer Agents 用（Task Implementation）
```
You are [AGENT NAME] working within the NEXUS pipeline.

Phase: [Current Phase]
Task: [Task ID and description from Sprint Prioritizer backlog]
Architecture reference: [path to architecture doc]
Design system: [path to CSS/design tokens]
Brand guidelines: [path to brand doc]

Implement this task following:
1. The architecture specification exactly
2. The design system tokens and patterns
3. The brand guidelines for visual consistency
4. Accessibility standards (WCAG 2.1 AA)

When complete, your work will be reviewed by Evidence Collector.
Acceptance criteria: [specific criteria from task list]
```

#### QA Agents 用（Task Validation）
```
You are [QA AGENT] validating work within the NEXUS pipeline.

Phase: [Current Phase]
Task: [Task ID and description]
Developer: [Which agent implemented this]
Attempt: [N] of 3 maximum

Validate against:
1. Task acceptance criteria: [specific criteria]
2. Architecture specification: [path]
3. Brand guidelines: [path]
4. Performance requirements: [specific thresholds]

Provide verdict: PASS or FAIL
If FAIL: Include specific issues, evidence, and fix instructions
Use the NEXUS QA Feedback Loop Protocol format
```

---

## Appendix A: Division Quick Reference

### Engineering Division — "Build It Right"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Frontend Developer | React/Vue/Angular、Core Web Vitals、accessibility | 任意の UI implementation task |
| Backend Architect | scalable systems、database design、API architecture | server-side architecture または API work |
| Mobile App Builder | iOS/Android、React Native、Flutter | mobile application development |
| AI Engineer | ML models、LLMs、RAG systems、data pipelines | 任意の AI/ML feature |
| DevOps Automator | CI/CD、IaC、Kubernetes、monitoring | infrastructure または deployment work |
| Rapid Prototyper | Next.js、Supabase、3-day MVPs | quick validation または proof-of-concept |
| Senior Developer | Laravel/Livewire、premium implementations | complex または premium feature work |

### Design Division — "Make It Beautiful"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| UI Designer | visual design systems、component libraries | interface design または component creation |
| UX Researcher | user testing、behavior analysis、personas | user research または usability testing |
| UX Architect | CSS systems、layout frameworks、technical UX | technical foundation または architecture |
| Brand Guardian | brand identity、consistency、positioning | brand strategy または consistency audit |
| Visual Storyteller | visual narratives、multimedia content | visual content または storytelling needs |
| Whimsy Injector | micro-interactions、delight、personality | UX に喜びと個性を加える |
| Image Prompt Engineer | AI image generation prompts、photography | AI tools 向け photography prompt creation |

### Marketing Division — "Grow It Fast"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Growth Hacker | viral loops、funnel optimization、experiments | user acquisition または growth strategy |
| Content Creator | multi-platform content、editorial calendars | content strategy または creation |
| Twitter Engager | real-time engagement、thought leadership | Twitter/X campaigns |
| TikTok Strategist | viral short-form video、algorithm optimization | TikTok growth strategy |
| Instagram Curator | visual storytelling、aesthetic development | Instagram campaigns |
| Reddit Community Builder | authentic engagement、value-driven content | Reddit community strategy |
| App Store Optimizer | ASO、conversion optimization | mobile app store presence |
| Social Media Strategist | cross-platform strategy、campaigns | multi-platform social campaigns |

### Product Division — "Build the Right Thing"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Sprint Prioritizer | RICE scoring、agile planning、velocity | sprint planning または backlog grooming |
| Trend Researcher | market intelligence、competitive analysis | market research または opportunity assessment |
| Feedback Synthesizer | user feedback analysis、sentiment analysis | user feedback processing |

### Project Management Division — "Keep It on Track"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Studio Producer | portfolio strategy、executive orchestration | strategic planning または portfolio management |
| Project Shepherd | cross-functional coordination、stakeholder alignment | complex project coordination |
| Studio Operations | day-to-day efficiency、process optimization | operational support |
| Experiment Tracker | A/B testing、hypothesis validation | experiment management |
| Senior Project Manager | spec-to-task conversion、realistic scoping | task planning または scope management |

### Testing Division — "Prove It Works"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Evidence Collector | screenshot-based QA、visual proof | 任意の visual verification need |
| Reality Checker | evidence-based certification、skeptical assessment | final integration testing |
| Test Results Analyzer | test evaluation、quality metrics | test output analysis |
| Performance Benchmarker | load testing、performance optimization | performance testing |
| API Tester | API validation、integration testing | API endpoint testing |
| Tool Evaluator | technology assessment、tool selection | technology evaluation |
| Workflow Optimizer | process analysis、efficiency improvement | process optimization |

### Support Division — "Sustain It"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Support Responder | customer service、issue resolution | customer support needs |
| Analytics Reporter | data analysis、dashboards、KPI tracking | business intelligence または reporting |
| Finance Tracker | financial planning、budget management | financial analysis または budgeting |
| Infrastructure Maintainer | system reliability、performance optimization | infrastructure management |
| Legal Compliance Checker | compliance、regulations、legal review | legal または compliance needs |
| Executive Summary Generator | C-suite communication、SCQA framework | executive reporting |

### Spatial Computing Division — "Immerse Them"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| XR Interface Architect | spatial interaction design | AR/VR/XR interface design |
| macOS Spatial/Metal Engineer | Swift、Metal、high-performance 3D | macOS spatial computing |
| XR Immersive Developer | WebXR、browser-based AR/VR | browser-based immersive experiences |
| XR Cockpit Interaction Specialist | cockpit-based controls | immersive control interfaces |
| visionOS Spatial Engineer | Apple Vision Pro development | Vision Pro applications |
| Terminal Integration Specialist | CLI tools、terminal workflows | developer tool integration |

### Specialized Division — "Connect Everything"
| Agent | Superpower | Activation Trigger |
|-------|-----------|-------------------|
| Agents Orchestrator | multi-agent pipeline management | 任意の multi-agent workflow |
| Analytics Reporter | business intelligence、deep analytics | deep data analysis |
| LSP/Index Engineer | Language Server Protocol、code intelligence | code intelligence systems |
| Sales Data Extraction Agent | Excel monitoring、sales metric extraction | sales data ingestion |
| Data Consolidation Agent | sales data aggregation、dashboard reports | territory and rep reporting |
| Report Distribution Agent | automated report delivery | scheduled report distribution |

---

## Appendix B: NEXUS Pipeline Status Report Template

```markdown
# NEXUS Pipeline Status Report

## Pipeline Metadata
- **Project**: [Name]
- **Mode**: [Full / Sprint / Micro]
- **Current Phase**: [0-6]
- **Started**: [Timestamp]
- **Estimated Completion**: [Timestamp]

## Phase Progress
| Phase | Status | Completion | Gate Result |
|-------|--------|------------|-------------|
| 0 - Discovery | ✅ Complete | 100% | PASSED |
| 1 - Strategy | ✅ Complete | 100% | PASSED |
| 2 - Foundation | 🔄 In Progress | 75% | PENDING |
| 3 - Build | ⏳ Pending | 0% | — |
| 4 - Harden | ⏳ Pending | 0% | — |
| 5 - Launch | ⏳ Pending | 0% | — |
| 6 - Operate | ⏳ Pending | 0% | — |

## Current Phase Detail
**Phase**: [N] - [Name]
**Active Agents**: [List]
**Tasks**: [Completed/Total]
**Current Task**: [ID] - [Description]
**QA Status**: [PASS/FAIL/IN_PROGRESS]
**Retry Count**: [N/3]

## Quality Metrics
- Tasks passed first attempt: [X/Y] ([Z]%)
- Average retries per task: [N]
- Critical issues found: [Count]
- Critical issues resolved: [Count]

## Risk Register
| Risk | Severity | Status | Owner |
|------|----------|--------|-------|
| [Description] | [P0-P3] | [Active/Mitigated/Closed] | [Agent] |

## Next Actions
1. [Immediate next step]
2. [Following step]
3. [Upcoming milestone]

---
**Report Generated**: [Timestamp]
**Orchestrator**: Agents Orchestrator
**Pipeline Health**: [ON_TRACK / AT_RISK / BLOCKED]
```

---

## Appendix C: NEXUS Glossary

| Term | Definition |
|------|-----------|
| **NEXUS** | Network of EXperts, Unified in Strategy |
| **Quality Gate** | phase 間に置かれる、evidence-based approval を必要とする必須 checkpoint |
| **Dev↔QA Loop** | 各 task が次へ進む前に QA を通過しなければならない、継続的な development-testing cycle |
| **Handoff** | agent 間で work と context を構造化して引き渡すこと |
| **Gate Keeper** | phase advancement を approve または reject する権限を持つ agent |
| **Escalation** | retry exhaustion 後に blocked task を上位 authority へ routing すること |
| **NEXUS-Full** | すべての agents による complete pipeline activation |
| **NEXUS-Sprint** | feature/MVP work 向けの 15-25 agents による focused pipeline |
| **NEXUS-Micro** | specific tasks 向けの 5-10 agents による targeted activation |
| **Pipeline Integrity** | quality gate を通過しない phase は進めないという principle |
| **Context Continuity** | すべての handoff が完全な context を運ぶという principle |
| **Evidence Over Claims** | quality assessment には assertions ではなく proof が必要であるという principle |

---

<div align="center">

**🌐 NEXUS: 9 Divisions. 7 Phases. One Unified Strategy. 🌐**

*discovery から sustained operations まで、すべての agent が自分の role、timing、handoff を理解している。*

</div>