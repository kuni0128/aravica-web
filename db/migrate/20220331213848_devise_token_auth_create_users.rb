class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table(:users) do |t|
      # Required
      t.string :uid, null: false, default: ""
      t.string :provider, null: false, default: "email"

      t.string :nickname
      t.string :image
      t.string :email, index: { unique: true }

      # Database authenticatable
      t.string :encrypted_password, null: false, default: ""

      # Tokens
      t.text :tokens

      # Recoverable
      t.string   :reset_password_token, index: { unique: true }
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, default: false

      # Rememberable
      t.datetime :remember_created_at

      t.timestamps
    end

    add_index :users, %i(uid provider), unique: true
  end
end
