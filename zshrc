# GPG-Agent SSH Integration
unset SSH_AGENT_PID
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent

# Added by Windsurf
export PATH="/Users/asherriggins/.codeium/windsurf/bin:$PATH"

# bun completions
# [ -s "/Users/asherriggins/.bun/_bun" ] && source "/Users/asherriggins/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export TERM=xterm-256color
eval "$(starship init zsh)"

export OPENAI_BASE_URL=https://claude.colin1112.tech/v1
export OPENAI_API_KEY=sk-9b530dbeb957f21381ccb1537bd2f9c5
