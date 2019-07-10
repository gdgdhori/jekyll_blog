コマンドラインの作成の仕方は下記のURL参照 [Ruby の CLI
ツールの作成を支援する、 thor gem の基本について。 \#thor
\#ruby](https://qiita.com/tbpgr/items/10a5c236cfb528c76ef5)

[RubyでCLIツールを作成する手順まとめ](https://qiita.com/akisame338/items/92379addeb1a17468498)

seminar\<2019-06-24 月\>
========================

ユースケース図(動作の一連の流れの図)，UML(Unified Modeling Language)
Rspecは出力と結果の差異をみる
Rubocopはコードの中身を見る．コーディングスタイルをチェック．Cでいうコンパイラの役割．
orgをrakeファイルにしてplatexで読み込んで変換

handout.pdf 作成⇢　プレゼンテーション4分質問2分

課題 Thorでコマンドラインを作成する．

Questions about thesis of Mr.Yamane(\'16)
=========================================

1.  hikiとはどんなもの？
    -   Rubyで書かれたWiki
        clone？.orgみたいなのもの？結局どういったもの？[Hikiとは？](http://hikiwiki.org/ja/about.html)
        wikiはCMS(contents management system) hiki記法　markup language
2.  Thorとはどんなもの？
    -   コマンドラインツールの作成を支援するライブラリ．どうやって書いていくのか？
        [Thorの使い方まとめ](https://qiita.com/succi0303/items/32560103190436c9435b)
3.  optparseとはどんなものか？
    -   getopt
        よりも簡便で，柔軟性に富み，かつ強力なコマンドライン解析
        ライブラリである.そもそもgetoptとは？
    -   optparse(option parser)とは言語解析ツール
4.  OptionParser
    のインスタンスでコマンドラインを解析するという手法をとっている.
    -   どういうこと？
5.  hikiutils とはどんなものか？
    -   hiki の操作をするソフト．rubyで作られてコンテンツマネージメント
        コマンドラインでhikiを操作するもの．
6.  eucとは何をやっているのか？(p17)

文字コード,utf-8に変換する作業

1.  この研究は何をやっているのか？
    -   直感的なコマンドの実装?
    -   Thorで書き換えてみました．
2.  FizzBuzzとは？
    -   1からの数字を3で割れたらFizz,5で割れたらBuzz,15で割れたらFizzBuzzと表示させるもの？その処理をさせる意味は？
3.  どういった命名であると直感的にわかりやすいのか？
    -   shellで使われているもの？shellのコマンドは基本的に全て同じ
        構文の書き方が違う．
4.  どうやったらそれができるのか？
    -   使い方の手順など
5.  コメンドとは？(4.1.2 コメンド名と振る舞いの詳細)
    -   コマンドの間違い?

よくわからんこと Thor
で作成したコマンドラインはどのように反映させているのか？
.cgiのファイルはどのような役割があるのか？
web上のコマンド,一次受けのコマンド．アプリがコマンドを受け取る．

about How to pass Latex with fish
=================================

下記のリンクを参照する

-   [macOSでLaTeX環境整えた時のメモ(2018)](https://qiita.com/yaplus/items/55fa6957c1b15dbcf387)

about share iCloud
==================

下記の記事を参照にする

-   [iCloudとのファイル共有](https://qiita.com/daddygongon/items/e1495e95b1a0453c1084)
