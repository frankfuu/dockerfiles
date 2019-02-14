docker build -t frankfuu/az-tools:temp .

docker run -it frankfuu/az-tools:temp
docker run -it --env-file=default.env frankfuu/az-tools:temp

docker build -t frankfuu/az-tools:temp . && docker run -it --env-file=default.env frankfuu/az-tools:temp