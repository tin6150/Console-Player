

Trying to use this repo to troubleshoot audio in container env

see also:

https://leimao.github.io/blog/Docker-Container-Audio/

https://joonas.fi/2020/12/audio-in-docker-containers-linux-audio-subsystems-spotifyd/#the-solution


# docker insist container be lower case only
# the Repo is Console-Player, but this pull works:
docker pull ghcr.io/tin6150/console-player:master

docker tag  ghcr.io/tin6150/console-player:master registry.greta.local:443/console-player:v1
docker image push                                 registry.greta.local:443/console-player:v1

docker tag  ghcr.io/tin6150/console-player:master registry.gretadev:443/console-player:v1
docker image push                                 registry.gretadev:443/console-player:v1
### argg... certs....

docker run -it --rm --device /dev/snd -v $(pwd):/mnt registry.gretadev:443/console-player:v1
