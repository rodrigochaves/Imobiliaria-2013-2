json.array!(@qtdeambientes) do |qtdeambiente|
  json.extract! qtdeambiente, :id, :qtde
  json.url qtdeambiente_url(qtdeambiente, format: :json)
end
