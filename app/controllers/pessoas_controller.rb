class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  def index
    @pessoas = Pessoa.all
  end

  def new
    @pessoa = Pessoa.new
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)
    if @pessoa.save
      flash[:notice] = "Olá #{@pessoa.nome}, você concluiu seu cadastro com sucesso!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  def edit
    @pessoas = Pessoa.all
    render :edit
  end

  def update
    if @pessoa.update(pessoa_params)
      redirect_to root_path, notice: "Seu cadastro foi atualizado com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @pessoa.destroy
    flash[:notice] = "Sentiremos a sua falta #{@pessoa.nome}, seu cadastro foi deletado."
    redirect_to root_path
  end


  private
  def set_pessoa
    @pessoa = Pessoa.find(params[:id])
  end

  def pessoa_params
    params.require(:pessoa).permit :nome, :email, :id
  end
end
