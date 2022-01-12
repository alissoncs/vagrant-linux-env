sudo apt update --fix-missing
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y


#docker
sudo apt update -y --fix-missing

sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo apt-get update
sudo apt-get install docker docker-compose -y 
sudo usermod -aG docker ${USER}

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install v10
npm install -g npx gulp http-server pm2 yarn

nvm install v14
nvm use v14
npm install -g npx gulp http-server pm2 yarn