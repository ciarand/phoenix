# reset the path
PATH=""

# source etc/profile if it exists
[ -f /etc/profile ] && source /etc/profile

export PATH=~/bin:~/managed-bin:/usr/local/bin:/usr/local/sbin:$PATH
