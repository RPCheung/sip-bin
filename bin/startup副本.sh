# 回退两层
#KEY_PATH=$(dirname "$(dirname "$PWD")")
# 回退一层
SIP_HOME=$(dirname "$PWD")

export SIP_HOME
echo ${SIP_HOME}

# for i in ${SERVER_HOME}/conf/* 
# do CLASSPATH=$i:"$CLASSPATH"; 
# done 
#echo $CLASSPATH

# export CLASSPATH=$CLASSPATH:${SERVER_HOME}/conf/
#-Djava.ext.dirs
#

java -server -Xmx1024m -Xms1024m -Xmn64m -Xss32m -classpath ${SIP_HOME}/lib/startup.jar com.primeton.excute.Demo