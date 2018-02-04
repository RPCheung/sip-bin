# 回退两层
#KEY_PATH=$(dirname "$(dirname "$PWD")")
# 回退一层
SIP_HOME=$(dirname "$PWD")
SIP_OPTS="-Xmx1024m -Xms1024m -Xmn64m -Xss32m"
export SIP_HOME
export SIP_OPTS
echo ${SIP_HOME}

# for i in ${SERVER_HOME}/conf/* 
# do CLASSPATH=$i:"$CLASSPATH"; 
# done 
#echo $CLASSPATH

# export CLASSPATH=$CLASSPATH:${SERVER_HOME}/conf/
#-Djava.ext.dirs
#
JAVA_OPTS="-Xmx128m -Xms128m -Xmn64m -Xss32m"
export JAVA_OPTS
#
java -server ${JAVA_OPTS} -classpath ${SIP_HOME}/lib/startup.jar com.primeton.excute.Demo