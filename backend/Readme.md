# Backend
## 構成
### api
- API。フロントエンドがこいつを叩く。
### mysql
- MySQL。
### docker-compose.yml
- API の SpringBoot コンテナと MySQL コンテナが動く。
## 動作確認方法
1. docker-compose.yml のあるディレクトリに行く
2. docker compose up
## api：困ったときは
## mysql：困ったときは
### init.sql が実行されない
1. ```docker compose down```
2. ```rm -r data```
3. ```mkdir data```
4. ```docker compose up```