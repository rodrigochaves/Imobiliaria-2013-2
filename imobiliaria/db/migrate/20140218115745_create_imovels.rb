class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.string :codigo
      t.string :modo
      t.string :tipo
      t.string :preco
      t.string :endereco
      t.date :datacadastro
      t.references :dono, index: true

      t.timestamps
    end
  end
end
