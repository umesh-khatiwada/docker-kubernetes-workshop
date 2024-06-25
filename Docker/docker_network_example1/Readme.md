Docke network help

1. Docker list the network
   example : docker network ls

example:
step1: docker network create my_network
Container 1
step2: docker run -dit --name container1 --network my_network alpine sh
Container 2
step3: docker run -dit --name container2 --network my_network alpine sh

PING TEST
docker exec -it container1 sh

ping container2


