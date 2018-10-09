sudo apt-get update -y
sudo apt-get install python3-pip python3-dev nginx -y
sudo pip3 install virtualenv
mkdir ~/myproject
cd ~/myproject
wget https://raw.githubusercontent.com/jamangi/AppServer/master/myproject.py
virtualenv myprojectenv
source myprojectenv/bin/activate

pip install gunicorn flask