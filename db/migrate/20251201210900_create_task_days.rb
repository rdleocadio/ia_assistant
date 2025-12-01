class CreateTaskDays < ActiveRecord::Migration[7.1]
  def change
    create_table :task_days do |t|
      t.references :tarefa, null: false, foreign_key: true
      t.date :dia

      t.timestamps
    end
  end
end
