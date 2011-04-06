class TrabajosController < ApplicationController
  def index
    @trabajos = Trabajo.all
  end
  def show
    @trabajo = Trabajo.find(params[:id])
  end
  def new
    @trabajo = Trabajo.new
  end
  def create
    @trabajo = Trabajo.new(params[:trabajo])
    if @trabajo.save
      redirect_to(@trabajo, :notice => 'Trabajo creado correctamente')
    else
      render :action => "new"
    end
  end
end
