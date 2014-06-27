# reset the path
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# source etc/profile if it exists
[ -f /etc/profile ] && source /etc/profile

export PATH=~/bin:~/managed-bin:/usr/local/bin:/usr/local/sbin:$PATH
