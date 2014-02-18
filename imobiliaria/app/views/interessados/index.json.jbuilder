json.array!(@interessados) do |interessado|
  json.extract! interessado, :id, :nome, :login, :senha, :email
  json.url interessado_url(interessado, format: :json)
end
