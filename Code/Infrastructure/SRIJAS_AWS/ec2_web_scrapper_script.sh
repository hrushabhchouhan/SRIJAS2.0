sudo apt-get install -y zip unzip 
sudo apt install -y python3
sudo apt install -y unzip libnss3 python3-pip 
sudo apt install python3-virtualenv -y

cd /tmp
sudo wget https://chromedriver.storage.googleapis.com/94.0.4606.61/chromedriver_linux64.zip
sudo unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
chromedriver --version
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb 
google-chrome-stable --version
cd /home/ubuntu/project/SRIJAS/Code