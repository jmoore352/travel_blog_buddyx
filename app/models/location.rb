class Location < ActiveRecord::Base

  validates :category,   :presence => true
  validates :our_review,   :presence => true
  validates :our_rating,   :presence => true
  validates :destination_summary,   :presence => true
  validates :image,   :presence => true
  validates :city_country, :presence => true
  validates :category, inclusion: { in: %w(adventure relax city),
    message: "%{value} is not a valid category. Categories are adventure, relax, and city" }
  validates :our_rating, numericality: { only_integer: true }
  validates :our_rating, numericality: { greater_than: 0, less_than: 6}

  has_many :photos
  has_many :hiking_trails , :class_name => "HikingTrail", :foreign_key => "location_id"
  has_many :hotels

end

