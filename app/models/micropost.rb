class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  # has_many :reverse_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  # has_many :favusers, through: :reverse_of_favorite, source: :user
end
