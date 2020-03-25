# WebDAV Docker

Simple webdav docker image using Apache2

## Usage
Build Image
```sh
docker build --tag {IMAGE_NAME} {HOST_PATH_TO_REPOSITORY}
```
Run Container
```sh
docker run --name={CONTAINER_NAME} -p {LOCAL_PORT}:80 -d {IMAGE_NAME}
```
Copy WebDAV contents (Container must be running)
```sh
docker cp {CONTAINER_NAME}:/var/www/webdav/ {HOST_COPY_FOLDER}
```

