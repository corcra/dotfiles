dotfiledir=`pwd`

mv -v ~/.tmux.conf ~/.tmux.conf.old
mv -v ~/.vimrc ~/.vimrc.old
mv -v ~/.vim ~/.vim-old

ln -sv $dotfiledir/.tmux.conf ~
ln -sv $dotfiledir/.vimrc ~
#mkdir -p $dotfiledir/.vim/colors
ln -s $dotfiledir/.vim  ~
#ln -sv $dotfiledir/badwolf.vim ~/.vim/colors/badwolf.vim
