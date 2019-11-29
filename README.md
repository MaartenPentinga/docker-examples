# docker-examples

Dockerfile examples will be added here for future classes.

After cloning the repo, you can enter the directory and build your first image. 

```bash
docker build -t alfa-voorbeeld . --no-cache
```

After building you can start the container with the following command:

```bash
NAME=alfa-voorbeeld; docker run -it --rm --name ${NAME} --hostname ${NAME} -p 8000:80 -p 2222:22 ${NAME}
```

If all went well, you can visit the webpage in the browser on 0.0.0.0:8000

Cheers 
