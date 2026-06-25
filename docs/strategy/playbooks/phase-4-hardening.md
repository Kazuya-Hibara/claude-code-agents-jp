# 🛡️ Phase 4 プレイブック — 品質とハードニング

> **期間**: 3-7日 | **Agents**: 8 | **Gate Keeper**: Reality Checker（唯一の権限者）

---

## 目的

最終的な品質の関門。Reality Checker のデフォルト判定は "NEEDS WORK" です。本番投入可能であることを、圧倒的な証拠で証明しなければなりません。この Phase が存在する理由は、初回実装には通常 2-3 回の修正サイクルが必要であり、それは健全なことだからです。

## 前提条件

- [ ] Phase 3 Quality Gate に合格済み（すべてのタスクが QA 済み）
- [ ] Phase 3 Handoff Package を受領済み
- [ ] すべての機能が実装され、個別に検証済み

## 重要なマインドセット

> **Reality Checker のデフォルト判定は NEEDS WORK です。**
> 
> これは悲観主義ではなく、現実主義です。本番投入可能性には以下が必要です:
> - 完全な user journey が end-to-end で動作すること
> - デバイス間の一貫性（desktop, tablet, mobile）
> - 負荷下での Performance（単なる正常系ではない）
> - Security validation（単に「auth を追加した」ではない）
> - Specification compliance（ほとんどではなく、すべての要件）
>
> 初回パスで B/B+ 評価になるのは普通であり、想定どおりです。

## Agent 起動シーケンス

### Step 1: 証拠収集（1-2日目、全員並列）

#### 📸 Evidence Collector — 包括的な視覚証拠
```
Activate Evidence Collector for comprehensive system evidence on [PROJECT].

Deliverables required:
1. Full screenshot suite:
   - Desktop (1920x1080) — every page/view
   - Tablet (768x1024) — every page/view
   - Mobile (375x667) — every page/view
2. Interaction evidence:
   - Navigation flows (before/after clicks)
   - Form interactions (empty, filled, submitted, error states)
   - Modal/dialog interactions
   - Accordion/expandable content
3. Theme evidence:
   - Light mode — all pages
   - Dark mode — all pages
   - System preference detection
4. Error state evidence:
   - 404 pages
   - Form validation errors
   - Network error handling
   - Empty states

Format: Screenshot Evidence Package with test-results.json
Timeline: 2 days
```

#### 🔌 API Tester — API の完全回帰テスト
```
Activate API Tester for complete API regression on [PROJECT].

Deliverables required:
1. Endpoint regression suite:
   - All endpoints tested (GET, POST, PUT, DELETE)
   - Authentication/authorization verification
   - Input validation testing
   - Error response verification
2. Integration testing:
   - Cross-service communication
   - Database operation verification
   - External API integration
3. Edge case testing:
   - Rate limiting behavior
   - Large payload handling
   - Concurrent request handling
   - Malformed input handling

Format: API Test Report with pass/fail per endpoint
Timeline: 2 days
```

#### ⚡ Performance Benchmarker — 負荷テスト
```
Activate Performance Benchmarker for load testing on [PROJECT].

Deliverables required:
1. Load test at 10x expected traffic:
   - Response time distribution (P50, P95, P99)
   - Throughput under load
   - Error rate under load
   - Resource utilization (CPU, memory, network)
2. Core Web Vitals measurement:
   - LCP (Largest Contentful Paint) < 2.5s
   - FID (First Input Delay) < 100ms
   - CLS (Cumulative Layout Shift) < 0.1
3. Database performance:
   - Query execution times
   - Connection pool utilization
   - Index effectiveness
4. Stress test results:
   - Breaking point identification
   - Graceful degradation behavior
   - Recovery time after overload

Format: Performance Certification Report
Timeline: 2 days
```

#### ⚖️ Legal Compliance Checker — 最終 Compliance Audit
```
Activate Legal Compliance Checker for final compliance audit on [PROJECT].

Deliverables required:
1. Privacy compliance verification:
   - Privacy policy accuracy
   - Consent management functionality
   - Data subject rights implementation
   - Cookie consent implementation
2. Security compliance:
   - Data encryption (at rest and in transit)
   - Authentication security
   - Input sanitization
   - OWASP Top 10 check
3. Regulatory compliance:
   - GDPR requirements (if applicable)
   - CCPA requirements (if applicable)
   - Industry-specific requirements
4. Accessibility compliance:
   - WCAG 2.1 AA verification
   - Screen reader compatibility
   - Keyboard navigation

Format: Compliance Certification Report
Timeline: 2 days
```

### Step 2: 分析（3-4日目、並列、Step 1 後）

#### 📊 Test Results Analyzer — 品質メトリクスの集約
```
Activate Test Results Analyzer for quality metrics aggregation on [PROJECT].

Input: ALL Step 1 reports
Deliverables required:
1. Aggregate quality dashboard:
   - Overall quality score
   - Category breakdown (visual, functional, performance, security, compliance)
   - Issue severity distribution
   - Trend analysis (if multiple test cycles)
2. Issue prioritization:
   - Critical issues (must fix before production)
   - High issues (should fix before production)
   - Medium issues (fix in next sprint)
   - Low issues (backlog)
3. Risk assessment:
   - Production readiness probability
   - Remaining risk areas
   - Recommended mitigations

Format: Quality Metrics Dashboard
Timeline: 1 day
```

#### 🔄 Workflow Optimizer — プロセス効率レビュー
```
Activate Workflow Optimizer for process efficiency review on [PROJECT].

Input: Phase 3 execution data + Step 1 findings
Deliverables required:
1. Process efficiency analysis:
   - Dev↔QA loop efficiency (first-pass rate, average retries)
   - Bottleneck identification
   - Time-to-resolution for different issue types
2. Improvement recommendations:
   - Process changes for Phase 6 operations
   - Automation opportunities
   - Quality improvement suggestions

Format: Optimization Recommendations Report
Timeline: 1 day
```

#### 🏗️ Infrastructure Maintainer — 本番対応準備チェック
```
Activate Infrastructure Maintainer for production readiness on [PROJECT].

Deliverables required:
1. Production environment validation:
   - All services healthy and responding
   - Auto-scaling configured and tested
   - Load balancer configuration verified
   - SSL/TLS certificates valid
2. Monitoring validation:
   - All critical metrics being collected
   - Alert rules configured and tested
   - Dashboard access verified
   - Log aggregation working
3. Disaster recovery validation:
   - Backup systems operational
   - Recovery procedures documented and tested
   - Failover mechanisms verified
4. Security validation:
   - Firewall rules reviewed
   - Access controls verified
   - Secrets management confirmed
   - Vulnerability scan clean

Format: Infrastructure Readiness Report
Timeline: 1 day
```

### Step 3: 最終判定（5-7日目、順次）

#### 🔍 Reality Checker — 最終判定
```
Activate Reality Checker for final integration testing on [PROJECT].

MANDATORY PROCESS — DO NOT SKIP:

Step 1: Reality Check Commands
- Verify what was actually built (ls, grep for claimed features)
- Cross-check claimed features against specification
- Run comprehensive screenshot capture
- Review all evidence from Step 1 and Step 2

Step 2: QA Cross-Validation
- Review Evidence Collector findings
- Cross-reference with API Tester results
- Verify Performance Benchmarker data
- Confirm Legal Compliance Checker findings

Step 3: End-to-End System Validation
- Test COMPLETE user journeys (not individual features)
- Verify responsive behavior across ALL devices
- Check interaction flows end-to-end
- Review actual performance data

Step 4: Specification Reality Check
- Quote EXACT text from original specification
- Compare with ACTUAL implementation evidence
- Document EVERY gap between spec and reality
- No assumptions — evidence only

VERDICT OPTIONS:
- READY: Overwhelming evidence of production readiness (rare first pass)
- NEEDS WORK: Specific issues identified with fix list (expected)
- NOT READY: Major architectural issues requiring Phase 1/2 revisit

Format: Reality-Based Integration Report
Default: NEEDS WORK unless proven otherwise
```

## Quality Gate — 最終ゲート

| # | 基準 | 閾値 | 必要な証拠 |
|---|-----------|-----------|-------------------|
| 1 | User journey の完了 | すべてのクリティカルパスが end-to-end で動作 | Reality Checker のスクリーンショット |
| 2 | デバイス間の一貫性 | Desktop + Tablet + Mobile がすべて動作 | レスポンシブスクリーンショット |
| 3 | Performance 認証済み | P95 < 200ms, LCP < 2.5s, uptime > 99.9% | Performance Benchmarker report |
| 4 | Security 検証済み | Critical vulnerabilities がゼロ | Security scan + compliance report |
| 5 | Compliance 認証済み | すべての規制要件を満たしている | Legal Compliance Checker report |
| 6 | Specification compliance | spec requirements の 100% が実装済み | 項目別検証 |
| 7 | Infrastructure ready | 本番環境が検証済み | Infrastructure Maintainer report |

## Gate Decision

**唯一の権限者**: Reality Checker

### READY の場合（Phase 5 へ進む）:
```markdown
## Phase 4 → Phase 5 Handoff Package

### For Launch Team:
- Reality Checker certification report
- Performance certification
- Compliance certification
- Infrastructure readiness report
- Known limitations (if any)

### For Growth Hacker:
- Product ready for users
- Feature list for marketing messaging
- Performance data for credibility

### For DevOps Automator:
- Production deployment approved
- Blue-green deployment plan
- Rollback procedures confirmed
```

### NEEDS WORK の場合（Phase 3 へ戻る）:
```markdown
## Phase 4 → Phase 3 Return Package

### Fix List (from Reality Checker):
1. [Critical Issue 1]: [Description + evidence + fix instruction]
2. [Critical Issue 2]: [Description + evidence + fix instruction]
3. [High Issue 1]: [Description + evidence + fix instruction]
...

### Process:
- Issues enter Dev↔QA loop (Phase 3 mechanics)
- Each fix must pass Evidence Collector QA
- When all fixes complete → Return to Phase 4 Step 3
- Reality Checker re-evaluates with updated evidence

### Expected: 2-3 revision cycles is normal
```

### NOT READY の場合（Phase 1/2 へ戻る）:
```markdown
## Phase 4 → Phase 1/2 Return Package

### Architectural Issues Identified:
1. [Fundamental Issue]: [Why it can't be fixed in Phase 3]
2. [Structural Problem]: [What needs to change at architecture level]

### Recommended Action:
- [ ] Revise system architecture (Phase 1)
- [ ] Rebuild foundation (Phase 2)
- [ ] Descope and redefine (Phase 1)

### Studio Producer Decision Required
```

---

*Phase 4 は、Reality Checker が圧倒的な証拠に基づいて READY 判定を出した時点で完了です。NEEDS WORK は初回パスで想定される結果です。それは、システムは動作しているが、仕上げが必要であることを意味します。*