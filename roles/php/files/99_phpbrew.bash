# load the bashrc file if it exists
[[ -f ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# make sure we have the bin in path for composer n stuff
export PATH=~/.phpbrew/.phpbrew/bin:$PATH
