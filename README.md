# project-1-applebite-co

edureka project-1

```sh
docker image build -t php8 .
```

```sh
# volume
docker run \
  -it --rm \
  -p 8080:80 \
  --name php8site \
  -v "$PWD/website":/var/www/html \
  php8
```

```sh
# volume
docker run \
  -d \
  -p 8080:80 \
  --name php8site \
  php8
```
