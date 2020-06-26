# az-redis-cli

redis-cli + stunnel for easy connectivity to [Azure Cache for Redis](https://docs.microsoft.com/en-us/azure/azure-cache-for-redis/)

# usage

docker run \
    -e REDIS_HOST="myredis.redis.cache.windows.net" \
    -e REDIS_PORT="6380" \
    -e REDIS_PASSWORD="My@Passw0rd" \
    frankfuu/az-redis-tools info