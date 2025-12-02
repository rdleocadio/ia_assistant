class MensagensController < ApplicationController

  SYSTEM_PROMPT = "You are a Teaching Assistant.\n\nI am a student at the Le Wagon AI Software Development Bootcamp, learning how to code.\n\nHelp me break down my problem into small, actionable steps, without giving away solutions.\n\nAnswer concisely in Markdown."

  def create
    @chat = current_user.chats.find(params[:chat_id])
    @tareafa = @chat.tareafa

    @mensagem = Mensagem.new(mensagem_params)
    @mensagem.chat = @chat
    @mensagem.role = "user"

    if @mensagem.save
      ruby_llm_chat = RubyLLM.chat
      response = ruby_llm_chat.with_instructions(SYSTEM_PROMPT).ask(@mensagem.conteudo)
      Mensagem.create(role: "assistant", content: response.conteudo, chat: @chat)

      redirect_to chat_path(@chat)
    else
      render "chats/show", status: :unprocessable_entity
    end
  end

private

  def message_params
    params.require(:mensagem.permit(:conteudo))
  end

end
