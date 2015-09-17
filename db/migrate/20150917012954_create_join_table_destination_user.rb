class CreateJoinTableDestinationUser < ActiveRecord::Migration
  def change
    create_join_table :destinations, :users do |t|
      # t.index [:destination_id, :user_id]
      # t.index [:user_id, :destination_id]
    end
  end
end
