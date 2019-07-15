Member of lab : A, B, C, D

 |       | A | B | C | D |
 |-------|---|---|---|---|
 | 6/25 : commandline by Thor  | ○| ×| ×| ○|
 | 7/1 : install jekyll and change org-mode to jekyll | ○| ×| ×| ○|
 | 7/8 : about check_badges  | ○|○|× | [×](https://qiita.com/daddygongon/items/d803d9ce6d75bef3179a)|
 
 
 Question
- conv_md_and_storeをすると.orgファイルではテーブル表示されていたが.mdファイルでは何故か"\|"が消されて変換されるためテーブル表示されない
- "\|"が二つ続くとconv_md_and_storeの処理が途中で終わり全てのファイルが.mdに変換されない
- jekyllで"\|"が表示されない
  - "\|"の前に"\\"を入れるとjekyllで"\|"が表示されるようになった
- my_blogに"\\"がある状態でconv_md_and_storeすると"\\"が3つ続けて.mdに出力されるようになる