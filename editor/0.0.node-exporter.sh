docker run -d -p 9100:9100 --net=host --rm -u root prom/node-exporter \
--path.rootfs=/hostfs
