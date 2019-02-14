# Use AWS-CLI

To build
```
docker build -t frankfuu/aws-tools:temp .
```

To push
```
docker push -t frankfuu/aws-tools:tag
```

To run a command e.g.  `get-distribution-config` on `cloudfront`
```
docker run \
    -e AWS_ACCESS_KEY_ID=mykeyid \
    -e AWS_SECRET_ACCESS_KEY=mysecret \
    -e AWS_DEFAULT_REGION=myregion \
    --rm frankfuu/aws-tools:temp \
    aws cloudfront get-distribution-config --id E2VZ0IASAMPLE
```

To run with an env file with a command
```
docker run --env-file="$HOME/.creds/aws/default.env" \ 
frankfuu/aws-tools:temp aws cloudfront get-distribution-config --id E2VZ0IASAMPLE
```

To run interactively
```
docker run --env-file="$HOME/.creds/aws/default.env" -it frankfuu/aws-tools:temp
```