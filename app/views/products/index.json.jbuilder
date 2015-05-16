json.array!(@products) do |product|
  json.extract! product, :id, :title, :price, :description, :category, :status, :drop_off_point
  json.url product_url(product, format: :json)
end
