# docker_for_laravel

サイト : http://127.0.0.1:80

- laravel : 9000

- mysql : 3002

- postgres : 5432

- nginx : 80

- apache : 8080



# Docker環境を整える
1. envファイル作成  
`cp .env.example .env`
2. envファイルを書き換える
3. `mysql` or `postgres`  
`apache` or `nginx`  
をdocker-compose.ymlでコメントアウトする
4. dockerビルド  
`docker-compose up -d --build`
5. laravelプロジェクトを作る  
   1. php のコンテナに入る  
   `docker-compose exec php bash(or ash)`  
   2. git からlaravelのプロジェクトを落としてくる  
   `composer create-project --prefer-dist "laravel/laravel=5.8.*" .`  
   3. laravelの確認  
   `php artisan -V`  
   ->Laravel Framework 5.8.32 だと成功  

## コンテナに入る方法
- php  
`docker-compose exec php bash(or ash)`
- apache  
`docker-compose exec apache bash(or ash)`
- nginx  
`docker-compose exec nginx bash(or ash)`
- mysql  
`docker-compose exec mysql bash`
