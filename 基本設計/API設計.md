# API設計
### ユーザー登録画面
#### POST /registar
- ユーザー登録画面
- Request
  - username
  - password
- Resonse
  - 200台
    - message
  - 400台
    - message

### ログイン画面
#### POST /login
- ログイン画面
- Request
  - username
  - password
- Resonse
  - 200台
    - message
  - 400台
    - message

### 日報画面
#### GET /daily-report/{userId}
- 日報の一覧を表示
- Request
  - なし
- Response
  - 200台
    - dailyreports
      - dailyreport
        - title
        - content
          - done
          - KPT
            - keep
            - problem
            - try
          - achievement
  - 500台
    - message

#### PUT /daily-report/{userId}/{reportId}
- 投稿済みの日報の編集
- Request
  - dairy-content
    - title
    - content
      - done
      - KPT
        - keep
        - problem
        - try
      - achievement
- Response
  - 200台
    - message
  - 400台
    - message
  - 500台
    - message

#### DELETE /daily-report/{userId}/{reportId}
- 投稿済みの日報の削除
- Request
  - なし
- Response
  - 200台
    - message
  - 400台
    - message
  - 500台
    - message

#### POST /daily-report/{userId}
- 新しい日報の投稿
- Request
  - dairy-content
    - title
    - content
      - done
      - KPT
        - keep
        - problem
        - try
      - achievement
- Response
  - 200台
    - message
  - 400台
    - message
  - 500台
    - message

### マイページ
#### GET /mypage/{userId}
- 日報ページでマイページボタンを押した時。マイページを表示
- Request
  - なし
- Response
  - 200台
    - achievemets
      - achievement
        - date
        - content
    - username
    - password
  - 400台
    - message
  - 500台
    - message