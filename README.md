# Crack Apps for My Mac / Update 2023.03.22

**All File Only Support X86_64 Mac**

**But M1/M2 Mac Can Open 'Rosetta 运行' to use!**

this repo use for publish the crack file.

**K'ed By 秋城落叶 2023◎QiuChenly.**

## 吾爱破解围观破解过程

[macOS 逆向区](https://www.52pojie.cn/forum.php?mod=forumdisplay&fid=5&filter=typeid&typeid=377)

用户: QiuChenly

## 中文使用说明

老天天有人说看不懂怎么用有没有成品。

声明: 
本项目仅交流学习软件安全技术使用，不会发布任何形式的成品，也没有任何聊天群和组织，更不会收取任何人一分钱，各位谨防受骗。
不要将本项目研究成果进行传播破坏软件公司的利益，所有法律责任由传播者独自承担，作者从未为任何破解软件传播组织提供过任何形式的技术支持，不支持不赞同不理解传播盗版软件这种违法行为。
因使用者传播者传播破解软件导致的任何法律责任与包括但不仅限于引起系统故障 财产损失等问题作者概不负责。

还要成品，嫌哥们4⃣️的不够快是吧😓。

这里重新用中文写一份使用方法，这下中文能看懂了吧：

0.首先关闭SIP。M1/M2机器使用需要在应用详情中勾选"Rosetta 运行"才可以正常注入。

1.下载Tools里面的两个文件: insert_dylib libInlineInjectPlugin.dylib

insert_dylib是一个注入工具，将体验代码注入到目标程序中。
如果你```sudo insert_dylib```无法执行，请给文件加上可执行权限:
    ```sudo chmod +x insert_dylib```

2.**libInlineInjectPlugin.dylib**这个文件不可以被删除或移动到任意位置，因为他的路径被记录在目标App的读取路径中。但是你把它放到.app文件内，这样可以和App一起携带走。

3.复制一份下面Tips指南中提到的文件。

如copy /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder to ‘/Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder_副本’

就是让你把‘OmniRecorder’这个文件复制一份为‘OmniRecorder_副本’。

4.执行注入

```bash
sudo insert_dylib文件全路径 libInlineInjectPlugin.dylib文件的全路径 /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder_副本 /Applications/OmniRecorder.app/Contents/MacOS/OmniRecorder
```

5.结束。

切记不要激活后就把libInlineInjectPlugin.dylib文件给移动位置或者删除，实际注入还是需要他！！！

最后，附简单使用的懒人傻瓜式脚本，👉 [一键自动化的简单操作说明](./Shells/README.md)。

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

| AppName                                             | Version             | Download link(Click it!)                                                                                                          |Crack Reason|
|-----------------------------------------------------|---------------------|-----------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| Omi 录屏专家[^omi_recording_pro]                    | v1.2.4(2023020802)  | MacAppStore                                                                                                      |I would like to do it|
| Omi NTFS 磁盘专家 Pro[^omi_ntfs]                    | v1.2.3 (2023020701) | [Official Site Link](https://cdn.zh.okaapps.com/resource/download/NTFS-Pro-Installer.pkg)                       |I would like to do it|
| Fig Player[^fig_player]                             | v1.2.3(2023032401)  | MacAppStore                                                                                                      |I would like to do it|
| Bandizip365[^bandizip365]                           | v7.22               | [MacAppStore](https://apps.apple.com/cn/app/bandizip-365-%E5%8E%8B%E7%BC%A9%E5%92%8C%E8%A7%A3%E5%8E%8B%E7%BC%A9/id1596426184?mt=12)                                                                                                      |I would like to do it|
| Macs Fan Control[^macs_fan_control]                 | v1.5.15             | [Official Site Link](https://crystalidea.com/downloads/macsfancontrol.zip)                                      |I would like to do it|
| Record it Pro[^record_it_pro]                       | v1.7.6              | MacAppStore                                                                                                        |I would like to do it|
| PlistEdit Pro[^plistedit_pro]                       | v1.10b1             | Here                                                                                                            |I would like to do it|
| Sublime Text Dev[^sublimetext]                      | v4148               | [Official Site Link](https://download.sublimetext.com/sublime_text_build_4148_mac.zip)                          |I would like to do it|
| CleanMyMac X[^cmm]                               | v4.13.2           | [Official Site Link](https://dl.devmate.com/com.macpaw.CleanMyMac4/CleanMyMacX.dmg)                             |I would like to do it|
| App Cleaner & Uninstaller[^app_cleaner_uninstaller] | v8.1.1                | [Official Site Link](https://download.nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg) |I would like to do it|
| PopClip[^popclip]                                   | v2022.12            | [Official Site Link](https://pilotmoon.com/downloads/PopClip-2022.12.zip)                                       |I would like to do it|
| MWeb Pro[^mwebpro]                                  | v4.4.2              | [Official Site Link](https://mweb-1256924220.cos.accelerate.myqcloud.com/MWebPro441.dmg)                        |I would like to do it|
| Ulysses[^ulysses]                                   | v29.4               | MacAppStore                                                                                                      |I would like to do it|
| iShot[^ishot]                                       | v2.3.3              | MacAppStore                                                                                                      |What a Niubility and glorious Apps of domestic application!|
| AutoSwitchInput[^autoswitch]                        | v2.2.1              | MacAppStore                                                                                                      |I would like to do it|
| SuperRightKey[^irightmouse]                         | v2.2.3              | MacAppStore                                                                                                      |I would like to do it|
| 解优2[^bestzip2]                         | v1.6.0              | [MacAppStore](https://apps.apple.com/cn/app/%E8%A7%A3%E4%BC%98-%E4%B8%93%E4%B8%9A%E7%9A%84-rar-7z-zip-%E8%A7%A3%E5%8E%8B%E7%BC%A9%E5%B7%A5%E5%85%B7/id1450246547?mt=12)                                                                                                      |UI Beautify and i like it|
| OmniPlayer[^omniPlayer]                         | v2.0.19 (2023032801)              | [MacAppStore](https://apps.apple.com/cn/app/omni-player-%E9%AB%98%E6%B8%85%E5%BD%B1%E9%9F%B3%E6%92%AD%E6%94%BE%E5%99%A8/id1470926410?mt=12)                                                                                                      |UI Beautify and i like it|
| Filmage Screen[^FilmageScreen]                         | v1.4.7              | [Official Site Link](https://pdfreaderpro.oss-cn-shanghai.aliyuncs.com/downloads/FilmageScreen.dmg)                                                                                                      |just because i was bored|
| Xmind[^xmind]                                       | v22.11.3656         | [Official Site Link](https://dl2.xmind.cn/Xmind-for-macOS-22.11.3656.dmg)                                       |I would like to do it|
|Navicat Premium[^Navicat] |v16.1.7|[MacAppStore](https://apps.apple.com/cn/app/navicat-premium-16/id1594061654?mt=12)|I love it so much!|
|Infuse Pro[^Infuse] |v7.5.1 (7.5.4394)|[MacAppStore](https://apps.apple.com/cn/app/infuse-%E6%99%BA%E8%83%BD%E8%A7%86%E9%A2%91%E6%92%AD%E6%94%BE%E5%99%A8/id1136220934)|because it so beautify...|

## Q&A

### it safe?

yes, all opensource,you can read this:
[How To Crack Macs Fan Control?](./howtocrack.md)

### how to crack?

See and click right of AppName's annotate like 1,2...17----then read the 'Tips' on below.

如何体验正版?表格中的app右侧上方有数字上标，点击可查看对应的体验办法。

# QQ吹牛群【禁止明目张胆聊pj，想想你人在哪里】
![6918634eafb967e68b4c8926ea0f9dab](assets/6918634eafb967e68b4c8926ea0f9dab.png)

可以问技术问题 不要向群主或任何人索取破解资源之类的文件 看见一个ban一个

# Tips

[^Infuse]: Infuse Pro
    1. Copy /Applications/Infuse.app/Contents/Frameworks/GZIP.framework/Versions/A/GZIP to /Applications/Infuse.app/Contents/Frameworks/GZIP.framework/Versions/A/GZIP的副本.
    2. sudo insert_dylib /你的文件夹路径！！！不要直接复制本Shell！！！/libInlineInjectPlugin.dylib /Applications/Infuse.app/Contents/Frameworks/GZIP.framework/Versions/A/GZIP的副本 /Applications/Infuse.app/Contents/Frameworks/GZIP.framework/Versions/A/GZIP
    3. ok.

[^Navicat]: Navicat Premium
    1. Copy /Applications/Navicat Premium.app/Contents/Frameworks/NAVTabBarView.framework/Versions/A/NAVTabBarView to /Applications/Navicat Premium.app/Contents/Frameworks/NAVTabBarView.framework/Versions/A/NAVTabBarView的副本.
    2. sudo insert_dylib /你的文件夹路径！！！不要直接复制本Shell！！！/libInlineInjectPlugin.dylib /Applications/Navicat\ Premium.app/Contents/Frameworks/NAVTabBarView.framework/Versions/A/NAVTabBarView的副本 /Applications/Navicat\ Premium.app/Contents/Frameworks/NAVTabBarView.framework/Versions/A/NAVTabBarView
    3. ok.

[^FilmageScreen]: FilmageScreen
    1. Copy /Applications/Filmage Screen.app/Contents/Frameworks/KMDrawViewSDK_Mac.framework/Versions/A/KMDrawViewSDK_Mac to /Applications/Filmage Screen.app/Contents/Frameworks/KMDrawViewSDK_Mac.framework/Versions/A/KMDrawViewSDK_Mac的副本
    2. sudo insert_dylib /你的文件夹路径！！！不要直接复制本Shell！！！/libInlineInjectPlugin.dylib /Applications/Filmage\ Screen.app/Contents/Frameworks/KMDrawViewSDK_Mac.framework/Versions/A/KMDrawViewSDK_Mac的副本 /Applications/Filmage\ Screen.app/Contents/Frameworks/KMDrawViewSDK_Mac.framework/Versions/A/KMDrawViewSDK_Mac
    3. ok.

[^omniPlayer]: OmniPlayer

    1. Copy /Applications/OmniPlayerStore.app/Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster to /Applications/OmniPlayerStore.app/Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster的副本
    2. sudo insert_dylib /Users/qiuchenly/...YOUR...FILE...PATH...!!!.../libInlineInjectPlugin.dylib /Applications/OmniPlayerStore.app/Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster的副本 /Applications/OmniPlayerStore.app/Contents/Frameworks/XADMaster.framework/Versions/A/XADMaster
    3. ok.

[^bestzip2]: 解优2

    这是一个我接触MacBook就开始眼馋的App。因为当时刚出来一代的时候AppStore霸榜第一的实力足以让我垂涎欲滴。
    1. Copy /Applications/BestZip 2.app/Contents/Frameworks/JSONModel.framework/Versions/A/JSONModel to /Applications/BestZip 2.app/Contents/Frameworks/JSONModel.framework/Versions/A/JSONModel的副本
    2. ```sudo insert_dylib /Users/qiuchenly/...YOUR...PATH...!!!!.../libInlineInjectPlugin.dylib /Applications/BestZip\ 2.app/Contents/Frameworks/JSONModel.framework/Versions/A/JSONModel的副本 /Applications/BestZip\ 2.app/Contents/Frameworks/JSONModel.framework/Versions/A/JSONModel```
    3. Ok.Open it and read activation's from Preference.

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

[^sublimetext]: Sublime Text Dev v4148 Crack

    Target File: /Applications/Sublime Text.app/Contents/MacOS/sublime_text

    Crack Point: `verify_signature(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&, std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char>> const&)
__Z16verify_signatureRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_S7_ proc near`

    1. Copy And Backup the file.
    2. Open 'sublime_text' file use 'Hex Friends',find:
        0249FFC6 EBE15B41 5C415E41 5F5DC355 4889E5
    3. Replace The Hashcode with: 
        0249FFC6 EBE15B41 5C415E41 5F5DC36A 0158C3

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
