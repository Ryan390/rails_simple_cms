class CreatePages < ActiveRecord::Migration[7.0]
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name", :limit => 50
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def down
    drop_table :pages
  end
end
