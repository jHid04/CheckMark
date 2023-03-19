class Discussion < ApplicationRecord
  validates :title, presence: true 

  belongs_to :user
  belongs_to :club 
end