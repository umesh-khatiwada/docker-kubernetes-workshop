Step 1: Create a Docker Volume
    docker volume create nginx_volume

Step 2: Run a Docker Container with the Volume Attached
    docker run -d --name nginx_container -v nginx_volume:/usr/share/nginx/html nginx

step 3: Verify the Volume is Attached
    docker inspect nginx_container


Detail:

```bash
"Mounts": [
    {
        "Type": "volume",
        "Name": "nginx_volume",
        "Source": "/var/lib/docker/volumes/nginx_volume/_data",
        "Destination": "/usr/share/nginx/html",
        ...
    }
]

```

