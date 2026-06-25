# 🔄 フェーズ 6 プレイブック — 運用と進化

> **期間**: 継続 | **Agents**: 12+（ローテーション） | **Governance**: Studio Producer

---

## 目的

継続的改善を伴う持続的な運用。プロダクトはすでに本番稼働しています。ここからさらに成長させます。このフェーズに終了日はありません。プロダクトが市場で提供されている限り継続します。

## 前提条件

- [ ] Phase 5 Quality Gate を通過済み（安定したローンチ）
- [ ] Phase 5 Handoff Package を受領済み
- [ ] 運用ケイデンスが確立済み
- [ ] ベースライン指標が文書化済み

## 運用ケイデンス

### 継続（常時稼働）

| Agent | 責任範囲 | SLA |
|-------|---------------|-----|
| **Infrastructure Maintainer** | システム稼働率、パフォーマンス、セキュリティ | 99.9% uptime、< 30min MTTR |
| **Support Responder** | カスタマーサポート、課題解決 | < 4hr first response |
| **DevOps Automator** | デプロイメントパイプライン、ホットフィックス | 1日複数回のデプロイ能力 |

### 日次

| Agent | 活動 | 成果物 |
|-------|----------|--------|
| **Analytics Reporter** | KPI ダッシュボード更新 | 日次メトリクススナップショット |
| **Support Responder** | 課題のトリアージと解決 | サポートチケットサマリー |
| **Infrastructure Maintainer** | システムヘルスチェック | ヘルスステータスレポート |

### 週次

| Agent | 活動 | 成果物 |
|-------|----------|--------|
| **Analytics Reporter** | 週次パフォーマンス分析 | Weekly Analytics Report |
| **Feedback Synthesizer** | ユーザーフィードバックの統合 | Weekly Feedback Summary |
| **Sprint Prioritizer** | バックログ整理 + スプリント計画 | Sprint Plan |
| **Growth Hacker** | グロースチャネル最適化 | Growth Metrics Report |
| **Project Shepherd** | チーム横断の調整 | Weekly Status Update |

### 隔週

| Agent | 活動 | 成果物 |
|-------|----------|--------|
| **Feedback Synthesizer** | 深いフィードバック分析 | Bi-Weekly Insights Report |
| **Experiment Tracker** | A/B テスト分析 | Experiment Results Summary |
| **Content Creator** | コンテンツカレンダーの実行 | Published Content Report |

### 月次

| Agent | 活動 | 成果物 |
|-------|----------|--------|
| **Executive Summary Generator** | C-suite 向けレポーティング | Monthly Executive Summary |
| **Finance Tracker** | 財務パフォーマンスレビュー | Monthly Financial Report |
| **Legal Compliance Checker** | 規制モニタリング | Compliance Status Report |
| **Trend Researcher** | 市場インテリジェンス更新 | Monthly Market Brief |
| **Brand Guardian** | ブランド一貫性監査 | Brand Health Report |

### 四半期

| Agent | 活動 | 成果物 |
|-------|----------|--------|
| **Studio Producer** | 戦略的ポートフォリオレビュー | Quarterly Strategic Review |
| **Workflow Optimizer** | プロセス効率監査 | Optimization Report |
| **Performance Benchmarker** | パフォーマンス回帰テスト | Quarterly Performance Report |
| **Tool Evaluator** | 技術スタックレビュー | Tech Debt Assessment |

## 継続的改善ループ

```
MEASURE (Analytics Reporter)
    │
    ▼
ANALYZE (Feedback Synthesizer + Analytics Reporter)
    │
    ▼
PLAN (Sprint Prioritizer + Studio Producer)
    │
    ▼
BUILD (Phase 3 Dev↔QA Loop — mini-cycles)
    │
    ▼
VALIDATE (Evidence Collector + Reality Checker)
    │
    ▼
DEPLOY (DevOps Automator)
    │
    ▼
MEASURE (back to start)
```

### Phase 6 における機能開発

新機能は圧縮版の NEXUS サイクルに従います。

```
1. Sprint Prioritizer selects feature from backlog
2. Appropriate Developer Agent implements
3. Evidence Collector validates (Dev↔QA loop)
4. DevOps Automator deploys (feature flag or direct)
5. Experiment Tracker monitors (A/B test if applicable)
6. Analytics Reporter measures impact
7. Feedback Synthesizer collects user response
```

## インシデント対応プロトコル

### 重大度レベル

| レベル | 定義 | 対応時間 | 意思決定権限 |
|-------|-----------|--------------|-------------------|
| **P0 — Critical** | サービス停止、データ損失、セキュリティ侵害 | 即時 | Studio Producer |
| **P1 — High** | 主要機能の故障、重大な劣化 | < 1 hour | Project Shepherd |
| **P2 — Medium** | 軽微な機能不具合、回避策あり | < 4 hours | Agents Orchestrator |
| **P3 — Low** | 見た目の問題、軽微な不便 | 次スプリント | Sprint Prioritizer |

### インシデント対応シーケンス

```
DETECTION (Infrastructure Maintainer or Support Responder)
    │
    ▼
TRIAGE (Agents Orchestrator)
    ├── Classify severity (P0-P3)
    ├── Assign response team
    └── Notify stakeholders
    │
    ▼
RESPONSE
    ├── P0: Infrastructure Maintainer + DevOps Automator + Backend Architect
    ├── P1: Relevant Developer Agent + DevOps Automator
    ├── P2: Relevant Developer Agent
    └── P3: Added to sprint backlog
    │
    ▼
RESOLUTION
    ├── Fix implemented and deployed
    ├── Evidence Collector verifies fix
    └── Infrastructure Maintainer confirms stability
    │
    ▼
POST-MORTEM
    ├── Workflow Optimizer leads retrospective
    ├── Root cause analysis documented
    ├── Prevention measures identified
    └── Process improvements implemented
```

## グロース運用

### 月次グロースレビュー（Growth Hacker が主導）

```
1. Channel Performance Analysis
   - Acquisition by channel (organic, paid, referral, social)
   - CAC by channel
   - Conversion rates by funnel stage
   - LTV:CAC ratio trends

2. Experiment Results
   - Completed A/B tests and outcomes
   - Statistical significance validation
   - Winner implementation status
   - New experiment pipeline

3. Retention Analysis
   - Cohort retention curves
   - Churn risk identification
   - Re-engagement campaign results
   - Feature adoption metrics

4. Growth Roadmap Update
   - Next month's growth experiments
   - Channel budget reallocation
   - New channel exploration
   - Viral coefficient optimization
```

### コンテンツ運用（Content Creator + Social Media Strategist）

```
Weekly:
- Content calendar execution
- Social media engagement
- Community management
- Performance tracking

Monthly:
- Content performance review
- Editorial calendar planning
- Platform algorithm updates
- Content strategy refinement

Platform-Specific:
- Twitter Engager → Daily engagement, weekly threads
- Instagram Curator → 3-5 posts/week, daily stories
- TikTok Strategist → 3-5 videos/week
- Reddit Community Builder → Daily authentic engagement
```

## 財務運用

### 月次財務レビュー（Finance Tracker）

```
1. Revenue Analysis
   - MRR/ARR tracking
   - Revenue by segment/plan
   - Expansion revenue
   - Churn revenue impact

2. Cost Analysis
   - Infrastructure costs
   - Marketing spend by channel
   - Team/resource costs
   - Tool and service costs

3. Unit Economics
   - CAC trends
   - LTV trends
   - LTV:CAC ratio
   - Payback period

4. Forecasting
   - Revenue forecast (3-month rolling)
   - Cost forecast
   - Cash flow projection
   - Budget variance analysis
```

## コンプライアンス運用

### 月次コンプライアンスチェック（Legal Compliance Checker）

```
1. Regulatory Monitoring
   - New regulations affecting the product
   - Existing regulation changes
   - Enforcement actions in the industry
   - Compliance deadline tracking

2. Privacy Compliance
   - Data subject request handling
   - Consent management effectiveness
   - Data retention policy adherence
   - Cross-border transfer compliance

3. Security Compliance
   - Vulnerability scan results
   - Patch management status
   - Access control review
   - Incident log review

4. Audit Readiness
   - Documentation currency
   - Evidence collection status
   - Training completion rates
   - Policy acknowledgment tracking
```

## 戦略的進化

### 四半期戦略レビュー（Studio Producer）

```
1. Market Position Assessment
   - Competitive landscape changes (Trend Researcher input)
   - Market share evolution
   - Brand perception (Brand Guardian input)
   - Customer satisfaction trends (Feedback Synthesizer input)

2. Product Strategy
   - Feature roadmap review
   - Technology debt assessment (Tool Evaluator input)
   - Platform expansion opportunities
   - Partnership evaluation

3. Growth Strategy
   - Channel effectiveness review
   - New market opportunities
   - Pricing strategy assessment
   - Expansion planning

4. Organizational Health
   - Process efficiency (Workflow Optimizer input)
   - Team performance metrics
   - Resource allocation optimization
   - Capability development needs

Output: Quarterly Strategic Review → Updated roadmap and priorities
```

## Phase 6 成功指標

| カテゴリ | 指標 | 目標 | オーナー |
|----------|--------|--------|-------|
| **Reliability** | システム稼働率 | > 99.9% | Infrastructure Maintainer |
| **Reliability** | MTTR | < 30 分 | Infrastructure Maintainer |
| **Growth** | MoM ユーザー成長率 | > 20% | Growth Hacker |
| **Growth** | アクティベーション率 | > 60% | Analytics Reporter |
| **Retention** | Day 7 リテンション | > 40% | Analytics Reporter |
| **Retention** | Day 30 リテンション | > 20% | Analytics Reporter |
| **Financial** | LTV:CAC 比率 | > 3:1 | Finance Tracker |
| **Financial** | ポートフォリオ ROI | > 25% | Studio Producer |
| **Quality** | NPS スコア | > 50 | Feedback Synthesizer |
| **Quality** | サポート解決時間 | < 4 時間 | Support Responder |
| **Compliance** | 規制遵守率 | > 98% | Legal Compliance Checker |
| **Efficiency** | デプロイ頻度 | 複数回/日 | DevOps Automator |
| **Efficiency** | プロセス改善 | 20%/四半期 | Workflow Optimizer |

---

*Phase 6 に終了日はありません。プロダクトが市場で提供されている限り継続し、継続的改善サイクルによってプロダクトを前進させます。大規模な新機能やピボットでは、NEXUS パイプライン（NEXUS-Sprint または NEXUS-Micro）を再起動できます。*