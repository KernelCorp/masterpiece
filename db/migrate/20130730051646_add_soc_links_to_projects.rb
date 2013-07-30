class AddSocLinksToProjects < ActiveRecord::Migration
  def change
    add_column :refinery_projects, :vk_link,        :string
    add_column :refinery_projects, :od_link,        :string
    add_column :refinery_projects, :facebook_link,  :string
    add_column :refinery_projects, :twitter_link,   :string
    add_column :refinery_projects, :youtube_link,   :string
  end
end
