export HISTIGNORE="*AWS_SECRET*:*AWS_ACCESS*:*glpat-*:*glrt-*:*gloas-*:*PRIVATE-TOKEN*:*CLIENT_SECRET*"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# set brew path in linux
if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# init
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(direnv hook zsh)"

# alias
alias ll='ls --color -la'
alias ls='ls --color -l -h'
alias grep='grep -n --color'

alias be='bundle exec'
alias gpf='git push --force-with-lease'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gpu='git push -u origin $(git branch --show-current)'

# opencode
export PATH=/Users/royliu/.opencode/bin:$PATH
export EDITOR=vim
export PATH="$HOME/.local/bin:$PATH"
