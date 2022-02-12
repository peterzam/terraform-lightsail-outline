sudo curl https://get.docker.com/ | sh
wget https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh
sudo bash install_server.sh --keys-port=${keys_port} --api-port=${api_port}