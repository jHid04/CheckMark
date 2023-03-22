class Club < ApplicationRecord
  validates :club_name, presence: true
  
  belongs_to :user
  has_many :discussions
  has_many :memberships
  has_many :users, through: :memberships
  
end