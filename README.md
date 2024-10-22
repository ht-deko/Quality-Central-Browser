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

## DeepL 翻訳

`QCBrowser.exe` と同じ場所に、必要な項目を埋めた `QCBrowser.env` を置くと、下部のタブ内のメモフィールドを〔Ctrl〕+〔T〕で DeepL 翻訳します (トグル)。

```
[TranslateAPI]
APIType=1                                     // 1=DeepL
Enabled=0                                     // 1 で有効
URL=https://api-free.deepl.com                // URL (無償版)
;URL=https://api.deepl.com                    // URL (有償版)
ContentType=application/x-www-form-urlencoded // コンテンツタイプ
Resource=/v2/translate                        // リソース
AuthKey=********                              // 取得した DeepL の API キー
Language=JA                                   // 翻訳先の言語
```

[Comments] タブのコメントはネストされたレコードなので、ポップアップで翻訳されます。

※うまく翻訳されない時は文字列を選択してから〔Ctrl〕+〔T〕を押してみてください。選択範囲を部分的に翻訳します。

**See also:**

 - [DeepL API (DeepL)](https://www.deepl.com/ja/pro-api)
 - [DeepL API Free (DeepL Support)](https://support.deepl.com/hc/ja/articles/360021200939-DeepL-API-Free)

## Google 翻訳 (Google Cloud Translation API)

`QCBrowser.exe` と同じ場所に、必要な項目を埋めた `QCBrowser.env` を置くと、下部のタブ内のメモフィールドを〔Ctrl〕+〔T〕で Cloud Translation 翻訳します (トグル)。

```
[TranslateAPI]
APIType=2                                     // 2=Google Cloud Translation
Enabled=0                                     // 1 で有効
URL=https://translation.googleapis.com        // URL
ContentType=application/json; charset=UTF-8   // コンテンツタイプ
Resource=/language/translate/v2               // リソース (BASIC)
AuthKey=********                              // 取得した Google の API キー
Language=ja                                   // 翻訳先の言語
```

[Comments] タブのコメントはネストされたレコードなので、ポップアップで翻訳されます。

※うまく翻訳されない時は文字列を選択してから〔Ctrl〕+〔T〕を押してみてください。選択範囲を部分的に翻訳します。

**See also:**

 - [Cloud Translation ドキュメント (cloud.google.com)](https://cloud.google.com/translate/docs?hl=ja)
 - [Method: translate (cloud.google.com)](https://cloud.google.com/translate/docs/reference/rest/v2/translate)


## ヘッダ
EDN のページヘッダを模したヘッダがあり、次の機能があります。

 - GitHub リポジトリへのリンク
 - X へのシェア
 - Internet Archive での閲覧 (表示されている QC)
 - Embarcadero Quality Portal へのリンク

デフォルトでオフですが `QCBrowser.env` に次の記述を行うと起動時に表示されるようになります。

```
[SYSTEM]
ShowHeader=1
```

ヘッダは`〔Ctrl〕+〔H〕`で表示をトグルします。

## その他
Qiita にも記事があります。

 - [【Delphi】Quality Central ブラウザを作った話 (Qiita)](https://qiita.com/ht_deko/items/ab9e13361ae31c4089e2)
