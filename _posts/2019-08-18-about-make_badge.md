csvからデータを抽出して作成する

-   形式はdate,tutor,learner,attend,title

-   csvからデータを抽出する際にdateの重複する日を除き,ゼミを行った日を別の配列daysにソートし,その日付をテーブルの列にした.

-   learnerもdate同様に重複を除き,配列learnersにソートをかけてテーブルの列にした.

-   attendにより,出席していたらバッジを,それ以外であればmissと表示させるようにした.

-   バッジについてはdate,titleが表示され,tutorは色によって分け,誰に教えてもらったか分かるようにした.

下記のサイトにてバッジ作成 Shields.io

バッジの判定の仕方は
ゼミをやった日の配列daysの分だけループを回し,その中で元データの行の分だけループを回し,判定を行った.

元データを1行ずつ読み込み,それがテーブルの行と列のdays,learnersと一致(テーブルのセルの場所と一致)すればバッジのURLを付与,どれとも一致しない場合はmissとした.

shellにて make~badgeと入力することで自分のJekyll~
blogの直下にindex.mdとして作成することで自動でテーブルを作れるようにした.

不具合:

-   tutor\'s
    colorとテーブルの間に改行を2つ入れないとテーブル表示されない

今後の展望:

-   ~postにあるそれぞれの~.mdのファイル名によりデータを抽出？(できるか分からない)
    -   これによりバッジにリンク付けが可能？
-   これが出来れば誰が書いたか,どんな内容なのかがみんなで共有でき、すぐに分かるようになるかも

-   テーブルの表示の仕方を見やすく
    -   ゼミは最低週3らしいので一週間ごとにテーブルを区切って表示する
-   どこかに出席日数をカウントして表示する
