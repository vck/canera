# create a builder instance
docker buildx create --name my-pi-crosscompiler --platform linux/arm/v7 --bootstrap --use

# build from a Dockerfile in the current folder
docker buildx build --platform linux/arm/v7 --progress tty -t picompiler  --load .
