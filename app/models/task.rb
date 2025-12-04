class Task < ApplicationRecord
  has_many :chats, dependent: :destroy

  validates :title, :content, presence: true
end
