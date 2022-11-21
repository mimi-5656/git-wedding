class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|

      # ホストがゲスト一覧を見る際にパスワード
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      #パスワード関連
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps
    end
  end
end
