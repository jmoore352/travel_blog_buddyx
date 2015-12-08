class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.text :description
      t.string :link
      t.integer :our_rating
      t.text :our_review
      t.integer :location_id
      t.string :image

      t.timestamps

    end
  end
end
