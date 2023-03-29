class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable

  has_one :payment
  accepts_nested_attributes_for :payment


  def is_admin?
    is_admin

  end

end