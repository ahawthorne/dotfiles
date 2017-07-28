dotfiles
========

Based on [thoughtbot dotfiles](https://github.com/thoughtbot/dotfiles)

install
-------
clone

     git clone git://github.com/ahawthorne/dotfiles.git ~/dotfiles

install rcm

     sudo dnf copr enable seeitcoming/rcm
     sudo dnf install rcm

install dotfiles

     env RCRC=$HOME/dotfiles/rcrc rcup

After the initial installation, you can run rcup without the one-time variable RCRC being set (rcup will symlink the repo's rcrc to ~/.rcrc for future runs of rcup).
