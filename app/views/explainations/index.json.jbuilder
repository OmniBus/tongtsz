json.array!(@explainations) do |explaination|
  json.extract! explaination, :id, :word_id, :description_id
  json.url explaination_url(explaination, format: :json)
end
