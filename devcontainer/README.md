# devcontainer

A simple ubuntu/apache2 development container. 

```bash
docker build -t devcontainer . --no-cache
```

After building you can start the container with the following command:

```bash
NAME=devcontainer; docker run -v /home/student/project/html:/var/www/html/ --name devcontainer --hostname devcontainer -p 80:80 devcontainer
```

If all went well, you can visit the webpage in the browser on 0.0.0.0:80

-v adds the the project folder in the webroot of the container

Cheers! 
