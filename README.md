# Quality Central Browser
Quality Central のブラウザです。

![image](https://github.com/user-attachments/assets/b73f6c03-e5ed-48fc-9287-fcb6f7600a6c)

ビルドには **QCScraper** が吐いた XML データが必要です。Jeroen W. Pluimers 氏のサイトから DL できます。
 - [QCScraper ClientDataSet XML dump results – archive of qc.embarcadero.com (wiert.me)](https://wiert.me/2017/12/21/qcscraper-clientdataset-xml-dump-results-archive-of-qc-embarcadero-com/)

## ビルド
そのままビルドするとデータのない `QCBrowser.exe` が生成されてしまいます。

![image](https://github.com/user-attachments/assets/467362ca-e025-4756-82e0-ea274ac91fbf)

データモジュールの `cdsMain` を右クリックし、QCScraper が吐いた XML ファイルを読み込ませてください。

## ショートカットキー
各部のショートカットキーは次の通りです。

![image](https://github.com/user-attachments/assets/74bf9da3-99a7-4f6a-aee4-b8cf3ee74471)

## フィルター
ラベルやタブをダブルクリックすると、フィルター用の式が挿入されます。

![image](https://github.com/user-attachments/assets/954da069-d9d7-4129-94fe-da168090ba31)

★の箇所はルックアップなので、元のコードを知らないと検索できません。元のコードは xml フォルダ内のデータで調べてください。
