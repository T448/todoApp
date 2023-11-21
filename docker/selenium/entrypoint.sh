#!/bin/bash

export USER=seluser
export HOME=/home/$USER

# カレントディレクトリの uid と gid を調べる
uid=$(stat -c "%u" .)
gid=$(stat -c "%g" .)

if [ "$uid" -ne 0 ]; then
    if [ "$(id -g $USER)" -ne $gid ]; then
        # gidをホストとコンテナ内でそろえる
        getent group $gid >/dev/null 2>&1 || groupmod -g $gid $USER
        chgrp -R $gid $HOME
    fi
    if [ "$(id -u $USER)" -ne $uid ]; then
        # uidをホストとコンテナ内でそろえる
        usermod -u $uid $USER
    fi
fi

exec setpriv --reuid=$USER --regid=$USER --init-groups "$@"

# 参考 https://zenn.dev/anyakichi/articles/73765814e57cba