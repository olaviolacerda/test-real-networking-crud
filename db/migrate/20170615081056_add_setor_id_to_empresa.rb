class AddSetorIdToEmpresa < ActiveRecord::Migration[5.1]
  def change
    add_column :empresas, :setor_id, :integer
  end
end
