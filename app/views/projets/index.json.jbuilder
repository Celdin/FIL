json.array!(@projets) do |projet|
  json.extract! projet, :id, :description, :sujet, :date_rendu, :creator
  json.url projet_url(projet, format: :json)
end
