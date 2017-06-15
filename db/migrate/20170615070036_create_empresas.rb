class CreateEmpresas < ActiveRecord::Migration[5.1]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :setor

      t.timestamps
    end
  end
end
