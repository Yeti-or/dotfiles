
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi

if [ -f ~/.profile ]; then
source ~/.profile
fi

