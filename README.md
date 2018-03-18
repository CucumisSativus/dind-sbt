# dind-sbt
Use SBT in Docker to create a Docker image


This provides the Docker-in-docker bindings to create docker images from an sbt build file.

If you are using the [sbt-docker](https://github.com/marcuslonnberg/sbt-docker) plugin, you can build and publish the docker image using this container.


Build sbt project with a docker host accessible:
```sh
docker run --rm -v/path/to/project:/code -eDOCKER_HOST=tcp://docker.for.mac.host.internal:2375 dind-sbt sbt docker
```
```sh
docker run --rm -v/path/to/project:/code -eDOCKER_HOST=tcp://docker.for.win.localhost:2375 dind-sbt sbt docker
```

or mount the volume `docker run --rm -v/path/to/project:/code -v /var/run/docker.sock:/var/run/docker.sock dind-sbt sbt docker`
