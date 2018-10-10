sudo apt-get update -y
sudo apt-get install python3-pip python3-dev nginx -y
#sudo pip3 install virtualenv
mkdir ~/myproject
cd ~/myproject
wget --no-cache -O myproject.py https://raw.githubusercontent.com/jamangi/AppServer/master/myproject.py

# virtualenv myprojectenv
# source myprojectenv/bin/activate
sudo pip3 install gunicorn flask
# sudo python3 myproject.py
# gunicorn --bind 0.0.0.0:5000 myproject:app

sudo wget --no-cache -O /etc/systemd/system/myproject.service https://raw.githubusercontent.com/jamangi/AppServer/master/myproject.service
sudo systemctl start myproject
sudo systemctl enable myproject

sudo wget --no-cache -O /etc/nginx/sites-available/default https://raw.githubusercontent.com/jamangi/AppServer/master/myproject.ngx
sudo ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled

sudo systemctl restart nginx