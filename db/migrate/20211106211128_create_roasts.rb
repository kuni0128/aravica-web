class CreateRoasts < ActiveRecord::Migration[6.1]
  def change
    create_table :roasts do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :depth, null: false, limit: 1

      t.timestamps
    end
  end
end
