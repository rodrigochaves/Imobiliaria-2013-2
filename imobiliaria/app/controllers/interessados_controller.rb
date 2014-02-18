class InteressadosController < InheritedResources::Base
    
    def build_resource_params
        [params.fetch(:interessado, {}).permit(:nome, :login, :senha, :email)]
    end

end
