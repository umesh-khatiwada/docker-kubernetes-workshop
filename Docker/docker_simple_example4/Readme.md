docker build -t nodejs-docker-sample .
docker run -d -p 3001:3000 --name nodejs-container nodejs-docker-sample
docker run -d -p 3000:3000 --name nodejs-container nodejs-docker-sample
Docker tag:
    docker tag nodejs-docker-sample umesh1212/test-docker:latest
Docker push:
    docker push umesh1212/test-docker:latest