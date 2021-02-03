# Kafak 单机 docker 容器

```
$ docker run --name kafka -p 9092:9092 -p 2181:2181 luofuxiang/kafka-standalone
```

容器启动时会自动启动 Kafka。

为了方便宿主机访问 kafka 容器，配置文件中 `server.properties` 的 `advertised.listeners` 属性设置如下：

```
advertised.listeners=PLAINTEXT://127.0.0.1:9092
```

如果其它 Docker 容器要访问该单机版 Kafka，需要重新配置 `advertised.listeners` 属性，让其返回一个其它容器能够访问到的地址。

同时，因为这个设置的原因，如果宿主机端口到容器的端口映射不是 `9090:9090`，也应该要修改 server.properties 配置文件中的 `advertised.listeners` 属性。

## 镜像构建

```
docker image build -t kafka-standalone:latest -t kafka-standalone:2.13-2.6.0 .
```