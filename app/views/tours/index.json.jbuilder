json.array!(@tours) do |tour|
  json.extract! tour, :id, :name, :image
  json.url tour_url(tour, format: :json)
end
