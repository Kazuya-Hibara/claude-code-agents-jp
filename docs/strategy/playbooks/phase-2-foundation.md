# ⚙️ Phase 2 Playbook — 基盤構築とスキャフォールディング

> **期間**: 3-5日 | **Agents**: 6 | **Gate Keepers**: DevOps Automator + Evidence Collector

---

## 目的

以降のすべての作業が依存する、技術面および運用面の基盤を構築する。機能を積み上げる前に、まず骨格を立ち上げる。このフェーズ完了後には、すべての開発者が作業可能な環境、デプロイ可能なパイプライン、そして構築に使えるデザインシステムを持っている状態にする。

## 前提条件

- [ ] Phase 1 Quality Gate を通過済み（Architecture Package 承認済み）
- [ ] Phase 1 Handoff Package を受領済み
- [ ] すべてのアーキテクチャ文書が確定済み

## Agent 起動順序

### Workstream A: インフラストラクチャ（Day 1-3、並行）

#### 🚀 DevOps Automator — CI/CD Pipeline + Infrastructure
```
Activate DevOps Automator for infrastructure setup on [PROJECT].

Input: Backend Architect system architecture + deployment requirements
Deliverables required:
1. CI/CD Pipeline (GitHub Actions / GitLab CI)
   - Security scanning stage
   - Automated testing stage
   - Build and containerization stage
   - Deployment stage (blue-green or canary)
   - Automated rollback capability
2. Infrastructure as Code
   - Environment provisioning (dev, staging, production)
   - Container orchestration setup
   - Network and security configuration
3. Environment Configuration
   - Secrets management
   - Environment variable management
   - Multi-environment parity

Files to create:
- .github/workflows/ci-cd.yml (or equivalent)
- infrastructure/ (Terraform/CDK templates)
- docker-compose.yml
- Dockerfile(s)

Format: Working CI/CD pipeline with IaC templates
Timeline: 3 days
```

#### 🏗️ Infrastructure Maintainer — Cloud Infrastructure + Monitoring
```
Activate Infrastructure Maintainer for monitoring setup on [PROJECT].

Input: DevOps Automator infrastructure + Backend Architect architecture
Deliverables required:
1. Cloud Resource Provisioning
   - Compute, storage, networking resources
   - Auto-scaling configuration
   - Load balancer setup
2. Monitoring Stack
   - Application metrics (Prometheus/DataDog)
   - Infrastructure metrics
   - Custom dashboards (Grafana)
3. Logging and Alerting
   - Centralized log aggregation
   - Alert rules for critical thresholds
   - On-call notification setup
4. Security Hardening
   - Firewall rules
   - SSL/TLS configuration
   - Access control policies

Format: Infrastructure Readiness Report with dashboard access
Timeline: 3 days
```

#### ⚙️ Studio Operations — プロセス整備
```
Activate Studio Operations for process setup on [PROJECT].

Input: Sprint Prioritizer plan + Project Shepherd coordination needs
Deliverables required:
1. Git Workflow
   - Branch strategy (GitFlow / trunk-based)
   - PR review process
   - Merge policies
2. Communication Channels
   - Team channels setup
   - Notification routing
   - Status update cadence
3. Documentation Templates
   - PR template
   - Issue template
   - Decision log template
4. Collaboration Tools
   - Project board setup
   - Sprint tracking configuration

Format: Operations Playbook
Timeline: 2 days
```

### Workstream B: アプリケーション基盤（Day 1-4、並行）

#### 🎨 Frontend Developer — Project Scaffolding + Component Library
```
Activate Frontend Developer for project scaffolding on [PROJECT].

Input: UX Architect CSS Design System + Brand Guardian identity
Deliverables required:
1. Project Scaffolding
   - Framework setup (React/Vue/Angular per architecture)
   - TypeScript configuration
   - Build tooling (Vite/Webpack/Next.js)
   - Testing framework (Jest/Vitest + Testing Library)
2. Design System Implementation
   - CSS design tokens from UX Architect
   - Base component library (Button, Input, Card, Layout)
   - Theme system (light/dark/system toggle)
   - Responsive utilities
3. Application Shell
   - Routing setup
   - Layout components (Header, Footer, Sidebar)
   - Error boundary implementation
   - Loading states

Files to create:
- src/ (application source)
- src/components/ (component library)
- src/styles/ (design tokens)
- src/layouts/ (layout components)

Format: Working application skeleton with component library
Timeline: 3 days
```

#### 🏗️ Backend Architect — Database + API Foundation
```
Activate Backend Architect for API foundation on [PROJECT].

Input: System Architecture Specification + Database Schema Design
Deliverables required:
1. Database Setup
   - Schema deployment (migrations)
   - Index creation
   - Seed data for development
   - Connection pooling configuration
2. API Scaffold
   - Framework setup (Express/FastAPI/etc.)
   - Route structure matching architecture
   - Middleware stack (auth, validation, error handling, CORS)
   - Health check endpoints
3. Authentication System
   - Auth provider integration
   - JWT/session management
   - Role-based access control scaffold
4. Service Communication
   - API versioning setup
   - Request/response serialization
   - Error response standardization

Files to create:
- api/ or server/ (backend source)
- migrations/ (database migrations)
- docs/api-spec.yaml (OpenAPI specification)

Format: Working API scaffold with database and auth
Timeline: 4 days
```

#### 🏛️ UX Architect — CSS System Implementation
```
Activate UX Architect for CSS system implementation on [PROJECT].

Input: Brand Guardian identity + own Phase 1 CSS Design System spec
Deliverables required:
1. Design Tokens Implementation
   - CSS custom properties (colors, typography, spacing)
   - Brand color palette with semantic naming
   - Typography scale with responsive adjustments
2. Layout System
   - Container system (responsive breakpoints)
   - Grid patterns (2-col, 3-col, sidebar)
   - Flexbox utilities
3. Theme System
   - Light theme variables
   - Dark theme variables
   - System preference detection
   - Theme toggle component
   - Smooth transition between themes

Files to create/update:
- css/design-system.css (or equivalent in framework)
- css/layout.css
- css/components.css
- js/theme-manager.js

Format: Implemented CSS design system with theme toggle
Timeline: 2 days
```

## 検証チェックポイント（Day 4-5）

### Evidence Collector による検証
```
Activate Evidence Collector for Phase 2 foundation verification.

Verify the following with screenshot evidence:
1. CI/CD pipeline executes successfully (show pipeline logs)
2. Application skeleton loads in browser (desktop screenshot)
3. Application skeleton loads on mobile (mobile screenshot)
4. Theme toggle works (light + dark screenshots)
5. API health check responds (curl output)
6. Database is accessible (migration status)
7. Monitoring dashboards are active (dashboard screenshot)
8. Component library renders (component demo page)

Format: Evidence Package with screenshots
Verdict: PASS / FAIL with specific issues
```

## Quality Gate チェックリスト

| # | 基準 | エビデンスソース | ステータス |
|---|-----------|----------------|--------|
| 1 | CI/CD pipeline がビルド、テスト、デプロイを実行できる | Pipeline 実行ログ | ☐ |
| 2 | Database schema がすべてのテーブル/index とともにデプロイされている | Migration 成功出力 | ☐ |
| 3 | API scaffold が health check に応答している | curl 応答エビデンス | ☐ |
| 4 | Frontend skeleton がブラウザでレンダリングされる | Evidence Collector screenshots | ☐ |
| 5 | Monitoring dashboards にメトリクスが表示されている | Dashboard screenshots | ☐ |
| 6 | Design system tokens が実装されている | Component library demo | ☐ |
| 7 | Theme toggle が機能している（light/dark/system） | Before/after screenshots | ☐ |
| 8 | Git workflow とプロセスが文書化されている | Studio Operations playbook | ☐ |

## Gate 判定

**Dual sign-off required**: DevOps Automator（インフラストラクチャ）+ Evidence Collector（ビジュアル）

- **PASS**: DevOps pipeline を備えた動作する骨格 → Phase 3 activation
- **FAIL**: 具体的なインフラストラクチャまたはアプリケーションの問題 → 修正して再検証

## Phase 3 への引き継ぎ

```markdown
## Phase 2 → Phase 3 Handoff Package

### For all Developer Agents:
- Working CI/CD pipeline (auto-deploys on merge)
- Design system tokens and component library
- API scaffold with auth and health checks
- Database with schema and seed data
- Git workflow and PR process

### For Evidence Collector (ongoing QA):
- Application URLs (dev, staging)
- Screenshot capture methodology
- Component library reference
- Brand guidelines for visual verification

### For Agents Orchestrator (Dev↔QA loop management):
- Sprint Prioritizer backlog (from Phase 1)
- Task list with acceptance criteria (from Phase 1)
- Agent assignment matrix (from NEXUS strategy)
- Quality thresholds for each task type

### Environment Access:
- Dev environment: [URL]
- Staging environment: [URL]
- Monitoring dashboard: [URL]
- CI/CD pipeline: [URL]
- API documentation: [URL]
```

---

*Phase 2 は、skeleton application が稼働し、CI/CD pipeline が運用可能になり、Evidence Collector がすべての foundation elements を screenshots 付きで検証した時点で完了とする。*