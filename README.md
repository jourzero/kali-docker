# README for kali-docker

Simple Dockerfile for running a _smaller_ Kali Linux inside of a Docker container.

## Usage Information

- To add Kali meta-packages, visit the list [here](https://tools.kali.org/kali-metapackages) and then add entries to the [Dockerfile](./Dockerfile).
- To add Kali tools, visit the list [here](https://tools.kali.org/tools-listing) and then add entries to the [Dockerfile](./Dockerfile).
- To build the Kali image, run `docker-compose build`.
- To create and run the Kali container, run `./kali-bash.sh` or `docker-compose run --name kali-docker kali-docker`.

