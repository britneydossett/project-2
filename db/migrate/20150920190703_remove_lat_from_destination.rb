class RemoveLatFromDestination < ActiveRecord::Migration
  def change
    remove_column :destinations, :latitude, :decimal
    remove_column :destinations, :longitude, :decimal
  end
end
