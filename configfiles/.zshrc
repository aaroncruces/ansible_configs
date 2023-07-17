# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/aaron/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


######## alias ########
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
alias tmux="TERM=xterm  tmux -2"
alias ls="ls --color"

########/alias/########


###### langs pkg ######
 #node nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

 #zsh antidote
  source '/usr/share/zsh-antidote/antidote.zsh'
  antidote load ${ZDOTDIR:-$HOME}/.config/zsh/antidote/zsh_plugins.txt
######/langs pkg/######

###### autologin ######
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
######/autologin/######

######## fixes ########
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
########/fixes/########

######## latex ########
PATH=~/.local/texlive/2023/bin/x86_64-linux:$PATH; export PATH
INFOPATH=~/.local/texlive/2023/texmf-dist/doc/info:$INFOPATH; export INFOPATH
MANPATH=~/.local/texlive/2023/texmf-dist/doc/man:$MANPATH; export MANPATH
########/latex/########

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Load Angular CLI autocompletion.
source <(ng completion script)
