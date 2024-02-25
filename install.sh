echo "[Node] Installing nvm and node latest ..." 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
nvm install node
npm i -g yarn

echo "[Docker] Installing docker ..."
sudo apt update
sudo apt install docker.io -y
sudo usermod -aG docker ${USER}
sudo chmod 666 /var/run/docker.sock

echo "[Git] Installing git ..."
sudo apt install git

echo "[IDE] Installing Visual Studio Code ..."
sudo snap install code --classic

echo "[Database Manager] Installing Dbeaver ..."
sudo snap install dbeaver-ce

echo "[Postman] Installing postman ..."
sudo snap install postman


