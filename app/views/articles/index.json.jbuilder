json.array!(@articles) do |article|
  json.extract! article, :id, :title, :arthor, :body, :rate
  json.url article_url(article, format: :json)
end
