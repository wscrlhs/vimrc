## 使用指南

## NERDtree

| 快捷键        | 功能说明                   |
| ---------- | ---------------------- |
| <leader>e  | :NERDTreeFind<CR>      |
| <leader>nt | :NERDTreeFind<CR>      |
| o          | 打开文件或目录                |
| p          | 回到上层目录                 |
| P          | 回到根目录                  |
| m          | 打开文件系统操作菜单，添加，删除，移动和复制 |
| ?          | 打开帮助文档，再按一次就会关闭        |


### 文件间切换  

| 快捷键    | 功能说明        |
| ------ | ----------- |
| :bn    | 下一个文件       |
| :bp    | 上一个文件       |
| :ls    | 列出打开的文件，带编号 |
| :b1~n  | 切换至第n个文件    |



## CtrlP 和 Ctrlp-funky

Ctrlp-funky是Ctrlp的扩展

| 快捷键       | 功能说明                            |
| --------- | ------------------------------- |
| C-p       | 启动文件查找功能，后续的所有操作都要使用这个操作        |
| C-f 和 C-b | 在files/buf/mru files/funky中来回切换 |
| C-d       | 只查找文件名，而不是全路径                   |
| C-n, C-p  | 在查找历史字符串中选择一个字符串                |

Basic Usage
Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
Check :help ctrlp-commands and :help ctrlp-extensions for other commands.

Once CtrlP is open:
Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
Press <c-f> and <c-b> to cycle between modes.
Press <c-d> to switch to filename only search instead of full path.
Press <c-r> to switch to regexp mode.
Use <c-j>, <c-k> or the arrow keys to navigate the result list.
Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
Use <c-y> to create a new file and its parent directories.
Use <c-z> to mark/unmark multiple files and <c-o> to open them.
Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help.

Submit two or more dots .. to go up the directory tree by one or multiple levels.
End the input string with a colon : followed by a command to execute it on the opening file(s): Use :25 to jump to line 25. Use :diffthis when opening multiple files to run :diffthis on the first 4 files.



## 

|      |      |
| ---- | ---- |
|      |      |
|      |      |
|      |      |
|      |      |
