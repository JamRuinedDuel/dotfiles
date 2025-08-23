# use later version of bash from homebrew
export PATH=/opt/homebrew/bin/bash:$PATH


# -----------------------------------------------------------------------------
# FZF: Fuzzy Finder
# -----------------------------------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use fd instead of fzf for faster searching
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_COMMAND="fd --type=d --hidden --strip-cwd-prefix --excude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for more details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \$' {}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "--preview 'bat -n --color=always --line-range :500 {}'" "$@" ;;
  esac
}

# history setup and configuration
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# -----------------------------------------------------------------------------
# EZA: Better LS
# -----------------------------------------------------------------------------
alias ls="eza -bhm --git --group-directories-first --smart-group --color=always --icons=always"
alias ll="ls -l"
alias lla="ls -la"
alias tree="ls -T"


# -----------------------------------------------------------------------------
# ZOXIDE: Better CD
# -----------------------------------------------------------------------------
alias cd="z"
eval "$(zoxide init zsh)"


# -----------------------------------------------------------------------------
# Other Aliases
# -----------------------------------------------------------------------------
alias g=git
alias vim=nvim


# -----------------------------------------------------------------------------
# Starship Prompt
# -----------------------------------------------------------------------------
eval "$(starship init zsh)"

