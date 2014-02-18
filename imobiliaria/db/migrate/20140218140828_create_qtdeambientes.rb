class CreateQtdeambientes < ActiveRecord::Migration
  def change
    create_table :qtdeambientes do |t|
      t.integer :qtde

      t.timestamps
    end
  end
end
