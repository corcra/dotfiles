dotfiledir=`pwd`

mv -v ~/.tmux.conf ~/.tmux.conf.old
mv -v ~/.vimrc ~/.vimrc.old

ln -sv $dotfiledir/.tmux.conf ~
ln -sv $dotfiledir/.vimrc ~
mkdir -p $dotfiledir/.vim/colors
ln -sv $dotfiledir/badwolf.vim ~/.vim/colors/badwolf.vim
