class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null:false
      t.string :remember_token
      t.belongs_to :destination, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
