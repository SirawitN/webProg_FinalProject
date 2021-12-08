json.extract! product, :id, :name, :price, :description, :picture, :store_id, :created_at, :updated_at
json.url product_url(product, format: :json)
json.picture url_for(product.picture)
