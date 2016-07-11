# CD shortcuts
set GIT_REPO_HOME='D:/ProfDev'
alias cgit='cd $GIT_REPO_HOME'

# Gradle aliases
alias gb='gradle build'
alias gcb='gradle clean build'
alias gcbe='gradle clean build eclipse'
alias gbe='gradle build eclipse'

# Compiling aliases
alias cm='cmake .. -G "Visual Studio 9 2008"'

# Git functions to show branch name and dirty state
function parse_git_dirty {
[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\]\w\[\033[01;33m\]$(parse_git_branch)$(parse_git_dirty)\[\033[01;34m\] '

# Misc
alias npp='C:\Program Files (x86)\Notepad++\notepad++.exe"