# Ruby environment

export GEM_HOME=$HOME/.gem
export PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
export RUBYOPT=rubygems

export RUBYLIB=".:$HOME/usr/lib/site-ruby"
alias ri="ri --format ansi --width 70"
alias irb="irb -r irb/completion"
