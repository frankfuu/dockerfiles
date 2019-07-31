docker build --tag bats/bats:temp .

docker run -it -v "$(pwd)/tests:/testsDir" bats/bats:temp /testsDir