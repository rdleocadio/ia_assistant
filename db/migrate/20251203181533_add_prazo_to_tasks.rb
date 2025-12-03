class AddPrazoToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :prazo, :date
  end
end
