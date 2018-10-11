使用命令启动clichouse

docker run -d --name clickhouse-server --ulimit nofile=262144:262144 -v /root/clickhouse/users.xml:/etc/clickhouse-server/users.xml -v /root/clickhouse/config.xml:/etc/clickhouse-server/config.xml -p 8123:8123 -p 9000:9000 -p 9009:9009 docker-hub.cloud.top/vdfw/clickhouse-server


创建数据库表
create database netflow

CREATE TABLE netflow.samples
(
    date Date,
    time DateTime,
    device String,
    src String,
    dst String,
    srcASN UInt64,
    dstASN UInt64,
    proto UInt8
) ENGINE = MergeTree( date, (src, time), 8192);