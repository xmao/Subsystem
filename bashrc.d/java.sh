# Java environment
# export JAVA_HOME="/usr/lib/jvm/java"

# Setting Java CLASSPATH
if [ -d ~/usr/lib/site-java ]; then
	export CLASSPATH=".:$HOME/usr/lib/site-java/*:$CLASSPATH"
fi


