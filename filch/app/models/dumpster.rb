class Dumpster < ApplicationRecord
   belongs_to :rant  
  validates :rant_id,presence: true

  def get_email_owner
    owner = User.find(Post.find(post_id).user_id).email
  end

  def get_post_title
    rant_title = Rant.find(post_id).title
  end

end
