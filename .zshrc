source ~/.profile
export PATH=$HOME/.local/bin:$HOME/.bin:$HOME/bin:/usr/local/bin:/snap/bin/:$PATH

export ZSH="$HOME/.oh-my-zsh"

# Source files
source ~/.antigen.conf
source ~/.bash_aliases
source ~/.bash_functions
source ~/bin/nvim-switcher

# https://read.highgrowthengineer.com/p/how-i-setup-my-terminal-for-max-productivity
# https://martinheinz.dev/blog/110
HISTFILE="$HOME/.zsh_history"
# Display timestamps for each command
HIST_STAMPS="%T %d.%m.%y"

HISTSIZE=10000000
SAVEHIST=10000000

# Ignore these commands in history
HISTORY_IGNORE="(ls|pwd|cd)*"

# Write the history file in the ':start:elapsed;command' format.
setopt EXTENDED_HISTORY

# Do not record an event starting with a space.
setopt HIST_IGNORE_SPACE

# Don't store history commands
setopt HIST_NO_STORE

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="robbyrussell"
# ZSH_THEME="strug"
# ZSH_THEME="random"
# echo $RANDOM_THEME

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-vi-mode)
# plugins=(git zsh-completions zsh-vi-mode)
# source $ZSH/oh-my-zsh.sh

# zstyle ':omz:plugins:nvm' lazy yes
# plugins=(nvm)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Remove Background colors
eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"

# Catppuccin Mocha
# https://github.com/catppuccin/fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# source /usr/share/nvm/init-nvm.sh

# if commond -v pyenv 1>/dev/null 2>&1; then
  # eval "$(pyenv init -)"
# fi

# fpath+=~/.zfunc
# autoload -Uz compinit && compinit
eval "$(zoxide init zsh)"
# eval "$(fzf --zsh)"
eval "$(starship init zsh)"
# source fzf key bindings script
command -v fzf > /dev/null && [ -f ~/.local/share/fzf/completion.zsh.zsh ] && . ~/.local/share/fzf/completion.zsh.zsh || true
command -v fzf > /dev/null && [ -f ~/.local/share/fzf/key-bindings.zsh ] && . ~/.local/share/fzf/key-bindings.zsh || true
