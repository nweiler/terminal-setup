#!/bin/bash

# Install pre-reqs
brew install iterm2 curl

# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-zsh plugins
plugins=(git colored-man-pages colorize pip docker dotenv fzf brew macos zsh-autosuggestions autojump web-search zsh-syntax-highlighting alias-tips kubectl npm history git-flow iterm2)

# Install powerlevel10k
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Install zsh-autosuggestions, alias-tips, zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install hack nerd font
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip

# Install gruvbox colorscheme
wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/GruvboxDark.itermcolors > gruvbox.itermcolors

# Install vim plugins
# NERDtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
#vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# Install colorls
sudo gem install colorls
echo 'alias ls=colorls' >> ~/.zshrc
