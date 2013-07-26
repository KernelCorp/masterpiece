Refinery::PagesController.class_eval do
	before_filter :bind_projects


	private

	def bind_projects
		@projects = Refinery::Projects::Project.all(:order => 'position')
	end
end
