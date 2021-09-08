# create network
# docker network create diva-cora


# start database
docker run --name diva-cora-postgresql-diva -d --restart always \
  --network=diva-cora \
  --net-alias=postgres-diva \
  -p 54321:5432 \
  -e POSTGRES_DB=diva \
  -e POSTGRES_USER=diva \
  -e POSTGRES_PASSWORD=diva \
  -v diva-cora-postgres-diva-data:/var/lib/postgresql \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  -v /dev/urandom:/dev/random \
  diva-cora-docker-postgresql:9.6

