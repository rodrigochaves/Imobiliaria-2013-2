class CreateQuantidadetipoambientes < ActiveRecord::Migration
  def change
    create_table :quantidadetipoambientes do |t|
      t.string :quantidade
      t.references :interessado, index: true
      t.references :ambiente, index: true

      t.timestamps
    end
  end
end
