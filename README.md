# docker_for_laravel

- laravel
http://127.0.0.1:10080
- mysql
3002
- postgres
5432

# Docker環境を整える
1. envファイル作成
`cp .env.example .env`
2. envファイルを書き換える
3. dockerビルド
`docker-compose up -d --build`
4. mysqlかpostgresをコメントアウトする
5. laravelプロジェクトを作る
   1. php のコンテナに入る
   `docker-compose exec app ash`
   2. git からlaravelのプロジェクトを落としてくる
   `composer create-project --prefer-dist "laravel/laravel=5.8.*" .`
   3. laravelの確認
   `php artisan -V`
   ->Laravel Framework 5.8.32 だと成功
