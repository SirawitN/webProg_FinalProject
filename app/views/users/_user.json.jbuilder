json.extract! user, :id, :username, :password_digest, :email, :name, :address, :subDistrict, :district, :province, :zipcode, :phoneNumber, :gender, :birthdate, :created_at, :updated_at
json.url user_url(user, format: :json)
