json.extract! comment, :id, :user_id, :rant_id, :description, :like, :unlike, :inapropiate, :created_at, :updated_at
json.url comment_url(comment, format: :json)
