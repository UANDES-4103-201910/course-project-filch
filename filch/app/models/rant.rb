class Rant < ApplicationRecord
  belongs_to :user
  has_one :geofence
  has_many :comments, dependent: :delete_all
  belongs_to :dumpster, :class_name => 'Dumpster',optional: true
  has_many_attached :images
  has_one :platform


	#validates :user_id, :title, :description, presence: true
  	#validates :title, :description, length: { minimum: 5 }
end