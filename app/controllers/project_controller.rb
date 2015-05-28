class ProjectController < ApplicationController
  def index
  	@projects = Project.all.order("created_at ASC")
  end

  def show
  	@project = Project.find(params[:id])
  	@tasks = @project.tasks.order(:tag) 

  	@joined = false

  	if !current_user.nil? && !current_user.projects.nil?
  		@joined = current_user.projects.include?(@project)
  	end

  	@users = @project.users.order('created_at DESC').first(10)
  end
end
