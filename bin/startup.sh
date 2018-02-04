# 回退两层
#KEY_PATH=$(dirname "$(dirname "$PWD")")
# 回退一层~
SIP_HOME=$(dirname "$PWD")
export SIP_HOME

JAVA_OPTS='-server -Xmx1024m -Xms1024m -Xmn64m -Xss32m'
export JAVA_OPTS

# for i in ${SERVER_HOME}/conf/* 
# do CLASSPATH=$i:"$CLASSPATH"; 
# done 
#echo $CLASSPATH

# export CLASSPATH=$CLASSPATH:${SERVER_HOME}/conf/
#-Djava.ext.dirs	~
#

java ${JAVA_OPTS} -Djava.ext.dirs=${JAVA_HOME}/jre/lib/ext:${SIP_HOME}/lib -classpath ${SIP_HOME}/conf com.rp.sip.SipBootstrap