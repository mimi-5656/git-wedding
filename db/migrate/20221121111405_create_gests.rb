class CreateGests < ActiveRecord::Migration[6.1]
  def change
    create_table :gests do |t|

      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :kana_firstname, null: false
      t.string :kana_lastname, null: false
      t.string :allergy, null: false
      t.text :message, null: false
      t.boolean :is_deleted, null: false, default: true

      # ホストがゲスト一覧を見る際にパスワード
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      # パスワード関連
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      t.timestamps
    end
  end
end
