# 安装
## 自动执行

perl -e "$(curl -fsSL https://raw.github.com/crackcell/emacs-plugins/master/tools/install.pl)"

## 手动执行
  * 将代码checkout到~/.emacs.d/下
  * cp ~/.emacs.d/emacs-plugins/emacs ~/.emacs
  * 在~/.bashrc下加入：

source ~/.emacs.d/emacs-plugins/shell.sh

  * 在命令行里面打开一个cpp文件

ec xx.cpp

# 快捷键
 - F2
   + 绑定replace-string，文本替换
 - F3
   + tabbar移动到前一个tab
 - F4
   + tabbar移动到后一个tab
 - F5
   + org-mode下: 发布当前文件为html
   + muse-mode下: 发布当前文件为html
 - F6
   + org-mode下的发布当前agenda为html
 - F12
   + org-mode下显示agenda
