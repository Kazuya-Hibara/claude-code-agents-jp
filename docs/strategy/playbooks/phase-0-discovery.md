# 🔍 Phase 0 プレイブック — インテリジェンス & ディスカバリー

> **期間**: 3-7日 | **Agents**: 6 | **Gate Keeper**: Executive Summary Generator

---

## 目的

リソースを投入する前に、機会を検証する。課題、市場、規制環境を理解するまで、構築には着手しない。

## 前提条件

- [ ] プロジェクト概要または初期コンセプトが存在する
- [ ] ステークホルダーのスポンサーが特定されている
- [ ] ディスカバリーフェーズの予算が承認されている

## Agent 起動シーケンス

### Wave 1: 並列起動 (Day 1)

#### 🔍 Trend Researcher — 市場インテリジェンス責任者
```
Activate Trend Researcher for market intelligence on [PROJECT DOMAIN].

Deliverables required:
1. Competitive landscape analysis (direct + indirect competitors)
2. Market sizing: TAM, SAM, SOM with methodology
3. Trend lifecycle mapping: where is this market in the adoption curve?
4. 3-6 month trend forecast with confidence intervals
5. Investment and funding trends in the space

Sources: Minimum 15 unique, verified sources
Format: Strategic Report with executive summary
Timeline: 3 days
```

#### 💬 Feedback Synthesizer — ユーザーニーズ分析
```
Activate Feedback Synthesizer for user needs analysis on [PROJECT DOMAIN].

Deliverables required:
1. Multi-channel feedback collection plan (surveys, interviews, reviews, social)
2. Sentiment analysis across existing user touchpoints
3. Pain point identification and prioritization (RICE scored)
4. Feature request analysis with business value estimation
5. Churn risk indicators from feedback patterns

Format: Synthesized Feedback Report with priority matrix
Timeline: 3 days
```

#### 🔍 UX Researcher — ユーザー行動分析
```
Activate UX Researcher for user behavior analysis on [PROJECT DOMAIN].

Deliverables required:
1. User interview plan (5-10 target users)
2. Persona development (3-5 primary personas)
3. Journey mapping for primary user flows
4. Usability heuristic evaluation of competitor products
5. Behavioral insights with statistical validation

Format: Research Findings Report with personas and journey maps
Timeline: 5 days
```

### Wave 2: 並列起動 (Day 1、Wave 1 とは独立)

#### 📊 Analytics Reporter — データ環境評価
```
Activate Analytics Reporter for data landscape assessment on [PROJECT DOMAIN].

Deliverables required:
1. Existing data source audit (what data is available?)
2. Signal identification (what can we measure?)
3. Baseline metrics establishment
4. Data quality assessment with completeness scoring
5. Analytics infrastructure recommendations

Format: Data Audit Report with signal map
Timeline: 2 days
```

#### ⚖️ Legal Compliance Checker — 規制スキャン
```
Activate Legal Compliance Checker for regulatory scan on [PROJECT DOMAIN].

Deliverables required:
1. Applicable regulatory frameworks (GDPR, CCPA, HIPAA, etc.)
2. Data handling requirements and constraints
3. Jurisdiction mapping for target markets
4. Compliance risk assessment with severity ratings
5. Blocking vs. manageable compliance issues

Format: Compliance Requirements Matrix
Timeline: 3 days
```

#### 🛠️ Tool Evaluator — 技術環境
```
Activate Tool Evaluator for technology landscape assessment on [PROJECT DOMAIN].

Deliverables required:
1. Technology stack assessment for the problem domain
2. Build vs. buy analysis for key components
3. Integration feasibility with existing systems
4. Open source vs. commercial evaluation
5. Technology risk assessment

Format: Tech Stack Assessment with recommendation matrix
Timeline: 2 days
```

## 合流ポイント (Day 5-7)

6つすべての agents がレポートを提出する。Executive Summary Generator が以下を統合する。

```
Activate Executive Summary Generator to synthesize Phase 0 findings.

Input documents:
1. Trend Researcher → Market Analysis Report
2. Feedback Synthesizer → Synthesized Feedback Report
3. UX Researcher → Research Findings Report
4. Analytics Reporter → Data Audit Report
5. Legal Compliance Checker → Compliance Requirements Matrix
6. Tool Evaluator → Tech Stack Assessment

Output: Executive Summary (≤500 words, SCQA format)
Decision required: GO / NO-GO / PIVOT
Include: Quantified market opportunity, validated user needs, regulatory path, technology feasibility
```

## 品質ゲートチェックリスト

| # | 基準 | エビデンスソース | ステータス |
|---|-----------|----------------|--------|
| 1 | 市場機会が TAM > 最小実行可能しきい値で検証されている | Trend Researcher レポート | ☐ |
| 2 | 裏付けデータを伴う、検証済みのユーザーペインポイントが3つ以上ある | Feedback Synthesizer + UX Researcher | ☐ |
| 3 | ブロッキングとなるコンプライアンス課題が特定されていない | Legal Compliance Checker マトリクス | ☐ |
| 4 | 主要指標とデータソースが特定されている | Analytics Reporter 監査 | ☐ |
| 5 | 技術スタックが実現可能であり、評価済みである | Tool Evaluator 評価 | ☐ |
| 6 | GO/NO-GO 推奨を含むエグゼクティブサマリーが提出されている | Executive Summary Generator | ☐ |

## ゲート判定

- **GO**: Phase 1 — Strategy & Architecture へ進む
- **NO-GO**: 調査結果をアーカイブし、学びを文書化し、リソースを再配分する
- **PIVOT**: 調査結果に基づいてスコープまたは方向性を修正し、対象を絞ったディスカバリーを再実行する

## Phase 1 へのハンドオフ

```markdown
## Phase 0 → Phase 1 Handoff Package

### Documents to carry forward:
1. Market Analysis Report (Trend Researcher)
2. Synthesized Feedback Report (Feedback Synthesizer)
3. User Personas and Journey Maps (UX Researcher)
4. Data Audit Report (Analytics Reporter)
5. Compliance Requirements Matrix (Legal Compliance Checker)
6. Tech Stack Assessment (Tool Evaluator)
7. Executive Summary with GO decision (Executive Summary Generator)

### Key constraints identified:
- [Regulatory constraints from Legal Compliance Checker]
- [Technical constraints from Tool Evaluator]
- [Market timing constraints from Trend Researcher]

### Priority user needs (for Sprint Prioritizer):
1. [Pain point 1 — from Feedback Synthesizer]
2. [Pain point 2 — from UX Researcher]
3. [Pain point 3 — from Feedback Synthesizer]
```

---

*Phase 0 は、Executive Summary Generator が6つすべてのディスカバリー agents からの裏付けエビデンスを伴う GO 判定を提出した時点で完了となる。*