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
echo '{"server_name" : "${aws_db_instance.default.address}", "user_name":"${var.db_user_name}", "password": "${var.db_password}", "db_name": "${aws_db_instance.default.name}", "linked_in_pwd":"SRIJASGMAILPWD"}' > Scrapper/parameters.json
virtualenv -q -p /usr/bin/python3.8 $1
source $1/bin/activate
$1/bin/pip install -r /home/ubuntu/project/SRIJAS/requirements.txt
echo "30 1 * * * python3 /home/ubuntu/project/SRIJAS/Code/Scrapper/Scrapper.py" | crontab -
crontab -l | { cat; echo "30 1 * * * python3 /home/ubuntu/project/SRIJAS/Code/Scrapper/scrapper_glassdoor.py"; } | crontab -