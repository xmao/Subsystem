# Java environment
# if [ $OS = "Darwin" ]; then
# 	export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
# 	export JAVACMD="$JAVA_HOME/bin/java"
# fi
# export JAVA_HOME="/usr/lib/jvm/java"

# Setting Java CLASSPATH
if [ -d ~/usr/lib/site-java ]; then
    if [ -z $CLASSPATH ]; then
	    export CLASSPATH=".:$HOME/usr/lib/site-java/:$HOME/usr/lib/site-java/*"
    else
	    export CLASSPATH=".:$HOME/usr/lib/site-java/:$HOME/usr/lib/site-java/*:$CLASSPATH"
    fi
fi

# Setting Swing Look and Feel
# java -Dswing.defaultlaf=com.sun.java.swing.plaf.motif.MotifLookAndFeel
# java -Dswing.defaultlaf=com.sun.java.swing.plaf.motif.MotifLookAndFeel
# java -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
# java -Dswing.defaultlaf=com.sun.java.swing.plaf.windows.WindowsLookAndFeel
# java -Dswing.defaultlaf=com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel

# Use Mac Menu bar
# -Dcom.apple.macos.useScreenMenuBar=true
