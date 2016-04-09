BashとVimの設定ファイルです。長く使ううちにシンプルになっていきました。

colorschemeにはhybridを採用しました。Tomorrow Night, jellybeans, solarizedのいいとこ取りということです。

### 操作について

[Ctrl] + [e] でペーストモードに入れます。改行付きのテキスト貼り付け時にインデントされることを防ぎます。

また [,,] の入力で行コメントの切り替えができます。

### 注意点

初回のみ、VimのNeoBundleをインストールする必要があります。

```
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```
