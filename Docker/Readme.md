## Docker Commands

This explains common Docker commands for managing images and containers.

**1. Check Docker version:**

```
docker version
```

**2. Pull an image:**

```
docker pull ubuntu:latest  # Pulls the latest Ubuntu image
```

**3. Run a container:**

* Basic run:

```
docker run ubuntu:latest echo "Hello, World!"  # Runs the echo command
```

* Detached mode (background):

```
docker run -d --name my-ubuntu-container ubuntu sleep infinity  # Runs in background
```

* Interactive session:

```
docker run -it ubuntu:latest /bin/bash  # Opens a bash shell in the container
```

**4. List containers:**

* Running containers:

```
docker ps
```

* All containers (running and stopped):

```
docker ps -a
```

**5. Run a command inside a container:**

* Simple command:

```
docker exec ubuntu:latest echo "Hello again!"
```

* Interactive shell:

```
docker exec -it my-ubuntu-container /bin/bash
```

**6. Stop a container:**

```
docker stop my-ubuntu-container
```

**7. Restart a container:**

```
docker restart my-ubuntu-container
```

**8. Forcefully terminate a container:**

```
docker kill my-ubuntu-container
```

**9. Create a new image from a container:**

```
docker commit c3f279d17e0a dev/testimage:version3  # Creates an image from container c3f279d17e0a
```

**10. Push an image to a registry (private requires login):**

```
docker push myusername/myrepository:latest
```

**11. Remove stopped containers:**

* Single container:

```
docker rm container1
```

* Multiple containers:

```
docker rm container1 container2 container3
```

**12. Remove images:**

* Single image:

```
docker rmi my_image:tag
```

* Multiple images:

```
docker rmi image1:tag image2:tag image3:tag
```

**13. Login to a registry (private only):**

```
docker login -u myusername -p mypassword
```

**14. Start a stopped container:**

```
docker start my-stopped-container
```

This is a basic overview. Refer to Docker documentation for advanced usage and details.
