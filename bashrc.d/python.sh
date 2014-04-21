# Python environment
export PYTHONVERSION=$(python -c "import sys; print '.'.join([ str(i) for i in sys.version_info[:2] ])")
export PYTHONPATH=".:$HOME/usr/lib/site-python:$HOME/usr/lib/python$PYTHONVERSION/site-packages:/usr/local/lib/python$PYTHONVERSION/site-packages:$PYTHONPATH"
export PYTHONSTARTUP="$HOME/.pythonrc"

# alias p="ipython-$PYTHONVERSION.py -pylab -nobanner"
alias p="ipython qtconsole --pylab=inline"
