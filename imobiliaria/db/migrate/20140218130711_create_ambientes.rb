class CreateAmbientes < ActiveRecord::Migration
  def change
    create_table :ambientes do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
