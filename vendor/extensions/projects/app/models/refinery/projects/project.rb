module Refinery
  module Projects
    class Project < Refinery::Core::BaseModel
      self.table_name = 'refinery_projects'

      attr_accessible :title, :photo_id, :description, :position, :vk_link, :od_link, :facebook_link, :twitter_link,
                      :youtube_link


      acts_as_indexed :fields => [:title, :description]
      #TODO validate social links!
      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
      belongs_to :page, :class_name => '::Refinery::Page'
    end
  end
end
