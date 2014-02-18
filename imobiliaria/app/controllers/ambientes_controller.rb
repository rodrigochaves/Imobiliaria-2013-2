class AmbientesController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:ambiente, {}).permit(:descricao)]
    end

end
