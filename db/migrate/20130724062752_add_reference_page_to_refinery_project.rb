class AddReferencePageToRefineryProject < ActiveRecord::Migration
  def change
    add_column :refinery_projects, :page_id, :integer
  end
end
