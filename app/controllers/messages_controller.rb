class MessagesController < ApplicationController

  SYSTEM_PROMPT = "You are a Personal Assistant.\n\n Help me complete my tasks in small practical steps, without providing solutions.\n\nRespond concisely in Markdown."

  def create
    @chat = current_user.chats.find(params[:chat_id])
    @task = @chat.task

    @message = Message.new(message_params)
    @message.chat = @chat
    @message.role = "user"

    if @message.save
      @chat.generate_title_from_first_message

      ruby_llm_chat = RubyLLM.chat
      response = ruby_llm_chat.with_instructions(instructions).ask(@message.content)
      Message.create!(role: "assistant", content: response.content, chat: @chat)

      redirect_to chat_path(@chat)
    else
      render "chats/show", status: :unprocessable_entity
    end
  end

  private

  def task_context
    "Here is the context of the task: #{@task.content}."
  end

  def instructions
    [SYSTEM_PROMPT, challenge_context, @task.system_prompt].compact.join("\n\n")
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
