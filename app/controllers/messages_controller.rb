class MessagesController < ApplicationController
  def create
    @chat = current_user.chats.find(params[:chat_id])

    # mensagem do usuário
    user_message = @chat.messages.create!(
      role: "user",                 # precisa bater com o tipo/enum da sua tabela
      content: message_params[:content]
    )

    # chama o LLM com histórico
    ai_reply = LlmService.chat(
      user_message: user_message.content,
      previous_messages: @chat.messages.where.not(id: user_message.id)
    )

    # mensagem da IA
    @chat.messages.create!(
      role: "assistant",
      content: ai_reply
    )

    redirect_to chat_path(@chat)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
