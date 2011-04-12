class TareasController < ApplicationController
 before_filter :get_parent

 def index
   #@tarea = Tarea.all
   @tarea = Tarea.order('nombre').page(params[:page]).per(5)

 end

 def show
   @tarea = Tarea.find(params[:id])
 end

 def new
   @tarea = @trabajo.tareas.build
 end

 def create
   @tarea = @trabajo.tareas.build(params[:tarea])
   if @tarea.save
     redirect_to @trabajo, :notice=> 'Tarea creada correctamente'
     #redirect_to [@trabajo, @tarea], :notice=> 'Tarea creada correctamente'
   else
     render :action => "new"
   end
 end
 def destroy
   @tarea = @trabajo.tareas.find(params[:id])
   @tarea.destroy
   redirect_to @trabajo
 end

 private
 def get_parent
   if !params[:trabajo_id].blank?
     @trabajo = Trabajo.find(params[:trabajo_id])
   end
 end

end
