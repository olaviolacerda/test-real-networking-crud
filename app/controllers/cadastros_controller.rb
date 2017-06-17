class CadastrosController < ApplicationController
	def index

	end
	def edit
		if encontra_ultima_pessoa.blank?
			flash[:alert] = "Parece não haver usuários no banco :("
			redirect_to root_path
		end
		if encontra_ultima_empresa.blank?
			flash[:alert] = "Parece não haver empresas no banco :("
			redirect_to root_path
		end
	end

	private

	def encontra_ultima_pessoa
		@pessoa = Pessoa.all.last
	end

	def encontra_ultima_empresa
		@empresa = Empresa.all.last
	end


end
