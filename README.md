# Finest_Coffee
Finest_Coffeeは自宅で楽しめるコーヒーに関するブログアプリケーションです。
ブログを掲載することでコーヒーの淹れ方の時間・手順やコーヒーを淹れる上でおすすめ器具やアイテムなどを閲覧できます。

# 制作背景
新型コロナウイルスの感染拡大を受け、外出自粛が続いています。
自宅で仕事をする時間が増え、家族やひとりで過ごす時間が増えたことをポジティブにとらえ、
暮らしの基本をひとつひとつ見直していくいい機会であったため、
おうち時間を充実させるために何かできないかと考えました。
「ステイホーム」にぴったりの今まで知らなかった
好みのコーヒー豆を探したり、おいしいコーヒーをいれるコツを知るきっかけとなるような
サービスを作りたいと思い作りました。
いつもはコンビニや会社の近くのカフェでテイクアウトしていた方、コーヒーの抽出を始めてみたい方、あるいは今自宅で飲んでいるコーヒーに飽きて家で味わう新たなコーヒーを試したい方、そんな方々におすすめです。

## 特徴
- ユーザー登録機能 <br>
deviseでのユーザー登録機能
- ブログ検索機能 <br>
気になるブログを検索できます。
- ブログ掲載 <br>
写真やテキストだけでなく動画でも紹介しており、わかりやすくサポートできます。
- マイページ機能 <br>
ユーザーが投稿されたブログに対して「いいね」したブログ内容が自分のマイページに表示されます。
- ページネーション機能 <br>
gem kaminariの導入により、5つ以上ブログが投稿されると、ページを複数のWebページに分割し、各ページへのリンクを並べてアクセスしやすくするために設置されております。

# 工夫したところ
ユーザーが少しでも内容がわかりやすく掲載された内容を見ていただくために、
ブログを投稿する際に動画を載せて一覧ページに表示させたことです。
ユーザーが「いいね」したブログ内容をマイページで表示させて、
ユーザーに手助けできるように心がけました。


## 主要画面のキャプチャ・簡単な説明
 
- トップ画面
![スクリーンショット 2020-09-03 15 41 31](https://user-images.githubusercontent.com/67785220/92080112-f4ed7b80-edfb-11ea-9d52-99c660f2e94f.png)

- 新規登録画面
![スクリーンショット 2020-09-03 15 40 21](https://user-images.githubusercontent.com/67785220/92080057-dc7d6100-edfb-11ea-97a9-a4427caec2b2.png)

- ログイン画面
![スクリーンショット 2020-09-03 15 38 02](https://user-images.githubusercontent.com/67785220/92079871-9922f280-edfb-11ea-9bc8-b3dc78237795.png)

- ブログ投稿画面
![スクリーンショット 2020-09-03 15 43 01](https://user-images.githubusercontent.com/67785220/92080267-367e2680-edfc-11ea-905c-ab52c6397515.png)

- 投稿一覧画面
![スクリーンショット 2020-09-03 16 00 59](https://user-images.githubusercontent.com/67785220/92081859-b0afaa80-edfe-11ea-8171-8910845df040.png)

- マイページ(お気に入り)
![スクリーンショット 2020-09-03 16 13 47](https://user-images.githubusercontent.com/67785220/92083139-8101a200-ee00-11ea-90cb-aa3ead0e04df.png)


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
has_many :comments

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
