# 使ってみたいフレームワークとライブラリで作るチャットアプリ
基本方針：サーバ側はRailでAPIとWebSocketを用意、クライアント側はPolymerを使いながら楽をしてチャットアプリを作る。

# サーバの役割
- APIとWebSocketのみでViewは提供しない

# クライアントの役割
- WebComponentsとクライアントサイドルーティングを用いてViewを書き換える。(polyfilとしてpolymerを使用)
- 必要な情報はfetch APIを用いてサーバ側のAPIから取ってくる。(IE11向けにpolyill使用)
- リアルタイムチャットにするためにWebsocketを用いる。

# 実行方法
クライアントとサーバそれぞれのディレクトリにあるREADME.mdを参照してください。
