# SlideWiki Platform Development Server
This is a Docker container for developers that bundles everything that is needed to run the SlideWiki Platform. The actual code of the app is mounted into a volume from the host system.

## Usage
The easiest way to run the development container is via the provided shell script:
```
./start-server /absolute/path/to/slidewiki-platform
```

### Starting/Stopping the container
The development container is named `swdev`. You can use the usual `docker` commands to control the container:
```
docker stop swdev
docker restart swdev
```

### The `node_modules` directory
When the container is first initialized `npm` is started to install the dependencies. This creates the `node_modules` directory inside your SlideWiki project directory. Because the container is run by the Docker daemon the `node_modules` directory is owned by `root`. You need to use `sudo` to remove this directory. 

## Windows issue
For the time being this image works only under Linux and MacOS. This is due to a problem with `npm` trying to link directories within `node_modules`. Since Windows doesn't support file system links this operation fails and the dependencies are not correctly initialized (https://slidewiki.atlassian.net/browse/SWIK-242).
