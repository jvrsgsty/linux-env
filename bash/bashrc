# ~/.bashrc
# Author: Javier Sagastuy
# 151002 
# 
# For the configuring the interactive Bash usage, like Bash aliases, setting 
# your favorite editor, setting the Bash prompt, etc.

############################
# => bash colors
###########################
export CLICOLOR=1
export LSCOLORS=ExGxFxDxCxegedabagaced

############################
# => bash_aliases
###########################
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases" 

############################
# => bash prompt
###########################
alias __git_ps1="git branch 2> /dev/null | grep '*' | cut -d ' ' -f 2"
alias __check_git="if [ \$(git branch 2> /dev/null | wc -l) -ge 1 ] ; then echo '('\$(__git_ps1)') '; fi"
export PS1="\h:\W \u \e[0,36m\$(__check_git)\e[m\$ "
# TODO: $(__git_ps1) is not writing its output on the prompt

