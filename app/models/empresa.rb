class Empresa < ApplicationRecord
		belongs_to :setor

	  validates_presence_of :nome, :setor, message: 'não pode ser deixado em branco'
end
