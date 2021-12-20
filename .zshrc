# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Compress a file
alias tarcf='tar -cf '

# Extract file
exf ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via exf()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Simple command
alias c='clear'

# info
alias hw="hwinfo --short"
alias cpu='lscpu'
alias ram='free'
alias im='whoami'

# list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# readable output
alias df='df -h'

#continue download
alias wget="wget -c"

#firefox private
alias fprivate="firefox --private-window"

# Coding alias
 alias vsc='code'
 alias njs='node'
 alias py='python'
 alias nv='nvim'

# editing dotfiles
alias .zshrc='nvim ~/.zshrc'
alias .neofetch='nvim ~/.config/neofetch/config.conf'
alias .nvim='nvim ~/.config/nvim/init.vim'

# Encrypt alias
alias encrypt='gpg -c --no-symkey-cache --cipher-algo AES256'
alias unencrypt='gpg'

# Make nvim the default editor
export EDITOR='nvim'
export VISUAL='nvim'

# run command at startup
neofetch