# 🎭 Claude Code 日本語エージェント集

> **あなたの Claude Code に、232人の専門家チームを。**
> エンジニア、マーケター、営業、デザイナー、セキュリティ専門家——16部門・232体の専門AIサブエージェントを、**日本語で**、**ワンコマンド**で導入できます。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Agents](https://img.shields.io/badge/agents-232-blue.svg)](./ROSTER.md)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-plugin-7C3AED.svg)](https://code.claude.com/docs/en/plugins)

世界で10万スター超を集めた Claude Code 向けサブエージェント集
[**The Agency**（msitarzewski/agency-agents）](https://github.com/msitarzewski/agency-agents)を、
日本語に翻訳して **Claude Code プラグイン**として配布しています。MIT ライセンス・**完全無料**。

---

## ⚡ インストール（30秒）

Claude Code のセッション内で、次の2コマンドを実行するだけ：

```text
/plugin marketplace add Kazuya-Hibara/claude-code-agents-jp
/plugin install claude-code-agents-jp
```

> ターミナルから入れる場合は `claude plugin marketplace add Kazuya-Hibara/claude-code-agents-jp` →
> `claude plugin install claude-code-agents-jp`。
> インストール後、232体のエージェントが `/agents` 一覧に日本語で並びます。

---

## 🎯 これは何？ なぜ便利？

Claude Code の **サブエージェント**は、特定の役割に特化した AI アシスタントです。
それぞれが独自の専門知識・作業手順・視点を持ち、必要な場面で Claude が自動的に呼び出します。

このプラグインを入れると——

- **「バックエンドアーキテクト」**に API 設計を相談する
- **「コードレビュワー」**に PR をレビューさせる
- **「グロースハッカー」**に施策のアイデアを出させる
- **「ペネトレーションテスター」**にセキュリティの観点で見てもらう

——といった使い分けが、**全部日本語で**、追加設定なしでできるようになります。
専門家を16部門ぶん「採用」した状態を、Claude Code の中につくるイメージです。

**こんな人に**：一人で何役もこなす個人開発者・一人社長、少人数で開発と運用とマーケを兼ねるチーム、
そして「英語のプロンプト集はとっつきにくい」と感じていた、すべての日本語話者の Claude Code ユーザーへ。

---

## 🗂️ 16部門・232体のラインナップ

| 部門 | 体数 | 代表的なエージェント |
|---|---:|---|
| 🧩 専門特化 | 53 | プロンプトエンジニア ほか |
| 📣 マーケティング | 36 | グロースハッカー / SEO スペシャリスト / コンテンツクリエイター ほか |
| 💻 エンジニアリング | 33 | バックエンドアーキテクト / コードレビュワー / DevOps ほか |
| 🎮 ゲーム開発 | 20 | ゲームデザイナー / テクニカルアーティスト ほか |
| 🗺️ GIS・地理空間 | 13 | 空間分析 / 地図作成 ほか |
| 🔒 セキュリティ | 10 | ペネトレーションテスター / セキュリティ監査 ほか |
| 🤝 営業 | 9 | セールスエンジニア / 提案書ライター ほか |
| 🎨 デザイン | 9 | ブランドガーディアン / UXリサーチャー ほか |
| ✅ テスト・QA | 8 | テスト自動化 / QAエンジニア ほか |
| 📋 プロジェクト管理 | 7 | シニアプロジェクトマネージャー ほか |
| 💰 有料広告 | 7 | 広告運用 / クリエイティブ最適化 ほか |
| 🛠️ サポート・運用 | 6 | インフラ運用 / カスタマーサポート ほか |
| 🥽 空間コンピューティング | 6 | XRインターフェースアーキテクト ほか |
| 📦 プロダクト | 5 | プロダクトマネージャー ほか |
| 📊 ファイナンス | 5 | 財務分析 ほか |
| 🎓 学術・研究 | 5 | 歴史家 / 心理学者 / 人類学者 ほか |

👉 **全232体の一覧と説明は [ROSTER.md](./ROSTER.md) を参照してください。**

---

## 🚀 使い方

インストール後、Claude Code に普通に話しかけるだけで、適切なエージェントが自動的に選ばれます。
明示的に指名したいときは、エージェント名で呼び出せます：

```text
コードレビュワーとして、この PR をレビューして

バックエンドアーキテクトの視点で、この API 設計の問題点を指摘して
```

利用可能なエージェントの一覧は `/agents` で確認できます。

---

## 🔄 更新

オリジナルの追加・改善に追従して更新します。最新版を取り込むには：

```text
/plugin marketplace update claude-code-agents-jp
```

---

## 🙏 クレジット・ライセンス

本プロジェクトは [**The Agency（msitarzewski/agency-agents）**](https://github.com/msitarzewski/agency-agents)
（MIT License, © 2025 AgentLand Contributors）の **日本語ローカライズ版**です。
素晴らしいオリジナルと OSS 公開に深く感謝します。詳細な帰属は [CREDITS.md](./CREDITS.md) を参照。

- ライセンス：**MIT**（[LICENSE](./LICENSE)）— 自由に利用・改変・再配布できます
- 翻訳・パッケージング：[Kazuya Hibara](https://github.com/Kazuya-Hibara)
- 翻訳は再実行可能なパイプライン（[`scripts/translate-codex.sh`](./scripts/translate-codex.sh)）で生成しています

> 本プロジェクトは "The Agency" / "AgentLand" の公式版ではなく、非公式の日本語ローカライズです。

---

## 👤 作者について

**Kazuya Hibara** — AI Automation Engineer / [Automate & Augment](https://github.com/Kazuya-Hibara) 代表。
AI エージェントと自動化で、中小企業・個人事業のオペレーションを「拡張」する仕事をしています。

「自社の業務に合わせて Claude Code のエージェント体制を組みたい」「AI 自動化を導入したい」
といったご相談は、[GitHub プロフィール](https://github.com/Kazuya-Hibara)からどうぞ。

⭐ 役に立ったら Star をいただけると励みになります。
