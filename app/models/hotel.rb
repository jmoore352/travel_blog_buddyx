class Hotel < ActiveRecord::Base

  validates :link,   :presence => true
  validates :our_review,   :presence => true
  validates :our_rating,   :presence => true
  validates :description,   :presence => true
  validates :image,   :presence => true
  validates :our_rating, numericality: { only_integer: true }
  validates :our_rating, numericality: { greater_than: 0, less_than: 6}


  belongs_to :location

end

