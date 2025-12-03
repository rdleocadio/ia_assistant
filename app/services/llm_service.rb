require "ruby_llm"

class LlmService
  def self.chat(user_message:, previous_messages: [], system_prompt: default_system_prompt)
    client = RubyLLM::Client.new(
      provider: :openai,
      api_key: ENV["OPENAI_API_KEY"],
      model: "gpt-4.1-mini"
    )

    messages = []

    # system prompt = persona + contexto + regras
    messages << { role: "system", content: system_prompt }

    # histórico do chat (se você estiver salvando no banco)
    previous_messages.each do |msg|
      messages << { role: msg.role, content: msg.content }
    end

    # mensagem atual do usuário
    messages << { role: "user", content: user_message }

    response = client.chat(messages: messages)

    # dependendo da gem, pode ser response["choices"]...

    response["choices"].first["message"]["content"]
  rescue => e
    Rails.logger.error("LLM ERROR: #{e.message}")
    "Ops, tive um problema para responder agora. Tenta de novo em alguns segundos 🙂"
  end

  def self.default_system_prompt
    <<~PROMPT
      Você é uma assistente de organização de rotinas chamada RoutineCare.
      Seu papel é ajudar o usuário a organizar o dia em blocos de tempo, equilibrando:

      - Tarefas obrigatórias (trabalho, estudos, compromissos fixos)
      - Autocuidado (sono, alimentação, pausas, lazer)
      - Casa e família (limpeza, organização, cuidados com filhos/pets)

      Responda sempre em português claro, em formato de lista organizada por horários.
      Se o usuário não der muitas informações, faça perguntas rápidas de clarificação.
    PROMPT
  end
end
