json.array!(@hints) do |hint|
  json.extract! hint, :id, :hint, :order, :belongs_to
  json.url hint_url(hint, format: :json)
end
