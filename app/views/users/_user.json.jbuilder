json.extract! user, :id, :nick, :name, :lastname, :email, :phone, :description, :password, :picture, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
