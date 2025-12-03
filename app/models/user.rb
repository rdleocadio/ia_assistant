class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :messages, through: :chats

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
