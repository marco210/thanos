docker run -d  --rm   \
	--net=host  \
	--name store-gateway \
	-v /opt/thanos-prometheus/editor/minio-bucket.yml:/etc/thanos/minio-bucket.yml  \
	quay.io/thanos/thanos:v0.21.0   store --objstore.config-file /etc/thanos/minio-bucket.yml     \
	--http-address 0.0.0.0:19091     \
	--grpc-address 0.0.0.0:19191
