class CreateOriginCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :origin_countries do |t|
      t.string :name, null: false, index: { unique: true }
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
