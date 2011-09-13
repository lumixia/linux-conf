#bin/bash

echo "[KAKA]    该文件是一个同步各个路径下配置文件到该目录下的脚本"
echo "[KAKA]    "`pwd`  $HOME

CURRENT=`pwd`

echo "--------------------------------------------"
echo "[SYNC]    "$HOME
rsync -r -t -p -v --progress --existing -s $HOME/.config/ $CURRENT/home/kaka/.config/
rsync -r -t -p -v --progress --existing -s $HOME/.vim/ $CURRENT/home/kaka/.vim/

rsync -r -t -p -v --progress -s $HOME/.bashrc $CURRENT/home/kaka/.bashrc

echo "[SYNC]    /etc/"
rsync -r -t -p -v --progress --existing -s /etc/ $CURRENT/etc/
#rsync -r -t -p -v --progress --existing -s $HOME/.config/ $CURRENT/home/kaka/.config/
echo "--------------------------------------------"


