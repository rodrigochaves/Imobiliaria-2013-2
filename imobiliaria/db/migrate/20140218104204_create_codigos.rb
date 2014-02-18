class CreateCodigos < ActiveRecord::Migration
  def change
    create_table :codigos do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.string :email
      t.string :endereco
      t.string :cpf

      t.timestamps
    end
  end
end
