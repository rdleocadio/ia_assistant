class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user, optional: true

  validates :content, presence: true
end
