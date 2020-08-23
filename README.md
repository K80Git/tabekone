# 食べコネ
  本アプリ「食べコネ」は、メニューをレビューし共有するSNSです。
### アプリURL
URL:http://3.129.84.46/
テストアカウント(ログイン画面にて、下記を入力してください)
  E-mail:test@test
  PW:1234567

## アプリ概要
### 制作背景(意図)
　現在、飲食店のレビューサイトは各企業から多く公開されており、飲食店を探したり、事前に料金を知ることができたり、予約ができるなど、
利便性が高く、食について様々な選択肢を得ることができました。
  一方、レビューの評価が高いお店に行っても、「満足できなかった」、「自身の好みと合わなかった」などの話を聞くこともあります。
また、注文・食べた後に、別のメニューの方が美味しいかったなどの、残念な経験をした方は多くいると思っています。

### アプリ概要
  食べコネでは、メニューの美味しさ、コスパ、味に対する評価、また、
食べた状況（夜食、宴会）、どのような方におすすめするかなどを含めたレビューを共有します。
  数多くある飲食店やメニューの中から、自身の好みや行く状況などに合わせ選択することができるため、
自分にあったお店やメニューに出会えます。

https://drive.google.com/file/d/1CQAK9BEswvCDQdj9JOuZ2CvwENMN0YfP/view?usp=sharing


## 開発にあたって 
### 使用技術(開発環境)
Haml/ Scss/ Ruby/ Ruby on Rails/ AWS/ Git/

### 工夫したポイント
・一つのページにおいて、複数のモデルを活用するなどをして情報量を増やした。
・ページのデザイン等はシンプルまたは統一させ、省力化をはかった。

### 課題や今後実装したい機能
（1）Shop、Menuモデルの構築
実店舗やメニューを使用したモデルの作成するとともに、
レビューサイトのURLを組み込み、レビューサイトへの誘導したい。
（2）おすすめの精度向上
現状としては、ユーザー自身が好みのグループに参加するようにしているが、
プロフィールやレビュー結果に基づき、ユーザーの好みと近い人を検索し、
その人のレビュー結果を自動的に紹介する仕組みを導入したい。
（3）好みの分析
各ユーザーのプロフィールとレビュー結果を分析し、
ユーザーの属性を踏まえた、メニューへのニーズを把握したい。

## DB設計
#### ER図
<img width="901" alt="ER" src="https://user-images.githubusercontent.com/67084301/90975957-d376cf00-e573-11ea-8a06-149e8cbf2b08.png">

#### userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|likeTast|integer||
|washoku|integer||
|yousyoku|integer||
|tyuuka|integer||
|ethnic|integer||
|meat|integer||
|fish|integer||
|vegetable|integer||
|Al|integer||
|Sw|integer||
|cp|integer||
|email|string|null: false,|

has_many :reviews
has_many :group_users
has_many :groups, through: :group_users

#### Reviewテーブル
|Column|Type|Options|
|------|----|-------|
|shopName|string|null:false|
|menuName|string|null:false|
|kind|string||
|situation|string||
|deliciousness|integer ||
|costPerformance|integer ||
|sweetness|integer ||
|strongTaste|integer ||
|Texture|integer ||
|EaseOfEating|integer ||
|volume|integer ||
|appearance|integer ||
|balance|integer ||
|disagreement|integer ||
|group|integer ||
|comment|integer ||
|user|references |null:false, foregin_key:true|

belongs_to :user
belongs_to :group

#### Groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|

has_many :group_users
has_many :users, through: :group_users
has_many :reviews

#### GroupUsersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references |null:false, foregin_key:true|
|group|references |null:false, foregin_key:true|

belongs_to :group
belongs_to :user