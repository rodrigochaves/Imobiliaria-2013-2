class DonosController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:dono, {}).permit(:codigo, :nome, :login, :senha, :email, :endereco, :cpf)]
    end
end
