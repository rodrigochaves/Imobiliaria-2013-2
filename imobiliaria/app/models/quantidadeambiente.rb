class Quantidadeambiente < ActiveRecord::Base
  belongs_to :imovel
  belongs_to :ambiente
end
