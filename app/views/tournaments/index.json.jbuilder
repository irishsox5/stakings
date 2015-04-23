json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :event, :location, :start_time, :start_date, :structure, :buy_in, :guarantee, :event_length, :tour_id
  json.url tournament_url(tournament, format: :json)
end
