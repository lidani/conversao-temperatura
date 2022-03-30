### "Dockerizando" a aplicação em nodejs

Para fazer pull da imagem pronta

```
docker pull lidani/conversao-temperatura:latest
```

Ou para buildar a partir do Dockerfile

```
docker build -t lidani/conversao-temperatura:latest .
```

Para rodar o container

```
docker run -it --rm -d -p 8080:8080 lidani/conversao-temperatura:latest
```
