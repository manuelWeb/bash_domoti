#!/bin/sh

# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-3

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
# [[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func

# com coller ctr+v
stty lnext ^q stop undef start undef

# git pager
alias gitlog="git log --color=always | less -R"

### CMD perso
export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "

alias info='echo "=== Remote ===" && git remote -v && echo "" && echo "=== Branch ===" && git branch -v && echo "" && echo "=== Latest commits ===" && git log --pretty="%cr (%cn) %s" -n 15 --date=relative' 
alias taille='du -hxBM --max-depth=1 . | sort -n'

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
  source ~/.bashrc
}
# ouverture planning-Manuel-2016
plan(){
  # pwd
  # pwd [options]

  var=$(pwd)
  echo "return to pwd $var"
  cd I:/PLANS\ WEB/PLAN@2016/ && cygstart planning-Manuel-2016.xlsx
  # cd I:/PLANS\ WEB/PLAN@2016/ && open planning-Manuel-2016.xlsx
  cd $var
}
# ouverture planning-Manuel-2016
planw(){
  # pwd
  # pwd [options]

  var=$(pwd)
  echo "return to pwd $var"
  cd K:/WEB/ && cygstart Plan_WEB_2016.xls
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
diffme(){
  echo -n "REP1 : "
  read -r REP1
  echo -n "REP2 : "
  read -r REP2
  echo -n "1: " && ls $REP1
  echo -n "2: " && ls $REP2

  if [ $(diff -r $REP1 $REP2 | grep -c .) -gt 0 ]; then
    output="$(diff -r $REP1 $REP2)"
    echo $output  > diff.md
    echo "!IMPORTANT > Les répertoires sont différents lire le rapport diff.md"
  else
    echo "Les répertoires sont identiques"
  fi
  # cygstart diff.md
  if [ -f diff.md ] ; then echo "open diff.md> " && cygstart diff.md ; else echo "coool!" ; fi
}

# open
open(){
  echo -n "directory : "
  read -r $1
  cd $direct && start ./
}

cpr(){
  input=$1
  output=$2
  echo "cp -r de $input vers $output"
  cp -r $input $output && cd $output && cat desktop.ini
  desktopold=''
  desktopnew=''
  echo "modif desktopold : "
  read desktopold
  echo "modif desktopnew : "
  read desktopnew
  echo "$desktopold $desktopnew"
  sed -i -r -e "s/$desktopold/$desktopnew/" desktop.ini && attrib desktop.ini +s
  cd ../ && attrib +s $output
  echo "ready to work in $output"
}
iconrest(){
  for i in */ */*;do attrib +S "${i%/}";done
}
# rimraf dest/ render/ dev/ evtProd/ preview/ zipped/
# "$@" == arg fct
# for i in "$@"; do
rp() {
  for i in *; do
    if [ -d $i ]; then
      echo "folder: " $i
      if [[ $i == 'dest' ]]; then
	echo "deleted: " $i
	rimraf $i
      fi
      if [[ $i == 'render' ]]; then
  echo "deleted: " $i
  rimraf $i
      fi
      if [[ $i == 'build' ]]; then
	echo "deleted: " $i
	rimraf $i
      fi
      if [[ $i == 'dev' ]]; then
	echo "deleted: " $i
	rimraf $i
      fi
      if [[ $i == 'evtProd' ]]; then
	echo "deleted: " $i
	rimraf $i
      fi
      if [[ $i == 'preview' ]]; then
	echo "deleted: " $i
	rimraf $i
      fi
      if [[ $i == 'zipped' ]]; then
	echo "deleted: " $i
	rimraf $i
      fi
    else
      echo "file: " $i
    fi
  done
}

rmdeskini(){
  for i in ./ */ */* */*/*; do attrib $1s $1h $i/desktop.ini;done
}
# rmfile(){
#   rm -rf *.$1 *.$2 *.$3 *.$4
# }
rmhtml(){
  for i in "$@"; do
    if [ -d "$i" ]; then
      echo "folder: " $i/*
      rm $i/*.html
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
  "C:\Program Files (x86)\Adobe\Adobe Fireworks CS5.1\Fireworks.exe" $1 &
}

# read file line by line
readthis(){
  while read line; do echo ${line}; done < $1
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

  # alias
  alias vim='gvim'