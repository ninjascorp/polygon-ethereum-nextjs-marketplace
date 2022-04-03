docker exec -it ninja-ipfs ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
docker exec -it ninja-ipfs ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'
docker restart ninja-ipfs