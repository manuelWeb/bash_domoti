# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias
alias vim='gvim'
alias myip='curl -s https://4.ifcfg.me/'
alias open='cygstart'
# git pager
alias gitlog="git log --color=always | less -R"
# fx alias for open file with ffx
alias fx='/cygdrive/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe'
alias fire='/cygdrive/c/Program\ Files\ \(x86\)/Adobe/Adobe\ Fireworks\ CS5.1/Fireworks.exe'
alias ch='/cygdrive/c/Users/mdevries/AppData/Local/Google/Chrome/Application/chrome.exe'
alias trash='open shell:RecycleBinFolder'
alias pwdc='echo -n $(pwd) > /dev/clipboard'
# alias ruby='/cygdrive/c/Ruby193/bin/ruby'
# alias gem='/cygdrive/c/Ruby193/bin/gem.bat'
# alias irb='/cygdrive/c/Ruby193/bin/irb.bat'
alias ruby='/cygdrive/c/Ruby24-x64/bin/ruby'
alias gem='/cygdrive/c/Ruby24-x64/bin/gem.cmd'
alias irb='/cygdrive/c/Ruby24-x64/bin/irb.cmd'
# alias du='du -h | sort -h' 
# add empty month folder
mkdirm(){
  # todo passer variable en prompt month: "prompt" + year: "prompt"
  month=$1
  year=$2
  mkdir $1$2 && cd $1$2 && touch desktop.ini && echo "[.ShellClassInfo]" >> desktop.ini && echo "IconResource=C:\Users\mdevries\Pictures\domoti\favicon\perso\months\\$1.y$2.ico,0" >> desktop.ini
  attrib +s +h desktop.ini
  cd ../
  attrib +r $1$2
  # + ouvrir R:/pdf
}
mkdirico(){
  # todo passer variable en prompt month: "prompt" + year: "prompt"
  icon=$1
  mkdir $1 && cd $1 && touch desktop.ini && echo "[.ShellClassInfo]" >> desktop.ini && echo "IconResource=C:\Users\mdevries\Pictures\domoti\favicon\perso\\$1.ico,0" >> desktop.ini
  attrib +s +h desktop.ini
  cd ../
  attrib +r $1
  # + ouvrir R:/pdf
}
# permet de recharger .bashrc dans le cash console
rbash(){
  source ~/.zshrc
}
# ouverture planning-Manuel-2016

# planweb détails 
planweb(){
  # pwd [options]
  var=$(pwd)
  echo "return to pwd $var"
  cd K:/WEB/ && ch dl2017.md && vim -p dl2017.md &
  cd $var
}
planmd(){
  var=$(pwd)
  echo "return to pwd $var"
  cd K:/WEB/ && vim -p dl2017.md &
  cd $var
}

# ouverture codekdo-2016
codekdo(){
  # pwd
  # pwd [options]
  var=$(pwd)
  echo "return to pwd $var"
  cd I:/Vérifications\ campagnes/ && cygstart CODE-CAMPAGNE-TTES-ENSEIGNES.xlsx
  cd $var
}
# taille
folderSize(){
  du -sh ./
}

# diff
diffme_bash(){
  echo -n "REP1 : "
  read -r REP1
  echo -n "REP2 : "
  read -r REP2
  echo -n "1: " && ls $REP1
  echo -n "2: " && ls $REP2

  if [ $(diff -r $REP1 $REP2 | grep -c .) -gt 0 ]; then
    output="$(diff -r $REP1 $REP2)"
    echo $output > rapport.md
    echo "!IMPORTANT > Les répertoires sont différents lire le rapport rapport.md"
  else
    echo "Les répertoires sont identiques"
  fi
  # cygstart rapport.md
  if [ -f rapport.md ] ; then echo "open rapport.md : $pwd"; else echo "coool!" ; fi
}
# diff
diffme(){
  echo -n "REP1 : "
  read -r REP1
  echo -n "REP2 : "
  read -r REP2
  echo -n "1: " && ls $REP1
  echo -n "2: " && ls $REP2
  # echo -E $REP1 $REP2 # -E noescape backslash
  if [ $(diff -r $REP1 $REP2 | grep -c .) -gt 0 ]; then
    output="$(diff -r $REP1 $REP2)"
    echo -E $output > rapport.md
    echo "!IMPORTANT > Les répertoires sont différents lire le rapport rapport.md"
  else
    echo "Les répertoires sont identiques"
  fi
  # cygstart rapport.md
  if [ -f rapport.md ] ; then echo "open rapport.md : $pwd"; else echo "coool!" ; fi
}

rmdeskini(){
  for i in ./ */ */* */*/*; do attrib $1s $1h $i/desktop.ini;done
}

html(){
  for i in "$@"; do
    if [ -d "$i" ]; then
      echo "folder: " $i/*
      # rm $i/*.html
    else
      echo "file: " $i
    fi
  done
}

lsfile(){
  for i in "$@"; do
    if [ -d "$i" ]; then
      echo "folder: " $i
    else
      echo "file: " $i
    fi
  done
  echo "fileSize: " $#
}

fileexist(){
  DIRECTORY=$1
  if [ -d "$DIRECTORY" ]; then
    echo $DIRECTORY "Exists!"
  else
    echo $DIRECTORY "Does not exist!"
  fi
}

d(){
  # date +"%D"
  date +"%d %m %Y"
}
t(){
  # date +"%T"
  while [ 1 ] ; do echo -en "$(date +%T)\r" ; sleep 1; done

}
dt(){
  date +"%D"
  date +"%T"
}

# function with arguments
fun(){
  echo "ton argument : " $1 $2
}

go(){
  cd /cygdrive/c/Users/mdevries/Pictures/$1
  count=1
  for i in *; do
    # if test -d $i; then echo 'dossier= '$i;else echo 'files= '$i;fi
    if [ -d "$i" ]; then
      echo $count-$i
      tableai[$count]=$i
      (( count=$count+1 ))
    fi
  done
  ((count=$count-1))
  echo -e "\033[33;40mfolder.size" $count"\033[0m"
  dossier=''
  echo -n "Where do you want to go : "
  read dossier
  echo -e "you chose: " "\e[1;31;42m"${tableai[$dossier]}"\e[0m"
  echo -en "\033[31;1;4;5;7m"${tableai[$dossier]}"/\033[0m " && cd ${tableai[$dossier]} && ls && cygstart ./
}

i(){
  cd /cygdrive/c/Users/mdevries/Pictures/$1
  count=1
  for i in *; do
    # if test -d $i; then echo 'dossier= '$i;else echo 'files= '$i;fi
    if [ -d "$i" ]; then
      echo $count-$i
      tableai[$count]=$i
      (( count=$count+1 ))
    fi
  done
  ((count=$count-1))
  dossier=''
  echo -n "Where do you want to go : "
  read dossier
  echo -e -n "you're in" "\033[31;1;4;5;7m"${tableai[$dossier]}"/\033[0m""> "
  cd ${tableai[dossier]} && ls --color -I desktop.ini
}

u(){
  cd ~/../c/users/$1 && echo "=== Users contents ===" && ls -a && start .;
}
# call && open folder

h(){
  cd ~/../c; echo "=== c:/ contents ===" && ls -a;
}

prog(){
  cd ~/../c/Program\ Files/; echo "=== Program Files contents ===" && ls -a;
}

progx86(){
  cd ~/../c/"Program Files (x86)"/; echo "=== Program Files (x86) contents ===" && ls -a;
}

# modif bash
bashrcmodif(){
  returnH=$(pwd)
  cd ~ && st .bashrc
  echo "return to pwd $returnH."
  cd $returnH
}

# open file with fw
fwo() {
  "C:\\Program Files (x86)\\Adobe\\Adobe Fireworks CS5.1\\Fireworks.exe" $1 &
}
# mvimg(dir) mv all img to dir
mvimg(){
  mv *.(png|PNG|psd|PSD) $1
}
# read file line by line
readthis(){
  while read line; do echo ${line}; done < $1
  }
#  add fct
add() {
  result=0;
  for i in "$@"; do ((result=$result+$i)) ; done
  echo $result;
}
# cpc copy c:/ to i:/ CAT TL
cpc() {
	pwd_bk1=$(pwd | rev | cut -f2 -d'/' - | rev)
	brand=$(pwd | rev | cut -f1 -d'/' - | rev)
	cp -r ./preview "I:\\NEWSLETTERS\\NEWSLETTERS-2017\\TEMPSL_IDEAS-COMFORT\\$pwd_bk1\\CATA\\$brand"
	attrib +S "I:\\NEWSLETTERS\\NEWSLETTERS-2017\\TEMPSL_IDEAS-COMFORT\\$pwd_bk1\\CATA\\$brand\\preview"
	attrib +H "I:\\NEWSLETTERS\\NEWSLETTERS-2017\\TEMPSL_IDEAS-COMFORT\\$pwd_bk1\\CATA\\$brand\\preview\\desktop.ini"
	open "I:\\NEWSLETTERS\\NEWSLETTERS-2017\\TEMPSL_IDEAS-COMFORT\\$pwd_bk1\\CATA\\$brand\\preview"
}

# Py path
export PATH="$PATH:/c/Python27"

# change Ruby path to the cygwin
# echo "Aliasing all ruby binaries."
if [[ -n "$(which ruby 2>/dev/null)" ]]; then
  RUBY_BIN=$(cygpath -u $(ruby -e 'puts RbConfig::CONFIG["bindir"]'))
  for f in $(find ${RUBY_BIN: : -1} -regex ".*bat$"| xargs -n1 basename); do
    alias ${f%.bat}=${f}
  done
fi
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# pour vimcat
# $HOME/bin
# /home/mdevries/.zshrc:345: permission denied: /home/mdevries/bin

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell,blinks,bureau,agnoster,avit,crunch,nicoulaj,bureau,Honukai"
ZSH_THEME="Honukai"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, catimg, github)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

### Highlighting text near the cursor
### Surbrillance du texte près du curseur CTRL+K