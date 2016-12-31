#!/bin/sh

# set java environment variables
# PROFILE=/etc/profile

# echo "export JAVA_HOME=/opt/jdk/jdk1.8.0_20/bin/java" >> $PROFILE
# echo "CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar" >> $PROFILE
# echo "export ROCKETMQ_HOME=/opt/alibaba-rocketmq" >> $PROFILE
# echo "PATH=\$JAVA_HOME/bin:\$ROCKETMQ_HOME/bin:\$PATH" >> $PROFILE
# echo "export CLASSPATH" >> $PROFILE
# echo "export PATH" >> $PROFILE

# source PROFILE

# ln -s /opt/jdk/jdk1.8.0_20/bin/java /opt/taobao/java

# startup mqnamesrv and mqbroker
# sh /opt/alibaba-rocketmq/bin/play.sh

nohup sh /alibaba-rocketmq/bin/mqnamesrv > nameserv.log 2>&1 &
nohup sh /alibaba-rocketmq/bin/mqbroker -n 127.0.0.1:9876 -c /alibaba-rocketmq/bin/conf.properties > broker.log 2>&1 &

echo 'nameserv log:'
sleep 1;
cat nameserv.log

echo 'broker log:'
sleep 1;
cat broker.log

# sh /alibaba-rocketmq/bin/play.sh;
while sleep 10;
do echo RocketMQ, GO ROCK;
done
