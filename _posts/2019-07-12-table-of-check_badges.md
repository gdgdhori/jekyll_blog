                                                       A   B   C   D
  ---------------------------------------------------- --- --- --- ---
  6/25 : commandline by Thor                           ○   ×   ○   ×
  7/1 : install jekyll and change org-mode to jekyll   ×   ○   ×   ×
  7/8 : about check~badges~                            ×   ○   ○   ×

Question

-   conv~mdandstoreをすると~.orgファイルではテーブル表示されていたが.mdファイルでは何故か\"\\

\\\|\"が消されて変換されるためテーブル表示されない

-   \"\\\|\"が二つ続くとconv~mdandstoreの処理が途中で終わり全てのファイルが~.mdに変換されない
-   jekyllで\"\\\|\"が表示されない
    -   \"\\\|\"の前に\"\\\\\"を入れるとjekyllで\"\\\|\"が表示されるようになった
-   my~blogに~\"\\\\\"がある状態でconv~mdandstoreすると~\"\\\\\"が3つ続けて.mdに出力されるようにな\

る
