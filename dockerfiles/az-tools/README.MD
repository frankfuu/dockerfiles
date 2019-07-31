To build locally
```
docker build -t frankfuu/az-tools:temp .
```
To run locally
```
docker run -it frankfuu/az-tools:temp
```

To run locally with environment file
```
docker run -it --env-file="$HOME/.creds/az/default.env" frankfuu/az-tools:temp
```

To build and ru locally with environment file
```
docker build -t frankfuu/az-tools:temp . && docker run -it --env-file="$HOME/.creds/az/default.env" frankfuu/az-tools:temp
```
