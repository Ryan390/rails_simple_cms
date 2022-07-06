class AlterPages < ActiveRecord::Migration[7.0]
  def up
    add_index('pages', 'subject_id')
    add_index('pages', 'permalink')
  end

  def down
    remove_index('pages',  "subject_id")
    remove_index('pages',  "permalink")
  end
end
