class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :item_users
  has_many :items, through: :item_users
  has_many :comments
  has_many :favorites
  has_one  :profile
  has_one  :user_address
  has_many  :credit_cards
end