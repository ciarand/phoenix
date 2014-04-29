export GOPATH={{ gopath | expanduser }}
export PATH=:$PATH:$HOME/src/go/bin:$GOPATH/bin

if hash go 2>/dev/null; then
    export GOROOT="$(go env GOROOT)"
fi

if hash gh 2>/dev/null; then
    # use gh instead of git
    eval "$(gh alias -s)"
fi
