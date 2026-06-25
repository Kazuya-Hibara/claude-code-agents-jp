# 🚨 ランブック: インシデント対応

> **モード**: NEXUS-Micro | **所要時間**: 数分から数時間 | **エージェント**: 3-8

---

## シナリオ

本番環境で何かが壊れています。ユーザーに影響が出ています。対応スピードは重要ですが、正しく対応することも同じく重要です。このランブックは、検知からポストモーテムまでを扱います。

## 重大度分類

| レベル | 定義 | 例 | 応答時間 |
|-------|-----------|----------|--------------|
| **P0 — Critical** | サービスが完全に停止、データ損失、セキュリティ侵害 | データベース破損、DDoS 攻撃、認証システム障害 | 即時（全員対応） |
| **P1 — High** | 主要機能の停止、著しいパフォーマンス低下 | 決済処理停止、50% 以上のエラー率、レイテンシ 10 倍 | < 1 時間 |
| **P2 — Medium** | 軽微な機能停止、回避策あり | 検索が動作しない、非クリティカルな API エラー | < 4 時間 |
| **P3 — Low** | 見た目の問題、軽微な不便 | スタイリングのバグ、誤字、軽微な UI 不具合 | 次のスプリント |

## 重大度別の対応チーム

### P0 — Critical 対応チーム
| エージェント | 役割 | アクション |
|-------|------|--------|
| **Infrastructure Maintainer** | インシデントコマンダー | 影響範囲を評価し、対応を調整 |
| **DevOps Automator** | デプロイ/ロールバック | 必要に応じてロールバックを実行 |
| **Backend Architect** | 根本原因調査 | システム上の問題を診断 |
| **Frontend Developer** | UI 側の調査 | クライアント側の問題を診断 |
| **Support Responder** | ユーザーコミュニケーション | ステータスページ更新、ユーザー通知 |
| **Executive Summary Generator** | ステークホルダーコミュニケーション | 経営層向けのリアルタイム更新 |

### P1 — High 対応チーム
| エージェント | 役割 |
|-------|------|
| **Infrastructure Maintainer** | インシデントコマンダー |
| **DevOps Automator** | デプロイ支援 |
| **Relevant Developer Agent** | 修正実装 |
| **Support Responder** | ユーザーコミュニケーション |

### P2 — Medium 対応
| エージェント | 役割 |
|-------|------|
| **Relevant Developer Agent** | 修正実装 |
| **Evidence Collector** | 修正確認 |

### P3 — Low 対応
| エージェント | 役割 |
|-------|------|
| **Sprint Prioritizer** | バックログに追加 |

## インシデント対応シーケンス

### Step 1: 検知とトリアージ（0-5 分）

```
TRIGGER: Alert from monitoring / User report / Agent detection

Infrastructure Maintainer:
1. Acknowledge alert
2. Assess scope and impact
   - How many users affected?
   - Which services are impacted?
   - Is data at risk?
3. Classify severity (P0/P1/P2/P3)
4. Activate appropriate response team
5. Create incident channel/thread

Output: Incident classification + response team activated
```

### Step 2: 調査（5-30 分）

```
PARALLEL INVESTIGATION:

Infrastructure Maintainer:
├── Check system metrics (CPU, memory, network, disk)
├── Review error logs
├── Check recent deployments
└── Verify external dependencies

Backend Architect (if P0/P1):
├── Check database health
├── Review API error rates
├── Check service communication
└── Identify failing component

DevOps Automator:
├── Review recent deployment history
├── Check CI/CD pipeline status
├── Prepare rollback if needed
└── Verify infrastructure state

Output: Root cause identified (or narrowed to component)
```

### Step 3: 緩和（15-60 分）

```
DECISION TREE:

IF caused by recent deployment:
  → DevOps Automator: Execute rollback
  → Infrastructure Maintainer: Verify recovery
  → Evidence Collector: Confirm fix

IF caused by infrastructure issue:
  → Infrastructure Maintainer: Scale/restart/failover
  → DevOps Automator: Support infrastructure changes
  → Verify recovery

IF caused by code bug:
  → Relevant Developer Agent: Implement hotfix
  → Evidence Collector: Verify fix
  → DevOps Automator: Deploy hotfix
  → Infrastructure Maintainer: Monitor recovery

IF caused by external dependency:
  → Infrastructure Maintainer: Activate fallback/cache
  → Support Responder: Communicate to users
  → Monitor for external recovery

THROUGHOUT:
  → Support Responder: Update status page every 15 minutes
  → Executive Summary Generator: Brief stakeholders (P0 only)
```

### Step 4: 解決確認（修正後）

```
Evidence Collector:
1. Verify the fix resolves the issue
2. Screenshot evidence of working state
3. Confirm no new issues introduced

Infrastructure Maintainer:
1. Verify all metrics returning to normal
2. Confirm no cascading failures
3. Monitor for 30 minutes post-fix

API Tester (if API-related):
1. Run regression on affected endpoints
2. Verify response times normalized
3. Confirm error rates at baseline

Output: Incident resolved confirmation
```

### Step 5: ポストモーテム（48 時間以内）

```
Workflow Optimizer leads post-mortem:

1. Timeline reconstruction
   - When was the issue introduced?
   - When was it detected?
   - When was it resolved?
   - Total user impact duration

2. Root cause analysis
   - What failed?
   - Why did it fail?
   - Why wasn't it caught earlier?
   - 5 Whys analysis

3. Impact assessment
   - Users affected
   - Revenue impact
   - Reputation impact
   - Data impact

4. Prevention measures
   - What monitoring would have caught this sooner?
   - What testing would have prevented this?
   - What process changes are needed?
   - What infrastructure changes are needed?

5. Action items
   - [Action] → [Owner] → [Deadline]
   - [Action] → [Owner] → [Deadline]
   - [Action] → [Owner] → [Deadline]

Output: Post-Mortem Report → Sprint Prioritizer adds prevention tasks to backlog
```

## コミュニケーションテンプレート

### ステータスページ更新（Support Responder）
```
[TIMESTAMP] — [SERVICE NAME] Incident

Status: [Investigating / Identified / Monitoring / Resolved]
Impact: [Description of user impact]
Current action: [What we're doing about it]
Next update: [When to expect the next update]
```

### 経営層向け更新（Executive Summary Generator — P0 のみ）
```
INCIDENT BRIEF — [TIMESTAMP]

SITUATION: [Service] is [down/degraded] affecting [N users/% of traffic]
CAUSE: [Known/Under investigation] — [Brief description if known]
ACTION: [What's being done] — ETA [time estimate]
IMPACT: [Business impact — revenue, users, reputation]
NEXT UPDATE: [Timestamp]
```

## エスカレーションマトリクス

| 条件 | エスカレーション先 | アクション |
|-----------|------------|--------|
| P0 が 30 分以内に解決しない | Studio Producer | 追加リソース、ベンダーエスカレーション |
| P1 が 2 時間以内に解決しない | Project Shepherd | リソース再配分 |
| データ侵害の疑い | Legal Compliance Checker | 規制当局への通知要否評価 |
| ユーザーデータに影響 | Legal Compliance Checker + Executive Summary Generator | GDPR/CCPA 通知 |
| 収益影響 > $X | Finance Tracker + Studio Producer | ビジネス影響評価 |