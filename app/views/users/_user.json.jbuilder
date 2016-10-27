json.extract! user, :id, :user_name, :password, :first_name, :last_name, :email, :semester, :career_id, :jobs_id, :friends_id, :created_at, :updated_at
json.url user_url(user, format: :json)