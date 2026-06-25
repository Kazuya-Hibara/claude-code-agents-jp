# クレジット / Credits

本プロジェクトは、以下のオリジナル作品の **日本語ローカライズ版（翻訳）** です。

## オリジナル / Upstream

- **プロジェクト名**: agency-agents（"The Agency"）
- **作者 / Author**: AgentLand Contributors（[@msitarzewski](https://github.com/msitarzewski) ほかコントリビューター）
- **リポジトリ**: https://github.com/msitarzewski/agency-agents
- **ライセンス**: MIT License — Copyright (c) 2025 AgentLand Contributors

オリジナルは Reddit のスレッドから生まれ、世界中のコントリビューターによって育てられた
Claude Code 向け専門サブエージェント集です。本リポジトリのエージェント定義はすべて、
このオリジナルを出発点としています。素晴らしい原作と OSS としての公開に感謝します。

## このリポジトリで行ったこと / What this fork adds

- 232体のエージェント定義（`agents/`）の **日本語翻訳**
  （`name` / `description` / 本文プロンプトを日本語化。YAMLキー・`color`・`emoji`・
  コードブロック・コマンド・URL・技術用語・Markdown構造は原文のまま保持）
- Claude Code **プラグイン化**（`.claude-plugin/plugin.json` + `marketplace.json`）により
  `claude plugin marketplace add` → `claude plugin install` のワンコマンド導入に対応
- 再実行可能なローカライズ・パイプライン（`scripts/translate-codex.sh`）

翻訳・パッケージング: Kazuya Hibara（[@Kazuya-Hibara](https://github.com/Kazuya-Hibara) /
[Automate & Augment](https://github.com/Kazuya-Hibara)）, 2026.

## ライセンス / License

オリジナルと同じ **MIT License** で配布します（[LICENSE](./LICENSE) 参照）。
MIT License の要件に従い、オリジナルの著作権表示を保持しています。
本ローカライズ版も自由に利用・改変・再配布できます。

> 注: 本プロジェクトは "The Agency" / "AgentLand" の公式プロジェクトではなく、
> それらの名称・商標とは independent な非公式の日本語ローカライズです。
