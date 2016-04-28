# SlideWiki Platform Development Container
This is a Docker container for developers that bundles everything that is needed to run the SlideWiki Platform. The actual code of the app is mounted into the container for the host system.

## Usage
The easiest way to run the development container is via the provided shell script:
```
./start-server /absolute/path/to/slidewiki-platform
```
Note: When the container was started before you can ommit the path because the project directory is already mounted inside the container.

### Starting/Stopping the container
The development container is named `swdev`. You can use the usual `docker` commands to control the container:
```
docker stop swdev
docker restatr swdev
```

### The `node_modules` directory
When the container is first initialized `npm` is started to install the dependencies. This creates the `node_modules` directory inside your SlideWiki project directory. Because the container is run by the Docker daemon the `node_modules` directory is owned by `root`. You need to use `sduo` to remove this directory. 
