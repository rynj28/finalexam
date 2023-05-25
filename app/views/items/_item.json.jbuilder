json.extract! item, :id, :quantity, :item_total_amount, :order_id, :product_id, :created_at, :updated_at
json.url item_url(item, format: :json)
