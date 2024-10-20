# Quality Central Browser
Quality Central のブラウザです。Delphi 12.0 で作られており、Delphi Community Edition でビルド可能です。

![image](https://github.com/user-attachments/assets/7eee0de3-e4ce-4b4a-af8f-dd476d405252)

ビルドには **QCScraper** が吐いた XML データが必要です。Jeroen W. Pluimers 氏のサイトから DL できます。
 - [QCScraper ClientDataSet XML dump results – archive of qc.embarcadero.com (wiert.me)](https://wiert.me/2017/12/21/qcscraper-clientdataset-xml-dump-results-archive-of-qc-embarcadero-com/)

## ビルド
そのままビルドするとデータのない `QCBrowser.exe` が生成されてしまいます。

![image](https://github.com/user-attachments/assets/467362ca-e025-4756-82e0-ea274ac91fbf)

データモジュールの `cdsMain` を右クリックし、QCScraper が吐いた XML ファイルを読み込ませてください。</br>
正常にビルドが完了すると 77MB 程度の実行形式ファイルができると思います。

## ショートカットキー
各部のショートカットキーは次の通りです。

![image](https://github.com/user-attachments/assets/d9612319-585d-4b68-9016-4219b54a8c15)

## フィルター
ラベルやタブをダブルクリックすると、フィルター用の式が挿入されます。

![image](https://github.com/user-attachments/assets/b42122c3-ae7a-4aeb-bf25-d492bc6a51b8)

★の箇所はルックアップなので、元のコードを知らないと検索できません。元のコードは xml フォルダ内のデータで調べてください。

## QCWIN: プロトコル
管理者権限で次のコマンドを実行すると、QCBrowser.exe が QCWIN: プロトコルに関連付けられます。 

```
QCBrowser.exe /RegisterProtocol
```

解除は `/UnregisterProtocol` です。 

```
QCBrowser.exe /UnregisterProtocol
```

うまく関連付けられたら、以下のリンクの `QCWIN:Defect_No=xxxxx` となっている箇所をクリックすると当該レポートが QCBrowser で表示されると思います。

 - [RTL のバグによる文字コード関連の問題を回避するには？ (ht-deko.com)](https://ht-deko.com/tech051.html)

**See also:**

 - [【Delphi】Quality Central ブラウザを作った話 (Qiita)](https://qiita.com/ht_deko/items/ab9e13361ae31c4089e2)


