class Pessoa < ApplicationRecord
	  validates_presence_of :nome, :email, message: 'não pode ser deixado em branco'

end
