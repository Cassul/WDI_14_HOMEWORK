class CommentsController < ApplicationController

  def index
  end

  def create
    @comment = Comment.new
    @comment.user_id = session[:user_id]
    @comment.project_id = params[:project_id]
    @comment.body = params[:body]
    @comment.save
    redirect_to project_path(@comment.project_id)
  end

end
