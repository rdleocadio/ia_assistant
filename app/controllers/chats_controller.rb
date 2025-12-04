class ChatsController < ApplicationController

  def show
    @chat = current_user.chats.find(params[:id])
    @message = Message.new
  end

  def create
    @task = Task.find(params[:task_id])

    @chat = Chat.new(title: Chat::DEFAULT_TITLE)
    @chat.task = @task
    @chat.user = current_user

    if @chat.save
    redirect_to chat_path(@chat)
    else
      @chats = @title.chats.where(user: current_user)
      render "tasks/show"
    end
  end
end
