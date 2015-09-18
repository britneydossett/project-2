class Destination < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :country, :books, presence: true

end
