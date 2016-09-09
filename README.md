docker-picolisp
===============

64-bits Picolisp, from an ubuntu image. Vim is provided.

Usage
-----

Clone the repo:

```bash
git clone https://github.com/ggiraud/docker-picolisp
```

Build:

```bash
docker build -t docker-picolisp .
```

Or pull from hub:

```bash
docker pull ggiraud/docker-picolisp
```

Running your picolisp docker image
-------------------------------

Port 8080 is exposed, volume /root/src is created and pil command executed from it.

Create the container:

```bash
docker run -it --rm -p 8080:8080 -v /my/scripts/path/on/host:/root/src ggiraud/docker-picolisp
```

The dockerfile has pil command as entrypoint, so you can add any option you need:

```bash
docker run -it --rm -p 8080:8080  -v /my/scripts/path/on/host:/root/src ggiraud/docker-picolisp script.l -main +
```

Make an alias
-------------

A convenient way to use this image on GNU-Linux or OS X is to create an alias in your .bashrc:

```bash
echo "alias pil='docker run -it --rm -p 8080:8080  -v /my/scripts/path/on/host:/root/src ggiraud/docker-picolisp'" >> ~/.bashrc
```

You can then use the image as a command:

```bash
pil script.l -main +
```
