json.array!(@explanations) do |explanation|
  json.extract! explanation, :id, :word_id, :description_id
  json.url explanation_url(explanation, format: :json)
end
