RubyLLM.configure do |config|
  config.openai_api_key = ENV["GITHUB_TOKEN"]
  config.gemini_api_key = ENV["GEMINI_API_KEY"]
  config.openai_api_base = "https://models.inference.ai.azure.com"
end


#  system_prompt = "You are a virtual assistant that helps people with organizing daily tasks. You have to help them to break down them problem into small, actionable steps, without giving away solutions. Answer concisely in Markdown."
