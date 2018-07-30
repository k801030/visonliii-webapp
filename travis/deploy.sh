# docker build
docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker build -t visonliii/webapp .

# docker push
docker push visonliii/webapp

# run server 
make
sleep 10

# run integration test
make integration-test