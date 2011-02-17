# Set up personal executable envionment
[ -d ~/usr/lib ] && LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/usr/lib
[ -d ~/usr/share/man ] && MANPATH=$HOME/usr/share/man:$MANPATH
[ -d ~/usr/man ] && MANPATH=$HOME/usr/man:$MANPATH

[ -d ~/usr/share/info ] && INFOPATH=$HOME/usr/share/info:$INFOPATH

[ -d ~/usr/bin ] &&  PATH="${HOME}/usr/bin:${PATH}"

