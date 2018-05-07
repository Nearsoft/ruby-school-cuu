json.extract! user, :id, :email, :first_name, :last_name, :date_of_birth, :created_at, :updated_at
json.url user_url(user, format: :json)
