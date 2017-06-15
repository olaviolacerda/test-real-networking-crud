class RemoveSetorFromTableEmpresa < ActiveRecord::Migration[5.1]
  def change
    remove_column :empresas, :setor, :string
  end
end
