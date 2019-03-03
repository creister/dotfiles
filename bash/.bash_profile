#Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# makes ls add option to show / for directories and * for executables
alias ls='ls -F'

# command aliases
alias chrome='open -a "Google Chrome"'
alias safari='open -a "Safari"'
alias xcode='open -a "Xcode"'

# Instructions from `brew install bash-completion`
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
