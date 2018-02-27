<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [操作](#%E6%93%8D%E4%BD%9C)
  - [基础](#%E5%9F%BA%E7%A1%80)
  - [进阶](#%E8%BF%9B%E9%98%B6)
- [高级](#%E9%AB%98%E7%BA%A7)
  - [文件](#%E6%96%87%E4%BB%B6)
  - [折叠](#%E6%8A%98%E5%8F%A0)
  - [自定义快捷键](#%E8%87%AA%E5%AE%9A%E4%B9%89%E5%BF%AB%E6%8D%B7%E9%94%AE)
- [Vimscript](#vimscript)
  - [基础](#%E5%9F%BA%E7%A1%80-1)
  - [示例](#%E7%A4%BA%E4%BE%8B)
- [插件](#%E6%8F%92%E4%BB%B6)
  - [NERDtree](#nerdtree)
  - [NERDCOMMENTER](#nerdcommenter)
  - [CtrlP 和 Ctrlp-funky](#ctrlp-%E5%92%8C-ctrlp-funky)
- [参考](#%E5%8F%82%E8%80%83)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# 操作 
## 基础
| 快捷键                | 功能说明                   |
| --------------------- | -------------------------- |
| `i`                     | Insert模式，按ESC回到Normal模式    |
| `x`                     | 删当前光标所在的一个字符     |
| `:wq`                   | :w 保存   :q 退出  |
| `hjkl`                  | 光标移动(左下上右)   |
| `:help <command>`       |  显示相关命令的帮助     |
| `a`                     | 在光标后插入     |
| `o`  (小写字母)         | 在当前行后插入一个新行      |
| `O`  (大写字母)         | 在当前行前插入一个新行           |
| `0`  (数字)             | 到行头      |
| `$`                     | 到行尾      |
| `^`                     | 到本行第一个不是blank字符的位置     |
| `g_`                    |  到本行最后一个不是blank字符的位置      |
| `p`                     | 粘帖      |
| `yy`                    | 拷贝当前行      |
| `u`                     | undo      |
| `<C-r>`                 | redo      |
| `:e <path/to/file>`     |  打开文件     |
| `:saveas <path/to/file>`  | 另存为      |
| `:x , ZZ 或:wq`         |  保存并退出     |
| `q!`                    |  退出不保存     |

## 进阶
| 快捷键                | 功能说明                   |
| --------------------- | -------------------------- |
| `.`                   |  重复上一次的命令     |
| `N<comand>`           |  重复某个命令N次(2dd → 删除2行 100idesu [ESC] → 插入100次desu )    |
| `NG`                  |  到第N行     |
| `gg`                  |  到第一行     |
| `G`                   |   到最后一行    |
| `w`                   |    到下一个单词的开头。   |
| `e`                   |     到下一个单词的结尾。   |
| `%`                   |   匹配括号移动    |
| `*`                   |    移动光标到下一个匹配单词   |
| `#`                   |   移动光标到上一个匹配单词    |
| `gU`                  |  (变大写)     |
| `gu`                  |    (变小写)|
| `<start position><command><end position>` |  0y$     |
| `fa`                  |  到下一个为a的字符处     |
| `dt"`                 |  删除所有的内容，直到遇到双引号     |
| `<action>[a,i]<object>`  |  viw     |
| `<C-v>`               | <C-v> 选择区块 I <action>     |
| `<C-n> 和 <C-p>`      |  自动提示 |
| `qa`                  |  把你的操作记录在寄存器 a ;qa 开始,q 停止,@a 播放宏a    |
| `J`                   |   把所有的行连接起来（变成一行） |
| `< 或 >`              |  左右缩进|
| `=`                   |  自动给缩进 （     |
| `:split`              |   创建分屏     |
| `:vsplit`             |  创建垂直分屏     |


# 高级
## 文件
| 快捷键   | 功能说明               |
| -------- | ---------------------- |
| `:bn`      | 下一个文件             |
| `:bp`      | 上一个文件             |
| `:ls`      | 列出打开的文件，带编号 |
| `:b1~n`    | 切换至第n个文件        |
| `:bd`      | 关闭当前文件           |

## 折叠
| 快捷键   | 功能说明               |
| -------- | ---------------------- |
|  `zc`    |    关闭当前打开的折叠     |
|  `zo`    |    打开当前的折叠     |
|  `zm`    |    关闭所有折叠     |
|  `zM`    |    关闭所有折叠及其嵌套的折叠     |
|  `zr`    |    打开所有折叠     |
|  `zR`    |    打开所有折叠及其嵌套的折叠     |
|  `zd`    |    删除当前折叠     |
|  `zE`    |    删除所有折叠     |
|  `zj`    |    移动至下一个折叠     |
|  `zk`    |    移动至上一个折叠     |
|  `zn`    |    禁用折叠     |
|  `zN`    |    启用折叠     |

## 自定义快捷键
| 快捷键        | 功能说明                   |
| ------------- | -------------------------- |
| `<leader>`      |      ,                     |
| `<C-A>`         |    Ctrl-A 选中所有内容"    |
| `<Leader>m`     |    在结对符之间跳转        |
| `<leader>gbk`   |    编码转gbk               |
| `<leader>utf`   |    编码转utf-8             |

# Vimscript
## 基础
| 快捷键                | 功能说明                   |
| --------------------- | -------------------------- |
| `" this is annotation line`   | 添加注释 |
| `set number/nonumber`   |  显示/关闭行号   |
| `map/unmap`             |  基本映射(增加/删除)    |
| `nmap/vmap/imap`        |  模式映射(仅在`normal/visual/insert`模式有效)      |
| `*noremap`              |  非递归映射(与`*map`系列的命令对应)  |
|        |         |

## 示例
| 快捷键                | 功能说明                   |
| --------------------- | -------------------------- |
| `nnoremap <space> viw`     | 高亮选中整个单词|
|        |         |

# 插件 
## [NERDtree](https://github.com/scrooloose/nerdtree)
| 快捷键        | 功能说明                   |
| ------------- | -------------------------- |
| `<leader>e`  | :NERDTreeFind<CR>             |
| `<leader>nt` | :NERDTreeFind<CR>             |
| `o`          | 打开文件或目录                |
| `p`          | 回到上层目录                  |
| `P`          | 回到根目录                    |
| `m`          | 打开文件系统操作菜单，添加，删除，移动和复制 |
| `?`          | 打开帮助文档，再按一次就会关闭        |


## [NERDCOMMENTER](https://github.com/scrooloose/nerdcommenter) 
| 快捷键              | 功能说明              |
| ------------------- | --------------------- |
| `<leader>cc`          | 加注释                |
| `<leader>cu`          | 解开注释              |
| `<leader>c<space>`    | 加上/解开注释, 智能判断     |
| `<leader>cy`          | 先复制, 再注解(p可以进行黏贴) |


## [CtrlP](https://github.com/kien/ctrlp.vim) 和 [Ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)
Ctrlp-funky是Ctrlp的扩展

| 快捷键         | 功能说明                                    |
| -------------- | ------------------------------------------- |
| `C-p`            | 启动文件查找功能，后续的所有操作都要使用这个操作   |
| `C-f 和 C-b`     | 在files/buf/mru files/funky中来回切换       |
| `C-d`            | 只查找文件名，而不是全路径                  |
| `C-n, C-p`       | 在查找历史字符串中选择一个字符串            |



# 参考 
[vim中文手册](http://vimcdoc.sourceforge.net/doc/help.html)  
[简明 VIM 练级攻略](https://coolshell.cn/articles/5426.html)  
[笨方法学Vimscript](http://learnvimscriptthehardway.onefloweroneworld.com/)  
