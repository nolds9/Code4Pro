class ProjectController < ApplicationController
  def index
  	@projects = Project.all.order("created_at ASC")
  end

  def show
  	@project = Project.find(params[:id])
  	@tasks = @project.tasks.order(:tag) 
  end
end
