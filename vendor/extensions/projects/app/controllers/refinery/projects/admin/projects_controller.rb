module Refinery
  module Projects
    module Admin
      class ProjectsController < ::Refinery::AdminController

        crudify :'refinery/projects/project', :xhr_paging => true


        def create
          @page = Page.new
          @page.title = params[:project][:title]
          @page.save!
        end

      end
    end
  end
end
