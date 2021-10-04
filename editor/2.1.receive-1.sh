docker run -d --rm \
-v /opt/thanos-prometheus/receive-data:/receive/data \
-v /opt/thanos-prometheus/editor/minio-bucket.yml:/etc/minio-bucket.yml \
--net=host \
--name receive \
quay.io/thanos/thanos:v0.21.0 \
receive \
--tsdb.path "/receive/data" \
--grpc-address 127.0.0.1:10907 \
--http-address 127.0.0.1:10909 \
--receive.replication-factor=1  \
--label "receive_replica=\"0\"" \
--label "receive_cluster=\"wayne-enterprises\"" \
--remote-write.address 127.0.0.1:10908 \
--objstore.config-file /etc/minio-bucket.yml \
--log.level=info
