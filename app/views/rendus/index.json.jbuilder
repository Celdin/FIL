json.array!(@rendus) do |rendu|
  json.extract! rendu, :id, :note
  json.url rendu_url(rendu, format: :json)
end
