json.array!(@posts) do |post|
  json.extract! post, :id, :title, :author, :content, :view, :like
  json.url post_url(post, format: :json)
end
