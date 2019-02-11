# Use AWS-CLI

To build
```
docker build -t frankfuu/aws-tools:temp .
```

To push
```
docker push -t frankfuu/aws-tools:tag
```

To run and get the distribution config for a cloudfront distribution
```
docker run \
    -e AWS_ACCESS_KEY_ID=mykeyid \
    -e AWS_SECRET_ACCESS_KEY=mysecret \
    -e AWS_DEFAULT_REGION=myregion \
    --name at1 --rm frankfuu/aws-tools:latest \
    aws cloudfront get-distribution-config --id E2VZ0IASAMPLE
```