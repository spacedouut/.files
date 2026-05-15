# GPG-Agent SSH Integration
unset SSH_AGENT_PID
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# Various aliases
alias codex="codex --yolo" # Default to Codex YOLO mode
alias ll="ls -la"
alias la="ls -a"
alias lt="tree -a"

# Call pi programatically for quick oneshots
piq() { pi -p --no-session --no-context-files --no-extensions --no-skills --no-prompt-templates --model openai-codex/gpt-5.4-mini --append-system-prompt "Be concise. Prefer direct answers. You're running non-interactively without any tools, skills, or extensions. Stray from markdown where you can." "$@"; }

# Starship Shell
eval "$(starship init zsh)"

# Env Variables
source ~/.zshenv
