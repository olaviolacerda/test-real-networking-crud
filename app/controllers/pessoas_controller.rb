class PessoasController < ApplicationController
  before_action :find_pessoa, only: [:show, :edit, :update, :destroy]

  def index
    @pessoas = Pessoa.all
  end

  def new
    @pessoa = Pessoa.new
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)
    if @pessoa.save
      flash[:notice] = "A pessoa de nome #{@pessoa.nome} foi criada com sucesso"
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
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @pessoa.destroy
    flash[:notice] = "A pessoa de nome #{@pessoa.nome} foi deletada."
    redirect_to root_path
  end


  private

  def find_pessoa
    @pessoa = Pessoa.find(params[:id])
  end

  def pessoa_params
    params.require(:pessoa).permit :nome, :email
  end
end
