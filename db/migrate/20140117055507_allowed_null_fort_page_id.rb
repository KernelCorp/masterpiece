class AllowedNullFortPageId < ActiveRecord::Migration
  def up
    remove_index "refinery_page_translations", "refinery_page_id"
  end

  def down
    add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_refinery_page_translations_on_refinery_page_id"
  end
end
