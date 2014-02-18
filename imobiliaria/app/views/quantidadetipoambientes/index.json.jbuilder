json.array!(@quantidadetipoambientes) do |quantidadetipoambiente|
  json.extract! quantidadetipoambiente, :id, :quantidade, :interessado_id, :ambiente_id
  json.url quantidadetipoambiente_url(quantidadetipoambiente, format: :json)
end
