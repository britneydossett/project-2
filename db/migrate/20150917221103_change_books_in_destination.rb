class ChangeBooksInDestination < ActiveRecord::Migration
  def change
    change_column :destinations, :books, :string, array: true
  end
end
