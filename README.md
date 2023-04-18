# project-1-applebite-co

Build a docker image on push to hit the master branch, and deploy the site to the test server.

edureka project-1

```sh
docker image build -t applebite .
docker login
docker push applebite
```

```sh
# volume
docker run \
  -it --rm \
  -p 8080:80 \
  --name applebitesite \
  -v "$PWD/website":/var/www/html \
  php8
```

```sh
# volume
docker run \
  -d \
  -p 8080:80 \
  --name applebitesite \
  applebite
```

https://github.dev/Vineethaveerapu/project-1-applebite-co