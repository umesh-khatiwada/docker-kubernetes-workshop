1. docker --version [OPTIONS] 
2. docker pull [OPTIONS] NAME[: TAG|@DIGEST] 
    example:  
    docker pull dockerimage 

3 docker run [OPTIONS] IMAGE [COMMAND] [ARG...] 
    example: 
    docker run ubuntu:latest echo "Hello, World!"   
    docker run ubuntu:latest /bin/bash -c 'echo $0 $1 $2' arg0 arg1 arg2
    docker run -d --name my-ubuntu-container ubuntu sleep infinity

4. docker ps [OPTIONS]
    example:
    docker ps 
    docker ps -a

5. docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
    example:
    docker exec -it ubuntu:latest echo "Hello, World!"
    docker exec my-ubuntu-container ls -l /etc
    docker exec -it my-ubuntu-container /bin/bash


6. docker stop [OPTIONS] CONTAINER [CONTAINER...]
    docker stop  my-ubuntu-container

7. docker restart my_container 
   docker restart my-ubuntu-container

8. docker kill [OPTIONS] CONTAINER [CONTAINER...]
   example 
   docker kill my-ubuntu-container

9. docker kill [OPTIONS] CONTAINER [CONTAINER...]
   docker kill my_container

10. docker commit [OPTIONS] CONTAINER [REPOSITORY[:TAG]
    details: Docker commit command allows users to take an existing running container and save its current state as an image 
    docker commit c3f279d17e0a dev/testimage:version3.

11. docker push
    syntax: docker push [OPTIONS] NAME[: TAG] 
    example:
            docker push myusername/myrepository:latest 

11. docker rm 
    syntax: docker rm [container1]
            docker rm container1 container2 container3 

12. docker rmi
    docker rmi [OPTIONS] IMAGE
    exmaple : docker rmi my_image:tag 
              docker rmi image1:tag image2:tag image3:tag 

14. docker login
    Command: docker login -u myusername -p mypassword 

15. docker start
    docker start [OPTIONS] CONTAINER [CONTAINER...] 
    
