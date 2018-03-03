<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [操作](#%E6%93%8D%E4%BD%9C)
  - [基础](#%E5%9F%BA%E7%A1%80)
  - [进阶](#%E8%BF%9B%E9%98%B6)
  - [更快](#%E6%9B%B4%E5%BF%AB)
  - [更强](#%E6%9B%B4%E5%BC%BA)
- [高级](#%E9%AB%98%E7%BA%A7)
  - [文件](#%E6%96%87%E4%BB%B6)
  - [折叠](#%E6%8A%98%E5%8F%A0)
  - [标记](#%E6%A0%87%E8%AE%B0)
- [Vimscript](#vimscript)
  - [基础](#%E5%9F%BA%E7%A1%80-1)
  - [示例](#%E7%A4%BA%E4%BE%8B)
- [插件](#%E6%8F%92%E4%BB%B6)
  - [Vundle](#vundle)
  - [NERDtree](#nerdtree)
  - [NERDCOMMENTER](#nerdcommenter)
  - [CtrlP , Ctrlp-funky](#ctrlp--ctrlp-funky)
- [参考](#%E5%8F%82%E8%80%83)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## 操作 
### 基础
| 快捷键                     | 功能说明                          |
| -------------------------- | --------------------------        |
| `h`                        | 光标向左移动                      |
| `j`                        | 光标向下移动                      |
| `k`                        | 光标向上移动                      |
| `l`                        | 光标向右移动                      |
| `<Esc>`                    | 按`ESC`回到Normal模式             |
| `:q`                       | 退出                              |
| `:q!`                      | 退出不保存                        |
| `:w`                       | 保存                              |
| `:wq`                      | 保存并退出                        |
| `i`                        | 在光标前插入                      |
| `I`                        | 插入到行头                        |
| `a`                        | 在光标后插入                      |
| `o`  (小写)                | 在当前行后插入一个新行            |
| `O`  (大写)                | 在当前行前插入一个新行            |
| `A`                        | 插入到行尾                        |
| `r`                        | 替换单个字符                      |
| `R`                        | 替换后面的字符                    |
| `w`                        | 移动到下一个单词的开头。          |
| `W`                        | 跳过下一个单词                    |
| `e`                        | 移动到下一个单词的结尾。          |
| `E`                        | 跳过到下一个单词的结尾。          |
| `x`                        | 删当前光标所在的一个字符          |
| `X`                        | 删当前光标前一个字符              |
| `d`                        | 删除                              |
| `D`                        | 删除到行尾                        |
| `y`                        | 拷贝                              |
| `Y`                        | 拷贝到行尾                        |
| `yy`                       | 拷贝当前行                        |
| `p`                        | 粘贴到当前字符后
| `P`                        | 粘贴到当前字符前
| `0`                        | 到行头                            |
| `$`                        | 到行尾                            |
| `^`                        | 到本行第一个不是blank字符的位置   |
| `g_`                       | 到本行最后一个不是blank字符的位置 |
| `p`                        | 粘帖                              |
| `u`                        | `undo`                            |
| `<C-r>`                    | `redo`                            |
| `:e <path/to/file>`        | 打开文件                          |
| `:saveas <path/to/file>`   | 另存为                            |
| `:help <command>`          | 显示相关命令的帮助                |

### 进阶
| 快捷键                     | 功能说明                       |
| -------------------------- | --------------------------     |
| `/`                        | 向后查找                       |
| `?`                        | 向后查找                       |
| `<Enter>`                  | 提交查找                       |
| `n`                        | 下一个查找结果                 |
| `N`                        | 上一个查找结果                 |
| `gg`                       | 到第一行                       |
| `G`                        | 到最后一行                     |
| `NG`                       | 到第N行                        |
| `%`                        | 跳转到匹配括号                 |
| `<`                        | 左缩进                         |
| `>`                        | 右缩进                         |
| `=`                        | 自动给缩进                     |
| `~`                        | 大小写切换                     |
| `*`                        | 移动光标到下一个匹配单词       |
| `#`                        | 移动光标到上一个匹配单词       |
| `gU`                       | 变大写                         |
| `gu`                       | 变小写                         |
| `fa`                       | 到下一个为a的字符处            |
| `<C-v>`                    | 选择区块                       |
| `<C-n>` , `<C-p>`          | 自动提示                       |
| `.`                        | 重复上一次的命令               |
| `J`                        | 把所有的行连接起来（变成一行） |
| `:split`                   | 创建分屏                       |
| `:vsplit`                  | 创建垂直分屏                   |
| `:x , ZZ 或:wq`            | 保存并退出                     |

### 更快
| 快捷键                     | 功能说明                   |
| -------------------------- | -------------------------- |
| `yt,`                      | 复制到逗号
| `dt"`                      | 删除到双引号     |

### 更强 
| 快捷键                     | 功能说明                   |
| -------------------------- | -------------------------- |
| `,`                        | 快捷键 `<leader>`                            |
| `<leader>ev`               | 打开vimrc文件 |
| `<leader>sv`               | 重新加载vimrc文件 |
| `<leader>jk`               | `<esc>`快捷键      |
| `<leader>",',<,(,[,{,**`   | 单词两端包围字符      |
| `<Leader>m`                | 在结对符之间跳转        |
| `<leader>gbk`              | 编码转gbk               |
| `<leader>utf`              | 编码转utf-8             |
| `qa`                       | 把你的操作记录在寄存器 a ;qa 开始,q 停止,@a 播放宏a    |

## 高级
### 文件
| 快捷键                     | 功能说明               |
| -------------------------- | ---------------------- |
| `:bn`                      | 下一个文件             |
| `:bp`                      | 上一个文件             |
| `:ls`                      | 列出打开的文件，带编号 |
| `:b{1~n}`                  | 切换至第n个文件        |
| `:bd`                      | 关闭当前文件           |

### 折叠
| 快捷键                     | 功能说明               |
| -------------------------- | ---------------------- |
|  `zc`                      | 关闭当前打开的折叠     |
|  `zo`                      | 打开当前的折叠     |
|  `zm`                      | 关闭所有折叠     |
|  `zM`                      | 关闭所有折叠及其嵌套的折叠     |
|  `zr`                      | 打开所有折叠     |
|  `zR`                      | 打开所有折叠及其嵌套的折叠     |
|  `zd`                      | 删除当前折叠     |
|  `zE`                      | 删除所有折叠     |
|  `zj`                      | 移动至下一个折叠     |
|  `zk`                      | 移动至上一个折叠     |
|  `zn`                      | 禁用折叠     |
|  `zN`                      | 启用折叠     |

### 标记
| 快捷键                     | 功能说明               |
| -------------------------- | ---------------------- |
| `m{a-zA-Z}`                | 保存书签，小写的是文件书签,大写的是全局书签|
| `'{a-zA-Z}`                | 跳转到某个书签  |
| `'0`                       | 跳转入现在编辑的文件中上次退出的位置|
| `''`                       | 跳转如最后一次跳转的位置 |
| `'"`                       | 跳转至最后一次编辑的位置 |
| `g'{mark}`                 | 跳转到书签 |
| `:delm {mark}`             | 删除一个书签 |
| `:delm!`                   | 删除全部书签 |
| `:marks`                   | 显示系统全部书签 |

## Vimscript
### 基础
| 快捷键                     | 功能说明                   |
| -------------------------- | -------------------------- |
| `" this is annotation line`| 添加注释 |
| `set number/nonumber`      | 显示/关闭行号   |
| `map/unmap`                | 基本映射(增加/删除)    |
| `nmap/vmap/imap`           | 模式映射(`normal/visual/insert`)      |
| `*noremap`                 | 非递归映射(与`*map`系列的命令对应)  |

### 示例
| 快捷键                     | 功能说明                   |
| -------------------------- | -------------------------- |
| `nnoremap <space> viw`     | 高亮选中整个单词|

## 插件 
### [Vundle](https://github.com/VundleVim/Vundle.vim)
| 快捷键                     | 功能说明                   |
| -------------------------- | -------------------------- |
| `:PluginList`              | lists configured plugins |
| `:PluginInstall`           | installs plugins; append `!` to update or just :PluginUpdate |
| `:PluginSearch foo`        | searches for foo; append `!` to refresh local cache |
| `:PluginClean`             | confirms removal of unused plugins; append `!` to auto-approve removal |

### [NERDtree](https://github.com/scrooloose/nerdtree)
| 快捷键                     | 功能说明                   |
| -------------------------- | -------------------------- |
| `<leader>e`                | `:NERDTreeFind<CR>`             |
| `<leader>nt`               | `:NERDTreeFind<CR>`             |
| `o`                        | 打开文件或目录                |
| `p`                        | 回到上层目录                  |
| `P`                        | 回到根目录                    |
| `m`                        | 打开文件系统操作菜单，添加，删除，移动和复制 |
| `?`                        | 打开帮助文档，再按一次就会关闭        |


### [NERDCOMMENTER](https://github.com/scrooloose/nerdcommenter) 
| 快捷键                     | 功能说明              |
| -------------------------- | --------------------- |
| `<leader>cc`               | 加注释                |
| `<leader>cu`               | 解开注释              |
| `<leader>c<space>`         | 加上/解开注释, 智能判断     |
| `<leader>cy`               | 先复制, 再注解(p可以进行黏贴) |


### [CtrlP](https://github.com/kien/ctrlp.vim) , [Ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)
Ctrlp-funky是Ctrlp的扩展

| 快捷键                     | 功能说明                                    |
| -------------------------- | ------------------------------------------- |
| `<C-p>`                    | 启动文件查找功能，后续的所有操作都要使用这个操作   |
| `<C-f>` , `<C-b>`          | 在files/buf/mru files/funky中来回切换       |
| `<C-d>`                    | 只查找文件名，而不是全路径                  |
| `<C-j>` , `<C-k>`          | 在查找列表中上下切换            |



## 参考 
[vim中文手册](http://vimcdoc.sourceforge.net/doc/help.html)  
[简明 VIM 练级攻略](https://coolshell.cn/articles/5426.html)  
[笨方法学Vimscript](http://learnvimscriptthehardway.onefloweroneworld.com/)  
