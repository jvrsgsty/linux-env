# ~/.bash_profile
# Author: Javier Sagastuy
# 151002 
# 
# For making sure that both the things in .profile and .bashrc are loaded for 
# login shells. 

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Load the .bashrc
[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" 

