cd Downloads

# browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb&

#ide
sudo snap install android-studio --classic&
sudo snap install code --classic&
sudo snap install netbeans --classic&
sudo snap install intellij-idea-ultimate --classic --edge&

#
sudo snap install postman&
sudo snap install scrcpy&
sudo snap install docker&

#social app
sudo snap install telegram-desktop&
sudo snap install discord&

# virtualbox
sudo apt-get install virtualbox&

#anydesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

#some common packages
sudo apt install -y wget git nano vim net-tools curl unzip unrar cmake redis anydesk zsh virtualbox tmux vlc python3-pip htop gparted tor neofetch jq
 
#java
sudo apt-get install default-jdk -y

#install zsh            
echo "===> INSTALL ZSH";
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

#set up zsh
sudo apt-get install powerline fonts-powerline

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#windscribe VPN
sudo apt install resolvconf
wget https://assets.staticnetcontent.com/desktop/linux/windscribe-cli_1.4-51_amd64.deb
sudo dpkg -i windscribe-cli_1.4-51_amd64.deb

# jadx
curl $(curl -s https://api.github.com/repos/skylot/jadx/releases/latest | jq -r '.assets[0].browser_download_url') -o jadx.zip
unzip jadx.zip -d ~/jadx
~/jadx/bin/jadx-gui

#jd-gui
wget https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-1.6.6.deb 
sudo dpkg -i jd-gui-1.6.6.deb

#gnome extension
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions -y
sudo apt-get install gnome-shell-extension-manager
#gnome extension: netSpeed, cpuFrerquency, Ip finder, gtile

#configure git
git config --global user.email "huythanh0x@gmail.com"
git config --global user.name "huythanh0x"

#sqlite
sudo apt install sqlitebrowser -y

#calibre
sudo apt install calibre -y

#vietnamese language 
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo
yes
ibus restart

sudo add-apt-repository ppa:xuzhen666/gnome-mpv
yes
sudo apt install gnome-mpv -y

#teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb

#edit keybord shortcuts
#Winddows + E
#Winddows + I
#...

sudo add-apt-repository universe
sudo apt install libfuse2

wget https://download3.navicat.com/download/navicat16-premium-en.AppImage
chmod a+x navicat16-premium-en.AppImage
./navicat16-premium-en.AppImage

#install brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser