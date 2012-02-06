#!/bin/bash

#����ls������������'
IFS=;
echo -e 'Please enter your msysGit dir:'
read dir
echo -n -e "\n\nalias ls='ls --show-control-chars --color=auto'">>$dir/etc/git-completion.bash

#����log��ҳ��������
echo -n -e "\n\nexport LESSCHARSET=utf-8">>$dir/etc/profile

#Git Bash��������������
sed -i 's/set output-meta off/set output-meta on/g' $dir/etc/inputrc
sed -i 's/set convert-meta on/set output-meta off/g' $dir/etc/inputrc

#����git�û���
echo -e 'Please enter your username on github:'
read name
git config --global user.name $name

#����git�ʼ�
echo -e 'Please enter your e-mail on github:'
read email
git config --global user.email $email

echo -e
git config -l
echo -e 'successfull , start your git now!!'
