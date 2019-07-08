class User < ApplicationRecord
  devise :database_authenticatable, :registerable,:recoverable,:rememberable, :validatable, :trackable,:omniauthable, omniauth_providers: [:google_oauth2]
  has_one_attached :image
  has_many :rant
  has_one :geofence
  belongs_to :blacklist, optional: true
  has_one_attached :image

  def self.from_omniauth(auth)
    where(provider: auth.provider ,uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0, 20]
    end
  end

  
  def is_admin
    if role == "admin" || role == "Admin" 
      return true
    else
      return false
    end
  end

  def is_super_admin
    if  role == "superadmin" ||  role == "superAdmin" || role == "Superadmin" ||  role == "SuperAdmin" 
      return true
    else
      return false
    end
  end

end
