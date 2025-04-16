# Installation of Docker 

  In Linux 

  ``` bash
    sudo apt get update
    sudo apt install docker.io 
    docker --version
  ```

    In macOS and Windows 

    - Download and install Docker Desktop from the [official Docker website](https://www.docker.com/products/docker-desktop).
    - Follow the installation instructions provided for your operating system.
    - After installation, verify the installation by running the following command in your terminal or command prompt:

      ```bash
      docker --version
      ```

# Basics of Dockerfile

A Dockerfile is a script with a set of instructions to build a Docker image. Below are the key instructions:

- **FROM**: Specifies the base image to use (e.g., `FROM ubuntu:latest`).

- **RUN**: Executes commands in the image during the build process (e.g., `RUN apt-get update`).

- **CMD**: Specifies the default command to run when a container starts (e.g., `CMD ["echo", "Hello World"]`).

- **COPY**: Copies files from the host to the image (e.g., `COPY . /app`).

- **WORKDIR**: Sets the working directory inside the container (e.g., `WORKDIR /app`).

- **EXPOSE**: Documents the port on which the container listens (e.g., `EXPOSE 8080`).

# Building and Running the Docker Image

To build and run a Docker image, follow these steps:

1. **Create a Dockerfile**: Ensure you have a `Dockerfile` in your project directory with the necessary instructions.

2. **Build the Docker Image**: Use the `docker build` command to create an image from the `Dockerfile`. Replace `<image-name>` with your desired image name.

  ```bash
  docker build -t <image-name> .
  ```

3. **Run the Docker Container**: Use the `docker run` command to start a container from the built image. Replace `<image-name>` with the name of your image.

  ```bash
  docker run <image-name>
  ```

4. **Run with Port Mapping** (if applicable): If your application requires specific ports, map them using the `-p` flag. Replace `<host-port>` and `<container-port>` with the appropriate port numbers.

  ```bash
  docker run -p <host-port>:<container-port> <image-name>
  ```

5. **Verify the Running Container**: Use the `docker ps` command to list all running containers.

  ```bash
  docker ps
  ```

6. **Stop the Container**: To stop a running container, use the `docker stop` command followed by the container ID or name.

  ```bash
  docker stop <container-id>
  ```



