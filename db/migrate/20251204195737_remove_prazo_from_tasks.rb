class RemovePrazoFromTasks < ActiveRecord::Migration[7.1]
  def change
    remove_column :tasks, :prazo, :date
  end
end
