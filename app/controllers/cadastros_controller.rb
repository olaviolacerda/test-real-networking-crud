class CadastrosController < ApplicationController
	def index
		
	end
	def edit
		encontra_ultima_pessoa
		encontra_ultima_empresa
	end

	private

	def encontra_ultima_pessoa
		@pessoa = Pessoa.all.last
	end

	def encontra_ultima_empresa
		@empresa = Empresa.all.last
	end


end
