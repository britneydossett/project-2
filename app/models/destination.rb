class Destination < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :country, :books, presence: true
  geocoded_by :title
  after_validation :geocode
end
