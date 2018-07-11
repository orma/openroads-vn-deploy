#roughly from https://linoxide.com/linux-how-to/install-docker-ubuntu/

apt update && apt upgrade

apt install git software-properties-common ca-certificates apt-transport-https

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
 "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) \
 stable"

apt update

apt install docker-ce

systemctl start docker
systemctl enable docker

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

git clone https://github.com/orma/openroads-vn-deploy

cd openroads-vn-deploy/

cp .env.example .env

docker-compose build && docker-compose up


