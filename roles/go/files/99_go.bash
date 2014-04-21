export PATH=:$PATH:/usr/local/go/bin/go

if hash go 2>/dev/null; then
    export GOPATH=$HOME/code/go
    export GOROOT="$(go env GOROOT)"
fi

if hash gh 2>/dev/null; then
    # use gh instead of git
    eval "$(gh alias -s)"
fi
