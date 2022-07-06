class AlterSections < ActiveRecord::Migration[7.0]
  def up
    add_index('sections', 'page_id')
  end

  def down
    remove_index('sections',  "page_id")
  end
end
