Please append the following code to .bashrc


mkdir -p $HOME/.bash_completion.d

cat >> $HOME/.bashrc << EOF
if [ -d $HOME/.bashrc.d ]; then
    for f in $HOME/.bashrc.d/*.sh; do
        . $f
    done
fi
EOF
