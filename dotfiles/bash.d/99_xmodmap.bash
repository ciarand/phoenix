# if xmodmap exists and the file exists, "source" it
if [[ $(uname) -ne "Darwin" ]] && hash xmodmap 2>/dev/null && [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
