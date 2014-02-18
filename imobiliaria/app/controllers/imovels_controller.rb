class ImovelsController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:imovel, {}).permit(:codigo, :modo, :tipo, :preco, :endereco, :datacadastro, :dono_id)]
    end

end
