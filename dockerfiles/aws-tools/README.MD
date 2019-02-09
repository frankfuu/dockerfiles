# Use AWS-CLI

To build
```
docker build -t flankieflew/aws-tools:v1 .
```

To push
```
docker push -t flankieflew/aws-tools:v1
```

To run
```
docker run `
    -env AWS_ACCESS_KEY_ID=mykey `
    -env AWS_SECRET_ACCESS_KEY=mysecret `
    -env AWS_DEFAULT_REGION=myregion `
    flankieflew/aws-tools:v1 `
    aws cloudfront get-distribution-config --id myid    
```