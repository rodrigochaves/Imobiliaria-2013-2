class CreateInteressados < ActiveRecord::Migration
  def change
    create_table :interessados do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.string :email

      t.timestamps
    end
  end
end
