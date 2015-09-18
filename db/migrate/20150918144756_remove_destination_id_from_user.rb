class RemoveDestinationIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :destination_id, :integer
  end
end
