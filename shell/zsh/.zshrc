# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ===========================
# 基础设置
# ===========================
export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

setopt autocd               # 输入目录名自动切换
setopt correct              # 自动纠错
setopt extendedglob         # 强增强 glob 支持

# 自动 ls：进入目录后自动显示内容
chpwd() {
    ls --color=auto
}

# ===========================
# Alias
# ===========================
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a'
alias lla='ls -lah'
alias grep='grep --color=auto'

# ===========================
# arch linux yay alias
# ===========================
alias yay-install='yay -S'
alias yay-remove='yay -R'
alias yay-search='yay -s'
alias yay-list='yay -Qe'
alias yay-update='yay -Syu'
alias yay-clean='yay -Sc'
alias yay-upgrade='yay -Su'
alias yay-rebuild='yay -Scc'
alias yay-reinstall='yay -Rs'
alias yay-info='yay -Qi'
alias yay-depends='yay -Qi'
alias yay-fileinfo='yay -Qlf'
alias yay-history='yay -Qih'
alias yay-cleancache='yay -Sc'
alias yay-selfupdate='yay -Syu yay'

alias pacman-install='sudo pacman -S'
alias pacman-remove='sudo pacman -R'
alias pacman-search='pacman -Ss'
alias pacman-list='pacman -Qe'
alias pacman-update='sudo pacman -Syu'
alias pacman-clean='sudo pacman -Sc'
alias pacman-upgrade='sudo pacman -Su'
alias pacman-rebuild='sudo pacman -Scc'
alias pacman-reinstall='sudo pacman -Rs'
alias pacman-info='pacman -Qi'
alias pacman-depends='pacman -Qi'
alias pacman-fileinfo='pacman -Qlf'
alias pacman-history='pacman -Qih'
alias pacman-cleancache='sudo pacman -Sc'
alias pacman-selfupdate='sudo pacman -Syu'


# ===========================
# Zinit 初始化
# ===========================
# 如果第一次启动会自动安装
if [[ ! -f "$HOME/.zinit/bin/zinit.zsh" ]]; then
    mkdir -p "$HOME/.zinit"
    git clone https://github.com/zdharma-continuum/zinit.git "$HOME/.zinit/bin"
fi

source "$HOME/.zinit/bin/zinit.zsh"



# ===========================
# PATH（按需加入）
# ===========================
# export PATH="$HOME/bin:$PATH"


# ========== 插件 ==========
# 自动建议
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# 语法高亮
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 主题
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# ===========================
# 插件（简洁 + 高性能）
# ===========================


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
