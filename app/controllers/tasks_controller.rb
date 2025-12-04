class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks.all
  end

  def show
    @task = current_user.tasks.find(params[:id])
    @chat = Chat.new
  end
end
