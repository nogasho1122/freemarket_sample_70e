# 概要
テックキャンプの最終課題にて作成したフリーマーケットのアプリケーションです。   
5人のメンバーでタスクを切り分け作業を行いました。   
本資料では、自身で実装した箇所、および開発を通じて得られた経験についても紹介します。  
テーブル設計から全て自分たちで作業しました。  
[![Image from Gyazo](https://i.gyazo.com/0004e84cebe4cd73c80af3fdd9133267.jpg)](https://gyazo.com/0004e84cebe4cd73c80af3fdd9133267)

### 接続先情報
[フリマ](http://18.180.41.211/)  
ID/Pass  
ID: admin  
Pass: 2222  

**テスト用アカウント等**
購入者用  
  メールアドレス: test1@gmail.com  
  パスワード: 1234567  
購入用カード情報  
  番号：4242424242424242  
  期限：12/20  
  セキュリティコード：123  
出品者用  
  メールアドレス名: test2@gmail.com    
  パスワード: 1234567  
  
商品編集機能  
・元々のデータをそのまま持ってこれるようにしました。  
カテゴリー、ブランド、商品のサイズ、商品の状態  
配送のの方法、配送料の負担、発送元の地域、発送までの日数  
[![Image from Gyazo](https://i.gyazo.com/718cadecaae90f68a7fc0c93eaf5be2b.gif)](https://gyazo.com/718cadecaae90f68a7fc0c93eaf5be2b)  

・画像の編集では編集画面で追加と編集の両方をできるようにしました。  　
・追加  
[![Image from Gyazo](https://i.gyazo.com/7eca277027d017ef36dda12f2139f567.gif)](https://gyazo.com/7eca277027d017ef36dda12f2139f567)
・削除　　
[![Image from Gyazo](https://i.gyazo.com/2f7760ce1bea708f509b56ce5f9cc9f4.gif)](https://gyazo.com/2f7760ce1bea708f509b56ce5f9cc9f4)  

・カテゴリー機能では、親、子、孫要素の３つに分けてあり、親要素が変更されると子要素もリセットされるようになっています。  
・その他の選択画面もデータがそのままひきつがれるようになっています。変更も可能です。  
[![Image from Gyazo](https://i.gyazo.com/462c87a8c5cd42158c9c5e6fa4620aa3.gif)](https://gyazo.com/462c87a8c5cd42158c9c5e6fa4620aa3)  

・新規登録画面  
住所や生年月日など別テーブルに保存しなければならないデータも保存できるようにしました。   
郵便番号は、  
validates :post_code, format: { with: /\A\d{3}[-]\d{4}\z/, multiline: true}
という記述で、３桁の数字ハイフン４桁の数字出ないと登録できないようにしました。  
[![Image from Gyazo](https://i.gyazo.com/e453b423891b7465d114c3e1567d43a5.gif)](https://gyazo.com/e453b423891b7465d114c3e1567d43a5)  

・ログイン画面  
ログインしていない際、そのまま新規登録画面へ移動できるようにしました。  
[![Image from Gyazo](https://i.gyazo.com/c1b2bc18073e0efe6c213decc2e71fb5.png)](https://gyazo.com/c1b2bc18073e0efe6c213decc2e71fb5)



# DB設計  
グループで話し合い作成しました。
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false| -->
### Association
- belongs_to_active_hash :birth_year
- belongs_to_active_hash :birth_month
- belongs_to_active_hash :birth_day
- belongs_to_active_hash :prefecture
- devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
- has_many :items
- has_many :comments
- has_many :favorites
- has_one  :profile
- has_one  :user_address
- has_many :cards

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|introduction|text||
|image|string||
|phone_number|string||
|user_id|string|null: false, foreign_key: true| -->
### Association
- belongs_to :user

## user_addressesテーブル
|Column|Type|Options|
|------|----|-------|
|post_code|string|null: false|
|prefecture_code|string|null: false|
|city|string|null: false|
|house_number|string||
|building_name|string||
|user_id|string|null: false, foreign_key: true| -->
### Association
- belongs_to :user

## categories_table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items
- has_ancestry

## brands_table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items

## items_table
|Column|Type|Options|
|------|----|-------|
|name|string||
|buyer_id|references|foreign_key: true|
|size|string||
|item_condition|string||
|postage_payer|string||
|postage_type|string||
|prefecture_code|string||
|estimated_shipping_date|string||
|item_description|text||
|trading_status|string||
|price|integer||
|category_id|references|foreign_key: true|
|brand_id|references|foreign_key: true|
|user_id|string|foreign_key: true|
### Association
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :item_size
- belongs_to_active_hash :condition
- belongs_to_active_hash :postage_pay
- belongs_to_active_hash :shipping_date
- belongs_to_active_hash :postage_ty
- has_many :item_images, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :favorites
- belongs_to :user
- belongs_to :brand, optional: true
- belongs_to :category, optional: true

## comments_table
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|item_id|references|foreign_key: true|
|message|text|null: false|
### Association
- belongs_to :user
- belongs_to :item

## cards table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to :user

## item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|src|string||
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :item

