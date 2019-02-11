# Executes a command to a redis server

To build
```
docker build -t redis-tools:temp .
```

To push
```
docker push -t frankfuu/redis-tools:tag
```

To run
```
docker run \
-e REDIS_HOST="myredis.redis.cache.windows.net" \
-e REDIS_PORT="6379" \
-e REDIS_PASSWORD="My@Passw0rd" \
frankfuu/redis-tools:temp info
```