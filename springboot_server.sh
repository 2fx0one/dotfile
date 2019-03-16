#/bin/bash
# 该脚本需要和 jar包 和 application.properties 文件放在一起。

SERVER_CWD=$(cd `dirname $0`;pwd)
echo "enter into Directory: $SERVER_CWD"
cd $SERVER_CWD




#配置 JAVA_HOME
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"

#jvm 启动参数 可以为空！
JAVA_JVM_PARAM='-Xmx750m'

#spring boot config file 配置文件
SPRING_BOOT_CONFIG="application.properties"

#jar file jar包
TARGET_JAR="nimwp-service-0.0.1-SNAPSHOT.jar"

# port 端口请修改 关闭进程时以此为准
SERVER_PORT='8888'

if [[ $# -ne 1 ]]; then
    echo "usage: $0 [start/stop/restart]"
    exit -1
fi


CMD="$1"

start() {
    echo "========= start ========="
    PID=$(lsof -i:${SERVER_PORT} | grep 'java' | grep -v 'grep' | awk '{print $2}')
    if [[ "${PID}"x != ""x ]]; then
        echo "PORT:${SERVER_PORT} listen. can not START this Process 无法启动该进程, 端口已监听!"
        exit -2
    fi
    nohup "${JAVA_HOME}/bin/java" "$JAVA_JVM_PARAM" -jar "${TARGET_JAR}" --spring.config.location="${SPRING_BOOT_CONFIG}" --server.port="${SERVER_PORT}" 2>&1 &
    echo "======== START COMPLETE======="
}

stop() {
    echo "========= stop ========="
    PID=$(lsof -i:${SERVER_PORT} | grep 'java' | grep -v 'grep' | awk '{print $2}')
    #echo ${PID}
    if [[ "${PID}"x == ""x ]]; then
        echo "PORT:${SERVER_PORT} not listen 关闭失败，该进程未启动！"
    else
        echo "PORT:${SERVER_PORT} listen  PID=${PID} KILL this Process! 正在关闭该进程！"
        kill -9 ${PID}
    fi
    echo "======== STOP COMPLETE======="
}

restart() {
    echo "========= restart ======"
    stop
    start
    echo "======== restart complete======="
}


case "${CMD}" in
    start )
        start
        ;;
    stop )
        stop
        ;;
    restart )
        restart
        ;;

    * )
        echo "=========cmd not support!!!========="
        ;;
esac
