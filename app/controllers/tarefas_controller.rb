class TarefasController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def show
    @tarefa = Tarefa.find(params[:id])
    @chats = @tarefa.chats.where(user: current_user)
  end

end
