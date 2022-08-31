#Ensure user-installed binaries take precedence
#export PATH=/usr/local/bin:$PATH

# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

# makes ls add option to show / for directories and * for executables
alias ls='ls -F'

# command aliases
alias chrome='open -a "Google Chrome"'
alias safari='open -a "Safari"'
alias xcode='open -a "Xcode"'
alias rl=./scripts/reload-project.sh
alias fast="bundle exec fastlane"

# comman aliases git
alias ga='git add'
alias gc='git commit'
alias gr='git rebase'
alias gs='git status'
alias gl='git log'

# Instructions from `brew install bash-completion`
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


# Set java version for android dev
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

function jv() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}
