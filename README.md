# wakatime.fish

[fish](https://fishshell.com/) plugin for [WakaTime](https://wakatime.com/)

Unofficial script that sends each command you run in the fish shell as a heartbeat to [WakaTime](https://wakatime.com/) via [wakatime-cli](https://github.com/wakatime/wakatime-cli).

> **Note:** WakaTime itself recommends using IDE plugins or the desktop app for accurate coding stats; terminal-based tracking is unofficial. Use this plugin only if you also want command-level activity tracked from your shell.

## Features

- Works with [wakatime-cli](https://github.com/wakatime/wakatime-cli) (the official Go-based CLI).
- Uses git information to determine the project name automatically.
- Installable as a [fisher](https://github.com/jorgebucaran/fisher) plugin.

## Getting Started

### Prerequisites

- [wakatime-cli](https://github.com/wakatime/wakatime-cli)
- [fisher](https://github.com/jorgebucaran/fisher)
- A WakaTime API key configured in `~/.wakatime.cfg` (see [WakaTime account settings](https://wakatime.com/settings/account))

#### wakatime-cli Install

Install [wakatime-cli](https://github.com/wakatime/wakatime-cli) (the Go-based CLI) with any of the following methods:

- Homebrew (macOS / Linux) — installs `wakatime-cli` onto your `$PATH`:

  ```bash
  brew install wakatime-cli
  ```

- Download the latest release binary directly from [wakatime/wakatime-cli releases](https://github.com/wakatime/wakatime-cli/releases) and place it on your `$PATH`.

- Installer script — downloads the prebuilt `wakatime-cli` binary to `~/.wakatime/wakatime-cli`:

  ```bash
  curl -fsSL https://raw.githubusercontent.com/wakatime/vim-wakatime/refs/heads/master/scripts/install_cli.py | python3 -
  ```

This plugin looks for wakatime-cli in this order:

1. `wakatime-cli` on your `$PATH` (Homebrew, direct download, etc.)
2. `~/.wakatime/wakatime-cli` (installer script above)
3. `wakatime` on your `$PATH` — the legacy Python CLI from [`pip install wakatime`](https://github.com/wakatime/wakatime) (kept only for backward compatibility)

#### fisher Install

If it does not work, please refer to the [official documentation](https://github.com/jorgebucaran/fisher#installation).

```fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

### Installation

```fish
fisher install ik11235/wakatime.fish
```

### Disable by environment variable

If you want to disable this plugin temporarily,
or if you want to use a common config on multiple machines and disable it on only some machines,
set the following environment variables.

```bash
export FISH_WAKATIME_DISABLED=true
```

## Licence

[MIT](LICENSE)
