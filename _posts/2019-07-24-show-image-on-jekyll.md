以下のリンクを参考してjekyllの画像表示ができた
[Jekyllのエントリに画像を貼る](https://takezoe.hatenablog.com/entry/20140629/p1)

/images/sample.pngという画像ファイルを配置したとした場合
リポジトリ内の画像ファイルを参照するのであれば以下のようにsite.baseurlという変数を使って記述する

!\[キャプション\]({{site.baseurl}}/images/sample.png)
