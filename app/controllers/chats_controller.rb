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

    @chat.save!

    redirect_to chat_path(@chat)
  end
end
