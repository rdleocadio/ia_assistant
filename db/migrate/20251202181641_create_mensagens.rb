class CreateMensagens < ActiveRecord::Migration[7.1]
  def change
    create_table :mensagens do |t|
      t.string :role
      t.text :conteudo
      t.references :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
