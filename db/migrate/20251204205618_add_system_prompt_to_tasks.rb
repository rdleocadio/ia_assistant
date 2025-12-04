class AddSystemPromptToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :system_prompt, :text
  end
end
