export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

fastfetch
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="${PATH}:${HOME}/.local/bin/"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="exa -l"
alias l="exa -la"
alias la="exa -la"
alias ll="exa -la"
alias hyprcfg="nvim ${HOME}/.config/hypr/hyprland.conf"
alias waycfg="nvim ${HOME}/.config/waybar"
alias vim="nvim"
alias rm="rm -rf "
alias pacman="sudo pacman"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
