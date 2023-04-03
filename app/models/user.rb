class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :user_name, presence: :true, uniqueness: :true
  validates :first_name, :last_name, presence: :true
  has_many :discussions
  has_many :book_statuses
  has_many :books, through: :book_statuses
  has_many :memberships
  has_many :clubs, through: :memberships
end
