# +M（ぷらすミュージック）

## 開発

### PDFのポスターを取り込む

以下のコマンドを使うと、コンサート情報が自動で更新され、最新情報と過去の活動に追加されます。

`rake flyer src="" kind="" dest=""`

### ギャラリーに写真を追加する

#### リンク先画像の大きさをそろえる
```
convert .\IMG_1865.JPG -resize 1200>x1200> .\IMG_1865_web.JPG
```

#### サムネイルを生成
```
convert .\children_fes1.jpg -thumbnail 200x200^ -gravity center -extent 200x200 -quality 85% -gaussian-blur 0.05 .\children_fes1_thumbnail.jpg
```