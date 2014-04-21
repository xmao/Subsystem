# Set PATH so it includes user's private bin if it exists
if [ -d ~/bin ]; then 
	export PATH="${HOME}/bin:${PATH}"
fi

# Set environment variables
uname -p | grep 'x86_64' > /dev/null

if [ $? -eq 0 ]; then
    ARCH='x86_64'
else
    ARCH='i386'
fi

export PS1="\h:\W \u\$ "
export PS2=">"

# Alias
alias b='bc -l'
alias c='clear'
alias d='du -h -d 1'
alias dw='date +%W'
alias e='emacsclient -n --alternate-editor emacs'
alias f='file'
alias g='grep --color=auto -i'
alias less='less -R'
alias l='less'
alias la='ls -A'
alias lg='ls -lh | grep -i --color=auto'
alias ll='ls -l'
alias more='more -R'
alias m='more'
alias n='kit sprint latest'
alias o='open'
alias s='subl'
alias sos="SubOS='macports' bash -l"
alias t='top -o cpu'
alias w='wc -l'

if which mvim 1> /dev/null 2>&1; then
	alias v='mvim'
else
	alias v='vim'
fi

# OS-specific settings
OS=$(uname)
if [ $OS = "Darwin" ]; then
	# Ref. 'man ls'
	export CLICOLOR=1
	export LSCOLORS="Exgxcxdxbxegedabagacad"

        if [ $ARCH = "x86_64" ]; then
                alias rr='open -a R .'
        else
                alias rr='open -a R64 .'
        fi
	
	if [ -d /Applications/Aquamacs.app ]; then
		# Need install Aquamacs Command Line Tools in tools menu
		alias e='emacsclient -n --alternate-editor aquamacs'
	fi
elif [ $OS = "Linux" ]; then
	true	
fi

export EDITOR="vim"
