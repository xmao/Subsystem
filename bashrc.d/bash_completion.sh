# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc).
alias have=true

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
    if [ -d /etc/bash_completion.d ]; then
    	for f in /etc/bash_completion.d/*; do
            . $f
        done
    fi
else
    if [ -f $HOME/.bash_completion ]; then
        export BASH_COMPLETION=$HOME/.bash_completion
        export BASH_COMPLETION_DIR=$HOME/.bash_completion.d
        export BASH_COMPLETION_COMPAT_DIR=$HOME/.bash_completion.d
        . $HOME/.bash_completion
    fi
fi

if [ -d $HOME/.bash_completion.d ]; then
	for f in $HOME/.bash_completion.d/*; do
        . $f
    done
fi
