# Use AWS-CLI

To build
```
docker build -t frankfuu/aws-tools:temp .
```

To push
```
docker push -t frankfuu/aws-tools:tag
```

To run
```
docker run `
    -env AWS_ACCESS_KEY_ID=mykey `
    -env AWS_SECRET_ACCESS_KEY=mysecret `
    -env AWS_DEFAULT_REGION=myregion `
    frankfuu/aws-tools:v1 `
    aws cloudfront get-distribution-config --id myid    
```