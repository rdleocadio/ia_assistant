class CreateTarefas < ActiveRecord::Migration[7.1]
  def change
    create_table :tarefas do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.date :prazo

      t.timestamps
    end
  end
end
