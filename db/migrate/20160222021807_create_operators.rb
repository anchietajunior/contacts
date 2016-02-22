class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :nome
      t.integer :codigo
      t.string :categoria
      t.integer :preco

      t.timestamps null: false
    end
  end
end
