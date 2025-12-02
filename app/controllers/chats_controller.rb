class ChatsController < ApplicationController
  def create
  @tarefa = Tarefa.find(params[:tarefa_id])

  @chat = Chat.new(title: "Untitled")
  @chat.tarefa = @tarefa
  @chat.user = current_user

  if @chat.save
    redirect_to chat_path(@chat)
  else
    @chats = @tarefa.chats.where(user: current_user)
    render "tarefas/show"
  end
end

def show
  @chat    = current_user.chats.find(params[:id])
  @mensagem = Mensagem.new
end

end
