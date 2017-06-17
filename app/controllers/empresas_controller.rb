class EmpresasController < ApplicationController

  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  def index
    @empresas = Empresa.all
  end

  def new
    @empresa = Empresa.new
    @setors = Setor.all
  end

  def create
    @setors = Setor.all
    @empresa = Empresa.new(empresa_params)
    if @empresa.save
      flash[:alert] = "Olá #{@empresa.nome}, você concluiu seu cadastro com sucesso."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @empresas = Empresa.all
    @setors = Setor.all
    render :edit
  end

  def update
    @setors = Setor.all
    if @empresa.update(empresa_params)
      redirect_to root_path, alert: 'Seu cadastro foi atualizado com sucesso.'
    else
          render :edit
    end
  end

  def destroy
    @empresa.destroy
    flash[:alert] = "Sentiremos a sua falta #{@empresa.nome}, seu cadastro foi deletado."
    redirect_to root_path
  end

  private

  def set_empresa
    @empresa = Empresa.find(params[:id])
  end


  def empresa_params
    params.require(:empresa).permit :nome, :setor_id, :id
  end
end
