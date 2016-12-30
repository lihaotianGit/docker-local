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

sh /alibaba-rocketmq/bin/play.sh;
while sleep 10;
do echo RocketMQ, GO ROCK;
done
