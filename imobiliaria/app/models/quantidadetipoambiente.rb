class Quantidadetipoambiente < ActiveRecord::Base
  belongs_to :interessado
  belongs_to :ambiente
end
