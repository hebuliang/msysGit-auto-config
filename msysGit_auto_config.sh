#!/bin/bash

#修正ls命令中文乱码'
IFS=;
echo -e 'Please enter your msysGit dir:'
read dir
echo -n -e "\n\nalias ls='ls --show-control-chars --color=auto'">>$dir/etc/git-completion.bash

#修正log分页中文乱码
echo -n -e "\n\nexport LESSCHARSET=utf-8">>$dir/etc/profile

#Git Bash中正常输入中文
sed -i 's/set output-meta off/set output-meta on/g' $dir/etc/inputrc
sed -i 's/set convert-meta on/set output-meta off/g' $dir/etc/inputrc

#设置git用户名
echo -e 'Please enter your username on github:'
read name
git config --global user.name $name

#设置git邮件
echo -e 'Please enter your e-mail on github:'
read email
git config --global user.email $email

echo -e
git config -l
echo -e 'successfull , start your git now!!'
