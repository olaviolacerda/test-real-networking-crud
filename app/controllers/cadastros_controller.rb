class CadastrosController < ApplicationController
	def index

	end
	def edit
		if encontra_ultima_pessoa.blank? || encontra_ultima_empresa.blank?
			flash[:notice] = "Parece não haver dados o suficiente no banco :("
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
