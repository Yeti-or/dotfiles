#Globals
export LANG=ru_RU.UTF-8
export LC_ALL=$LANG

export EDITOR=vim

#Yandex
alias ynpm='npm --registry http://npm.yandex-team.ru'
alias gnpm='npm --registry https://registry.npmjs.org'
export isl=~/Projects/Y/islands
export BEM=~/Projects/Y/BEM

#Git completion
source ~/.completion/git-completion.bash

#npm completion
source ~/.completion/npm-completion
alias npmg='npm ls -g | grep -v "│\|  "'

#nvm
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

#bower completion
source ~/.completion/bower-completion

#brew completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#BEM 
#completion
source ~/.completion/bem-completion

#PATH FIX
export PATH=./node_modules/.bin:$PATH
export PATH=$PATH:bin

export NODE_PATH=./node_modules:$(npm root -g)

#run for brew -> z
. `brew --prefix`/etc/profile.d/z.sh

z_cd() {
    if [[ "$1" == "-" ]]; then
        cd -
    else
        z $@
    fi
}

alias z='z_cd'

#brew github fix
export HOMEBREW_GITHUB_API_TOKEN="2f07c68e24d765a2e28041f7dc8aee90462f0f54"

#openx script by @orta
openx(){ 
if test -n "$(find . -maxdepth 1 -name '*.xcworkspace' -print -quit)"
then
    echo "Opening workspace"
    open *.xcworkspace
    return
else
    if test -n "$(find . -maxdepth 1 -name '*.xcodeproj' -print -quit)"
    then
        echo "Opening project"
        open *.xcodeproj
        return  
    else
        echo "Nothing found"
    fi
fi
}

#show quick look of file
#alias ql='qlmanage -p '
ql() {
    qlmanage -p "$@" 2>/dev/null
}


# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

#.gitignore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

#enable i-search by ctrl+s
stty -ixon

#check weather
alias weather='curl wttr.in'

#ccat
alias cat='ccat'
hash -r

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# get wifi password from keychain
wifi() {
    security find-generic-password -g -w -a $1
}

