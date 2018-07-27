# docker-helloworld
Hello World in Docker

The project is created to have multiple tags for test docker image in dockerhub.io


## Initial setup
You need put your `app.jar` to build from it.

Alternatively you can download my Hello World `app.jar`:
```sh
wget -o app.tar.gz https://github.com/testingcoding1704/springboot-helloworld/files/2233619/springboot-helloworld-v1.0.jar.tar.gz
tar xvzf app.tar.gz && mv springboot-helloworld-v1.0.jar app.jar
``` 


## Build, Run and Verify
````sh
# Build
docker build -t testingcoding1704/docker-helloworld .
# Run
docker run -it --rm -p8080:8080 testingcoding1704/docker-helloworld
# Verify
curl localhost:8080
````
