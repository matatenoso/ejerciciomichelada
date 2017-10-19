class MarcasController < ApplicationController
  
  def index
  	@marcas = Marca.all
  end

  def show
  	@marca = Marca.find(params[:id])
  end

  def new
  	@marca = Marca.new
  end

  def create
  	@marca = Marca.create(nombre: params[:marca][:nombre])
  	
  	if @marca.save
  		redirect_to marcas_path
  	else 
  		render :new
  	end
  end

  def destroy
  	@marca = Marca.find(params[:id])
  	@marca.destroy
  	redirect_to marcas_path
  end

  def update
  	@marca = Marca.find(params[:id])

  	if @marca.update(nombre: params[:marca][:nombre])
  		redirect_to marcas_path
  	else 
  		render :edit
  	end
  end

  def edit
  	@marca = Marca.find(params[:id])
  end

end
