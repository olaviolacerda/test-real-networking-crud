class EmpresasController < ApplicationController

  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  def index
    @empresas = Empresa.all
  end

  def new
    @empresa = Empresa.new
    @setores = Setor.all
  end

  def create
    @setores = Setor.all
    @empresa = Empresa.new(empresa_params)
    if @empresa.save
      flash[:notice] = "A empresa #{@empresa.nome} foi criada com sucesso."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @empresas = Empresa.all
    @setores = Setor.all
    render :edit
  end

  def update
    @setores = Setor.all
    if @empresa.update(empresa_params)
      redirect_to root_path, notice: 'Empresa atualizada com sucesso.'
    else
          render :edit
    end
  end

  def destroy
    @empresa.destroy
    flash[:notice] = "A empresa #{@empresa.nome} foi deletada."
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
