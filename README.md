# Claude Code 設定ディレクトリ

ほとんどがあちこちから集めてきたコマンドやエージェントを入れているだけ。

## 概要

Claude Code は AI 駆動の開発支援ツールです。このディレクトリには以下が含まれます：

- グローバル開発ルールとガイドライン
- カスタムコマンドとエージェント定義
- 自動化スクリプトとフック
- 出力スタイルとテンプレート

## ディレクトリ構造

### コア設定ファイル

- `CLAUDE.md` - Claude Code のグローバル設定とルール
- `settings.json` - 権限設定、環境変数、クリーンアップ設定

### 機能別ディレクトリ

#### `agents/` - AI エージェント定義

専門分野別のエージェントが定義されています：

- `analyzer.md` - 根本原因分析エージェント
- `architect.md` - システムアーキテクト
- `code-quality-reviewer.md` - コード品質レビューア
- `frontend.md` - フロントエンド・UI/UX 専門家
- `mobile.md` - モバイル開発専門家
- `performance.md` - パフォーマンス最適化専門家
- `qa.md` - テストエンジニア
- `qa-tester-linter.md` - QA テスター・リンター
- `reviewer.md` - コードレビュー専門家
- `security.md` - セキュリティ脆弱性検出専門家
- `serena-expert.md` - エリート開発エージェント
- `software-architect-gcp.md` - GCP 専門ソフトウェアアーキテクト

#### `commands/` - カスタムコマンド定義（48コマンド）

**開発ワークフロー**
- `2-commit-fast.md` - 高速コミットワークフロー
- `commit-message.md` - コミットメッセージ作成
- `commit.md` - 一般的なコミット処理
- `semantic-commit.md` - セマンティックコミット

**Issue・PR管理**
- `analyze-issue.md` - Issue分析
- `bug-fix.md` - バグ修正ワークフロー
- `fix-error.md` - エラー修正
- `fix-github-issue.md` - GitHub Issue修正
- `fix-issue.md` - Issue修正用ワークフロー
- `fix-pr.md` - PR修正
- `pr-auto-update.md` - PR自動更新
- `pr-create.md` - PR作成
- `pr-feedback.md` - PRフィードバック
- `pr-issue.md` - PR問題対応
- `pr-list.md` - PR一覧表示
- `pr-review.md` - PRレビュー

**コード品質・分析**
- `analyze-dependencies.md` - 依存関係分析
- `analyze-performance.md` - パフォーマンス分析
- `check-fact.md` - ファクトチェック
- `check-github-ci.md` - GitHub CI確認
- `explain-code.md` - コード説明
- `optimize.md` - コードパフォーマンス分析
- `refactor.md` - リファクタリング
- `smart-review.md` - スマートレビュー
- `tech-debt.md` - 技術的負債管理

**設計・計画**
- `design-patterns.md` - デザインパターン
- `plan.md` - 計画策定
- `show-plan.md` - 計画表示
- `spec.md` - 仕様書作成

**開発手法**
- `tdd.md` - テスト駆動開発
- `role.md` - ロール設定
- `role-debate.md` - ロール議論
- `role-help.md` - ロールヘルプ
- `multi-role.md` - マルチロール
- `task.md` - タスク管理

**思考・分析ツール**
- `sequential-thinking.md` - 段階的思考
- `ultrathink.md` - 高度思考分析
- `check-prompt.md` - プロンプト確認

**依存関係更新**
- `update-branch-name.md` - ブランチ名更新
- `update-dart-doc.md` - Dart文書更新
- `update-doc-string.md` - 文書文字列更新
- `update-flutter-deps.md` - Flutter依存関係更新
- `update-node-deps.md` - Node.js依存関係更新
- `update-rust-deps.md` - Rust依存関係更新

**ツール連携**
- `context7.md` - Context7連携
- `gdrive.md` - Google Drive操作
- `screenshot.md` - スクリーンショット
- `search-gemini.md` - Gemini検索
- `serena.md` - Serena連携
- `visualize.md` - 可視化ツール

**文書・履歴**
- `add-to-changelog.md` - CHANGELOG追加
- `style-ai-writting.md` - AI文章スタイル
- `weekly-note.md` - 週次レポート

#### `scripts/` - 自動化スクリプト

開発ワークフロー最適化のためのシェルスクリプト：

- `auto-comment.sh` - 自動コメント生成
- `check-ai-commit.sh` - AI コミット検証
- `check-continue.sh` - 継続処理チェック
- `check-project-plan.sh` - プロジェクト計画検証
- `debug-hook.sh` - デバッグフック
- `deny-check.sh` - 拒否パターンチェック
- `enforce-uv.sh` - uv 強制実行
- `ja-space-format.sh` - 日本語スペース整形
- `ja-space-exclusions.json` - 日本語スペース除外設定
- `preserve-file-permissions.sh` - ファイル権限保持

#### `output-styles/` - 出力スタイル定義

- `concise-japanese.md` - 簡潔な日本語出力スタイル

#### その他

- `assets/` - サウンドアセットファイル
  - `confirm.mp3` (36KB) - 確認音
  - `perfect.mp3` (19KB) - 完了音
- `templates/` - テンプレートファイル（現在空）

### ルートファイル詳細

- `CLAUDE.md` - グローバル設定ファイル（2KB）
- `settings.json` - システム設定ファイル（4.4KB）
- `README.md` - このドキュメント

## 主要ファイル詳細

### CLAUDE.md

Claude Code が参照するグローバル設定ファイル。以下の内容が含まれます：

- **開発原則**: TDD、YAGNI、DRY、KISS、SOLID
- **コーディング標準**: ファイル分割ルール（200行制限）、エラーハンドリング
- **セキュリティ**: API キー管理、セキュリティベストプラクティス
- **MCP 設定**: serena、github、google_workspace、context7 の優先利用
- **ツール設定**: ripgrep、fd コマンド利用

### settings.json

Claude Code の動作を制御する設定ファイル：

- **環境変数**: BASH_DEFAULT_TIMEOUT_MS、CLAUDE_LANGUAGE（ja）
- **権限設定**: 許可・拒否するコマンドパターン
- **クリーンアップ**: 30日周期での自動クリーンアップ
- **セキュリティ**: 危険なコマンドの実行制限

## 設定ガイド

### 初期設定

1. `CLAUDE.md` でグローバルルールを設定
2. `settings.json` で権限と環境変数を調整
3. 必要に応じて `agents/` でカスタムエージェントを追加

### カスタムコマンド作成

1. `commands/` ディレクトリに `.md` ファイルを作成
2. コマンドの動作とパラメータを定義
3. Claude Code で `/command-name` として利用可能

### エージェント利用

専門分野に応じたエージェントを選択：

- コードレビュー → `code-quality-reviewer`
- パフォーマンス → `performance`
- セキュリティ → `security`
- アーキテクチャ → `software-architect-gcp`

### スクリプト活用

`scripts/` のシェルスクリプトをフックとして利用可能。
日本語整形、コミット検証、権限管理などの自動化に対応。

## セキュリティとメンテナンス

### 権限管理

- 危険なコマンド（`rm -rf`、システム変更等）は拒否設定済み
- Git 操作は制限付きで許可
- Web アクセスとファイル操作は適切に制御
