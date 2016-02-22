class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :telefone
      t.date :data

      t.timestamps null: false
    end
  end
end
