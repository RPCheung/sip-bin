# 回退两层
#KEY_PATH=$(dirname "$(dirname "$PWD")")
# 回退一层~
SIP_HOME=$(dirname "$PWD")
export SIP_HOME

CLOSE_PORT='10004'
export CLOSE_PORT;

JAVA_OPTS='-server -Xmx1024m -Xms1024m -Xmn64m -Xss32m'
export JAVA_OPTS

# for i in ${SERVER_HOME}/conf/* 
# do CLASSPATH=$i:"$CLASSPATH"; 
# done 
#echo $CLASSPATH

# export CLASSPATH=$CLASSPATH:${SERVER_HOME}/conf/
#-Djava.ext.dirs	~
#

java ${JAVA_OPTS}  -classpath ${SIP_HOME}/work/sip/lib/script/sip-controller.jar com.rp.sip.SipController