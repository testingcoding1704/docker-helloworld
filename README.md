# docker-helloworld
Hello World in Docker

The project is created to have multiple tags for test docker image in dockerhub.io


## Initial setup
You need put your `app.jar` to build from it.

Alternatively you can download my Hello World `app.jar' from [Spring Boot Hello World GitHub project](https://github.com/testingcoding1704/springboot-helloworld):
```sh
wget -O app.tar.gz https://github.com/testingcoding1704/springboot-helloworld/releases/download/v1.1/springboot-helloworld-v1.1.jar.tar.gz
tar xvzf app.tar.gz && mv springboot-helloworld-v1.1.jar app.jar
rm app.tar.gz
``` 


## Build, Run and Verify
````sh
# Build
docker build -t docker-helloworld .
# Run
docker run -it --rm -p8080:8080 docker-helloworld
# Verify
curl localhost:8080
````
