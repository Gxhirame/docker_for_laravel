# docker_for_laravel
## ディレクトリ構成
### このプロジェクト単体  
``` bash
docker_for_laravel
├── .Docker
│   ├── apache
│   ├── mysql
│   ├── nginx
│   ├── php
│   ├── postgres
│   └── workspace
├── src
├── .env.example
└── docker-compose.yml
```

### 使用する際のプロジェクト
``` bash
new_project_name
└── docker_for_laravel
   ├── .Docker
   │   ├── apache
   │   ├── mysql
   │   ├── nginx
   │   ├── php
   │   ├── postgres
   │   └── workspace
   ├── src
   │   ├── laravel_directory
   │   └── ••• 
   ├── .env.example
   └── docker-compose.yml
```

## Docker環境を整える
1. envファイル作成  
`cp .env.example .env`
2. envファイルを書き換える
3. `mysql` or `postgres`  
`apache` or `nginx`  
をdocker-compose.ymlでコメントアウトする
4. dockerビルド  
`docker-compose build`  
6. dockerコンテナ作成  
`docker-compose up -d`  
7. laravelプロジェクトを作る  
   1. php のコンテナに入る  
   `docker-compose exec php bash`  
   2. git からlaravelのプロジェクトを落としてくる  
   `composer create-project --prefer-dist "laravel/laravel=5.8.*" .`  
   3. laravelの確認  
   `php artisan -V`  
   ->Laravel Framework 5.8.32 だと良き  

## コンテナに入る方法
- php  
`docker-compose exec php bash`
- apache  
`docker-compose exec apache bash`
- nginx  
`docker-compose exec nginx bash`
- mysql  
`docker-compose exec mysql bash`  
- workspace  
`docker-compose exec workspace bash`
    

