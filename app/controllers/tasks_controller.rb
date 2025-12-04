class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @chats = @task.chats.where(user: current_user)
  end
end
