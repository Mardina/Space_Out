class User < ApplicationRecord

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, :uniqueness => true
  validates :password, length: { minimum: 8 }

  has_many :rooms
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
