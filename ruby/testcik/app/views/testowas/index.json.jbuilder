json.array!(@testowas) do |testowa|
  json.extract! testowa, :id, :name, :age
  json.url testowa_url(testowa, format: :json)
end
