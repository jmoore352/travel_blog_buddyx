class CreateHikingTrails < ActiveRecord::Migration
  def change
    create_table :hiking_trails do |t|
      t.string :link
      t.integer :our_rating
      t.text :our_review
      t.integer :location_id
      t.text :description
      t.string :image

      t.timestamps

    end
  end
end
