# exec zsh
# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-3

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi
# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

#*#############################################
#            ENV variables                    #
#############################################*#

# Python path
# ENV var
export PATH="/cygdrive/c/Program\ Files\ \(x86\)/Git/cmd:$PATH"
export PATH="/cygdrive/c/Program\ Files\ \(x86\)/Git/share/vim/vim74/gvim.exe:$PATH"
# C:\Program Files (x86)\Git\share\vim\vim74\gvim.exe
# open alias (start) for cywin
# alias open='cygstart'
alias start='cygstart'
# clear alias for cywin
alias clear='echo -e "\033c\c"'
alias ls='ls --color'

# rC="\n"
txt[0]="Bowman : \"My God it's full of stars !\"" 
txt[1]="HAL  : \"Bonjour Macfly, vous avez l'air en forme aujourd'hui.\"" 
txt[2]="HAL  : \"I'm sorry Macfly, I'm afraid I can't do that.\"" 
txt[3]="HAL  : \"I know you and Mus were planning to disconnect me. \n  And that's something I cannot allow to happen.\"" 
txt[4]="HAL  : \"Look Macfly, I can see you're really upset about this. \n  I honestly think you ought to sit down calmly, \n  take a stress pill, and think things over.\"" 
randNum=$((RANDOM%=5))
echo -e $rC ${txt[$randNum]}