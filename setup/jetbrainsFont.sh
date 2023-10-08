curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir ~/.fonts
mkdir ~/.fonts/JetBrainsMono
tar -xf JetBrainsMono.tar.xz -C ~/.fonts/JetBrainsMono
fc-cache -fv
rm -rf JetBrainsMono.tar.xz
