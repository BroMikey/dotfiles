# shell dotfile

## bash

增加了一些alias 以及一个cd函数，cd默认显示进入的文件夹目录。

```bash
# function
cd(){
    builtin cd "$@" && ls --color=auto
}

```

## zsh

### Installation

```bash
yay -S zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting zsh-theme-powerlevel10k
```

### Configuration

```bash
# 自动建议
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# 语法高亮
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 主题
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
```