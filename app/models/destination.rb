class Destination < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :country, :books, presence: true
  geocoded_by :title
  after_validation :geocode

  def getInfoWindowHtml
    "<div><p>#{city}</p>" +
    "<a href='/destinations/#{id}'>Get Book Suggestions</a></div>"
    # <%= link_to 'Show', user %>
  end
end
