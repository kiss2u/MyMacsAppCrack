# Crack Apps for My Mac / Update 2023.02.26

**All File Only Support X86_64 Mac**

this repo use for publish the crack file.

**K'ed By 秋城落叶 2023◎QiuChenly.**

## 吾爱破解围观破解过程

[macOS 逆向区](https://www.52pojie.cn/forum.php?mod=forumdisplay&fid=5&filter=typeid&typeid=377)

用户: QiuChenly

## 你写的我看不懂，怎么用？

老天天有人说看不懂怎么用有没有成品。

再次声明: 本项目仅交流学习软件安全技术使用，不会发布任何形式的成品，也没有任何聊天群和组织，更不会收取任何人的一分钱，各位谨防受骗。不要将本项目研究成果进行传播破坏软件公司的利益，所有法律责任由传播者独自承担，作者从未为任何破解软件传播组织提供过任何形式的技术支持，不支持不赞同不理解传播盗版软件这种违法行为。

还要成品，嫌哥们4⃣️的不够快是吧😓。

@苏州思杰马克丁软件有限公司 出来谈谈你对起诉的看法

这里重新用中文写一份使用方法，这下中文能看懂了吧：

1.下载Tools里面的两个文件: insert_dylib libInlineInjectPlugin.dylib

2.这两个文件不可以被删除或移动到任意位置，因为他们的路径被记录在目标App的读取路径中。

3.复制一份下面指南中提到的文件。

如copy /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder to ‘/Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder_副本’

就是让你把‘OmniRecorder’这个文件复制一份为‘OmniRecorder_副本’。

4.sudo insert_dylib libInlineInjectPlugin.dylib /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder_副本 /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder

5.结束。切记不要激活后就把dylib文件给移动位置或者删除，实际注入还是需要他们！！！

# Instructions: First of all, u must known somthing

## Q: Where is the Injection Files?

A: The `insert_dylib` & `libInlineInjectPlugin.dylib` locate to `'Tools'` Folder.

## Q: File `insert_dylib` is...?

A: this is a inject Tool, it can inject `libInlineInjectPlugin.dylib` to target App runtimes.

## Q: File `libInlineInjectPlugin.dylib` is...?

A: Some crack code, can Hook&Modify Target App's AssemblerCode.

# How exciting! I cracked the mac application with the RAM Patch. Now the file size is about 100KB

But u known, i'm so hard up, can only affordable MBP 16'' 2019 Model, can't afford M1 Mac.I am so sad without money.So the Cracked Patch **Just Support X86_64 Mac**.

# Here are some my own crack'd software list

If u use my injection files...

| AppName                                             | Version             | Source                                                                                                          |
|-----------------------------------------------------|---------------------|-----------------------------------------------------------------------------------------------------------------|
| Omi 录屏专家[^omi_recording_pro]                    | v1.2.4(2023020802)  | AppleStore                                                                                                      |
| Omi NTFS 磁盘专家 Pro[^omi_ntfs]                    | v1.2.3 (2023020701) | [Official Site Link](https://cdn.zh.okaapps.com/resource/download/NTFS-Pro-Installer.pkg)                       |
| Fig Player[^fig_player]                             | v1.2.2(2023022001)  | AppleStore                                                                                                      |
| Bandizip365[^bandizip365]                           | v7.20               | AppleStore                                                                                                      |
| Macs Fan Control[^macs_fan_control]                 | v1.5.15             | [Official Site Link](https://crystalidea.com/downloads/macsfancontrol.zip)                                      |
| Record it Pro[^record_it_pro]                       | v1.7.6              | AppStore                                                                                                        |
| PlistEdit Pro[^plistedit_pro]                       | v1.10b1             | Here                                                                                                            |
| Sublime Text Dev[^sublimetext]                      | v4147               | [Official Site Link](https://download.sublimetext.com/sublime_text_build_4147_mac.zip)                          |
| CleanMyMac Beta[^cmm]                               | v4.13.0b2           | [Official Site Link](https://dl.devmate.com/com.macpaw.CleanMyMac4/CleanMyMacX.dmg)                             |
| App Cleaner & Uninstaller[^app_cleaner_uninstaller] | v8.1.1                | [Official Site Link](https://download.nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg) |
| PopClip[^popclip]                                   | v2022.12            | [Official Site Link](https://pilotmoon.com/downloads/PopClip-2022.12.zip)                                       |
| MWeb Pro[^mwebpro]                                  | v4.4.91              | [Official Site Link](https://mweb-1256924220.cos.accelerate.myqcloud.com/MWebPro441.dmg)                        |
| Ulysses[^ulysses]                                   | v29.4               | AppleStore                                                                                                      |
| iShot[^ishot]                                       | v2.3.2              | AppleStore                                                                                                      |
| AutoSwitchInput[^autoswitch]                        | v2.2.1              | AppleStore                                                                                                      |
| SuperRightKey[^irightmouse]                         | v2.2.3              | AppleStore                                                                                                      |
| Xmind[^xmind]                                       | v22.11.3656         | [Official Site Link](https://dl2.xmind.cn/Xmind-for-macOS-22.11.3656.dmg)                                       |

## Q&A

### it safe?

yes, all opensource,you can read this:
[How To Crack Macs Fan Control?](./howtocrack.md)

### how to crack?

See and click right of AppName's annotate like 1,2...17----then read the 'Tips' on below.

如何体验正版?表格中的app右侧上方有数字上标，点击可查看对应的体验办法。

# Tips

[^ulysses]: Ulysses

    1. Copy /Applications/UlyssesMac.app/Contents/Frameworks/KissXML.framework/Versions/A/KissXML to /Applications/UlyssesMac.app/Contents/Frameworks/KissXML.framework/Versions/A/KissXML\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^xmind]: Xmind

    1. modify some javascript.
    2. about crack the app more infomation pls read it: https://www.52pojie.cn/thread-1695324-1-1.html.
    3. The asar file so big, i can't upload it.

[^app_cleaner_uninstaller]: App Cleaner & Uninstaller

    1. Copy /Applications/App Cleaner 8.app/Contents/Frameworks/NektonyFallManager.framework/Versions/A/NektonyFallManager to /Applications/App Cleaner 8.app/Contents/Frameworks/NektonyFallManager.framework/Versions/A/NektonyFallManager\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^mwebpro]: MWeb Pro

    1. Copy /Applications/MWeb Pro.app/Contents/Frameworks/Sparkle.framework/Versions/B/Sparkle to /Applications/MWeb Pro.app/Contents/Frameworks/Sparkle.framework/Versions/B/Sparkle\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^popclip]: PopClip

    1. Copy /Applications/PopClip.app/Contents/Frameworks/ShortcutRecorder.framework/Versions/A/ShortcutRecorder to /Applications/PopClip.app/Contents/Frameworks/ShortcutRecorder.framework/Versions/A/ShortcutRecorder\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^ishot]: iShot Pro

    1. Copy /Applications/iShot.app/Contents/Frameworks/PTHotKey.framework/Versions/A/PTHotKey to /Applications/iShot.app/Contents/Frameworks/PTHotKey.framework/Versions/A/PTHotKey\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^autoswitch]: AutoSwitchInput

    1. Copy /Applications/AutoSwitchInput.app/Contents/Frameworks/PTHotKey.framework/Versions/A/PTHotKey to /Applications/AutoSwitchInput.app/Contents/Frameworks/PTHotKey.framework/Versions/A/PTHotKey\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^irightmouse]: iRightMouse

    1. Copy /Applications/iRightMouse.app/Contents/MacOS/iRightMouse to /Applications/iRightMouse.app/Contents/MacOS/iRightMouse\_副本
    2. ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^omi_recording_pro]: Omi 录屏专家

    1. Clear Permission: tccutil reset ScreenCapture com.mac.utility.screen.recorder
    2. Download App from Mac App Store.
    3. copy /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder to /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder\_副本.
    4. Execute the code:
       ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```
       <your*xxx*副本*file> is /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder*副本
       <your_xxx_file> is /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder

[^record_it_pro]: Record it

    1. extract app from "Record it.zip"
    2. copy to application folder.
    3. codesign yourself.
       sudo codesign -f -s - --timestamp=none /Applications/Record it.app

    4. if you won't get Recording Screen Permission, Terminate execute:
       tccutil reset ScreenCapture

[^bandizip365]: Bandizip365 Crack

    1. Download App from Mac App Store.
    2. copy /Applications/Bandizip365.app/Contents/MacOS/Bandizip365 to /Applications/Bandizip365.app/Contents/MacOS/Bandizip365\_副本.
    3. Execute the code:
       ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```
       <your*xxx*副本*file> is /Applications/Bandizip365.app/Contents/MacOS/Bandizip365*副本
       <your_xxx_file> is /Applications/Bandizip365.app/Contents/MacOS/Bandizip365

[^plistedit_pro]: PlistEdit Pro

    1. In Terminal execute the code for your self sign:
       `bash
sudo codesign -f -s - --timestamp=none /Applications/PlistEdit Pro.app
`
       YOU CAN USE IT:"PlistEdit Pro v1.10b1.zip" extract copy to "Applications" and "codesign -f -s - --timestamp=none /Applications/PlistEdit Pro.app", you get it!

[^macs_fan_control]: Macs Fan Control

    1. copy "/Applications/Macs Fan Control.app/Contents/Frameworks/QtMacExtras.framework/Versions/5/QtMacExtras" file to "/Applications/Macs Fan Control.app/Contents/Frameworks/QtMacExtras.framework/Versions/5/QtMacExtras\_副本".
    2. in Terminal execute the code for your self sign:
       ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib /Applications/Macs Fan Control.app/Contents/Frameworks/QtMacExtras.framework/Versions/5/QtMacExtras_副本 /Applications/Macs Fan Control.app/Contents/Frameworks/QtMacExtras.framework/Versions/5/QtMacExtras
       ```
    3. Crack Over!

[^sublimetext]: Sublime Text Dev v4147 Crack

    Target File: /Applications/Sublime Text.app/Contents/MacOS/sublime_text
    1. Copy And Backup the file.
    2. Open 'sublime_text' file use 'Hex Friends',find:
        0249FFC6 EBE15B41 5C415E41 5F5DC355 4889E5
    3. Replace The Hashcode with: 0249FFC6 EBE15B41 5C415E41 5F5DC36A 0158C3

        ![](./Sublime%20Text%204147.png)
        
    4. Open Sublime Text v4147, input the fake Licence get activation:

        ```
        ----- BEGIN LICENSE -----
        秋城落叶@52pojie.com
        Unlimited User License
        EA7E-8888
        88888888888888888888888888888888
        88888888888888888888888888888888
        88888888888888888888888888888888
        88888888888888888888888888888888
        88888888888888888888888888888888
        88888888888888888888888888888888
        88888888888888888888888888888888
        88888888888888888888888888888888
        ------ END LICENSE ------
        ```
    5. [Maybe Not Need]in Terminal execute the code for your self sign
       ```bash
       sudo codesign -f -s - --timestamp=none /Applications/Sublime\ Text.app
       ```

[^cmm]: Clean My Mac Crack

    1. First copy the Announcements to Announcements\_副本
    2. Download app from website, normal install, open and upgrade to latest test version.
    3. just run command in Terminal:
       ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```
       <your*xxx*副本*file> is /Applications/CleanMyMac\ X.app/Contents/Frameworks/Announcements.framework/Versions/A/Announcements*副本
       <your_xxx_file> is /Applications/CleanMyMac\ X.app/Contents/Frameworks/Announcements.framework/Versions/A/Announcements

[^omi_ntfs]: Omi NTFS 磁盘专家

    1. First copy the /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder to /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder\_副本
    2. Download app from website, normal install, open and upgrade to latest test version.
    3. just run command in Terminal:
       ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```

[^fig_player]: Fig Player

    1. First copy the /Applications/PotPlayerX.app/Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster to /Applications/PotPlayerX.app/Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster\_副本
    2. Download app from website, normal install, open and upgrade to latest test version.
    3. just run command in Terminal:
       ```bash
       sudo insert_dylib libInlineInjectPlugin.dylib <your_xxx_副本_file> <your_xxx_file>
       ```
