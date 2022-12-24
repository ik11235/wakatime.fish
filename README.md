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
pip install wakatime

# or

curl https://raw.githubusercontent.com/wakatime/vim-wakatime/master/scripts/install_cli.py | python3 -
```


### Installation

```fish
fisher install ik11235/wakatime.fish
```

## Licence

[MIT](LICENSE)