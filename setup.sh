##vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders
sudo rm packages.microsoft.gpg

##docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

##mongo
wget https://downloads.mongodb.com/compass/mongodb-compass_1.23.0_amd64.deb
sudo dpkg -i  mongodb-compass_1.23.0_amd64.deb
sudo rm mongodb-compass_1.23.0_amd64.deb

##bitwarden
wget https://github.com/bitwarden/desktop/releases/download/v1.22.2/Bitwarden-1.22.2-amd64.deb
sudo dpkg -i Bitwarden-1.22.2-amd64.deb
sudo rm Bitwarden-1.22.2-amd64.deb

##yubikey
mkdir /opt/AppImages
wget https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-latest-linux.AppImage
sudo chmod ugo+x yubioath-desktop-latest-linux.AppImage
mv yubioath-desktop-latest-linux.AppImage /opt/AppImages/yubico.AppImage

##other utils
sudo apt install plank
sudo apt install terminator
sudo apt install flameshot

