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
alias rfi='mplayer http://rfi-monde-64k.scdn.arkena.com/rfimonde.mp3'
alias fipmonde='mplayer http://direct.fipradio.fr/live/fip-webradio4.mp3'
alias fip='mplayer http://direct.fipradio.fr/live/fip-midfi.mp3'
alias fiprock='mplayer http://direct.fipradio.fr/live/fip-webradio1.mp3'
alias underground80='mplayer http://ice1.somafm.com/u80s-128-aac'

cowsay $(fortune)
