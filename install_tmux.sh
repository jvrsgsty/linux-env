# Script to install a local version of tmux
# This is what I used to install tmux on icme-cluster
#
# This was mostly put together with help of the following sources:
#
# https://superuser.com/questions/1259140/how-to-install-tmux-locally-without-root-access
# https://gist.github.com/ryin/3106801
# https://gist.github.com/SongRb/e1a2059b6620407c260c71a2b56a7c3c
# http://jhshi.me/2016/07/08/installing-tmux-from-source-non-root/index.html#.XRz8RJNKhTY
# https://github.com/mjlbach/vim_it_up
# https://github.com/wereHamster/ncurses/blob/master/INSTALL

# Exit on error
set -e

TMUX_VERSION=2.8
INSTALL_DIR=/home/jvrsgsty

# create our directories
mkdir -p $INSTALL_DIR/local $INSTALL_DIR/tmux_tmp
cd $INSTALL_DIR/tmux_tmp

# download source files for tmux, libevent, and ncurses
wget -O tmux-${TMUX_VERSION}.tar.gz https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz
wget https://github.com/downloads/libevent/libevent/libevent-2.0.19-stable.tar.gz
wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz

# extract files, configure, and compile

############
# libevent #
############
tar xvzf libevent-2.0.19-stable.tar.gz
cd libevent-2.0.19-stable
./configure --prefix=$INSTALL_DIR/local --disable-shared
make
make install
cd ..

############
# ncurses  #
############
if [[ $(fs --version) =~ "afs" ]] && fs whereis "$INSTALL_DIR/local" ; then
    NCURSES_OPTION=" --enable-symlinks";
else
    NCURSES_OPTION="";
fi
tar xvzf ncurses-5.9.tar.gz
cd ncurses-5.9
./configure --prefix=$INSTALL_DIR/local $NCURSES_OPTION
make
make install
cd ..

############
# tmux     #
############
tar xvzf tmux-${TMUX_VERSION}.tar.gz
cd tmux-${TMUX_VERSION}
./configure CFLAGS="-I$INSTALL_DIR/local/include -I$INSTALL_DIR/local/include/ncurses" LDFLAGS="-L$INSTALL_DIR/local/lib -L$INSTALL_DIR/local/include/ncurses -L$INSTALL_DIR/local/include"
CPPFLAGS="-I$INSTALL_DIR/local/include -I$INSTALL_DIR/local/include/ncurses" LDFLAGS="-static -L$INSTALL_DIR/local/include -L$INSTALL_DIR/local/include/ncurses -L$INSTALL_DIR/local/lib" make
cp tmux $INSTALL_DIR/local/bin
cd ..

#  cleanup
rm -rf $INSTALL_DIR/tmux_tmp

echo "$INSTALL_DIR/local/bin/tmux is now available. You can optionally add $INSTALL_DIR/local/bin to your PATH."