# Finest_Coffee


# 制作背景
新型コロナウイルスの感染拡大を受け、外出自粛が続いています。
そんな中でおうち時間を充実させるために
「ステイホーム」にぴったりの今まで知らなかった

# 工夫したところ


 
## 主要画面のキャプチャ・簡単な説明
 
-トップ画面
![スクリーンショット 2020-09-03 15 41 31](https://user-images.githubusercontent.com/67785220/92080112-f4ed7b80-edfb-11ea-9d52-99c660f2e94f.png)

-新規登録画面
![スクリーンショット 2020-09-03 15 40 21](https://user-images.githubusercontent.com/67785220/92080057-dc7d6100-edfb-11ea-97a9-a4427caec2b2.png)

-ログイン画面
![スクリーンショット 2020-09-03 15 38 02](https://user-images.githubusercontent.com/67785220/92079871-9922f280-edfb-11ea-9bc8-b3dc78237795.png)

-ブログ投稿画面
![スクリーンショット 2020-09-03 15 43 01](https://user-images.githubusercontent.com/67785220/92080267-367e2680-edfc-11ea-905c-ab52c6397515.png)


-投稿一覧画面


 
## 今後実装してみたい機能
 
- インクリメンタルサーチ機能
- タグ付機能
- いいね機能の非同期化
 
🌐 App URL
https://finestcoffee.herokuapp.com/blogs/new

- テストアカウント

メールアドレス：sample@test.com
パスワード：sss1111

- 動作確認方法

Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。
その際は少し時間をおいてから接続してください。
接続先およびログイン情報については、上記の通りです。
同時に複数の方がログインしている場合に、ログインできない可能性があります。


## ツール
 
1. Ruby
2. HAML
3. SASS
4. Jquery

 
## デプロイ
 
-heroku

## テスト

'rspec-rails', '~> 4.0.0.beta2'

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|email|string|null: false|
|password|string|null: false|

Association
has_many :blogs
has_many :likes
has_many :like_blogs, through: :likes

## blogsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|
|body|text|
|image|text|
|youtube_url|string|


Association
has_many :likes
has_many :comments

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|blog_id|integer|

Association
-belongs_to :user
-belongs_to :blog

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|
|user_id|integer|
|blog_id|integer|

belongs_to :blog
belongs_to :user
