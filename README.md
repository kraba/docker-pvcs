
# Docker for Serena Dimension 14.3

## Idea & Goal
The idea & goal is to substitute a phisycal server, that run a single instance of Serena Dimension 14.3 agent, with a docker container.

### Disclaimer
[Serena Dimension](https://www.microfocus.com/serena/?utm_medium=301&utm_source=serena.com/) is not a free software, we've licensed products and we can't - of course - distribute the installer or a full installation archive. 

### Few words about...

I perform a fake installation of agent, I've make a tar file of the working installation (yes..it works!) and copied to docker container. 
The default path of installation is at /opt/serena/dimensions/14.3/ .
I writed a perfect replica of necessary user/group and env/ports settings (for Linux).

In our working environment the users log in via ssh and download from PVCS/Dimension server the software patches and build it before distributing & installing on production servers. The volume "data" is the rw filesystem where users can store the patches, access is granted by pvcs user (only this).

### Setup

```
cd pvcs-docker
docker-compose build
docker-compose start -d 
docker exec -ti serena /bin/bash
```

### Acknowledgments

It's a simple (...and maybe with some bugs) docker container...fell free to send me a mail with your opinions or modification!

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
