printf "\n simple_crack.sh 使用温馨提示 \n"
printf "该脚本仅适用于“xxx.app/Contents/MacOS/xxx”的目录结构程序，请细看 README #Tips 说明。"
printf "\n若目录结构为“xxx.app/Contents/Frameworks/...”，请使用 simple_crack2.sh 脚本 \n"

read -p "1. 将Tools的两个文件一起拖入到终端: " tools_file

# “提示是一个目录”的文本切割法，相当于toString强转
one_file=${tools_file%' '*}
two_file=${tools_file##*' '}

chmod +x $one_file 
chmod +x $two_file

echo -e " "
read -p "2. 把程序拖入到终端: " crack_app_will

once_cut=${crack_app_will##*/}
twice_cut=${once_cut%%.*}

# find /Applications/OmniRecorder.app -type f|grep "OmniRecorder$"
cp -p $crack_app_will"/Contents/MacOS/"$twice_cut \
$crack_app_will"/Contents/MacOS/"$twice_cut"_副本"

sudo $one_file $two_file \
$crack_app_will"/Contents/MacOS/"$twice_cut"_副本" \
$crack_app_will"/Contents/MacOS/"$twice_cut

printf "\n Cracked，Have a good time. by hoochanlon."


