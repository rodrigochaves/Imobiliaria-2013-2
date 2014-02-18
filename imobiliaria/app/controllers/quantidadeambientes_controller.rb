class QuantidadeambientesController < InheritedResources::Base

    def build_resource_params
        [params.fetch(:quantidadeambiente, {}).permit(:quantidade, :imovel_id, :ambiente_id)]
    end

end
