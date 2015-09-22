class Destination < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :country, :books, presence: true
  geocoded_by :city
  after_validation :geocode

  def getInfoWindowHtml
    "<div><p>#{city}, #{country}</p>" +
    "<a href='/destinations/#{id}'>Get Book Suggestions</a></div>"
  end

  # def self.get_author(book)
  #   response = HTTParty.get "https://www.goodreads.com/search.xml?key=sperNAdGlluygbFCKZqL3g&q=#{book.gsub(" ", "+")}"
  #   results = response["GoodreadsResponse"]["search"]["results"]
  #   puts "image results: #{results}"
  #   if results
  #     url = results["work"].first["best_book"]["author"]["name"]
  #   else
  #     'Not Found'
  #   end
  # end

  def self.get_image_url(book)
    puts "Getting image url for book = #{book}"
    response = HTTParty.get "https://www.goodreads.com/search.xml?key=sperNAdGlluygbFCKZqL3g&q=#{book.gsub(" ", "+")}"
    puts "response: #{response}"
    results = response["GoodreadsResponse"]["search"]["results"]
    puts "image results: #{results}"
    if results
      url = results["work"].first["best_book"]["image_url"]
    else
      'Not Found'
    end
  end
end
