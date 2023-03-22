class Book < ApplicationRecord
  validates :title, :author, :genre, presence: true 
  
  has_many :book_statuses
  has_many :users, through: :book_statuses
end