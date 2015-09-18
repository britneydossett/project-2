class Destination < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :country, :books, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_s
    full_name
  end
end
