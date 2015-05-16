json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :author_name, :product_id
  json.url comment_url(comment, format: :json)
end
