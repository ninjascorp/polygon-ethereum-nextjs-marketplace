## Local IPFS docker configuration

To configure the local [IPFS](https://en.wikipedia.org/wiki/InterPlanetary_File_System) environment follow these steps:

1. Start docker container with docker-compose:

```sh
docker-compose up -d
```

2. Configure IPFS service CORS:

```sh
docker exec -it ninja-ipfs ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
docker exec -it ninja-ipfs ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'
docker restart ninja-ipfs
```

or

```sh
sh ipfs-cors.sh
```
