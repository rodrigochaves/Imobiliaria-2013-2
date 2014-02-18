json.array!(@donos) do |dono|
  json.extract! dono, :id, :codigo, :nome, :login, :senha, :email, :endereco, :cpf
  json.url dono_url(dono, format: :json)
end
