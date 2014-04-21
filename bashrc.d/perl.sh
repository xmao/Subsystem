# Instruction for local installation without root permission

# perl Makefile.PL PREFIX=$HOME/usr LIB=$HOME/usr/lib/site-perl
# make; make install

# perl -MCPAN -e shell
# perl -MCPAN -e 'install UI::Dialog'
export PERLLIB=".:$HOME/usr/lib/site-perl:$HOME/usr/lib/site-perl/darwin-thread-multi-2level/"

