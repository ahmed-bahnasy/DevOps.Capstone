#List all containers (only IDs)
sudo docker ps -aq

#Stop all running containers
sudo docker stop $(docker ps -aq)

#Remove all containers
sudo docker rm $(docker ps -aq) 

#Remove all images
sudo docker rmi $(docker images -q) 

#list all docker images 
sudo docker image ls
