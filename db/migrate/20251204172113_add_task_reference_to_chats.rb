class AddTaskReferenceToChats < ActiveRecord::Migration[7.1]
  def change
    add_reference :chats, :task, null: false, foreign_key: true
  end
end
