class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: /\A\S+@.+\.\S+\z/, message: "must be a valid email address" }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
