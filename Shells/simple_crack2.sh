# -----测试（M1系列）------------
# 测试App 正常：
## Filmage Screen
## Navicat Premium
## MWeb Pro
## 解忧2

# M1环境不可行，测试异常的项目
## Ulysses 
## Fig Player
## Infuse

## 部分App项目已在App Store购入正版
## 其次私人与摸鱼时间有限，故随缘未测试、未写入；以下只罗列出典型问题案例
## 举两例典型说说明，其他app也大体同理：
### 1. PopClip有MAP购买检测及其他检测机制，M1环境打不开。
### 2. clean my Mac M1使用Rosetta依旧失效
# -----------------------------

printf "\nsimple_crack2.sh 使用温馨提示 \n"
printf "\n该脚本仅适用于“xxx.app/Contents/Frameworks/...”的目录结构程序，请细看 README #Tips 说明。\n"
printf "\n若目录结构为“xxx.app/Contents/MacOS/xxx”，请使用项目里的 Shells/simple_crack.sh\n"

# ------ 进度条 --------------
# [csdn-Shell脚本实现进度条的两种方式](https://blog.csdn.net/Sudley/article/details/113918174)
# 给不懂的人，在等待时间中的加入心里安慰
echo " "
mark=''
for ((ratio = 0; ${ratio} <= 100; ratio += 25)); do
    sleep 0.4
    printf " 脚本加载中:[%-24s]%d%%\r" "${mark}" "${ratio}"
    mark="######${mark}"
done &
# ------ 进度条 --------------

#---- 搜索文件并添加写入授权 --------

# 原生搜索，将搜索结果保存为变量
insert_dylib=$(find $HOME -type f | grep "insert_dylib")
libInlineInjectPluginDotdylib=$(find $HOME -type f | grep "libInlineInjectPlugin.dylib")
echo " "
echo " "
# 授执行权限
sudo chmod +x $insert_dylib
sudo chmod +x $libInlineInjectPluginDotdylib
#---- 搜索文件并添加写入授权 --------

read -p "把程序拖入到终端: " mac_app

#---- 定义文件执行顺序规则 -----------

# 设置标志变量
# 如果标志变量为false，则执行代码并将标志变量设置为true
# 包含 executed=true 的代码块也就会只执行一遍

executed=false
if [ "$executed" = false ]; then

    # 读取文件名包含空格问题用${}，加引号处理：https://www.qingsword.com/qing/Shell-7.html
    findx=$(find "${mac_app}" -name "Announcements" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "KMDrawViewSDK_Mac" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "Sparkle" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "PTHotKey" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "XADMaster" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "KissXML" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "JSONModel" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "JSONModel" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "NAVTabBarView" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "GZIP" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi

    findx=$(find "${mac_app}" -name "ShortcutRecorder" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
        executed=true
    fi


    findx=$(find "${mac_app}" -name "NektonyFallManager" -type f)
    if [ -n "$findx" ] >/dev/null 2>&1; then
        sudo cp -p "${findx}" "${findx}_副本"
        sudo $insert_dylib $libInlineInjectPluginDotdylib "${findx}_副本" "${findx}"
    fi

fi
#---- 定义文件执行顺序规则 -----------

# ----  对新手的友好优化，去隔离属性 -------
sudo xattr -d com.apple.quarantine "${mac_app}"  >/dev/null 2>&1
# 打印提示语
echo " "
printf "已移除隔离属性，App破解成功。（Mac是M1及以上系列，请以Rosetta运行）\n"
printf "Cracked，Have a good time. by hoochanlon. \n"
# ----  对新手的友好优化，去隔离属性 -------





# -----注释项，保留---------

## 新手不擅长用mas，故注释
## brew install -y mas
## mas lucky OmniRecorder

## 新手操作习惯不会使用svn，故注释
## tree 改成 branches； svn 导出到指定位置
## svn export https://github.com/QiuChenly/MyMacsAppCrack/branches/main/Tools ~/Public/CrackTools  --force

# 使用fd工具的表达式
## brew install -y fd
## chmod +x $(fd -a insert_dylib)
## chmod +x $(fd -a libInlineInjectPlugin.dylib)

# 倒计时工具
# brew install countdown
# countdown 30s

# 非必要，直接在说明里提示算了
# arch=$(uname -m)
# if [[ $arch == "arm64" ]]; then
#     export Rosetta=on
# fi

#-----------------------------

