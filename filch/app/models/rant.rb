class Rant < ApplicationRecord
  belongs_to :user
  has_one :geofence
  has_many :comments, dependent: :delete_all
  belong_to :dumpster, :class_name => 'Dumpster',optional: true
  has_many_attached :images


	#validates :user_id, :title, :description, presence: true
  	#validates :title, :description, length: { minimum: 5 }
end