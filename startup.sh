$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &
# sleep 15s to make sure zookeeper is started.
sleep 15s
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties &