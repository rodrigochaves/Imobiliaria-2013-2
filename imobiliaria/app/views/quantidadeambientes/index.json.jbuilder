json.array!(@quantidadeambientes) do |quantidadeambiente|
  json.extract! quantidadeambiente, :id, :quantidade, :imovel_id, :ambiente_id
  json.url quantidadeambiente_url(quantidadeambiente, format: :json)
end
