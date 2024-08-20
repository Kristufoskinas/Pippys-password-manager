export PATH="$PATH:<path-to-flutter-sdk>/bin"
export PATH=$PATH:/usr/local/bin



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pippy/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pippy/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pippy/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pippy/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"
