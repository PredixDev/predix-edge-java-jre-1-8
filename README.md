# predix-edge-java-jre-1-8
Just a JRE extending Alpine Linux to keep it small


## Docker Build

```bash
docker build --no-cache -t /predix-edge-java-jre-1-8:latest -f Dockerfile .
```

or with proxy

```bash
docker build --no-cache --build-arg https_proxy=$http_proxy --build-arg no_proxy=$no_proxy --build-arg http_proxy=$http_proxy -t /predix-edge-java-jre-1-8:latest -f Dockerfile .
```

## Docker Run

```bash
docker run dtr.predix.io/predix-edge-java-jre-1-8:latest ```
[![Analytics](https://predix-beacon.appspot.com/UA-82773213-1/predix-edge-java-jre-1-8/readme?pixel)](https://github.com/PredixDev)
