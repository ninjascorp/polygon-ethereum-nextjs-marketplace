## Local IPFS docker configuration

To configure the local [IPFS](https://en.wikipedia.org/wiki/InterPlanetary_File_System) environment, follow these steps:

1. Go to the docker folder from the project root:

```sh
cd {project_path}/docker
```

2. Start the docker container with docker-compose:

```sh
docker-compose up -d
```

3. Configure IPFS service CORS:

```sh
docker exec -it ninja-ipfs ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
docker exec -it ninja-ipfs ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'
docker restart ninja-ipfs
```

or

```sh
sh ipfs-cors.sh
```
