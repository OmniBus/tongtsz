json.array!(@descriptions) do |description|
  json.extract! description, :id, :content
  json.url description_url(description, format: :json)
end
