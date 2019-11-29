Small example of an alpine container. 

```bash
docker build -t alpinenginx . --no-cache
```

```bash
NAME=alpinenginx; docker run -it --rm --name ${NAME} --hostname ${NAME} -p 8000:80 ${NAME}
```
