# if xmodmap exists and the file exists, "source" it
if hash xmodmap 2>/dev/null && [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
