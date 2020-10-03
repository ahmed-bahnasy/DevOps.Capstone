#build docker images 
docker build --tag=app .

#list docker images
docker image ls

#Run Docker app 
docker run -it app bash
