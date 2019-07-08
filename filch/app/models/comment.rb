class Comment < ApplicationRecord
  belongs_to :user,:class_name => 'User'
  belongs_to :rant
  validates :user_id, :decription, presence: true
  validates :content, length: { minimum: 1 }
  has_one_attached :image
end
