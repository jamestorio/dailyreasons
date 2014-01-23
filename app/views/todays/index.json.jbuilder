json.array!(@todays) do |today|
  json.extract! today, :id, :date, :Reason_to_celebrate
  json.url today_url(today, format: :json)
end
