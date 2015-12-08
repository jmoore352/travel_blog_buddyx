class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :category
      t.text :our_review
      t.text :destination_summary
      t.integer :our_rating
      t.string :price
      t.string :city_country
      t.date :date
      t.string :image

      t.timestamps

    end
  end
end
