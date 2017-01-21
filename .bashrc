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
alias ll='ls -l --color'
alias ls='ls --color'

alias franceculture='mplayer http://audio.scdn.arkena.com/11010/franceculture-midfi128.mp3'
alias rfi='mplayer http://rfi-monde-64k.scdn.arkena.com/rfimonde.mp3'
alias fipmonde='mplayer http://direct.fipradio.fr/live/fip-webradio4.mp3'
alias fip='mplayer http://direct.fipradio.fr/live/fip-midfi.mp3'
alias fiprock='mplayer http://direct.fipradio.fr/live/fip-webradio1.mp3'
alias underground80='mplayer http://ice1.somafm.com/u80s-128-aac'
alias metaldetector='mplayer http://ice1.somafm.com/metal-128-aac'
alias leftcoast='mplayer http://ice1.somafm.com/seventies-128-aac'
alias deepspaceone='mplayer http://ice1.somafm.com/deepspaceone-128-aac'

alias start_redis='docker run --rm --name redis -it -p 6379:6379 redis:alpine'
alias start_mariadb='docker run --rm --name mariadb -it -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=cubyn -v ~/dev/data/mariadb:/var/lib/mysql -p 3306:3306 mariadb:latest'
alias start_postgres='docker run --rm --name postgres -it -e POSTGRES_DB=cubyn.labels -v ~/dev/data/postgres:/var/lib/postgresql/data -p 5432:5432 postgres:alpine'
alias start_elastic='docker run --rm --name elastic -it -v ~/dev/data/elasticsearch:/var/lib/elasticsearch -p 9200:9200 -p 9300:9300 elasticsearch:2-alpine'

cowsay $(fortune)
