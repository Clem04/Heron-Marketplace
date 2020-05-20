class Merchant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :products
  has_many :labels, -> { distinct }, through: :products
  has_many :category, through: :products
end
