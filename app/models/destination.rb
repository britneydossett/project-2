class Destination < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :country, :books, presence: true
  geocoded_by :city
  after_validation :geocode

  def getInfoWindowHtml
    "<div><p>#{city}, #{country}</p>" +
    "<a href='/destinations/#{id}'>Get Book Suggestions</a></div>"
  end

  def self.get_author(book)
    response = HTTParty.get "https://www.goodreads.com/search.xml?key=sperNAdGlluygbFCKZqL3g&q=#{book.gsub(" ", "+")}"
    results = response["GoodreadsResponse"]["search"]["results"]
    # counter = 0
      if results && results["work"].is_a?(Array)
        url = results["work"][0]["best_book"]["author"]["name"]
        puts results
          if url.include?('nophoto')
            return results["work"][1]["best_book"]["author"]["name"]
          else
            return url
          end
      else
        'Not Found'
      end
    # counter++
  end

  def self.get_image_url(book)
    response = HTTParty.get "https://www.goodreads.com/search.xml?key=sperNAdGlluygbFCKZqL3g&q=#{book.gsub(" ", "+")}"
    results = response["GoodreadsResponse"]["search"]["results"]
    # counter = 0
      if results && results["work"].is_a?(Array)
        url = results["work"][0]["best_book"]["image_url"]

          if url.include?('nophoto')
            return results["work"][1]["best_book"]["image_url"]
          else
            return url
          end
      else
        'Not Found'
      end
    # counter++
  end
end
