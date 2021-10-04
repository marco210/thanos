docker run -d --rm    \
	--net=host     --name query     quay.io/thanos/thanos:v0.21.0     query    \
	--http-address "0.0.0.0:39090"  \
	 --store "127.0.0.1:19191"  --store "127.0.0.1:10907"
