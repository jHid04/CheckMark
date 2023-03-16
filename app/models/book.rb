class Book < ApplicationRecord
  has_many :book_statuses
  has_many :users, through: :book_statuses
end