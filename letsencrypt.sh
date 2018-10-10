sudo add-apt-repository ppa:certbot/certbot
#manual select enter
sudo apt-get update -y
sudo apt-get install python-certbot-nginx -y
sudo certbot --nginx -d dhv3.pw -d www.dhv3.pw -d dockerhearts.online -d www.dockerhearts.online
# manual select 