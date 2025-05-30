#ParrotOS fresh setup script
sudo apt update && sudo apt upgrade -y

sudo apt install zsh awesome xfonts-terminus rxvt-unicode

#urxvt perl extentions
mkdir ~/.urxvt/ext
git clone https://github.com/simmel/urxvt-resize-font.git 
cp urxvt-resize-font/resize-font ~/.urxvt/ext/
git clone https://github.com/xyb3rt/urxvt-perls
cp urxvt-perls/keyboard-select ~/.urxvt/ext/

#zsh extensions grab
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

#freshawesome grab
cp -r freshawesome/freedesktop ~/.config/awesome/
cp -r freshawesome/lain ~/.config/awesome/
cp freshawesome/rc.lua ~/.config/awesome/
cp -r freshawesome/themes ~/.config/awesome/
cp freshawesome/.Xresources ~
cp freshawesome/.zshrc ~
