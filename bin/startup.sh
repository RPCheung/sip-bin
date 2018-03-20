# 回退两层
#KEY_PATH=$(dirname "$(dirname "$PWD")")
# 回退一层~

SIP_HOME=$(dirname "$PWD")
export SIP_HOME

CLOSE_PORT='10004'
export CLOSE_PORT;

# paranoid、advanced、disabled
JAVA_OPTS='-server -Xmx1024m -Xms1024m -Xmn64m -Xss32m -Dio.netty.leakDetectionLevel=paranoid'
export JAVA_OPTS

echo "#### 请检查"${CLOSE_PORT}"端口和SIP服务端口是否被占用 若要检查!!!   请按 ctrl + c 退出.  "
read -p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 按任意键将启动SIP......"

# for i in ${SERVER_HOME}/conf/* 
# do CLASSPATH=$i:"$CLASSPATH"; 
# done 
#echo $CLASSPATH

# export CLASSPATH=$CLASSPATH:${SERVER_HOME}/conf/
#-Djava.ext.dirs	~
#
#${JAVA_HOME}/bin/jar 
${JAVA_HOME}/jre/bin/java ${JAVA_OPTS} -Djava.ext.dirs=${JAVA_HOME}/jre/lib/ext:${SIP_HOME}/lib -classpath ${SIP_HOME}/conf com.rp.sip.SipBootstrap