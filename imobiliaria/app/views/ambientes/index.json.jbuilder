json.array!(@ambientes) do |ambiente|
  json.extract! ambiente, :id, :descricao
  json.url ambiente_url(ambiente, format: :json)
end
