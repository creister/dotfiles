### Swift OSX downloadable toolchain
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

# User specific bin directory
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# configure prompt
export PS1="\033[35m\][\w]\[\033[0m\]\$(parse_git_branch)\n\[\033[1;36m\]\u\[\033[1;33m\] $ \[\033[0m\]"
