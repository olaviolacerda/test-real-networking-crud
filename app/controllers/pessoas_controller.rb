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
      redirect_to @pessoa
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
    if @pessoa.update(pessoa_params)
      redirect_to @pessoa
    else
      render 'edit'
    end
  end

  def destroy
    @pessoa.destroy
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
