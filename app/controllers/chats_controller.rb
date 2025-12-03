class ChatsController < ApplicationController
  before_action :authenticate_user!

  def show
    @messages = Message.order(created_at: :asc)
  end

  def create
    user_message = params[:message]

    # 1️⃣ Buscar tarefas do usuário no banco
    tasks = current_user.tasks.order(:praz).map do |task|
      "- #{task.title} | prazo: #{task.prazo} | prioridade: #{task.priority} | status: #{task.status}"
    end.join("\n")

    # 2️⃣ Montar PROMPT para IA
    prompt = <<~PROMPT
      Você é um assistente inteligente especializado em organizar tarefas.

      Estas são as tarefas do usuário:
      #{tasks}

      Pergunta do usuário:
      #{user_message}

      Responda de forma clara, direta e útil. Se pedir recomendações, ajude.
      Se pedir análise de prioridade, analise os prazos.
    PROMPT

    # 3️⃣ Enviar para OpenAI
    response = client.chat(
      parameters: {
        model: "gpt-4o-mini",
        messages: [{ role: "user", content: prompt }]
      }
    )

    ai_answer = response["choices"][0]["message"]["content"]

    # 4️⃣ Salvar mensagem do usuário e da IA
    Message.create!(conteudo: user_message, role: "user")
    Message.create!(conteudo: ai_answer, role: "assistant")

    redirect_to chat_path
  end

  private

  def client
    OpenAI::Client.new(access_token: ENV["OPENAI_API_KEY"])
  end
end
