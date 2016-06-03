dotfiledir=`pwd`

mv -v ~/.tmux.conf ~/.tmux.conf.old
mv -v ~/.vimrc ~/.vimrc.old

ln -sv $dotfiledir/.tmux.conf ~
ln -sv $dotfiledir/.vimrc ~
