# SKY Docker Image

Welcome to the world of containers and virtualization!!! \
This docker image defines the environment for Computer Science Sky Lab for VisionInDream Computing

## Pull the image from docker hub [https://hub.docker.com/r/visionindream/sky] 

* In your terminal 
```bash
$ docker pull visionindream/sky
```

### Documentation Reference [https://docs.docker.com/engine/reference/commandline/run/]


## Building it own your own system

### Building from scratch with random generated name

* `docker build .`

For more detailed output, use:

* `docker build . --progress=plan`

# Instructions Manual for `Dockerfile`
* Build a Docker Image
```bash
$ docker build -t sky:cs .
```
* Run Docker Image Call sky:cs and Name it as os
```bash
$ docker run --name os -dit sky:cs # or

$ docker  run  -v `pwd`:`pwd` -w `pwd` -i -t  ubuntu pwd
$ docker run -v ~/:/home --name os -it sky:cs
$ docker run -v /doesnt/exist:/foo -w /foo -i -t ubuntu bash
# The -v flag mounts the current working directory into the container. The -w lets the command being executed inside the current working directory, by changing into the directory to the value returned by pwd. So this combination executes the command using the container, but inside the current working directory.



$ docker run -p 127.0.0.1:80:8080/tcp ubuntu bash # This binds port 8080 of the container to TCP port 80 on 127.0.0.1 of the host machine

PS C:\> docker run -v c:\foo:d: microsoft/nanoserver cmd /s /c type d:\somefile.txt
Contents of file
```
* Set working directory (-w, --workdir)

* docker  run -w /path/to/dir/ -i -t  ubuntu pwd
* The -w lets the command being executed inside directory given, here /path/to/dir/. If the path does not exist it is created inside the container.


* Log into the running Docker container
```bash
$ docker exec -it os bash

* Stop a container 
```bash
$ docker stop  os 

```
* Starting a Docker container
```bash
$ docker start  os 

* Start the gcc Docker Image
```bash
$ docker start -ai sky
```
* Removing Docker container
```bash
$ docker rm  os

* remove all docker
```bash

* Removing  a Docker image
```bash
$ docker rmi sky:cs

$ docker rm -f $(docker ps -a -q)
```
* remove all docker images
```bash
$ docker rmi -f $(docker images -a -q)
```

* ### Note:: You can use any name you like: eg docker build -t love:latest .
* ### For more details read the documentation.

# If new to Docker Learn and practice the note below before reading the documentation

# Container Toolchain Setup

## 1. Installing  Docker on your platform

* Refer to the link to install for your prefered Operating System <https://docs.docker.com/desktop/install/mac-install/>

## 2. Setting Up the Toolchain
* ## A. Configuring Docker for Ease of Use

* ### Run Docker commands without sudo
This Apply to Linux base machines but `use sudo infront of the command if you love sudo a lot`

* Add the docker group if it doesn't already exist

```bash
$ sudo groupadd docker
```

* Add the connected user $USER to the docker group
* Optionally change the username to match your preferred user.

```bash
$ sudo gpasswd -a $USER docker
```

* IMPORTANT: Log out and log back in so that your group membership is re-evaluated.

* Restart the docker daemon

```bash
$ sudo service docker restart
```

* If you are on Ubuntu 14.04-15.10, use docker.io instead:

```bash
$ sudo service docker.io restart
```

* ### Still Geeting Permission Denied

```bash
$ sudo chmod 666 /var/run/docker.sock
```

* ## B. Running Docker using Ubuntu Image
* pulling Ubuntu Xenial image
```bash
$ docker image pull ubuntu:xenial
```
* list of current containers using

```bash
$ docker ps -a
```

* only see the running containers

```bash
$ docker ps
```

* last container that was run

```bash
$ docker ps -l
```

* Naming a container

```bash
$ docker container run  --net host -v /tmp/.X11-unix:/tmp/.X11-unix -dit --name free ubuntu:xenial
```

*This would create a new container free

* Starting a start or stopped free

```bash
$ docker start emulator
$ docker start emulator
```
* Launch the container
```bash
$ docker exec -it free bash
```
* ## C. Installing Packages in your new container
* Refresh your package manager
```bash
$ pwd
$ cd
$ pwd
$ apt update
```

* Installing  basic utilities like `make, cmake, git, vim`
```bash
$ apt install make cmake git vim 
```
* Install Depencies
```bash
$ apt install build-essential libsdl2-ttf-dev libsdl2-mixer-dev libsdl2-image-dev libsdl2-gfx-dev libsdl2-dev
```

* Additional Requirement
```bash
$ apt install clang-4.0 clang-tidy-4.0
```
* Generating SSH
```bash
ssh-keygen -t ed25519 -C "your_email@example.com" # use GitHub Email
```
* Copy the public key into your Github and Test it
* Refer here for more <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh>

```bash
$ cat .ssh/id_ed25519.pub 
$ ssh -T git@github.com
```
* Run this on your host machine
```bash
$ xhost +local:
```
* Run this on your container
```bash
$ export DISPLAY=:0
```
* clone the Project
```bash
$ git@github.com:GODINME/FreeRTOS-Emulator.git
```
* follow the doc to know to compile and run.