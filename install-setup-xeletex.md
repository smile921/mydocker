
安装中文字体
在ArchLinux的字体目录中新建一个目录，存放新字体。这里从Windows系统中复制字体进来。

$ mkdir /usr/share/fonts/msfont/
$ cp $WIN_FONTS /usr/share/fonts/msfont/
更新font cache使Linux系统识别新加入的字体。

$ cd /usr/share/fonts/msfont/
$ fc-cache
$ mkfontscale
$ mkfontdir




原文链接：http://www.jianshu.com/p/39969968ce64
