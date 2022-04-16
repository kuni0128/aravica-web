class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table(:users) do |t|
      t.string :nickname, null: false
      t.string :image, null: false

      # Token authentications
      t.text :tokens
      t.string :uid, null: false, default: ""
      t.string :provider, null: false, default: "email"

      # Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    create_table(:user_registrations) do |t|
      # Confirmable
      t.string :email, null: false, index: { unique: true }
      t.string   :confirmation_token, null: false, index: { unique: true }
      t.datetime :confirmation_sent_at, null: false
      t.datetime :confirmed_at

      t.timestamps null: false
    end

    create_table(:user_database_authentications) do |t|
      t.references :user, foreign_key: true, index: { unique: true }

      # Database authenticatable
      t.string :email, null: false, index: { unique: true }
      t.string :encrypted_password, null: false, default: ""

      t.timestamps null: false
    end

    create_table(:user_password_reset_requests) do |t|
      t.references :user, foreign_key: true, index: { unique: true }

      # Recoverable
      t.string   :reset_password_token, index: { unique: true }
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, default: false

      t.timestamps null: false
    end

    add_index :users, %i(uid provider), unique: true
  end
end
