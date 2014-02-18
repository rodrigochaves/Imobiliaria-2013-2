class QuantidadetipoambientesController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:quantidadetipoambiente, {}).permit(:quantidade, :interessado_id, :ambiente_id)]
    end
    
end
