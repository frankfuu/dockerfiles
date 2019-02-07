h1. Executes a command to a redis server

To build
```
docker build -t redis-tools:v1 .
```

To run
```
docker run \
-e REDIS_HOST="myredis.redis.cache.windows.net" \
-e REDIS_PORT="6379" \
-e REDIS_PASSWORD="My@Passw0rd" \
-e REDIS_COMMAND="info"  \
redis-tools:v1
```