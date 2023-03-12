# wakatime.fish

[fish](https://fishshell.com/) plugin for [WakaTime](https://wakatime.com/)

Unofficial script for wakatime tracking in the fish shell.

## Differences from [officially linked scripts](https://wakatime.com/terminal#install-fish)

- Also works with wakatime-cli.
- Use git information to determine project name.
- Can be installed as a [fisher](https://github.com/jorgebucaran/fisher) plugin.

## Getting Started

### Prerequisites

- [wakatime-cli](https://github.com/wakatime/wakatime-cli)
- [fisher](https://github.com/jorgebucaran/fisher)

#### wakatime-cli Install

If it does not work, please refer to the [official documentation](https://wakatime.com/terminal).

```bash
curl https://raw.githubusercontent.com/wakatime/vim-wakatime/master/scripts/install_cli.py | python3 -
```

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
