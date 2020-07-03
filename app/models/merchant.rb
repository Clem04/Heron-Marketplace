class Merchant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :orders
  has_many :labels, -> { distinct }, through: :products
  has_many :category, through: :products
  validates :name, :public_email, :location, :description, 
  :website, :instagram, :picture_1, :picture_2, :picture_3, :picture_4, presence: true

end
