class CreateUsers < ActiveRecord::Migration[7.0]

  def up
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "lastname_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 50, :null => false

      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
