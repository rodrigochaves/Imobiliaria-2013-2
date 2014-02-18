class AmbientesController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:dono, {}).permit(:descricao)]
    end

end
