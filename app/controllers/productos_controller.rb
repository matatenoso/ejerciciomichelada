class ProductosController < ApplicationController
  
  def index
  	@productos = Producto.all
  end

  def show
  	@producto = Producto.find(params[:id])
  end

  def new
  	@producto = Producto.new
  end

  def create
  	@producto = Producto.create(
      nombre: params[:producto][:nombre], 
      marca: params[:producto][:marca],
      descripcion: params[:producto][:descripcion],
      precio: params[:producto][:precio])

  	if @producto.save
  		redirect_to productos_path
  	else 
  		render :new
  	end
  end

  def destroy
  	@producto = Producto.find(params[:id])
  	@producto.destroy
  	redirect_to productos_path
  end

  def update
  	@producto = Producto.find(params[:id])

  	if @producto.update(
      nombre: params[:producto][:nombre], 
      marca: params[:producto][:marca],
      descripcion: params[:producto][:descripcion],
      precio: params[:producto][:precio])
  		redirect_to productos_path
  	else 
  		render :edit
  	end
  end

  def edit
  	@producto = Producto.find(params[:id])
  end

end
