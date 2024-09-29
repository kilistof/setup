git clone --bare https://github.com/kilistof/dotfiles $HOME/.dotfiles
function setup {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .setup-backup
setup checkout
if [ $? = 0 ]; then
  echo "Checked out setup.";
  else
    echo "Backing up pre-existing dot files.";
    setup checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .setup-backup/{}
fi;
setup checkout
setup config status.showUntrackedFiles no
