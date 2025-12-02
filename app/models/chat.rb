class Chat < ApplicationRecord
  belongs_to :tarefa
  has_many :mensagens, dependent: :destroy
end
