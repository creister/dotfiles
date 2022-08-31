### Swift OSX downloadable toolchain
#export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

# User specific bin directory
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# # Git branch in prompt.
# function parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# # configure prompt
# export PS1="\033[35m\][\w]\[\033[0m\]\$(parse_git_branch)\n\[\033[1;36m\]\u\[\033[1;33m\] $ \[\033[0m\]"

# Change iterm2 profile. Usage it2prof ProfileName (case sensitive)
function iTerm2Profile() {
  echo -e "\033]50;SetProfile=$1\a"
  export ITERM_PROFILE="$1"
}

# Fastlane tab auto complete
source ~/.fastlane/completions/completion.sh

# Bash History
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000

HISTCONTROL=erasedups # Erase previous duplicates of command being saved
shopt -s cmdhist # Store multi-line commands in one history entry

# Append command to history right after it has been executed
PROMPT_COMMAND='history -a'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#apollo
alias it="bazel run //apollo --"

