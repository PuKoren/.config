#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u:\W]\$ '

export NVM_DIR="/home/koren/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#nvm use 5

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias franceculture='mplayer http://audio.scdn.arkena.com/11010/franceculture-midfi128.mp3'

cowsay $(fortune)
