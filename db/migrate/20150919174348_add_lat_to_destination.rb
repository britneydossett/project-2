class AddLatToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :latitude, :decimal, precision: 13, scale: 8
    add_column :destinations, :longitude, :decimal, precision: 13, scale: 8
  end
end
