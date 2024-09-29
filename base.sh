git init --bare $HOME/.dotfiles
alias setup='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
setup config --local status.showUntrackedFiles no
echo "~/.dotfiles" >> ~/.gitignore
# echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
