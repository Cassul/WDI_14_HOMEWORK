class ProjectsController < ApplicationController
  
  def new
  end

  def create
    project = Project.new
    project.title = params[:title]
    project.user_id = session[:user_id]
    project.preview = params[:preview]
    if project.save
      redirect_to "/"
    else 
      render 'new'
    end
  end
    
  def show
    @project = Project.find(params[:id])
    @comments = Comment.where(project_id: params[:id])
  end

end
