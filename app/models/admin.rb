class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
 devise :database_authenticatable, :validatable
  include DeviseInvitable::Inviter

  has_many :invitations, class_name: 'Merchant', as: :invited_by

end
