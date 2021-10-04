docker run -d --rm --name minio   \
   -v /opt/thanos-prometheus/minio:/data   \
   -p 9000:9000 -p 9001:9001\
   -e "MINIO_ACCESS_KEY=minio" -e "MINIO_SECRET_KEY=melovethanos"   \
   quay.io/minio/minio    \
   server /data --console-address=:9001
