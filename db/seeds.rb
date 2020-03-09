# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lady = Category.create(name: "レディース")

lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onepiece = lady.children.create(name: "")
lady_shoes = lady.children.create(name: "靴")
lady_room_wear = lady.children.create(name: "ルームウェア/パジャマ")
lady_leg_wear = lady.children.create(name: "レッグウェア")
lady_hat = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_accessory = lady.children.create(name: "アクセサリー")
lady_hair_accessory = lady.children.create(name: "ヘアアクセサリー")
lady_accessories = lady.children.create(name: "小物")
lady_watch = lady.children.create(name: "時計")
lady_wig = lady.children.create(name: "ウィッグ/エクステ")
lady_yukata_swimsuit = lady.children.create(name: "浴衣/水着")
lady_suit = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_maternity = lady.children.create(name: "マタニティ")
lady_other = lady.children.create(name: "その他")

lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス（半袖/袖なし）"},{name: "シャツ/ブラウス（七分/長袖）"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ホルターネック"},{name: "ニット/セーター"},{name: "チュニック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "ベスト/ジレ"},{name: "パーカー"},{name: "トレーナー/スウェット"},{name: "ベアトップ/チューブトップ"},{name: "ジャージ"},{name: "その他"}])
lady_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "ポンチョ"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "スタジャン"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "スカジャン"},{name: "その他"}])
lady_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])
lady_skirt.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])
lady_onepiece.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"},{name: "その他"}])
lady_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])
lady_room_wear.children.create([{name: "パジャマ"}, {name: "ルームウェア"}])
lady_leg_wear.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"},{name: "レッグウォーマー"},{name: "その他"}])
lady_hat.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング帽/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])
lady_bag.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"},{name: "リュック/バックパック"},{name: "ボストンバッグ"},{name: "スポーツバッグ"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ボディバッグ/ウェストバッグ"},{name: "マザーズバッグ"},{name: "メッセンジャーバッグ"},{name: "ビジネスバッグ"},{name: "旅行用バッグ/キャリーバッグ"},{name: "ショップ袋"},{name: "和装用バッグ"},{name: "かごバッグ"},{name: "その他"}])
lady_accessory.children.create([{name: "ネックレス"}, {name: "ブレスレッド"}, {name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス（片耳用）"},{name: "ピアス（両耳用）"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])
lady_hair_accessory.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"},{name: "その他"}])
lady_accessories.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "手袋/アームカバー"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー/ショール"},{name: "ストール/スヌード"},{name: "バンダナ/スカーフ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "イヤマフラー"},{name: "傘"},{name: "レインコート/ポンチョ"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])
lady_watch.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])
lady_wig.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])
lady_yukata_swimsuit.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])
lady_suit.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])
lady_maternity.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])
lady_other.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"}])

lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")
lady_ = lady.children.create(name: "")



#メンズ
lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ"},{name: "ポロシャツ"},{name: "タンクトップ"},{name: "ニット/セーター"},{name: "パーカー"},{name: "カーディガン"},{name: "スウェット"},{name: "ジャージ"},{name: "ベスト"},{name: "その他"}])
lady_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "ペインターパンツ"},{name: "サルエルパンツ"},{name: "オーバーオール"},{name: "その他"}])
lady_skirt.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "その他"}])