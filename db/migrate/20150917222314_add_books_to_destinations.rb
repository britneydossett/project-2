class AddBooksToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :books, :string, array: true
  end
end
