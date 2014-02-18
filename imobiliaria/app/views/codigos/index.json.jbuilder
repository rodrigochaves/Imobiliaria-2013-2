json.array!(@codigos) do |codigo|
  json.extract! codigo, :id, :nome, :login, :senha, :email, :endereco, :cpf
  json.url codigo_url(codigo, format: :json)
end
