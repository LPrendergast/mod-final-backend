class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :area
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
