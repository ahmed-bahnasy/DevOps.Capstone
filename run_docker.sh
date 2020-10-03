#build docker images 
sudo docker build --tag=app .

#list docker images
sudo docker image ls

#Run Docker app 
sudo docker run -it app bash
