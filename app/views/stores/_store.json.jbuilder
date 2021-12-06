json.extract! store, :id, :username, :password, :email, :address, :subDistrict, :district, :province, :zipcode, :totalRatingScore, :rateCount, :created_at, :updated_at
json.url store_url(store, format: :json)
