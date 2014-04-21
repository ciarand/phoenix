export PATH="$HOME/.rbenv/bin:$PATH"

# only init rbenv if it exists (duh)
if hash rbenv 2>/dev/null; then
    eval "$(rbenv init -)"
fi
