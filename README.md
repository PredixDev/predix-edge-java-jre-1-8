# predix-edge-java-jre-1-8
A lightweight Docker Container with the Java JRE, extending Alpine Linux


## Docker Build

```bash
docker build --no-cache -t predixadoption/predix-edge-java-jre-1-8:latest -f Dockerfile .
```

or with proxy

```bash
docker build --no-cache --build-arg https_proxy=$http_proxy --build-arg no_proxy=$no_proxy --build-arg http_proxy=$http_proxy -t predixadoption/predix-edge-java-jre-1-8:latest -f Dockerfile .
```

## Docker Run
 
```bash
docker run predixadoption/predix-edge-java-jre-1-8:latest 
```

[![Analytics](https://predix-beacon.appspot.com/UA-82773213-1/predix-edge-java-jre-1-8/readme?pixel)](https://github.com/PredixDev)
