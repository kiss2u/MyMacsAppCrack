# 关于两个脚本的使用说明

**免责声明：本项目仅供学习交流，若使用商业用途，请购买正版授权，否则产生的一切后果将由下载用户自行承担。**

**注意：本项目破解以 X86_64 Intel为准，仅部分支持M系列Arm架构芯片的Mac，并非全系支持。并且注意勾选“显示简介”项中的“使用 Rosetta 打开”，确保程序可正常运行。顺便一说，macOS上的软件一般是从官网或App Store上下载，支持正版。**

## 使用 simple_crack.sh 

该脚本支持 /Contents/MacOS/* 目录结构的软件，表单例举：


| 相关软件           | 目录结构 ( /Contents/MacOS/* ) |
| ------------------ | :----------------------------- |
| Omi录屏专家        | /Contents/MacOS/OmniRecorder   |
| Omni NTFS 磁盘专家 | /Contents/MacOS/OmniRecorder   |
| Bandizip365        | /Contents/MacOS/Bandizip365    |
| iRightMouse        | /Contents/MacOS/iRightMouse    |

**以Omi录屏专家为例** 

一、首先下载 https://github.com/QiuChenly/MyMacsAppCrack/tree/main/Tools 文件夹下面的两个工具，并将它们放在一起。也可使用svn设定到指定位置下载。

```shell
svn export https://github.com/QiuChenly/MyMacsAppCrack/branches/main/Tools ~/Public/CrackTools  --force
```

二、复制粘贴到终端

```shell
sudo bash -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/QiuChenly/MyMacsAppCrack/main/Shells/simple_crack.sh)"
```

三、按步骤，先将Tools文件夹下的两个文件用鼠标拖入到终端，并随后把“Omi录屏专家”，拖入进终端。

![](https://cdn.jsdelivr.net/gh/hoochanlon/ihs-simple/AQUICK/catch2023-03-30%2018.32.13.png)

![](https://cdn.jsdelivr.net/gh/hoochanlon/ihs-simple/AQUICK/catch2023-03-30%2018.33.14.png)

最终效果图

![](https://cdn.jsdelivr.net/gh/hoochanlon/ihs-simple/AQUICK/catch2023-03-30%2018.38.54.png)

## 使用  simple_crack.sh2 

脚本支持相关目录结构的软件如下表所给出的部分例举：

| 相关软件   | 目录结构 (  /Contents/Frameworks/* )                         |
| ---------- | :----------------------------------------------------------- |
| Fig Player | /Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster |
| MWeb Pro   | /Contents/Frameworks/Sparkle.framework/Versions/B/Sparkle    |
| 解优2      | /Contents/Frameworks/JSONModel.framework/Versions/A/JSONModel |
| iShot Pro  | /Contents/Frameworks/PTHotKey.framework/Versions/A/PTHotKey  |

**以 解优2  为例**

使用脚本前

![](https://cdn.jsdelivr.net/gh/hoochanlon/ihs-simple/AQUICK/catch2023-03-30%2019.05.17.png)

复制粘贴到终端，并将程序拖入到终端，即可。

```shell
sudo bash -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/QiuChenly/MyMacsAppCrack/main/Shells/simple_crack2.sh)"
```

![](https://cdn.jsdelivr.net/gh/hoochanlon/ihs-simple/AQUICK/catch2023-03-30%2019.15.50.png)


使用脚本后

![](https://cdn.jsdelivr.net/gh/hoochanlon/ihs-simple/AQUICK/catch2023-03-30%2019.25.26.png)

