json.extract! profile, :id, :gender, :matching_gender, :city, :age, :matching_min_age, :matching_max_age, :image, :user_id, :description, :display_name, :created_at, :updated_at
json.url profile_url(profile, format: :json)
json.image url_for(profile.image)
