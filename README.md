Prepare the container with for example:
$ docker build --tag centos-tor:1.0 .

After that you can start the container:
docker run -p 8000:9050 --name centos-tor centos-tor:1.0

The container exposes port 9050, make sure you select a free port to bind to on your local system.
