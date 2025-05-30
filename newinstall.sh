#ParrotOS fresh setup script
sudo apt update && sudo apt upgrade -y

sudo apt install zsh awesome xfonts-terminus rxvt-unicode -y

#urxvt perl extentions
mkdir /home/alb/.urxvt/ext
git clone https://github.com/simmel/urxvt-resize-font.git 
cp urxvt-resize-font/resize-font /home/alb/.urxvt/ext/
git clone https://github.com/xyb3rt/urxvt-perls
cp urxvt-perls/keyboard-select /home/alb/.urxvt/ext/

#zsh extensions grab
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting /home/alb/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions /home/alb/.zsh/zsh-autosuggestions

#freshawesome movement
cp -r /home/alb/freshawesome/freedesktop /home/alb/.config/awesome/
cp -r /home/alb/freshawesome/lain /home/alb/.config/awesome/
cp /home/alb/freshawesome/rc.lua /home/alb/.config/awesome/
cp -r /home/alb/freshawesome/themes /home/alb/.config/awesome/
cp /home/alb/freshawesome/.Xresources /home/alb
cp /home/alb/freshawesome/.zshrc /home/alb

chsh -s $(which zsh)
systemctl reboot
