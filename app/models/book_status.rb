class BookStatus < ApplicationRecord
  validates :status, presence: true
  
  belongs_to :user
  belongs_to :book
end