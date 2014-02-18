json.array!(@imovels) do |imovel|
  json.extract! imovel, :id, :codigo, :modo, :tipo, :preco, :endereco, :datacadastro, :dono_id
  json.url imovel_url(imovel, format: :json)
end
