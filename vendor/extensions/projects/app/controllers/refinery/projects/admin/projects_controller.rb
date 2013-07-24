module Refinery
  module Projects
    module Admin
      class ProjectsController < ::Refinery::AdminController

        crudify :'refinery/projects/project', :xhr_paging => true

        def create

          #@page.title = params[:project][:title]
          newPage = {'title' => Russian.translit(params[:project][:title]),
                     'parts_attributes' => {
                         '0' =>
                         {'title' => 'body',
                         'body' =>  params[:project][:description],
                         'position' => '0'}
                     }}
          @page = Page.new newPage
          @page.save!
          @project = Project.new params[:project]
          @project.page_id = @page.id
          @project.save!
          redirect_to '/refinery/projects'
        end

      end
    end
  end
end
