class CreateQuantidadeambientes < ActiveRecord::Migration
  def change
    create_table :quantidadeambientes do |t|
      t.string :quantidade
      t.references :imovel, index: true
      t.references :ambiente, index: true

      t.timestamps
    end
  end
end
