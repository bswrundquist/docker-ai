# docker-ai

![](https://travis-ci.org/bswrundquist/docker-ai.svg?branch=master)

```bash
docker build -t bswrundquist/ai:cpu .
docker push bswrundquist/ai:cpu
```

```bash 
docker build -t bswrundquist/ai:gpu --build-arg PYTORCH_IMAGE=anibali/pytorch:cuda-9.2 .
docker push bswrundquist/ai:gpu
```
