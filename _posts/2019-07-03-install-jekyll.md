jekyllのインストールについては下記を参照 [jekyllのinstallとGitHub
Pagesとの連携](https://qiita.com/daddygongon/items/9b7182db29861744fc79)

1.  gem install bundler jekyll
2.  jekyll new \"好きなタイトル\"
3.  emacs Gemfile で編集
4.  emacs ~config~ で編集
5.  bundle exec jekyll serve で起動したかを確認する
6.  Qiitaにそって編集する
7.  最後にbundle update

jekyllをインストールするとき ~data~, ~includes~, ~posts~, ~layouts~,
~sass~, assets, about.md, index.mdを自分のものと移し替えておくとよい
そのあとbundle
updateしておく(パッケージの中身をいじったときにやるとよい？)

[Ruby で作る、簡単 CLI
ツールのススメ](https://qiita.com/rosylilly/items/d7f9667f3998cfc420d1)
