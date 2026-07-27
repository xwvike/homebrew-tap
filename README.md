# homebrew-tap

xwvike 的 Homebrew tap。

```bash
brew tap xwvike/tap
```

## gong

[gong](https://github.com/xwvike/gong) —— 到点在所有屏幕最顶层播一段 HTML 动画的定时提醒 · macOS。
不抢焦点、不吃点击、背景真透明、常驻进程数为 0。

```bash
brew install xwvike/tap/gong
gong on
```

`gong on` 之后立刻可用。**卸载前先跑 `gong off`** —— `brew uninstall` 不会清
`~/Library/LaunchAgents` 里的 plist，formula 没有 uninstall hook。

## local-mirror

`Casks/local-mirror.rb`，由 goreleaser 自动更新，别手改。
