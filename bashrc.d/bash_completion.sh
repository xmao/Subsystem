# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc).
alias have=true

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
    if [ -d /etc/bash_completion.d ]; then
    	for f in /etc/bash_completion.d/*; do
            test -f $f && . $f 2>/dev/null
        done
    fi
elif [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
    if [ -d /usr/local/etc/bash_completion.d ]; then
    	for f in /usr/local/etc/bash_completion.d/*; do
            test -f $f && . $f 2>/dev/null
        done
    fi
else
    if [ -f $HOME/.bash_completion ]; then
        {
            export BASH_COMPLETION=$HOME/.bash_completion
            export BASH_COMPLETION_DIR=$HOME/.bash_completion.d
            export BASH_COMPLETION_COMPAT_DIR=$HOME/.bash_completion.d
        } 2>/dev/null
        . $HOME/.bash_completion
    fi
fi

if [ -d $HOME/.bash_completion.d ]; then
	for f in $HOME/.bash_completion.d/*; do
        . $f
    done
fi
