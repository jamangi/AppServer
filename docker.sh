sudo apt-get remove docker docker-engine docker.io
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install docker-ce -y
sudo docker run hello-world
sudo docker pull rubyshadows/heartbeat:v1

sudo groupadd docker
sudo usermod -aG docker $(whoami)
sudo service docker restart

# sudo docker login --username="" --password=""
#restart vm