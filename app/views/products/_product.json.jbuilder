json.extract! product, :id, :name, :quantity, :unit_price, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
