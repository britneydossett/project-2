class RemoveBooksFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :books, :string
  end
end
